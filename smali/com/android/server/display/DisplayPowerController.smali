.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/IOpBacklightController;
.implements Lcom/android/server/display/IOpProximityController;
.implements Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$MotionCheck;,
        Lcom/android/server/display/DisplayPowerController$BrightnessReason;,
        Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ADFR_ENABLED:Z

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x1

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field static DEBUG:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final DELAY_MS:I = 0xa

.field private static final DELAY_TIME:I = 0x190

.field private static final FAST_DELAY_TIME:I = 0x0

.field private static final IS_SUPPORT_DIM_MODE_GESTURE:Z

.field public static final MAX_BRIGHTNESS_LEVEL_FOR_SOFTIRIS:I = 0x1fff

.field private static final MSG_CONFIGURE_BRIGHTNESS:I = 0x5

.field private static final MSG_DELAY_DIM_STATUS:I = 0x57

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_OFF_UNBLOCKED:I = 0x4

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT:I = 0x7

.field private static final MSG_SET_TEMPORARY_BRIGHTNESS:I = 0x6

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final MSG_UPDATE_RECORD_TIMESTAMP:I = 0xc8

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0xa

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final RAMP_STATE_SKIP_AUTOBRIGHT:I = 0x2

.field private static final RAMP_STATE_SKIP_INITIAL:I = 0x1

.field private static final RAMP_STATE_SKIP_NONE:I = 0x0

.field public static final REAL_AOD_OFF:I = 0x0

.field public static final REAL_AOD_ON_SET_10_NIT:I = 0x1

.field public static final REAL_AOD_ON_SET_50_NIT:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_ANIMATION_RATE_MINIMUM:F = 0.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION_FLOAT:F = 0.04f

.field private static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field public static final SET_10_NIT:F = 10.0f

.field public static final SET_50_NIT:F = 50.0f

.field private static final STRETCH_RATE_FOR_CAMERA:F = 0.25f

.field private static final STRETCH_RATE_FOR_CAMERA2GALLERY:F = 0.25f

.field private static final STRETCH_RATE_FOR_GALLERY:F = 0.15f

.field private static final SUPPORT_REAL_AOD:Z

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z = false

.field private static mBoostGalleryBrightness:Z

.field private static mLimitedNitsForCamera:I

.field private static mLimitedNitsForGalley:I

.field private static sEnableProximityEvent:Z

.field private static sLastPositive:Z

.field private static sProximityResFeature:Z


# instance fields
.field private final BRIGHTNESS_STATICS_NITS:F

.field private mAdjustBrightnessInterval:F

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAodNits:I

.field private mAppliedAutoBrightness:Z

.field private mAppliedBrightnessBoost:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAppliedScreenBrightnessOverride:Z

.field private mAppliedTemporaryAutoBrightnessAdjustment:Z

.field private mAppliedTemporaryBrightness:Z

.field private mAutoBrightnessAdjustment:F

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBrightnessBucketsInDozeConfig:Z

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBrightnessRampRateFast:F

.field private final mBrightnessRampRateSlow:F

.field private mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private mBrightnessStaticsTimestamp:J

.field private final mBrightnessSynchronizer:Lcom/android/internal/BrightnessSynchronizer;

.field private final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private final mColorFadeEnabled:Z

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenBrightnessSetting:F

.field private mDisplayBlanksAfterDozeConfig:Z

.field private final mDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayOLC:Lcom/android/server/display/DisplayOLC;

.field private mDisplayReadyLocked:Z

.field private final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field private final mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

.field private mDitherEnabled:Z

.field private mDitherLock:Ljava/lang/Object;

.field private mDozing:Z

.field private mEnableSunReadableDisplay:Z

.field private mFlashlightEnabled:Z

.field private mForceUpdateBrightness:Z

.field private mFrontPackageName:Ljava/lang/String;

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mHdrBootFactor:F

.field private mHdrMode:Z

.field private mHighTempChange:Ljava/lang/Boolean;

.field private mHighTempFactor:F

.field private mHighTempHBMFactor:F

.field private mHighTempRate:F

.field private mInHBM:Z

.field private mInHighTemp:Z

.field private mInitialAutoBrightness:F

.field private mIsOpBacklight:I

.field private mLastUserSetScreenBrightness:F

.field private final mLock:Ljava/lang/Object;

.field private mMotionCheck:Lcom/android/server/display/DisplayPowerController$MotionCheck;

.field protected mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

.field private mOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field protected mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field private mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

.field private mOpBacklightLock:Ljava/lang/Object;

.field private mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

.field private mOpMaxBrightness:F

.field private mOpMinBrightness:F

.field private mPendingAutoBrightnessAdjustment:F

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenBrightnessSetting:F

.field private mPendingScreenOff:Z

.field private mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPercent:D

.field private mPercentChange:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mPreAutoBrightnessEnabled:Z

.field private mPreState:I

.field private mProximity:I

.field private mProximityEventHandled:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mRecoverFaceLight:Z

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDefault:F

.field private final mScreenBrightnessDimConfig:F

.field private final mScreenBrightnessDozeConfig:F

.field private mScreenBrightnessForVr:F

.field private final mScreenBrightnessForVrDefault:F

.field private final mScreenBrightnessForVrRangeMaximum:F

.field private final mScreenBrightnessForVrRangeMinimum:F

.field private mScreenBrightnessMode:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:F

.field private final mScreenBrightnessRangeMinimum:F

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOffBlockStartRealTime:J

.field private mScreenOnBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRightNowEnableTime:J

.field private final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field private mSkipRampState:I

.field private final mSkipScreenOnBrightnessRamp:Z

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTempScreenBrightnessRangeMinimum:I

.field private mTemporaryAutoBrightnessAdjustment:F

.field private mTemporaryScreenBrightness:F

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mTorchModeEnabled:Z

.field private mUnfinishedBusiness:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private useProximityForceSuspend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 162
    nop

    .line 178
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 179
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    .line 239
    new-array v1, v0, [I

    const/16 v2, 0xce

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    .line 518
    sput v3, Lcom/android/server/display/DisplayPowerController;->mLimitedNitsForCamera:I

    .line 519
    sput v3, Lcom/android/server/display/DisplayPowerController;->mLimitedNitsForGalley:I

    .line 532
    new-array v1, v0, [I

    const/16 v2, 0x12e

    aput v2, v1, v3

    .line 533
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->SUPPORT_REAL_AOD:Z

    .line 587
    new-array v1, v0, [I

    const/16 v2, 0x147

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->ADFR_ENABLED:Z

    .line 604
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->mBoostGalleryBrightness:Z

    .line 3043
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->sEnableProximityEvent:Z

    .line 3044
    sput-boolean v3, Lcom/android/server/display/DisplayPowerController;->sLastPositive:Z

    .line 3045
    new-array v0, v0, [I

    const/16 v1, 0x119

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->sProximityResFeature:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/DisplayDevice;)V
    .locals 56
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;
    .param p6, "displayDevice"    # Lcom/android/server/display/DisplayDevice;

    .line 619
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 289
    const/4 v14, 0x0

    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    .line 290
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    .line 381
    const/4 v0, -0x1

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 384
    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 385
    const-wide/16 v1, -0x1

    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 428
    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v4, 0x0

    invoke-direct {v3, v15, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 429
    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v3, v15, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 432
    const v3, 0x3e70f0f0

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:F

    .line 433
    const v3, 0x3f34b4b4

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:F

    .line 446
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 514
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMode:I

    .line 539
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mAodNits:I

    .line 546
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mIsOpBacklight:I

    .line 547
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mOpBacklightLock:Ljava/lang/Object;

    .line 548
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iput-wide v5, v15, Lcom/android/server/display/DisplayPowerController;->mPercent:D

    .line 549
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mPercentChange:Z

    .line 550
    const v3, 0x3e99999a    # 0.3f

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:F

    .line 551
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v15, Lcom/android/server/display/DisplayPowerController;->mOpMaxBrightness:F

    .line 552
    const v3, 0x3eb33333    # 0.35f

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:F

    .line 554
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mPreAutoBrightnessEnabled:Z

    .line 555
    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    .line 556
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mPreState:I

    .line 561
    const/4 v11, 0x1

    iput-boolean v11, v15, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    .line 562
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    .line 568
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mTorchModeEnabled:Z

    .line 569
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mFlashlightEnabled:Z

    .line 584
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mEnableSunReadableDisplay:Z

    .line 592
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mHdrMode:Z

    .line 598
    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    .line 599
    const/high16 v1, 0x43af0000    # 350.0f

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_STATICS_NITS:F

    .line 606
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mDitherEnabled:Z

    .line 607
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mDitherLock:Ljava/lang/Object;

    .line 968
    new-instance v1, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 1216
    new-instance v1, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1232
    new-instance v1, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 2422
    new-instance v1, Lcom/android/server/display/DisplayPowerController$5;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 2703
    new-instance v1, Lcom/android/server/display/DisplayPowerController$6;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 2718
    new-instance v1, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

    .line 2731
    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

    .line 2745
    new-instance v1, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 2758
    new-instance v1, Lcom/android/server/display/DisplayPowerController$10;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$10;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 3083
    new-instance v1, Lcom/android/server/display/DisplayPowerController$12;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$12;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 3221
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    .line 3439
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mInHighTemp:Z

    .line 3440
    iput v12, v15, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    .line 3441
    iput v12, v15, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    .line 3442
    const v1, 0x3d4ccccd    # 0.05f

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    .line 3443
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    .line 3444
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    .line 620
    new-instance v1, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v15, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 621
    new-instance v1, Lcom/android/server/display/BrightnessTracker;

    invoke-direct {v1, v13, v4}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 622
    new-instance v1, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    iget-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v1, v15, v2}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 623
    move-object/from16 v10, p2

    iput-object v10, v15, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 624
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 625
    move-object/from16 v7, p4

    iput-object v7, v15, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 626
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 627
    move-object/from16 v5, p5

    iput-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 628
    iput-object v13, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 629
    new-instance v1, Lcom/android/internal/BrightnessSynchronizer;

    invoke-direct {v1, v13}, Lcom/android/internal/BrightnessSynchronizer;-><init>(Landroid/content/Context;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessSynchronizer:Lcom/android/internal/BrightnessSynchronizer;

    .line 630
    move-object/from16 v4, p6

    iput-object v4, v15, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 634
    new-instance v1, Lcom/android/server/display/DisplayPowerController$MotionCheck;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$MotionCheck;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mMotionCheck:Lcom/android/server/display/DisplayPowerController$MotionCheck;

    .line 637
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v13, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/PowerManager;

    .line 638
    .local v2, "pm":Landroid/os/PowerManager;
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v28

    .line 641
    .local v28, "displayDeviceConfig":Lcom/android/server/display/DisplayDeviceConfig;
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 644
    new-instance v1, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    .line 650
    new-array v1, v11, [I

    const/16 v3, 0x124

    aput v3, v1, v14

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_IRIS_SERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/iris/IOneplusIrisManager;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    .line 658
    :cond_0
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->ADFR_ENABLED:Z

    if-eqz v1, :cond_1

    .line 659
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->OPLUS_VRR_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    .line 660
    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    .line 664
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 666
    .local v9, "resources":Landroid/content/res/Resources;
    nop

    .line 667
    invoke-virtual {v2, v14}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 666
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v8

    .line 670
    .local v8, "screenBrightnessSettingMinimumFloat":F
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v1, :cond_2

    .line 671
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "device_is_dimming"

    invoke-static {v1, v3, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 672
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 678
    :cond_2
    const/4 v1, 0x4

    .line 679
    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 678
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 680
    const/4 v1, 0x3

    .line 681
    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 680
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 684
    nop

    .line 685
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    .line 686
    nop

    .line 687
    invoke-virtual {v2, v11}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 686
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    .line 688
    const/4 v1, 0x2

    .line 689
    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 688
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    .line 692
    const/4 v1, 0x7

    .line 693
    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 692
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    .line 694
    const/4 v1, 0x6

    .line 695
    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 694
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    .line 696
    const/4 v1, 0x5

    .line 697
    invoke-virtual {v2, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 696
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    .line 699
    const v1, 0x1110029

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 702
    const v1, 0x111000f

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 705
    const v1, 0x11100cf

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    .line 710
    const v1, 0x10e0024

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mHdrBootFactor:F

    .line 712
    const v1, 0x10e0022

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/server/display/DisplayPowerController;->mLimitedNitsForCamera:I

    .line 714
    const v1, 0x10e0023

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/server/display/DisplayPowerController;->mLimitedNitsForGalley:I

    .line 718
    iget-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    const-string v6, "DisplayPowerController"

    if-eqz v1, :cond_6

    .line 719
    const v1, 0x1130006

    invoke-virtual {v9, v1, v11, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v29

    .line 723
    .local v29, "dozeScaleFactor":F
    const v1, 0x107000d

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 725
    .local v3, "ambientBrighteningThresholds":[I
    const v1, 0x107000e

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 727
    .local v1, "ambientDarkeningThresholds":[I
    const v11, 0x107000f

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    .line 729
    .local v11, "ambientThresholdLevels":[I
    new-instance v12, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v12, v3, v1, v11}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v18, v12

    .line 733
    .local v18, "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v12, 0x107006a

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v12

    .line 735
    .local v12, "screenBrighteningThresholds":[I
    const v14, 0x107006d

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    .line 737
    .local v14, "screenDarkeningThresholds":[I
    const v0, 0x107006e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 739
    .local v0, "screenThresholdLevels":[I
    move-object/from16 v22, v1

    .end local v1    # "ambientDarkeningThresholds":[I
    .local v22, "ambientDarkeningThresholds":[I
    new-instance v1, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v1, v12, v14, v0}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v19, v1

    .line 742
    .local v19, "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v1, 0x10e0013

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v23, v14

    .end local v14    # "screenDarkeningThresholds":[I
    .local v23, "screenDarkeningThresholds":[I
    int-to-long v13, v1

    .line 744
    .local v13, "brighteningLightDebounce":J
    const v1, 0x10e0014

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-wide/from16 v24, v13

    .end local v13    # "brighteningLightDebounce":J
    .local v24, "brighteningLightDebounce":J
    int-to-long v13, v1

    .line 746
    .local v13, "darkeningLightDebounce":J
    const v1, 0x1110024

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v30

    .line 749
    .local v30, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    const v1, 0x10e0071

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v31

    .line 751
    .local v31, "lightSensorWarmUpTimeConfig":I
    const v1, 0x10e0016

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 753
    .local v1, "lightSensorRate":I
    move-object/from16 v32, v0

    .end local v0    # "screenThresholdLevels":[I
    .local v32, "screenThresholdLevels":[I
    const v0, 0x10e0015

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 755
    .local v0, "initialLightSensorRate":I
    move-object/from16 v26, v2

    const/4 v2, -0x1

    .end local v2    # "pm":Landroid/os/PowerManager;
    .local v26, "pm":Landroid/os/PowerManager;
    if-ne v0, v2, :cond_3

    .line 756
    move v0, v1

    move-object/from16 v21, v3

    goto :goto_0

    .line 757
    :cond_3
    if-le v0, v1, :cond_4

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    .end local v3    # "ambientBrighteningThresholds":[I
    .local v21, "ambientBrighteningThresholds":[I
    const-string v3, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 757
    .end local v21    # "ambientBrighteningThresholds":[I
    .restart local v3    # "ambientBrighteningThresholds":[I
    :cond_4
    move-object/from16 v21, v3

    .line 763
    .end local v3    # "ambientBrighteningThresholds":[I
    .restart local v21    # "ambientBrighteningThresholds":[I
    :goto_0
    const v2, 0x1040216

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 765
    .local v2, "lightSensorType":Ljava/lang/String;
    invoke-direct {v15, v2}, Lcom/android/server/display/DisplayPowerController;->findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v33

    .line 767
    .local v33, "lightSensor":Landroid/hardware/Sensor;
    const v3, 0x1110068

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v34

    .line 769
    .local v34, "dualLightSensorSupport":Z
    const v3, 0x1040234

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 771
    .local v35, "mainLightSensor":Ljava/lang/String;
    const v3, 0x10401d0

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 773
    .local v36, "auxLightSensor":Ljava/lang/String;
    const v3, 0x105009b

    invoke-static {v9, v3}, Lcom/android/server/display/DisplayPowerController;->getFloat(Landroid/content/res/Resources;I)F

    move-result v37

    .line 778
    .local v37, "auxLightSensorLuxLimit":F
    const v3, 0x1070051

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v38

    .line 780
    .local v38, "limitMinLux":[F
    const v3, 0x107007f

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v39

    .line 784
    .local v39, "timeSlotsForMinLux":[I
    invoke-static {v9}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v3

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 785
    if-eqz v3, :cond_5

    .line 786
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController;

    move/from16 v41, v1

    move-object/from16 v40, v22

    .end local v1    # "lightSensorRate":I
    .end local v22    # "ambientDarkeningThresholds":[I
    .local v40, "ambientDarkeningThresholds":[I
    .local v41, "lightSensorRate":I
    move-object v1, v3

    .line 787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v22

    move-object/from16 v43, v3

    move-object/from16 v42, v21

    .end local v21    # "ambientBrighteningThresholds":[I
    .local v42, "ambientBrighteningThresholds":[I
    move-object/from16 v3, v22

    move-object/from16 v21, v2

    .end local v2    # "lightSensorType":Ljava/lang/String;
    .local v21, "lightSensorType":Ljava/lang/String;
    iget-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move-object/from16 v44, v6

    move-object v6, v2

    iget v2, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    move/from16 v45, v8

    .end local v8    # "screenBrightnessSettingMinimumFloat":F
    .local v45, "screenBrightnessSettingMinimumFloat":F
    move v8, v2

    iget v2, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    move-object/from16 v46, v9

    .end local v9    # "resources":Landroid/content/res/Resources;
    .local v46, "resources":Landroid/content/res/Resources;
    move v9, v2

    move-object/from16 v48, v21

    move-object/from16 v47, v26

    .end local v21    # "lightSensorType":Ljava/lang/String;
    .end local v26    # "pm":Landroid/os/PowerManager;
    .local v47, "pm":Landroid/os/PowerManager;
    .local v48, "lightSensorType":Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, v33

    move/from16 v7, v31

    move/from16 v10, v29

    move-object/from16 v49, v11

    .end local v11    # "ambientThresholdLevels":[I
    .local v49, "ambientThresholdLevels":[I
    move/from16 v11, v41

    move-object/from16 v50, v12

    .end local v12    # "screenBrighteningThresholds":[I
    .local v50, "screenBrighteningThresholds":[I
    move v12, v0

    move-wide/from16 v54, v13

    move-object/from16 v51, v23

    move-wide/from16 v52, v24

    .end local v13    # "darkeningLightDebounce":J
    .end local v23    # "screenDarkeningThresholds":[I
    .end local v24    # "brighteningLightDebounce":J
    .local v51, "screenDarkeningThresholds":[I
    .local v52, "brighteningLightDebounce":J
    .local v54, "darkeningLightDebounce":J
    move-wide/from16 v13, v52

    move-wide/from16 v15, v54

    move/from16 v17, v30

    move-object/from16 v20, p1

    move-object/from16 v21, v28

    move/from16 v22, v34

    move-object/from16 v23, v35

    move-object/from16 v24, v36

    move/from16 v25, v37

    move-object/from16 v26, v38

    move-object/from16 v27, v39

    invoke-direct/range {v1 .. v27}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;ZLjava/lang/String;Ljava/lang/String;F[F[I)V

    move-object/from16 v1, p0

    move-object/from16 v2, v43

    iput-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 795
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getBatteryLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->updateBatteryLevel(I)V

    const/4 v2, 0x0

    goto :goto_1

    .line 797
    .end local v40    # "ambientDarkeningThresholds":[I
    .end local v41    # "lightSensorRate":I
    .end local v42    # "ambientBrighteningThresholds":[I
    .end local v45    # "screenBrightnessSettingMinimumFloat":F
    .end local v46    # "resources":Landroid/content/res/Resources;
    .end local v47    # "pm":Landroid/os/PowerManager;
    .end local v48    # "lightSensorType":Ljava/lang/String;
    .end local v49    # "ambientThresholdLevels":[I
    .end local v50    # "screenBrighteningThresholds":[I
    .end local v51    # "screenDarkeningThresholds":[I
    .end local v52    # "brighteningLightDebounce":J
    .end local v54    # "darkeningLightDebounce":J
    .restart local v1    # "lightSensorRate":I
    .restart local v2    # "lightSensorType":Ljava/lang/String;
    .restart local v8    # "screenBrightnessSettingMinimumFloat":F
    .restart local v9    # "resources":Landroid/content/res/Resources;
    .restart local v11    # "ambientThresholdLevels":[I
    .restart local v12    # "screenBrighteningThresholds":[I
    .restart local v13    # "darkeningLightDebounce":J
    .local v21, "ambientBrighteningThresholds":[I
    .restart local v22    # "ambientDarkeningThresholds":[I
    .restart local v23    # "screenDarkeningThresholds":[I
    .restart local v24    # "brighteningLightDebounce":J
    .restart local v26    # "pm":Landroid/os/PowerManager;
    :cond_5
    move/from16 v41, v1

    move-object/from16 v48, v2

    move-object/from16 v44, v6

    move/from16 v45, v8

    move-object/from16 v46, v9

    move-object/from16 v49, v11

    move-object/from16 v50, v12

    move-wide/from16 v54, v13

    move-object v1, v15

    move-object/from16 v42, v21

    move-object/from16 v40, v22

    move-object/from16 v51, v23

    move-wide/from16 v52, v24

    move-object/from16 v47, v26

    .end local v1    # "lightSensorRate":I
    .end local v2    # "lightSensorType":Ljava/lang/String;
    .end local v8    # "screenBrightnessSettingMinimumFloat":F
    .end local v9    # "resources":Landroid/content/res/Resources;
    .end local v11    # "ambientThresholdLevels":[I
    .end local v12    # "screenBrighteningThresholds":[I
    .end local v13    # "darkeningLightDebounce":J
    .end local v21    # "ambientBrighteningThresholds":[I
    .end local v22    # "ambientDarkeningThresholds":[I
    .end local v23    # "screenDarkeningThresholds":[I
    .end local v24    # "brighteningLightDebounce":J
    .end local v26    # "pm":Landroid/os/PowerManager;
    .restart local v40    # "ambientDarkeningThresholds":[I
    .restart local v41    # "lightSensorRate":I
    .restart local v42    # "ambientBrighteningThresholds":[I
    .restart local v45    # "screenBrightnessSettingMinimumFloat":F
    .restart local v46    # "resources":Landroid/content/res/Resources;
    .restart local v47    # "pm":Landroid/os/PowerManager;
    .restart local v48    # "lightSensorType":Ljava/lang/String;
    .restart local v49    # "ambientThresholdLevels":[I
    .restart local v50    # "screenBrighteningThresholds":[I
    .restart local v51    # "screenDarkeningThresholds":[I
    .restart local v52    # "brighteningLightDebounce":J
    .restart local v54    # "darkeningLightDebounce":J
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    goto :goto_1

    .line 718
    .end local v0    # "initialLightSensorRate":I
    .end local v18    # "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v19    # "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v29    # "dozeScaleFactor":F
    .end local v30    # "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    .end local v31    # "lightSensorWarmUpTimeConfig":I
    .end local v32    # "screenThresholdLevels":[I
    .end local v33    # "lightSensor":Landroid/hardware/Sensor;
    .end local v34    # "dualLightSensorSupport":Z
    .end local v35    # "mainLightSensor":Ljava/lang/String;
    .end local v36    # "auxLightSensor":Ljava/lang/String;
    .end local v37    # "auxLightSensorLuxLimit":F
    .end local v38    # "limitMinLux":[F
    .end local v39    # "timeSlotsForMinLux":[I
    .end local v40    # "ambientDarkeningThresholds":[I
    .end local v41    # "lightSensorRate":I
    .end local v42    # "ambientBrighteningThresholds":[I
    .end local v45    # "screenBrightnessSettingMinimumFloat":F
    .end local v46    # "resources":Landroid/content/res/Resources;
    .end local v47    # "pm":Landroid/os/PowerManager;
    .end local v48    # "lightSensorType":Ljava/lang/String;
    .end local v49    # "ambientThresholdLevels":[I
    .end local v50    # "screenBrighteningThresholds":[I
    .end local v51    # "screenDarkeningThresholds":[I
    .end local v52    # "brighteningLightDebounce":J
    .end local v54    # "darkeningLightDebounce":J
    .local v2, "pm":Landroid/os/PowerManager;
    .restart local v8    # "screenBrightnessSettingMinimumFloat":F
    .restart local v9    # "resources":Landroid/content/res/Resources;
    :cond_6
    move-object/from16 v47, v2

    move-object/from16 v44, v6

    move/from16 v45, v8

    move-object/from16 v46, v9

    move v2, v14

    move-object v1, v15

    .line 801
    .end local v2    # "pm":Landroid/os/PowerManager;
    .end local v8    # "screenBrightnessSettingMinimumFloat":F
    .end local v9    # "resources":Landroid/content/res/Resources;
    .restart local v45    # "screenBrightnessSettingMinimumFloat":F
    .restart local v46    # "resources":Landroid/content/res/Resources;
    .restart local v47    # "pm":Landroid/os/PowerManager;
    :goto_1
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 802
    const v0, 0x1110021

    move-object/from16 v4, v46

    .end local v46    # "resources":Landroid/content/res/Resources;
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 805
    const v0, 0x1110057

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 808
    const v0, 0x1110058

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 812
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 813
    if-eqz v0, :cond_7

    .line 814
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 818
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 819
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 820
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 821
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 822
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 823
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 824
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 826
    const/4 v5, 0x0

    .line 827
    .local v5, "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    const/4 v6, 0x0

    .line 829
    .local v6, "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    :try_start_0
    new-instance v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v0, v7, v8}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v5, v0

    .line 830
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {v0, v7, v4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-result-object v0

    move-object v6, v0

    .line 832
    invoke-virtual {v5, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z

    .line 833
    invoke-virtual {v6, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    move-object/from16 v8, v44

    goto :goto_2

    .line 834
    :catch_0
    move-exception v0

    .line 835
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to set up display white-balance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v44

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 838
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 842
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessMode()I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMode:I

    .line 847
    invoke-static/range {p0 .. p0}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->hookDisplayPowerController(Lcom/android/server/display/IOpBacklightController;)V

    .line 852
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const-string v7, "camera"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 853
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v7, v9}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 857
    new-instance v0, Lcom/android/server/display/DisplayOLC;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {v0, v7, v9}, Lcom/android/server/display/DisplayOLC;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayOLC:Lcom/android/server/display/DisplayOLC;

    .line 862
    new-instance v0, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object v7, v0

    .line 885
    .local v7, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 886
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 891
    new-instance v0, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 892
    .local v9, "batteryFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 897
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "device_provisioned"

    invoke-static {v0, v10, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 898
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessMode()I

    move-result v0

    if-nez v0, :cond_a

    .line 900
    :try_start_1
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "screen_brightness_float"

    invoke-static {v0, v10}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 917
    goto :goto_4

    .line 901
    :catch_1
    move-exception v0

    move-object v10, v0

    .line 903
    .local v10, "exception":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_2
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v11, "screen_brightness"

    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 905
    .local v0, "brightnessInt":I
    const-string v11, "20801"

    const-string/jumbo v12, "ro.boot.project_name"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-ne v3, v11, :cond_8

    .line 906
    const/16 v3, 0x7ff

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3, v11, v12}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(F)V

    goto :goto_3

    .line 907
    :cond_8
    const/16 v2, 0xff

    if-gt v0, v2, :cond_9

    .line 908
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(Landroid/content/Context;I)F

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(F)V

    goto :goto_3

    .line 911
    :cond_9
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    invoke-direct {v1, v2}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(F)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 916
    .end local v0    # "brightnessInt":I
    :goto_3
    goto :goto_4

    .line 913
    :catch_2
    move-exception v0

    .line 915
    .local v0, "innerException":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "Both screen_brightness & screen_brightness_float not set."

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    .end local v0    # "innerException":Landroid/provider/Settings$SettingNotFoundException;
    .end local v10    # "exception":Landroid/provider/Settings$SettingNotFoundException;
    :cond_a
    :goto_4
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->ADFR_ENABLED:Z

    if-eqz v0, :cond_b

    .line 924
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 930
    :cond_b
    nop

    .line 931
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 930
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 933
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/DisplayPowerController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J

    .line 162
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayOLC;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOLC:Lcom/android/server/display/DisplayOLC;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->voteForSunReadableDisplay(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 162
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/android/server/display/DisplayPowerController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # F

    .line 162
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    return p1
.end method

.method static synthetic access$2502(Lcom/android/server/display/DisplayPowerController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # F

    .line 162
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    .line 162
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->sProximityResFeature:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-object v0
.end method

.method static synthetic access$3002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 162
    sput-boolean p0, Lcom/android/server/display/DisplayPowerController;->sLastPositive:Z

    return p0
.end method

.method static synthetic access$3100()Z
    .locals 1

    .line 162
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->sEnableProximityEvent:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->proximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic access$3700()Z
    .locals 1

    .line 162
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->SUPPORT_REAL_AOD:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAodNits:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # I

    .line 162
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mAodNits:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mTorchModeEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateTorchModeStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateDitherStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/OpBrightnessReasonAndRate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    return-object v0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 162
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->ADFR_ENABLED:Z

    return v0
.end method

.method private animateScreenBrightness(FF)V
    .locals 18
    .param p1, "target"    # F
    .param p2, "rate"    # F

    .line 2121
    move-object/from16 v1, p0

    move/from16 v0, p1

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:F

    cmpl-float v2, v0, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    if-ltz v2, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mOpMaxBrightness:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    iget-wide v5, v1, Lcom/android/server/display/DisplayPowerController;->mPercent:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v5, v7

    if-gez v2, :cond_1

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mInHighTemp:Z

    if-nez v2, :cond_1

    .line 2126
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:F

    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:F

    sub-float v5, v2, v5

    .line 2127
    .local v5, "diff":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    cmpl-float v6, v0, v5

    if-lez v6, :cond_1

    .line 2128
    cmpl-float v6, v0, v2

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2129
    .local v2, "tmpTarget":F
    :goto_0
    sub-float v6, v2, v5

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:F

    div-float/2addr v6, v9

    float-to-double v9, v6

    iget-wide v11, v1, Lcom/android/server/display/DisplayPowerController;->mPercent:D

    sub-double/2addr v7, v11

    mul-double/2addr v9, v7

    double-to-float v6, v9

    sub-float v6, v3, v6

    .line 2130
    .local v6, "factor":F
    invoke-direct {v1, v0, v6, v4}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessByNits(FFZ)F

    move-result v0

    .line 2133
    .end local v2    # "tmpTarget":F
    .end local v5    # "diff":F
    .end local v6    # "factor":F
    .end local p1    # "target":F
    .local v0, "target":F
    :cond_1
    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mPercentChange:Z

    const/4 v5, 0x0

    const-string v6, "DisplayPowerController"

    if-eqz v2, :cond_2

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    const-wide v9, 0x3fb47ae147ae147bL    # 0.08

    cmpg-double v2, v7, v9

    if-gez v2, :cond_2

    .line 2134
    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    .line 2135
    .end local p2    # "rate":F
    .local v2, "rate":F
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPercentChange:Z

    .line 2136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2138
    .end local v2    # "rate":F
    .restart local p2    # "rate":F
    :cond_2
    move/from16 v2, p2

    .end local p2    # "rate":F
    .restart local v2    # "rate":F
    :goto_1
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-static {v7}, Lcom/android/server/display/OpBrightnessReasonAndRate;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 2140
    sget-boolean v7, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 2141
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Animating brightness: target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", rate="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_3
    iget v7, v1, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_2

    :cond_4
    move v7, v5

    .line 2146
    .local v7, "faceLightingMode":Z
    :goto_2
    const-string v8, " to "

    const-string v9, ", rate: "

    if-eqz v7, :cond_5

    .line 2147
    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    float-to-double v10, v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    div-double/2addr v10, v12

    double-to-int v10, v10

    const-string/jumbo v11, "sys.debug.face.rate"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 2148
    .local v10, "tmpRate":I
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v0

    .line 2150
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Animating lighting: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    int-to-float v2, v10

    .end local v10    # "tmpRate":I
    goto :goto_3

    .line 2152
    :cond_5
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    if-eqz v10, :cond_6

    .line 2153
    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const-string/jumbo v11, "sys.debug.face.reset"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 2154
    .restart local v10    # "tmpRate":I
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v12, 0x16

    invoke-virtual {v11, v12}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 2155
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Animating reset lighting: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    int-to-float v2, v10

    goto :goto_4

    .line 2152
    .end local v10    # "tmpRate":I
    :cond_6
    :goto_3
    nop

    .line 2162
    :goto_4
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessCamera:I

    const/high16 v9, 0x3fa00000    # 1.25f

    if-ne v8, v4, :cond_7

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v8, :cond_7

    .line 2163
    sget v8, Lcom/android/server/display/DisplayPowerController;->mLimitedNitsForCamera:I

    invoke-direct {v1, v0, v9, v8, v4}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessByNitsLimit(FFIZ)F

    move-result v0

    .line 2169
    :cond_7
    sget-boolean v8, Lcom/android/server/display/DisplayPowerController;->mBoostGalleryBrightness:Z

    if-eqz v8, :cond_9

    .line 2170
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessGallery:I

    if-ne v8, v4, :cond_8

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v8, :cond_8

    .line 2171
    const v8, 0x3f933333    # 1.15f

    invoke-direct {v1, v0, v8, v5, v4}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessByNitsLimit(FFIZ)F

    move-result v0

    goto :goto_5

    .line 2172
    :cond_8
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessCamera2Gallery:I

    if-ne v8, v4, :cond_9

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v8, :cond_9

    .line 2173
    sget v8, Lcom/android/server/display/DisplayPowerController;->mLimitedNitsForGalley:I

    invoke-direct {v1, v0, v9, v8, v4}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessByNitsLimit(FFIZ)F

    move-result v0

    .line 2180
    :cond_9
    :goto_5
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mHdrMode:Z

    if-eqz v8, :cond_a

    .line 2181
    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mHdrBootFactor:F

    mul-float/2addr v0, v8

    .line 2188
    :cond_a
    invoke-direct {v1, v0, v2}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessInHighTemp(FF)[Ljava/lang/Float;

    move-result-object v8

    .line 2189
    .local v8, "ret":[Ljava/lang/Float;
    aget-object v5, v8, v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object v4, v8, v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2191
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-virtual {v4, v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->clampBrightness(F)F

    move-result v4

    .line 2195
    .end local v0    # "target":F
    .local v4, "target":F
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessStaticsLevel()F

    move-result v0

    cmpl-float v0, v4, v0

    const/16 v5, 0xc8

    const-wide/16 v9, -0x1

    if-ltz v0, :cond_b

    iget-wide v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    cmp-long v0, v9, v11

    if-nez v0, :cond_b

    .line 2196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    .line 2197
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/32 v9, 0x927c0

    invoke-virtual {v0, v5, v9, v10}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 2198
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessStaticsLevel()F

    move-result v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_c

    iget-wide v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    cmp-long v0, v9, v11

    if-eqz v0, :cond_c

    .line 2200
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v11

    iget-wide v12, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x2710

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/display/OpAutoBrightnessHelper;->addRecord(JJJ)V

    .line 2201
    iput-wide v9, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    .line 2202
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2208
    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, v4, v2}, Lcom/android/server/display/RampAnimator;->animateTo(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2209
    const-wide/32 v9, 0x20000

    float-to-int v0, v4

    const-string v5, "TargetScreenBrightness"

    invoke-static {v9, v10, v5, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2212
    :try_start_0
    const-string v0, "debug.tracing.screen_brightness"

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2215
    goto :goto_7

    .line 2213
    :catch_0
    move-exception v0

    .line 2214
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to set prop: debug.tracing.screen_brightness ("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_7
    :try_start_1
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2219
    invoke-static {v5, v4}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v5

    .line 2218
    invoke-interface {v0, v5}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2223
    goto :goto_8

    .line 2221
    :catch_1
    move-exception v0

    .line 2226
    :cond_d
    :goto_8
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_f

    .line 2227
    cmpg-float v0, v4, v3

    if-gtz v0, :cond_e

    .line 2228
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/OpAutoBrightnessHelper;->reportBrightness(F)V

    goto :goto_9

    .line 2230
    :cond_e
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-virtual {v0, v3}, Lcom/android/server/display/OpAutoBrightnessHelper;->reportBrightness(F)V

    .line 2234
    :cond_f
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateDitherStatus()V

    .line 2239
    return-void
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .line 2255
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2256
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2257
    :cond_0
    if-eq p1, v2, :cond_1

    .line 2258
    return-void

    .line 2261
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2264
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2265
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2266
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2269
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2270
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v1

    .line 2269
    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 2271
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 2272
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2279
    :cond_4
    if-eq p1, v3, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    .line 2285
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_7

    if-eq p1, v3, :cond_7

    .line 2286
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2287
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2288
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    .line 2291
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_9

    .line 2295
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2296
    return-void

    .line 2312
    :cond_8
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2313
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2315
    :cond_9
    const/4 v4, 0x5

    if-ne p1, v4, :cond_c

    .line 2319
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2320
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 2321
    return-void

    .line 2325
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2326
    return-void

    .line 2330
    :cond_b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2331
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2332
    :cond_c
    const/4 v4, 0x3

    if-ne p1, v4, :cond_f

    .line 2337
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2338
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 2339
    return-void

    .line 2343
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2344
    return-void

    .line 2348
    :cond_e
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2349
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2350
    :cond_f
    const/4 v5, 0x4

    if-ne p1, v5, :cond_13

    .line 2354
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2355
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_10

    .line 2356
    return-void

    .line 2361
    :cond_10
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_12

    .line 2362
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2363
    return-void

    .line 2365
    :cond_11
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2369
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2370
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2371
    :cond_13
    const/4 v4, 0x6

    if-ne p1, v4, :cond_17

    .line 2375
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2376
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_14

    .line 2377
    return-void

    .line 2382
    :cond_14
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_16

    .line 2383
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2384
    return-void

    .line 2386
    :cond_15
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2390
    :cond_16
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2391
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_3

    .line 2394
    :cond_17
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2395
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v4, 0x0

    if-nez v0, :cond_18

    .line 2396
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2399
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_19

    .line 2402
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2403
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2404
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_3

    .line 2405
    :cond_19
    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2408
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_1a

    .line 2409
    goto :goto_2

    :cond_1a
    move v2, v3

    .line 2407
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2410
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_1b

    .line 2412
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    .line 2417
    :cond_1b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2420
    :goto_3
    return-void
.end method

.method private blockScreenOff()V
    .locals 4

    .line 1940
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_0

    .line 1941
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen off blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1942
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 1943
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 1944
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    :cond_0
    return-void
.end method

.method private blockScreenOn()V
    .locals 4

    .line 1922
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 1923
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen on blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1924
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1925
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1926
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_0
    return-void
.end method

.method private caculateBrightnessByNits(FFZ)F
    .locals 4
    .param p1, "brightness"    # F
    .param p2, "percent"    # F
    .param p3, "log"    # Z

    .line 3427
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v0, :cond_0

    .line 3428
    return p1

    .line 3429
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    mul-float/2addr v0, p2

    .line 3430
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    .line 3431
    .local v1, "b":F
    if-eqz p3, :cond_1

    .line 3432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smtbrn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 3433
    invoke-static {v3, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ") --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 3435
    invoke-static {v3, v1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3432
    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    :cond_1
    return v1
.end method

.method private caculateBrightnessByNitsLimit(FFIZ)F
    .locals 4
    .param p1, "brightness"    # F
    .param p2, "percent"    # F
    .param p3, "limit_nits"    # I
    .param p4, "log"    # Z

    .line 3543
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v0, :cond_0

    .line 3544
    mul-float v0, p1, p2

    return v0

    .line 3545
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    mul-float/2addr v0, p2

    .line 3546
    .local v0, "nits":F
    int-to-float v1, p3

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    int-to-float v1, p3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    move v0, v1

    .line 3547
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    .line 3548
    .local v1, "b":F
    if-eqz p4, :cond_2

    .line 3549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera/Gallery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " limit_nits "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 3550
    invoke-static {v3, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ") --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 3552
    invoke-static {v3, v1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3549
    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    :cond_2
    return v1
.end method

.method private caculateBrightnessInHighTemp(FF)[Ljava/lang/Float;
    .locals 8
    .param p1, "brightness"    # F
    .param p2, "rate"    # F

    .line 3479
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3511
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3479
    if-nez v0, :cond_0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 3480
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    .line 3481
    invoke-static {v2}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->updateHBMStatus(Z)V

    goto :goto_0

    .line 3482
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    if-eqz v0, :cond_1

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_1

    .line 3483
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    .line 3484
    invoke-static {v3}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->updateHBMStatus(Z)V

    .line 3486
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-enter v0

    .line 3488
    const/4 v5, 0x2

    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mInHighTemp:Z

    if-eqz v6, :cond_8

    const v6, 0x3ecccccd    # 0.4f

    cmpg-float v7, p1, v6

    if-gez v7, :cond_2

    goto :goto_3

    .line 3493
    :cond_2
    cmpg-float v1, p1, v1

    if-gtz v1, :cond_5

    .line 3495
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    mul-float/2addr v1, p1

    .line 3496
    .local v1, "ret":F
    cmpg-float v6, v1, v6

    if-gez v6, :cond_3

    .line 3497
    const v1, 0x3ecccccd    # 0.4f

    .line 3499
    :cond_3
    new-array v6, v5, [Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    goto :goto_1

    :cond_4
    move v7, p2

    :goto_1
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3511
    :try_start_1
    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3499
    return-object v6

    .line 3502
    .end local v1    # "ret":F
    :cond_5
    :try_start_2
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    mul-float/2addr v1, p1

    .line 3503
    .restart local v1    # "ret":F
    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_6

    .line 3504
    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    move v1, v6

    .line 3506
    :cond_6
    new-array v6, v5, [Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    .line 3507
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    goto :goto_2

    :cond_7
    move v7, p2

    :goto_2
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3511
    :try_start_3
    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3506
    return-object v6

    .line 3489
    .end local v1    # "ret":F
    :cond_8
    :goto_3
    :try_start_4
    new-array v1, v5, [Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v1, v3

    .line 3490
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    goto :goto_4

    :cond_9
    move v6, p2

    :goto_4
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v1, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3511
    :try_start_5
    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3489
    return-object v1

    .line 3511
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 3508
    :catch_0
    move-exception v1

    .line 3509
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    new-array v5, v5, [Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3511
    :try_start_7
    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-exit v0

    .line 3509
    return-object v5

    .line 3511
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    .line 3512
    nop

    .end local p0    # "this":Lcom/android/server/display/DisplayPowerController;
    .end local p1    # "brightness":F
    .end local p2    # "rate":F
    throw v1

    .line 3513
    .restart local p0    # "this":Lcom/android/server/display/DisplayPowerController;
    .restart local p1    # "brightness":F
    .restart local p2    # "rate":F
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method

.method private static clampAbsoluteBrightness(F)F
    .locals 2
    .param p0, "value"    # F

    .line 2964
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .line 2960
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static clampAutoBrightnessAdjustment(F)F
    .locals 2
    .param p0, "value"    # F

    .line 2969
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(F)F
    .locals 2
    .param p1, "value"    # F

    .line 2088
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2089
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    return v0

    .line 2091
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightnessForVr(F)F
    .locals 2
    .param p1, "value"    # F

    .line 2082
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .line 2539
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2540
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2541
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 2543
    :cond_0
    return-void
.end method

.method private convertToNits(I)F
    .locals 1
    .param p1, "backlight"    # I

    .line 2696
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_0

    .line 2697
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    return v0

    .line 2699
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private debounceProximitySensor()V
    .locals 6

    .line 2514
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 2517
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2518
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 2520
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2524
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    .line 2527
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 2528
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0

    .line 2532
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2533
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2536
    .end local v0    # "now":J
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2849
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2850
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2860
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2859
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastUserSetScreenBrightnessFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenBrightnessSettingFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightnessFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedScreenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2884
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2883
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    if-eqz v0, :cond_0

    .line 2887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 2888
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2887
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2891
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 2892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2893
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2892
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 2896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 2897
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2896
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2900
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_3

    .line 2901
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 2904
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_4

    .line 2905
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2908
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_5

    .line 2909
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2910
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 2913
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2914
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_6

    .line 2915
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->dump(Ljava/io/PrintWriter;)V

    .line 2916
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->dump(Ljava/io/PrintWriter;)V

    .line 2918
    :cond_6
    return-void
.end method

.method public static enableBoostBrightnessGallery(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 2114
    sput-boolean p0, Lcom/android/server/display/DisplayPowerController;->mBoostGalleryBrightness:Z

    .line 2115
    return-void
.end method

.method private findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 4
    .param p1, "sensorType"    # Ljava/lang/String;

    .line 994
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 996
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 997
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 998
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 999
    return-object v2

    .line 996
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1003
    .end local v0    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method private getAutoBrightnessAdjustmentSetting()F
    .locals 4

    .line 2608
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2610
    .local v0, "adj":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAutoBrightnessAdjustment(F)F

    move-result v2

    :goto_0
    return v2
.end method

.method private getBrightnessStaticsLevel()F
    .locals 2

    .line 2244
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_0

    .line 2245
    const/high16 v1, 0x43af0000    # 350.0f

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v0

    return v0

    .line 2248
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private static getFloat(Landroid/content/res/Resources;I)F
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 946
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 947
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 948
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 950
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    return v1

    .line 952
    :cond_0
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 958
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 959
    .local v0, "N":I
    new-array v1, v0, [F

    .line 960
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 961
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 960
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 963
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 964
    return-object v1
.end method

.method private getScreenBrightnessForVrSetting()F
    .locals 4

    .line 2621
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    const-string/jumbo v2, "screen_brightness_for_vr_float"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2624
    .local v0, "brightnessFloat":F
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForVr(F)F

    move-result v1

    return v1
.end method

.method private getScreenBrightnessMode()I
    .locals 4

    .line 2630
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMode:I

    const-string/jumbo v2, "screen_brightness_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getScreenBrightnessSetting()F
    .locals 4

    .line 2614
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    const-string/jumbo v2, "screen_brightness_float"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2617
    .local v0, "brightness":F
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    return v1
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 6
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .line 2469
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_6

    .line 2470
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 2471
    return-void

    .line 2473
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    .line 2474
    return-void

    .line 2480
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2481
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 2484
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 2486
    .local v0, "fast":Z
    :cond_2
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2489
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mMotionCheck:Lcom/android/server/display/DisplayPowerController$MotionCheck;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->getPickUpPhoneState()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    .line 2493
    :cond_3
    add-long/2addr v2, p1

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1

    .line 2490
    :cond_4
    :goto_0
    add-long v4, p1, v2

    add-long/2addr v4, v2

    invoke-direct {p0, v4, v5}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 2502
    .end local v0    # "fast":Z
    :goto_1
    goto :goto_2

    .line 2503
    :cond_5
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2504
    const-wide/16 v0, 0xa

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 2509
    :goto_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    .line 2511
    :cond_6
    return-void
.end method

.method private handleSettingsChange(Z)V
    .locals 5
    .param p1, "userSwitch"    # Z

    .line 2565
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 2567
    if-eqz p1, :cond_1

    .line 2569
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 2570
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 2571
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 2575
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2580
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessMode()I

    move-result v0

    .line 2582
    .local v0, "mode":I
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMode:I

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_2

    .line 2585
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 2587
    :cond_2
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMode:I

    .line 2589
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2592
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 2596
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 2599
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getCurrentAmbientLux()F

    move-result v2

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/OpAutoBrightnessHelper;->adjustBrightness(FFF)V

    .line 2604
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 2605
    return-void
.end method

.method private initialize()V
    .locals 6

    .line 1131
    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 1132
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/display/ColorFade;

    invoke-direct {v2, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1134
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v1, :cond_1

    .line 1135
    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1137
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1138
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1140
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 1142
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1143
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1146
    :cond_1
    new-instance v0, Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 1148
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 1152
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 1153
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1154
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v2

    .line 1153
    invoke-static {v1, v2}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    goto :goto_1

    .line 1155
    :catch_0
    move-exception v0

    .line 1159
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1160
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v1

    .line 1159
    invoke-static {v0, v1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    .line 1161
    .local v0, "brightness":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 1162
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 1164
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1165
    const-string/jumbo v2, "screen_brightness_float"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1164
    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1167
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1168
    const-string/jumbo v2, "screen_brightness_for_vr_float"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1167
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1170
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1171
    const-string/jumbo v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1170
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1175
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1176
    const-string/jumbo v2, "smtbrn"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1175
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1179
    new-instance v1, Lcom/android/server/display/OpBrightnessReasonAndRate;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/display/OpBrightnessReasonAndRate;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    .line 1181
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1182
    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1181
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1188
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1189
    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1188
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1194
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1195
    const-string v2, "game_mode_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1194
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1198
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1199
    const-string v2, "flashlight_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1198
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1202
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1203
    const-string v2, "auto_brightness_in_aod"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1202
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1205
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1206
    const-string v2, "fod_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1205
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1210
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1211
    const-string v2, "aod_nits_flag"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1210
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1214
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isValidBrightnessValue(F)Z
    .locals 4
    .param p1, "brightnessState"    # F

    .line 2100
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x62

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2101
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    return v0

    .line 2104
    :cond_1
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    return v0
.end method

.method private logDisplayPolicyChanged(I)V
    .locals 2
    .param p1, "newPolicy"    # I

    .line 2558
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2559
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2560
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 2561
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 2562
    return-void
.end method

.method private notifyBrightnessChanged(IZZ)V
    .locals 7
    .param p1, "brightness"    # I
    .param p2, "userInitiated"    # Z
    .param p3, "hadUserDataPoint"    # Z

    .line 2680
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v6

    .line 2681
    .local v6, "brightnessInNits":F
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_1

    .line 2686
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v0, :cond_0

    .line 2687
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    move v3, v0

    goto :goto_0

    .line 2688
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    move v3, v0

    :goto_0
    nop

    .line 2689
    .local v3, "powerFactor":F
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2691
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v5

    .line 2689
    move v1, v6

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZ)V

    .line 2693
    .end local v3    # "powerFactor":F
    :cond_1
    return-void
.end method

.method private proximitySensorEvent(JZ)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .line 3074
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    .line 3078
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_ctrl_psensor_positive"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3080
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2921
    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 2929
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2927
    :cond_0
    const-string v0, "Positive"

    return-object v0

    .line 2925
    :cond_1
    const-string v0, "Negative"

    return-object v0

    .line 2923
    :cond_2
    const-string v0, "Unknown"

    return-object v0
.end method

.method private putAutoBrightnessAdjustmentSetting(F)V
    .locals 3
    .param p1, "adjustment"    # F

    .line 2643
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2644
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2646
    return-void
.end method

.method private putScreenBrightnessSetting(F)V
    .locals 3
    .param p1, "brightnessValue"    # F

    .line 2637
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 2638
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_float"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2640
    return-void
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2934
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2942
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2940
    :cond_0
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    .line 2938
    :cond_1
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    .line 2936
    :cond_2
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0
.end method

.method private sendOnProximityNegativeSuspendWithWakelock()V
    .locals 2

    .line 2727
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2728
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2729
    return-void
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .line 2754
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2755
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2756
    return-void
.end method

.method private sendOnProximityPositiveSuspendWithWakelock()V
    .locals 2

    .line 2714
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2715
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2716
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .line 2741
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2742
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2743
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .line 2553
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2554
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2555
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .line 1115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1116
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1117
    monitor-exit v0

    .line 1118
    return-void

    .line 1117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 2

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_0

    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1123
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1124
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1126
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 4
    .param p1, "debounceTime"    # J

    .line 2546
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2547
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2549
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2550
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 2430
    if-eqz p1, :cond_0

    .line 2431
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 2434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2435
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2439
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mMotionCheck:Lcom/android/server/display/DisplayPowerController$MotionCheck;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->startListening()V

    goto :goto_0

    .line 2443
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 2446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2449
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    .line 2451
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2452
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2453
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2454
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2455
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 2458
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_ctrl_psensor_positive"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2462
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mMotionCheck:Lcom/android/server/display/DisplayPowerController$MotionCheck;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->stopListening()V

    .line 2466
    :cond_1
    :goto_0
    return-void
.end method

.method private setReportedScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 2077
    const-wide/32 v0, 0x20000

    const-string v2, "ReportedScreenStateToPolicy"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2078
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2079
    return-void
.end method

.method private setScreenState(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 1958
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(IZ)Z
    .locals 9
    .param p1, "state"    # I
    .param p2, "reportOnly"    # Z

    .line 1962
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1963
    .local v2, "isOff":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, p1, :cond_9

    .line 1965
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-virtual {v3, p1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->setScreenState(I)V

    .line 1969
    const/4 v3, 0x2

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 1999
    :cond_1
    if-ne p1, v4, :cond_6

    .line 2000
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const-string v6, "FingerPrintMode"

    invoke-virtual {v5, v6, v1, v0}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_2

    .line 1970
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v5, p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->screenStateChange(I)V

    .line 1973
    new-array v5, v1, [I

    const/16 v6, 0x124

    aput v6, v5, v0

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1974
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    invoke-interface {v5, p1}, Lcom/oneplus/iris/IOneplusIrisManager;->screenStateChange(I)V

    .line 1979
    :cond_3
    sget-boolean v5, Lcom/android/server/display/DisplayPowerController;->ADFR_ENABLED:Z

    if-eqz v5, :cond_4

    .line 1980
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mOPlusRefreshRateManager:Lcom/oneplus/adfr/IOPlusRefreshRateManager;

    if-eqz v5, :cond_4

    .line 1981
    invoke-interface {v5, p1}, Lcom/oneplus/adfr/IOPlusRefreshRateManager;->screenStateChange(I)V

    .line 1988
    :cond_4
    sget-boolean v5, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    const-string v6, "DisplayPowerController"

    if-eqz v5, :cond_5

    .line 1989
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set power state= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", IStatusBarService = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_5
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v5, :cond_6

    .line 1993
    :try_start_0
    invoke-interface {v5, p1}, Lcom/android/internal/statusbar/IStatusBarService;->updateDisplayPowerStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1994
    :catch_0
    move-exception v5

    .line 1995
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t notify statusbar service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v5, :cond_8

    .line 2006
    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v5, v3, :cond_7

    .line 2007
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2008
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    .line 2011
    invoke-static {v1}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateKeepHighVsync(Z)V

    .line 2013
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v3, v5}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 2014
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    goto :goto_3

    .line 2015
    :cond_7
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v3, :cond_8

    .line 2017
    return v0

    .line 2021
    :cond_8
    :goto_3
    if-nez p2, :cond_9

    .line 2022
    const-wide/32 v5, 0x20000

    const-string v3, "ScreenState"

    invoke-static {v5, v6, v3, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2024
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "debug.tracing.screen_state"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 2028
    :try_start_1
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2031
    goto :goto_4

    .line 2029
    :catch_1
    move-exception v3

    .line 2041
    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_a

    .line 2043
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2044
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2045
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_5

    .line 2046
    :cond_a
    if-nez v2, :cond_b

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v4, :cond_b

    .line 2051
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 2052
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    .line 2053
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2055
    :cond_b
    :goto_5
    if-nez v2, :cond_d

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-nez v3, :cond_d

    .line 2056
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2057
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_c

    .line 2058
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_6

    .line 2060
    :cond_c
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2063
    :goto_6
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 2067
    :cond_d
    if-eqz v2, :cond_e

    .line 2068
    invoke-static {v0}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doWriteRecord(Z)V

    .line 2070
    :cond_e
    invoke-static {v2}, Lcom/android/server/am/OpRestartProcessManagerInjector;->setScreenState(Z)V

    .line 2073
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v3, :cond_f

    move v0, v1

    :cond_f
    return v0
.end method

.method private static skipRampStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2947
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2955
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2953
    :cond_0
    const-string v0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object v0

    .line 2951
    :cond_1
    const-string v0, "RAMP_STATE_SKIP_INITIAL"

    return-object v0

    .line 2949
    :cond_2
    const-string v0, "RAMP_STATE_SKIP_NONE"

    return-object v0
.end method

.method private triggerProximitySensorEvent(Z)V
    .locals 4
    .param p1, "positive"    # Z

    .line 3064
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 3065
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3066
    .local v0, "time":J
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 3067
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P-Sensor Changed: positive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/display/DisplayPowerController;->proximitySensorEvent(JZ)V

    .line 3071
    .end local v0    # "time":J
    :cond_1
    return-void
.end method

.method private unblockScreenOff()V
    .locals 6

    .line 1949
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_0

    .line 1950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 1951
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 1952
    .local v0, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen off after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen off blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1955
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private unblockScreenOn()V
    .locals 6

    .line 1931
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_0

    .line 1932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1933
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 1934
    .local v0, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen on after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen on blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1937
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updateAutoBrightnessAdjustment()Z
    .locals 4

    .line 2649
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2650
    return v1

    .line 2652
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_1

    .line 2653
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2654
    return v1

    .line 2656
    :cond_1
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2657
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2658
    const/4 v0, 0x1

    return v0
.end method

.method private updateDitherStatus()V
    .locals 9

    .line 3698
    const/4 v0, 0x0

    .line 3699
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fod_mode"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3703
    .local v1, "fodMode":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oneplus_dc_dimming_value"

    invoke-static {v5, v6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 3705
    .local v4, "dcStatus":Z
    :goto_1
    const/4 v5, 0x0

    .line 3706
    .local v5, "lowbrightness":Z
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    if-eqz v6, :cond_3

    .line 3707
    invoke-virtual {v6}, Lcom/android/server/display/RampAnimator;->getBrightnessValue()F

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-virtual {v7, v8}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    move v5, v6

    .line 3710
    :cond_3
    if-eqz v1, :cond_4

    .line 3711
    const/4 v0, 0x0

    goto :goto_4

    .line 3713
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    if-eqz v6, :cond_5

    .line 3714
    invoke-virtual {v6}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    goto :goto_3

    .line 3716
    :cond_5
    const/4 v0, 0x0

    .line 3718
    :goto_3
    if-eqz v5, :cond_6

    if-nez v4, :cond_6

    .line 3719
    const/4 v0, 0x1

    .line 3724
    :cond_6
    :goto_4
    :try_start_0
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mDitherLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3725
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/display/DisplayPowerController;->mDitherEnabled:Z

    if-eq v0, v7, :cond_9

    .line 3726
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v7

    const/16 v8, 0x17

    if-eqz v0, :cond_7

    move v3, v2

    :cond_7
    invoke-interface {v7, v8, v3}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    .line 3727
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDitherEnabled:Z

    .line 3728
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_9

    .line 3729
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDitherStatus(): "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    const-string v7, "enable"

    goto :goto_5

    :cond_8
    const-string v7, "disable"

    :goto_5
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    :cond_9
    monitor-exit v6

    .line 3735
    goto :goto_7

    .line 3732
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "enable":Z
    .end local v1    # "fodMode":Z
    .end local v4    # "dcStatus":Z
    .end local v5    # "lowbrightness":Z
    .end local p0    # "this":Lcom/android/server/display/DisplayPowerController;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3733
    .restart local v0    # "enable":Z
    .restart local v1    # "fodMode":Z
    .restart local v4    # "dcStatus":Z
    .restart local v5    # "lowbrightness":Z
    .restart local p0    # "this":Lcom/android/server/display/DisplayPowerController;
    :catch_0
    move-exception v2

    .line 3734
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a

    const-string v6, "enable"

    goto :goto_6

    :cond_a
    const-string v6, "disable"

    :goto_6
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dither: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "DisplayPowerController"

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method private updatePowerState()V
    .locals 33

    .line 1261
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1262
    .local v2, "mustInitialize":Z
    const/4 v3, 0x0

    .line 1263
    .local v3, "brightnessAdjustmentFlags":I
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1265
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1266
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateDitherStatus()V

    .line 1267
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1268
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_0

    .line 1269
    monitor-exit v4

    return-void

    .line 1272
    :cond_0
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_1

    .line 1273
    new-instance v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v5, v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1274
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1275
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1276
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1277
    const/4 v2, 0x1

    .line 1280
    const/4 v5, 0x3

    .local v5, "previousPolicy":I
    goto :goto_0

    .line 1281
    .end local v5    # "previousPolicy":I
    :cond_1
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v5, :cond_2

    .line 1282
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1283
    .restart local v5    # "previousPolicy":I
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1284
    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v6, v7

    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1285
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1286
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1287
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    goto :goto_0

    .line 1289
    .end local v5    # "previousPolicy":I
    :cond_2
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1292
    .restart local v5    # "previousPolicy":I
    :goto_0
    :try_start_1
    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    const/4 v7, 0x1

    if-nez v6, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    move v6, v0

    .line 1293
    .local v6, "mustNotify":Z
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1296
    if-eqz v2, :cond_4

    .line 1297
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 1304
    :cond_4
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 1305
    .local v4, "brightnessState":F
    const/4 v8, 0x0

    .line 1306
    .local v8, "performScreenOffTransition":Z
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eqz v9, :cond_8

    if-eq v9, v7, :cond_6

    if-eq v9, v10, :cond_5

    .line 1328
    const/4 v9, 0x2

    .local v9, "state":I
    goto :goto_3

    .line 1323
    .end local v9    # "state":I
    :cond_5
    const/4 v9, 0x5

    .line 1324
    .restart local v9    # "state":I
    goto :goto_3

    .line 1312
    .end local v9    # "state":I
    :cond_6
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v9, :cond_7

    .line 1313
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .restart local v9    # "state":I
    goto :goto_2

    .line 1315
    .end local v9    # "state":I
    :cond_7
    const/4 v9, 0x3

    .line 1317
    .restart local v9    # "state":I
    :goto_2
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v12, :cond_9

    .line 1318
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 1319
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v12, v11}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_3

    .line 1308
    .end local v9    # "state":I
    :cond_8
    const/4 v9, 0x1

    .line 1309
    .restart local v9    # "state":I
    const/4 v8, 0x1

    .line 1310
    nop

    .line 1331
    :cond_9
    :goto_3
    nop

    .line 1365
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v13, 0x3

    if-eqz v12, :cond_16

    .line 1366
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "useProximityForceSuspend = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "DisplayPowerController"

    invoke-static {v14, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-eqz v12, :cond_12

    .line 1368
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v12, :cond_d

    .line 1369
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1371
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    if-nez v12, :cond_c

    .line 1372
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mProximity = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v14}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "DisplayPowerController"

    invoke-static {v14, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_a

    .line 1374
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveSuspendWithWakelock()V

    goto :goto_4

    .line 1375
    :cond_a
    if-nez v12, :cond_b

    .line 1376
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeSuspendWithWakelock()V

    .line 1381
    :cond_b
    :goto_4
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    goto/16 :goto_6

    .line 1383
    :cond_c
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v12, :cond_17

    .line 1384
    const-string v12, "DisplayPowerController"

    const-string/jumbo v14, "the last proximity event has been handled"

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1389
    :cond_d
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v12, :cond_17

    .line 1390
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mPowerRequest.useProximitySensor = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", mWaitingForNegativeProximity = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", state = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "DisplayPowerController"

    invoke-static {v14, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v12, :cond_f

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_f

    if-eq v9, v7, :cond_e

    if-ne v9, v13, :cond_f

    .line 1399
    :cond_e
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_6

    .line 1401
    :cond_f
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1403
    if-eq v9, v7, :cond_10

    if-ne v9, v13, :cond_11

    .line 1404
    :cond_10
    const-string v12, "DisplayPowerController"

    const-string/jumbo v14, "turn on lcd light due to proximity released"

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeSuspendWithWakelock()V

    .line 1408
    :cond_11
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1409
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1410
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    goto :goto_6

    .line 1415
    :cond_12
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v12, :cond_13

    if-eq v9, v7, :cond_13

    .line 1416
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1417
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v12, :cond_15

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_15

    .line 1419
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1420
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    goto :goto_5

    .line 1422
    :cond_13
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v12, :cond_14

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_14

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_14

    if-eq v9, v7, :cond_14

    .line 1426
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_5

    .line 1428
    :cond_14
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1429
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1431
    :cond_15
    :goto_5
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_17

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-eq v12, v7, :cond_17

    .line 1433
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1434
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto :goto_6

    .line 1438
    :cond_16
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1440
    :cond_17
    :goto_6
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-nez v12, :cond_18

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_18

    .line 1441
    const/4 v9, 0x1

    .line 1448
    :cond_18
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v12

    .line 1449
    .local v12, "oldState":I
    invoke-direct {v1, v9, v8}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 1450
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v14}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v9

    .line 1452
    const/4 v14, 0x5

    if-ne v9, v7, :cond_19

    .line 1453
    const/high16 v4, -0x40800000    # -1.0f

    .line 1454
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v15, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1458
    :cond_19
    if-ne v9, v14, :cond_1a

    .line 1459
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 1460
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x6

    invoke-virtual {v15, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1465
    :cond_1a
    const/4 v14, -0x2

    if-ne v9, v13, :cond_1d

    .line 1466
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mAodNits:I

    if-eqz v13, :cond_1d

    sget-boolean v13, Lcom/android/server/display/DisplayPowerController;->SUPPORT_REAL_AOD:Z

    if-nez v13, :cond_1d

    .line 1467
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    iget v15, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    const-string/jumbo v10, "screen_brightness_float"

    invoke-static {v13, v10, v15, v14}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v10

    .line 1470
    .local v10, "system_brightness":F
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/high16 v15, 0x42480000    # 50.0f

    invoke-virtual {v13, v15}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v13

    cmpl-float v13, v10, v13

    if-lez v13, :cond_1b

    .line 1471
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v13, v15}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v4

    .line 1473
    :cond_1b
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mAodNits:I

    if-ne v13, v7, :cond_1c

    .line 1474
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/high16 v15, 0x41200000    # 10.0f

    invoke-virtual {v13, v15}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v4

    .line 1476
    :cond_1c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "aod brightness "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "DisplayPowerController"

    invoke-static {v15, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v13, v11}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1483
    .end local v10    # "system_brightness":F
    :cond_1d
    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    if-lez v10, :cond_1e

    .line 1484
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v13, v10}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(Landroid/content/Context;I)F

    move-result v4

    .line 1485
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v13, 0x15

    invoke-virtual {v10, v13}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1490
    :cond_1e
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    if-eqz v10, :cond_1f

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    cmpl-float v10, v10, v15

    if-ltz v10, :cond_1f

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    cmpg-float v10, v10, v13

    if-gtz v10, :cond_1f

    .line 1493
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    invoke-direct {v1, v10}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v4

    .line 1494
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v15, 0x7

    invoke-virtual {v10, v15}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1495
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    goto :goto_7

    .line 1497
    :cond_1f
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    .line 1500
    :goto_7
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v15, "auto_brightness_in_aod"

    invoke-static {v10, v15, v7, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-ne v10, v7, :cond_20

    move v10, v7

    goto :goto_8

    :cond_20
    move v10, v0

    .line 1502
    .local v10, "autoBrightnessEnabledInAod":Z
    :goto_8
    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v14, :cond_21

    .line 1503
    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v14

    if-eqz v14, :cond_21

    if-eqz v10, :cond_21

    move v14, v7

    goto :goto_9

    :cond_21
    move v14, v0

    .line 1504
    .local v14, "autoBrightnessEnabledInDoze":Z
    :goto_9
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v15, :cond_23

    if-eq v9, v11, :cond_22

    if-eqz v14, :cond_23

    .line 1506
    :cond_22
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_23

    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v15, :cond_23

    move v15, v7

    goto :goto_a

    :cond_23
    move v15, v0

    .line 1509
    .local v15, "autoBrightnessEnabled":Z
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateUserSetScreenBrightness()Z

    move-result v26

    .line 1513
    .local v26, "userSetBrightnessChanged":Z
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    invoke-direct {v1, v13}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 1514
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 1515
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1516
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v11, 0x8

    invoke-virtual {v13, v11}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_b

    .line 1518
    :cond_24
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1521
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessAdjustment()Z

    move-result v11

    .line 1522
    .local v11, "autoBrightnessAdjustmentChanged":Z
    if-eqz v11, :cond_25

    .line 1523
    const/high16 v13, 0x7fc00000    # Float.NaN

    iput v13, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1528
    :cond_25
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_26

    .line 1529
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1530
    .local v13, "autoBrightnessAdjustment":F
    const/4 v3, 0x1

    .line 1531
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    goto :goto_c

    .line 1533
    .end local v13    # "autoBrightnessAdjustment":F
    :cond_26
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 1534
    .restart local v13    # "autoBrightnessAdjustment":F
    const/4 v3, 0x2

    .line 1535
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    .line 1541
    :goto_c
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    const/high16 v28, -0x40800000    # -1.0f

    if-eqz v0, :cond_27

    cmpl-float v0, v4, v28

    if-eqz v0, :cond_27

    .line 1543
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1544
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1545
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    goto :goto_d

    .line 1547
    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    .line 1552
    :goto_d
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_29

    if-nez v11, :cond_28

    if-eqz v26, :cond_29

    :cond_28
    const/4 v0, 0x1

    goto :goto_e

    :cond_29
    const/4 v0, 0x0

    .line 1554
    .local v0, "userInitiatedChange":Z
    :goto_e
    const/4 v7, 0x0

    .line 1556
    .local v7, "hadUserBrightnessPoint":Z
    move/from16 v29, v2

    .end local v2    # "mustInitialize":Z
    .local v29, "mustInitialize":Z
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_2a

    .line 1557
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result v7

    .line 1558
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move/from16 v30, v3

    .end local v3    # "brightnessAdjustmentFlags":I
    .local v30, "brightnessAdjustmentFlags":I
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move/from16 v31, v7

    .end local v7    # "hadUserBrightnessPoint":Z
    .local v31, "hadUserBrightnessPoint":Z
    iget v7, v1, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    move/from16 v32, v8

    .end local v8    # "performScreenOffTransition":Z
    .local v32, "performScreenOffTransition":Z
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move-object/from16 v18, v2

    move/from16 v19, v15

    move-object/from16 v20, v3

    move/from16 v21, v7

    move/from16 v22, v26

    move/from16 v23, v13

    move/from16 v24, v11

    move/from16 v25, v8

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZI)V

    move/from16 v7, v31

    goto :goto_f

    .line 1556
    .end local v30    # "brightnessAdjustmentFlags":I
    .end local v31    # "hadUserBrightnessPoint":Z
    .end local v32    # "performScreenOffTransition":Z
    .restart local v3    # "brightnessAdjustmentFlags":I
    .restart local v7    # "hadUserBrightnessPoint":Z
    .restart local v8    # "performScreenOffTransition":Z
    :cond_2a
    move/from16 v30, v3

    move/from16 v32, v8

    .line 1565
    .end local v3    # "brightnessAdjustmentFlags":I
    .end local v8    # "performScreenOffTransition":Z
    .restart local v30    # "brightnessAdjustmentFlags":I
    .restart local v32    # "performScreenOffTransition":Z
    :goto_f
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v2, :cond_2b

    .line 1566
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessTracker;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1570
    :cond_2b
    const/4 v2, 0x0

    .line 1571
    .local v2, "slowChange":Z
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1572
    move v3, v13

    .line 1573
    .local v3, "newAutoBrightnessAdjustment":F
    if-eqz v15, :cond_2c

    .line 1574
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v8}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()F

    move-result v4

    .line 1575
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1576
    invoke-virtual {v8}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v3

    .line 1578
    :cond_2c
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v8

    if-nez v8, :cond_2e

    cmpl-float v8, v4, v28

    if-nez v8, :cond_2d

    goto :goto_10

    .line 1597
    :cond_2d
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto :goto_11

    .line 1582
    :cond_2e
    :goto_10
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v8, :cond_2f

    if-nez v11, :cond_2f

    .line 1583
    const/4 v2, 0x1

    .line 1591
    :cond_2f
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-virtual {v8, v4}, Lcom/android/server/display/OpBrightnessReasonAndRate;->setSliderDuration(F)V

    .line 1593
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v8

    invoke-direct {v1, v8}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(F)V

    .line 1594
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1595
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    move/from16 v18, v2

    const/4 v2, 0x4

    .end local v2    # "slowChange":Z
    .local v18, "slowChange":Z
    invoke-virtual {v8, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    move/from16 v2, v18

    .line 1599
    .end local v18    # "slowChange":Z
    .restart local v2    # "slowChange":Z
    :goto_11
    cmpl-float v8, v13, v3

    if-eqz v8, :cond_30

    .line 1602
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessAdjustmentSetting(F)V

    move/from16 v3, v30

    goto :goto_12

    .line 1605
    :cond_30
    const/4 v8, 0x0

    move v3, v8

    .line 1607
    .end local v30    # "brightnessAdjustmentFlags":I
    .local v3, "brightnessAdjustmentFlags":I
    :goto_12
    goto :goto_13

    .line 1608
    .end local v3    # "brightnessAdjustmentFlags":I
    .restart local v30    # "brightnessAdjustmentFlags":I
    :cond_31
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1609
    const/4 v3, 0x0

    .line 1625
    .end local v30    # "brightnessAdjustmentFlags":I
    .restart local v3    # "brightnessAdjustmentFlags":I
    :goto_13
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    const-wide/16 v18, 0x0

    move/from16 v17, v10

    move/from16 v20, v11

    .end local v10    # "autoBrightnessEnabledInAod":Z
    .end local v11    # "autoBrightnessAdjustmentChanged":Z
    .local v17, "autoBrightnessEnabledInAod":Z
    .local v20, "autoBrightnessAdjustmentChanged":Z
    if-eqz v8, :cond_35

    .line 1626
    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    invoke-direct {v1, v8}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v4

    .line 1627
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1630
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mPreAutoBrightnessEnabled:Z

    if-nez v8, :cond_32

    if-eqz v15, :cond_32

    float-to-double v10, v4

    const-wide v23, 0x3fa999999999999aL    # 0.05

    cmpl-double v8, v10, v23

    if-lez v8, :cond_32

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mPreState:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_32

    .line 1633
    const v4, 0x3d4ccccd    # 0.05f

    .line 1634
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    .line 1635
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 1636
    .local v8, "msg":Landroid/os/Message;
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move/from16 v23, v13

    move v11, v14

    .end local v13    # "autoBrightnessAdjustment":F
    .end local v14    # "autoBrightnessEnabledInDoze":Z
    .local v11, "autoBrightnessEnabledInDoze":Z
    .local v23, "autoBrightnessAdjustment":F
    const-wide/16 v13, 0xc8

    invoke-virtual {v10, v8, v13, v14}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1637
    const-string v10, "DisplayPowerController"

    const-string v13, "brightnessState 0.05!"

    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    .end local v8    # "msg":Landroid/os/Message;
    move v8, v11

    goto :goto_14

    .line 1630
    .end local v11    # "autoBrightnessEnabledInDoze":Z
    .end local v23    # "autoBrightnessAdjustment":F
    .restart local v13    # "autoBrightnessAdjustment":F
    .restart local v14    # "autoBrightnessEnabledInDoze":Z
    :cond_32
    move/from16 v23, v13

    move v11, v14

    .line 1638
    .end local v13    # "autoBrightnessAdjustment":F
    .end local v14    # "autoBrightnessEnabledInDoze":Z
    .restart local v11    # "autoBrightnessEnabledInDoze":Z
    .restart local v23    # "autoBrightnessAdjustment":F
    iget-wide v13, v1, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    const-wide/16 v21, -0x1

    cmp-long v8, v13, v21

    if-eqz v8, :cond_33

    .line 1639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move v8, v11

    .end local v11    # "autoBrightnessEnabledInDoze":Z
    .local v8, "autoBrightnessEnabledInDoze":Z
    iget-wide v10, v1, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    sub-long/2addr v13, v10

    .line 1640
    .local v13, "delta":J
    cmp-long v10, v13, v18

    if-ltz v10, :cond_34

    const-wide/16 v10, 0x96

    cmp-long v10, v13, v10

    if-gez v10, :cond_34

    .line 1641
    const v4, 0x3d4ccccd    # 0.05f

    .line 1642
    const-string v10, "DisplayPowerController"

    const-string v11, "brightnessState 0.05."

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1638
    .end local v8    # "autoBrightnessEnabledInDoze":Z
    .end local v13    # "delta":J
    .restart local v11    # "autoBrightnessEnabledInDoze":Z
    :cond_33
    move v8, v11

    .line 1645
    .end local v11    # "autoBrightnessEnabledInDoze":Z
    .restart local v8    # "autoBrightnessEnabledInDoze":Z
    :cond_34
    :goto_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "brightnessState(m):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DisplayPowerController"

    invoke-static {v11, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1625
    .end local v8    # "autoBrightnessEnabledInDoze":Z
    .end local v23    # "autoBrightnessAdjustment":F
    .local v13, "autoBrightnessAdjustment":F
    .restart local v14    # "autoBrightnessEnabledInDoze":Z
    :cond_35
    move/from16 v23, v13

    move v8, v14

    .line 1647
    .end local v13    # "autoBrightnessAdjustment":F
    .end local v14    # "autoBrightnessEnabledInDoze":Z
    .restart local v8    # "autoBrightnessEnabledInDoze":Z
    .restart local v23    # "autoBrightnessAdjustment":F
    :goto_15
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v10}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v10

    iput v10, v1, Lcom/android/server/display/DisplayPowerController;->mPreState:I

    .line 1648
    iput-boolean v15, v1, Lcom/android/server/display/DisplayPowerController;->mPreAutoBrightnessEnabled:Z

    .line 1652
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3a

    .line 1653
    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    cmpl-float v10, v4, v10

    if-lez v10, :cond_36

    .line 1654
    const v10, 0x3d23d70a    # 0.04f

    sub-float v10, v4, v10

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1657
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    .line 1659
    :cond_36
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v10, :cond_37

    .line 1660
    const/4 v2, 0x0

    .line 1662
    :cond_37
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 1665
    sget-boolean v10, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v10, :cond_3c

    .line 1666
    sget-boolean v10, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v10, :cond_38

    .line 1667
    const-string v10, "DisplayPowerController"

    const-string v11, "[DimScreen] Screen is dimming"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_38
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v10

    if-nez v10, :cond_3c

    .line 1670
    sget-boolean v10, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v10, :cond_39

    .line 1671
    const-string v10, "DisplayPowerController"

    const-string v11, "[DimScreen] set dimming content provider for monitoring."

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_39
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "device_is_dimming"

    const/4 v13, 0x1

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_16

    .line 1677
    :cond_3a
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-eqz v10, :cond_3c

    .line 1678
    const/4 v2, 0x0

    .line 1679
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 1682
    sget-boolean v10, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v10, :cond_3c

    .line 1683
    sget-boolean v10, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v10, :cond_3b

    .line 1684
    const-string v10, "DisplayPowerController"

    const-string v11, "[DimScreen] Screen is not dimming -> reset"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_3b
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v11, 0x57

    invoke-virtual {v10, v11, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 1687
    .local v10, "msg":Landroid/os/Message;
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/16 v13, 0xa

    invoke-virtual {v11, v10, v13, v14}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1693
    .end local v10    # "msg":Landroid/os/Message;
    :cond_3c
    :goto_16
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v10, :cond_3f

    .line 1694
    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    cmpl-float v10, v4, v10

    if-lez v10, :cond_3d

    .line 1695
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 1696
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1701
    .local v10, "brightnessFactor":F
    const/4 v11, 0x1

    invoke-direct {v1, v4, v10, v11}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessByNits(FFZ)F

    move-result v13

    .line 1703
    .local v13, "lowPowerBrightnessFloat":F
    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    invoke-static {v13, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1705
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    .line 1707
    .end local v10    # "brightnessFactor":F
    .end local v13    # "lowPowerBrightnessFloat":F
    :cond_3d
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v10, :cond_3e

    .line 1708
    const/4 v2, 0x0

    .line 1710
    :cond_3e
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    goto :goto_17

    .line 1711
    :cond_3f
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-eqz v10, :cond_40

    .line 1712
    const/4 v2, 0x0

    .line 1713
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    .line 1718
    :cond_40
    :goto_17
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v10, :cond_59

    .line 1719
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v10, :cond_46

    .line 1720
    const/4 v10, 0x2

    if-ne v9, v10, :cond_45

    .line 1721
    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v10, :cond_41

    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v10, :cond_41

    .line 1722
    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1723
    const/4 v10, 0x1

    iput v10, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_19

    .line 1721
    :cond_41
    const/4 v10, 0x1

    .line 1724
    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v11, v10, :cond_43

    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v10, :cond_43

    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1726
    invoke-static {v4, v10}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v10

    if-nez v10, :cond_42

    .line 1728
    const/4 v10, 0x2

    iput v10, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_19

    .line 1726
    :cond_42
    const/4 v10, 0x2

    goto :goto_18

    .line 1724
    :cond_43
    const/4 v10, 0x2

    .line 1729
    :goto_18
    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v11, v10, :cond_44

    .line 1730
    const/4 v10, 0x0

    iput v10, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_19

    .line 1729
    :cond_44
    const/4 v10, 0x0

    goto :goto_19

    .line 1733
    :cond_45
    const/4 v10, 0x0

    iput v10, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 1737
    :cond_46
    :goto_19
    const/4 v10, 0x5

    if-eq v9, v10, :cond_48

    if-ne v12, v10, :cond_47

    goto :goto_1a

    :cond_47
    const/4 v10, 0x0

    goto :goto_1b

    :cond_48
    :goto_1a
    const/4 v10, 0x1

    .line 1739
    .local v10, "wasOrWillBeInVr":Z
    :goto_1b
    const/4 v11, 0x2

    if-ne v9, v11, :cond_49

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-eqz v11, :cond_49

    const/4 v11, 0x1

    goto :goto_1c

    :cond_49
    const/4 v11, 0x0

    .line 1744
    .local v11, "initialRampSkip":Z
    :goto_1c
    nop

    .line 1745
    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v13

    if-eqz v13, :cond_4a

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v13, :cond_4a

    const/4 v13, 0x1

    goto :goto_1d

    :cond_4a
    const/4 v13, 0x0

    .line 1748
    .local v13, "hasBrightnessBuckets":Z
    :goto_1d
    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v14, :cond_4b

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1749
    invoke-virtual {v14}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v14

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v16

    if-nez v14, :cond_4b

    const/4 v14, 0x1

    goto :goto_1e

    :cond_4b
    const/4 v14, 0x0

    .line 1750
    .local v14, "isDisplayContentVisible":Z
    :goto_1e
    move/from16 v16, v8

    .end local v8    # "autoBrightnessEnabledInDoze":Z
    .local v16, "autoBrightnessEnabledInDoze":Z
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    if-nez v8, :cond_4d

    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-eqz v8, :cond_4c

    goto :goto_1f

    :cond_4c
    const/4 v8, 0x0

    goto :goto_20

    :cond_4d
    :goto_1f
    const/4 v8, 0x1

    .line 1761
    .local v8, "brightnessIsTemporary":Z
    :goto_20
    cmpl-float v24, v4, v28

    if-nez v24, :cond_4e

    .line 1762
    const/16 v24, 0x0

    goto :goto_21

    :cond_4e
    move/from16 v24, v4

    :goto_21
    move/from16 v25, v24

    .line 1764
    .local v25, "animateValue":F
    move/from16 v24, v12

    .end local v12    # "oldState":I
    .local v24, "oldState":I
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v12, v12, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    invoke-static {v12, v3}, Lcom/android/server/display/OpBrightnessReasonAndRate;->setReason(II)V

    .line 1765
    const/4 v12, 0x0

    .line 1766
    .local v12, "skipRampAnimatorScreenON":Z
    move/from16 v27, v5

    move/from16 v28, v6

    .end local v5    # "previousPolicy":I
    .end local v6    # "mustNotify":Z
    .local v27, "previousPolicy":I
    .local v28, "mustNotify":Z
    iget-wide v5, v1, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    const-wide/16 v21, -0x1

    cmp-long v5, v5, v21

    if-eqz v5, :cond_50

    .line 1767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move/from16 v30, v3

    move/from16 v31, v4

    .end local v3    # "brightnessAdjustmentFlags":I
    .end local v4    # "brightnessState":F
    .restart local v30    # "brightnessAdjustmentFlags":I
    .local v31, "brightnessState":F
    iget-wide v3, v1, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    sub-long/2addr v5, v3

    .line 1768
    .local v5, "delta":J
    cmp-long v3, v5, v18

    if-ltz v3, :cond_4f

    const-wide/16 v3, 0x3e8

    cmp-long v3, v5, v3

    if-gez v3, :cond_4f

    .line 1769
    const/4 v12, 0x1

    goto :goto_22

    .line 1771
    :cond_4f
    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    goto :goto_22

    .line 1766
    .end local v5    # "delta":J
    .end local v30    # "brightnessAdjustmentFlags":I
    .end local v31    # "brightnessState":F
    .restart local v3    # "brightnessAdjustmentFlags":I
    .restart local v4    # "brightnessState":F
    :cond_50
    move/from16 v30, v3

    move/from16 v31, v4

    .line 1777
    .end local v3    # "brightnessAdjustmentFlags":I
    .end local v4    # "brightnessState":F
    .restart local v30    # "brightnessAdjustmentFlags":I
    .restart local v31    # "brightnessState":F
    :goto_22
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_51

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1778
    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    .line 1781
    :cond_51
    move/from16 v3, v25

    .end local v25    # "animateValue":F
    .local v3, "animateValue":F
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1782
    if-nez v11, :cond_54

    if-nez v13, :cond_54

    if-nez v10, :cond_54

    if-eqz v14, :cond_54

    if-nez v8, :cond_54

    if-eqz v12, :cond_52

    goto :goto_24

    .line 1787
    :cond_52
    nop

    .line 1788
    if-eqz v2, :cond_53

    const v4, 0x3e70f0f0

    goto :goto_23

    :cond_53
    const v4, 0x3f34b4b4

    .line 1787
    :goto_23
    invoke-direct {v1, v3, v4}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FF)V

    goto :goto_25

    .line 1785
    :cond_54
    :goto_24
    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FF)V

    goto :goto_25

    .line 1791
    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DisplayPowerController"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :goto_25
    if-nez v8, :cond_58

    .line 1795
    if-eqz v0, :cond_57

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_56

    .line 1796
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result v4

    if-nez v4, :cond_57

    .line 1799
    :cond_56
    const/4 v0, 0x0

    .line 1801
    :cond_57
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 1802
    move/from16 v5, v31

    .end local v31    # "brightnessState":F
    .local v5, "brightnessState":F
    invoke-static {v4, v5}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v4

    .line 1801
    invoke-direct {v1, v4, v0, v7}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessChanged(IZZ)V

    move v3, v0

    goto :goto_27

    .line 1794
    .end local v5    # "brightnessState":F
    .restart local v31    # "brightnessState":F
    :cond_58
    move/from16 v5, v31

    .end local v31    # "brightnessState":F
    .restart local v5    # "brightnessState":F
    goto :goto_26

    .line 1718
    .end local v10    # "wasOrWillBeInVr":Z
    .end local v11    # "initialRampSkip":Z
    .end local v13    # "hasBrightnessBuckets":Z
    .end local v14    # "isDisplayContentVisible":Z
    .end local v16    # "autoBrightnessEnabledInDoze":Z
    .end local v24    # "oldState":I
    .end local v27    # "previousPolicy":I
    .end local v28    # "mustNotify":Z
    .end local v30    # "brightnessAdjustmentFlags":I
    .local v3, "brightnessAdjustmentFlags":I
    .restart local v4    # "brightnessState":F
    .local v5, "previousPolicy":I
    .restart local v6    # "mustNotify":Z
    .local v8, "autoBrightnessEnabledInDoze":Z
    .local v12, "oldState":I
    :cond_59
    move/from16 v30, v3

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v16, v8

    move/from16 v24, v12

    move v5, v4

    .line 1809
    .end local v3    # "brightnessAdjustmentFlags":I
    .end local v4    # "brightnessState":F
    .end local v6    # "mustNotify":Z
    .end local v8    # "autoBrightnessEnabledInDoze":Z
    .end local v12    # "oldState":I
    .local v5, "brightnessState":F
    .restart local v16    # "autoBrightnessEnabledInDoze":Z
    .restart local v24    # "oldState":I
    .restart local v27    # "previousPolicy":I
    .restart local v28    # "mustNotify":Z
    .restart local v30    # "brightnessAdjustmentFlags":I
    :goto_26
    move v3, v0

    .end local v0    # "userInitiatedChange":Z
    .local v3, "userInitiatedChange":Z
    :goto_27
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    if-eqz v30, :cond_5a

    goto :goto_28

    :cond_5a
    move/from16 v6, v30

    goto :goto_29

    .line 1810
    :cond_5b
    :goto_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brightness ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "] reason changing to: \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 1811
    move/from16 v6, v30

    .end local v30    # "brightnessAdjustmentFlags":I
    .local v6, "brightnessAdjustmentFlags":I
    invoke-virtual {v4, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', previous reason: \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1810
    const-string v4, "DisplayPowerController"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1817
    :goto_29
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_5d

    .line 1818
    const/4 v0, 0x2

    if-ne v9, v0, :cond_5c

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1819
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1820
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    goto :goto_2a

    .line 1822
    :cond_5c
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1830
    :cond_5d
    :goto_2a
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_5f

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_5e

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1832
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5f

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5f

    :cond_5e
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1833
    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5f

    const/4 v0, 0x1

    goto :goto_2b

    :cond_5f
    const/4 v0, 0x0

    :goto_2b
    move v4, v0

    .line 1834
    .local v4, "ready":Z
    if-eqz v4, :cond_60

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 1835
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_60

    const/4 v0, 0x1

    goto :goto_2c

    :cond_60
    const/4 v0, 0x0

    :goto_2c
    move v8, v0

    .line 1838
    .local v8, "finished":Z
    if-eqz v4, :cond_61

    const/4 v0, 0x1

    if-eq v9, v0, :cond_61

    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v10, v0, :cond_61

    .line 1840
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1841
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn()V

    .line 1845
    :cond_61
    if-nez v8, :cond_63

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v0, :cond_63

    .line 1846
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_62

    .line 1847
    const-string v0, "DisplayPowerController"

    const-string v10, "Unfinished business..."

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :cond_62
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1850
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1854
    :cond_63
    if-eqz v4, :cond_66

    if-eqz v28, :cond_66

    .line 1856
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1857
    :try_start_2
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v0, :cond_64

    .line 1858
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1860
    sget-boolean v11, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v11, :cond_65

    .line 1861
    const-string v11, "DisplayPowerController"

    const-string v12, "Display ready!"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 1857
    :cond_64
    const/4 v0, 0x1

    .line 1864
    :cond_65
    :goto_2d
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1865
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_2e

    .line 1864
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1854
    :cond_66
    const/4 v0, 0x1

    .line 1869
    :goto_2e
    if-eqz v8, :cond_68

    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v10, :cond_68

    .line 1870
    sget-boolean v10, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v10, :cond_67

    .line 1871
    const-string v10, "DisplayPowerController"

    const-string v11, "Finished business..."

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_67
    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1874
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v11}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto :goto_2f

    .line 1869
    :cond_68
    const/4 v10, 0x0

    .line 1878
    :goto_2f
    const/4 v11, 0x2

    if-eq v9, v11, :cond_69

    goto :goto_30

    :cond_69
    move v0, v10

    :goto_30
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 1880
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v10, v27

    .end local v27    # "previousPolicy":I
    .local v10, "previousPolicy":I
    if-eq v10, v0, :cond_6a

    .line 1881
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    .line 1883
    :cond_6a
    return-void

    .line 1293
    .end local v4    # "ready":Z
    .end local v5    # "brightnessState":F
    .end local v6    # "brightnessAdjustmentFlags":I
    .end local v7    # "hadUserBrightnessPoint":Z
    .end local v8    # "finished":Z
    .end local v9    # "state":I
    .end local v10    # "previousPolicy":I
    .end local v15    # "autoBrightnessEnabled":Z
    .end local v16    # "autoBrightnessEnabledInDoze":Z
    .end local v17    # "autoBrightnessEnabledInAod":Z
    .end local v20    # "autoBrightnessAdjustmentChanged":Z
    .end local v23    # "autoBrightnessAdjustment":F
    .end local v24    # "oldState":I
    .end local v26    # "userSetBrightnessChanged":Z
    .end local v28    # "mustNotify":Z
    .end local v29    # "mustInitialize":Z
    .end local v32    # "performScreenOffTransition":Z
    .local v2, "mustInitialize":Z
    .local v3, "brightnessAdjustmentFlags":I
    :catchall_1
    move-exception v0

    move/from16 v29, v2

    .end local v2    # "mustInitialize":Z
    .restart local v29    # "mustInitialize":Z
    goto :goto_31

    .end local v29    # "mustInitialize":Z
    .restart local v2    # "mustInitialize":Z
    :catchall_2
    move-exception v0

    :goto_31
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private updateTorchModeStatus()V
    .locals 3

    .line 987
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 988
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mTorchModeEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mFlashlightEnabled:Z

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setTorchModeEnabled(Z)V

    .line 990
    :cond_0
    return-void
.end method

.method private updateUserSetScreenBrightness()Z
    .locals 4

    .line 2662
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    goto :goto_0

    .line 2666
    :cond_0
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v2, v2, v0

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v2, :cond_1

    .line 2667
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 2668
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 2669
    return v1

    .line 2671
    :cond_1
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 2672
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    .line 2673
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 2674
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 2675
    const/4 v0, 0x1

    return v0

    .line 2664
    :cond_2
    :goto_0
    return v1
.end method

.method private voteForSunReadableDisplay(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 3741
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mEnableSunReadableDisplay:Z

    if-eq v0, p1, :cond_0

    .line 3742
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;-><init>()V

    .line 3743
    .local v0, "request":Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->displayId:I

    .line 3744
    const/4 v1, 0x4

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->policy:I

    .line 3745
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayOLC:Lcom/android/server/display/DisplayOLC;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayOLC;->getSunReadableVoteRate()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->requestRefreshRate:F

    .line 3746
    iput-boolean p1, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->statusOn:Z

    .line 3748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voteForSunReadableDisplay(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPowerController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3750
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerInternal;->requestRefreshRate(Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;)V

    .line 3752
    .end local v0    # "request":Landroid/hardware/display/DisplayManagerInternal$DisplayRefreshRateRequest;
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mEnableSunReadableDisplay:Z

    .line 3753
    return-void
.end method


# virtual methods
.method public animateScreenBrightness(DFFF)V
    .locals 3
    .param p1, "percent"    # D
    .param p3, "minNits"    # F
    .param p4, "maxBrightness"    # F
    .param p5, "adjustBrightnessIntervalNits"    # F

    .line 3402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateScreenBrightness: percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", minNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", adjustBrightnessIntervalNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBacklightController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:F

    .line 3406
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p5}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:F

    .line 3407
    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-ltz v1, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:F

    cmpg-float v0, v1, v0

    if-lez v0, :cond_1

    .line 3410
    invoke-direct {p0, p4}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:F

    .line 3411
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:F

    .line 3412
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3419
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/display/DisplayOLC;->limitPercent(D)D

    move-result-wide p1

    .line 3420
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPercent:D

    .line 3421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPercentChange:Z

    .line 3422
    iput p4, p0, Lcom/android/server/display/DisplayPowerController;->mOpMaxBrightness:F

    .line 3423
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 3424
    return-void

    .line 3416
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "param error with LP =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3417
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2767
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2768
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2769
    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2776
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2778
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2779
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTempScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mHdrMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrBootFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mHdrBootFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFrontPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mFrontPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2816
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/OpAutoBrightnessHelper;->dump(Ljava/io/PrintWriter;)V

    .line 2821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessStaticsLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessStaticsLevel()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTorchModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mTorchModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFlashlightEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mFlashlightEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDitherEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDitherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInHighTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mInHighTemp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighTempRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighTempFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighTempHBMFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInHBM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2840
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$11;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 2846
    return-void

    .line 2776
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 3517
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    aget-object v0, p2, v1

    const-string v3, "hbm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3518
    const/4 v0, 0x1

    aget-object v1, p2, v0

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    .line 3519
    .local v1, "highTemp":Z
    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3521
    .local v3, "factor":I
    array-length v4, p2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 3522
    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    .line 3525
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/android/server/display/DisplayPowerController;->updateHighTempStatus(ZI)V

    .line 3527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mInHighTemp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mInHighTemp:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHighTempRate="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHighTempFactor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHighTempHBMFactor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3531
    return v0

    .line 3534
    .end local v1    # "highTemp":Z
    .end local v3    # "factor":I
    :cond_1
    return v1
.end method

.method public frontPackageChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3684
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mFrontPackageName:Ljava/lang/String;

    .line 3686
    const-string v0, "com.oneplus.camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3687
    .local v0, "boostCameraBrightness":Z
    const-string v1, "com.oneplus.gallery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3689
    .local v1, "boostGalleryBrightness":Z
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-virtual {v2, v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->setBoostBrightnessCamera(Z)V

    .line 3690
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-virtual {v2, v1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->setBoostBrightnessGallery(Z)V

    .line 3692
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/display/OpAutoBrightnessHelper;->setFontPackageName(Ljava/lang/String;)V

    .line 3693
    invoke-static {p1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->frontPackageChanged(Ljava/lang/String;)V

    .line 3694
    return-void
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 2

    .line 938
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 939
    .local v0, "mBatteryManager":Landroid/os/BatteryManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    return v1
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "includePackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 1029
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessValue()F
    .locals 1

    .line 1892
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->getBrightnessValue()F

    move-result v0

    return v0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 1108
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_0

    .line 1109
    const/4 v0, 0x0

    return-object v0

    .line 1111
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 1033
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    .line 1034
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    .line 1035
    return-void
.end method

.method public overrideScreenBrightnessRangeMinimum(I)V
    .locals 4
    .param p1, "minimum"    # I

    .line 3225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    .line 3226
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    .line 3229
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 3230
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3231
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3232
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 3233
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3234
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    .line 3235
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    .line 3236
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    goto :goto_0

    .line 3233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3239
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    .line 3240
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    .line 1047
    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 5
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .line 1065
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestPowerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", waitForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    const/4 v1, 0x0

    .line 1073
    .local v1, "changed":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v3, :cond_1

    .line 1075
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1076
    const/4 v1, 0x1

    .line 1079
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 1080
    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1081
    const/4 v1, 0x1

    goto :goto_0

    .line 1082
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1083
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1084
    const/4 v1, 0x1

    goto :goto_0

    .line 1087
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v3, :cond_4

    .line 1088
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1089
    const/4 v1, 0x1

    .line 1090
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    .line 1094
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 1095
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1098
    :cond_5
    if-eqz v1, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_6

    .line 1099
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1100
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1103
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return v2

    .line 1104
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAmbientColorTemperatureOverride(F)V
    .locals 1
    .param p1, "cct"    # F

    .line 3256
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_0

    .line 3257
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setAmbientColorTemperatureOverride(F)Z

    .line 3261
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3263
    :cond_0
    return-void
.end method

.method setAutoBrightnessLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3212
    sput-boolean p1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 3213
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 3214
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    .line 3216
    :cond_0
    invoke-static {p1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->enableDebug(Z)V

    .line 3217
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 2
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1896
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1897
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1898
    return-void
.end method

.method setDisplayWhiteBalanceLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3249
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_0

    .line 3250
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setLoggingEnabled(Z)Z

    .line 3251
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setLoggingEnabled(Z)Z

    .line 3253
    :cond_0
    return-void
.end method

.method public setHdrMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 3564
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mHdrMode:Z

    .line 3565
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3566
    return-void
.end method

.method public setProximityEventEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 3048
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->sProximityResFeature:Z

    if-nez v0, :cond_0

    .line 3049
    return-void

    .line 3052
    :cond_0
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 3053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PsetProximityEventEnable enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    :cond_1
    sput-boolean p1, Lcom/android/server/display/DisplayPowerController;->sEnableProximityEvent:Z

    .line 3056
    if-eqz p1, :cond_2

    .line 3057
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->sLastPositive:Z

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->triggerProximitySensorEvent(Z)V

    goto :goto_0

    .line 3059
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->triggerProximitySensorEvent(Z)V

    .line 3061
    :goto_0
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 4
    .param p1, "adjustment"    # F

    .line 1916
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1917
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1916
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1918
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1919
    return-void
.end method

.method public setTemporaryBrightness(F)V
    .locals 4
    .param p1, "brightness"    # F

    .line 1903
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    const-string v1, "DisplayPowerController"

    if-eqz v0, :cond_0

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore setTemporaryBrightness("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ") during override."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    return-void

    .line 1907
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemporaryBrightness:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-virtual {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getAppPkg()Z

    .line 1910
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    .line 1911
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x0

    .line 1910
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1912
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1913
    return-void
.end method

.method public setUseProximityForceSuspend(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1016
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-nez v0, :cond_0

    .line 1017
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    .line 1019
    :cond_0
    return-void
.end method

.method public updateBrightness()V
    .locals 0

    .line 1887
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1888
    return-void
.end method

.method public updateHighTempStatus(ZI)V
    .locals 12
    .param p1, "highTemp"    # Z
    .param p2, "factorOfHighTemp"    # I

    .line 3447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateHighTempStatus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    int-to-float v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 3449
    .local v0, "factor":F
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-enter v2

    .line 3450
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mInHighTemp:Z

    .line 3451
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    .line 3456
    cmpl-float v1, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    goto :goto_1

    .line 3462
    :cond_0
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 3463
    .local v4, "normalFactor":D
    float-to-double v8, v0

    mul-double/2addr v6, v4

    sub-double/2addr v8, v6

    .line 3465
    .local v8, "hbmFactor":D
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v4, v6

    if-ltz v1, :cond_2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v6

    if-gtz v1, :cond_2

    const-wide/16 v10, 0x0

    cmpg-double v1, v8, v10

    if-ltz v1, :cond_2

    cmpl-double v1, v8, v6

    if-lez v1, :cond_1

    goto :goto_0

    .line 3472
    :cond_1
    double-to-float v1, v4

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    .line 3473
    double-to-float v1, v8

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    .line 3474
    .end local v4    # "normalFactor":D
    .end local v8    # "hbmFactor":D
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3475
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 3476
    return-void

    .line 3466
    .restart local v4    # "normalFactor":D
    .restart local v8    # "hbmFactor":D
    :cond_2
    :goto_0
    :try_start_1
    const-string v1, "DisplayPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "factor: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " is invalid!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    .line 3468
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    .line 3469
    monitor-exit v2

    return-void

    .line 3457
    .end local v4    # "normalFactor":D
    .end local v8    # "hbmFactor":D
    :cond_3
    :goto_1
    const-string v1, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "factor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " is invalid!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    .line 3459
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    .line 3460
    monitor-exit v2

    return-void

    .line 3474
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateWhiteBalance()V
    .locals 0

    .line 3245
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3246
    return-void
.end method
