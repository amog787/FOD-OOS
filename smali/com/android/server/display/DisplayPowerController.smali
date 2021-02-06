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

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_ANIMATION_RATE_MINIMUM:F = 0.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION_FLOAT:F = 0.04f

.field private static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final STRETCH_RATE_FOR_CAMERA:F = 0.25f

.field private static final SUPPORT_DITHER_CONTROLLER:Z

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z = false

.field private static mLimitedNitsForCamera:I

.field private static sEnableProximityEvent:Z

.field private static sLastPositive:Z

.field private static sProximityResFeature:Z


# instance fields
.field private final BRIGHTNESS_STATICS_NITS:F

.field private mAdjustBrightnessInterval:F

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

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

.field private mDisplayOLC:Lcom/android/server/display/DisplayOLC;

.field private mDisplayReadyLocked:Z

.field private final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field private final mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

.field private mDitherEnabled:Z

.field private mDitherLock:Ljava/lang/Object;

.field private mDozing:Z

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

    .line 151
    nop

    .line 167
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 168
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    .line 228
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0xce

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    .line 499
    new-array v2, v1, [I

    const/16 v3, 0x141

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/display/DisplayPowerController;->SUPPORT_DITHER_CONTROLLER:Z

    .line 508
    sput v0, Lcom/android/server/display/DisplayPowerController;->mLimitedNitsForCamera:I

    .line 2879
    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->sEnableProximityEvent:Z

    .line 2880
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->sLastPositive:Z

    .line 2881
    new-array v1, v1, [I

    const/16 v2, 0x119

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

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

    .line 579
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 278
    const/4 v14, 0x0

    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    .line 279
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    .line 370
    const/4 v0, -0x1

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 373
    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 374
    const-wide/16 v1, -0x1

    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 417
    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v4, 0x0

    invoke-direct {v3, v15, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 418
    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v3, v15, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 421
    const v3, 0x3e70f0f0

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:F

    .line 422
    const v3, 0x3f34b4b4

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:F

    .line 435
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 504
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMode:I

    .line 521
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mIsOpBacklight:I

    .line 522
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mOpBacklightLock:Ljava/lang/Object;

    .line 523
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iput-wide v5, v15, Lcom/android/server/display/DisplayPowerController;->mPercent:D

    .line 524
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mPercentChange:Z

    .line 525
    const v3, 0x3e99999a    # 0.3f

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:F

    .line 526
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mOpMaxBrightness:F

    .line 527
    const v5, 0x3eb33333    # 0.35f

    iput v5, v15, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:F

    .line 529
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mPreAutoBrightnessEnabled:Z

    .line 530
    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    .line 531
    iput v14, v15, Lcom/android/server/display/DisplayPowerController;->mPreState:I

    .line 536
    const/4 v12, 0x1

    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    .line 537
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    .line 543
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mTorchModeEnabled:Z

    .line 544
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mFlashlightEnabled:Z

    .line 559
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mHdrMode:Z

    .line 565
    iput-wide v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    .line 566
    const/high16 v1, 0x43af0000    # 350.0f

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_STATICS_NITS:F

    .line 571
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mDitherEnabled:Z

    .line 572
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mDitherLock:Ljava/lang/Object;

    .line 898
    new-instance v1, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 1141
    new-instance v1, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1157
    new-instance v1, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 2258
    new-instance v1, Lcom/android/server/display/DisplayPowerController$5;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 2539
    new-instance v1, Lcom/android/server/display/DisplayPowerController$6;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 2554
    new-instance v1, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

    .line 2567
    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

    .line 2581
    new-instance v1, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 2594
    new-instance v1, Lcom/android/server/display/DisplayPowerController$10;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$10;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 2919
    new-instance v1, Lcom/android/server/display/DisplayPowerController$12;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$12;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 3044
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    .line 3262
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mInHighTemp:Z

    .line 3263
    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    .line 3264
    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    .line 3265
    const v1, 0x3d4ccccd    # 0.05f

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    .line 3266
    iput-boolean v14, v15, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    .line 3267
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    .line 580
    new-instance v1, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v15, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 581
    new-instance v1, Lcom/android/server/display/BrightnessTracker;

    invoke-direct {v1, v13, v4}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 582
    new-instance v1, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    iget-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v1, v15, v2}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 583
    move-object/from16 v11, p2

    iput-object v11, v15, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 584
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 585
    move-object/from16 v10, p4

    iput-object v10, v15, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 586
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 587
    move-object/from16 v7, p5

    iput-object v7, v15, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 588
    iput-object v13, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 589
    new-instance v1, Lcom/android/internal/BrightnessSynchronizer;

    invoke-direct {v1, v13}, Lcom/android/internal/BrightnessSynchronizer;-><init>(Landroid/content/Context;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessSynchronizer:Lcom/android/internal/BrightnessSynchronizer;

    .line 590
    move-object/from16 v5, p6

    iput-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 594
    new-instance v1, Lcom/android/server/display/DisplayPowerController$MotionCheck;

    invoke-direct {v1, v15}, Lcom/android/server/display/DisplayPowerController$MotionCheck;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mMotionCheck:Lcom/android/server/display/DisplayPowerController$MotionCheck;

    .line 597
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v13, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/PowerManager;

    .line 598
    .local v4, "pm":Landroid/os/PowerManager;
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v28

    .line 601
    .local v28, "displayDeviceConfig":Lcom/android/server/display/DisplayDeviceConfig;
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 604
    new-instance v1, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    .line 610
    new-array v1, v12, [I

    const/16 v2, 0x124

    aput v2, v1, v14

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_IRIS_SERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/iris/IOneplusIrisManager;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    .line 616
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 618
    .local v2, "resources":Landroid/content/res/Resources;
    nop

    .line 619
    invoke-virtual {v4, v14}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 618
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v9

    .line 622
    .local v9, "screenBrightnessSettingMinimumFloat":F
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v1, :cond_1

    .line 623
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "device_is_dimming"

    invoke-static {v1, v3, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 624
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 630
    :cond_1
    const/4 v1, 0x4

    .line 631
    invoke-virtual {v4, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 630
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 632
    const/4 v1, 0x3

    .line 633
    invoke-virtual {v4, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 632
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 636
    nop

    .line 637
    invoke-static {v9, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    .line 638
    nop

    .line 639
    invoke-virtual {v4, v12}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 638
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    .line 640
    const/4 v1, 0x2

    .line 641
    invoke-virtual {v4, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 640
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    .line 644
    const/4 v1, 0x7

    .line 645
    invoke-virtual {v4, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 644
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    .line 646
    const/4 v1, 0x6

    .line 647
    invoke-virtual {v4, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 646
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    .line 648
    const/4 v1, 0x5

    .line 649
    invoke-virtual {v4, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    .line 648
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    .line 651
    const v1, 0x1110029

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 654
    const v1, 0x111000f

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 657
    const v1, 0x11100cf

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    .line 662
    const v1, 0x10e0023

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    iput v1, v15, Lcom/android/server/display/DisplayPowerController;->mHdrBootFactor:F

    .line 664
    const v1, 0x10e0022

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/server/display/DisplayPowerController;->mLimitedNitsForCamera:I

    .line 668
    iget-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    const-string v8, "DisplayPowerController"

    if-eqz v1, :cond_5

    .line 669
    const v1, 0x1130006

    invoke-virtual {v2, v1, v12, v12}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v29

    .line 673
    .local v29, "dozeScaleFactor":F
    const v1, 0x107000d

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 675
    .local v6, "ambientBrighteningThresholds":[I
    const v1, 0x107000e

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 677
    .local v3, "ambientDarkeningThresholds":[I
    const v1, 0x107000f

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 679
    .local v1, "ambientThresholdLevels":[I
    new-instance v12, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v12, v6, v3, v1}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v18, v12

    .line 683
    .local v18, "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v12, 0x107006a

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v12

    .line 685
    .local v12, "screenBrighteningThresholds":[I
    const v14, 0x107006d

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v14

    .line 687
    .local v14, "screenDarkeningThresholds":[I
    const v0, 0x107006e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 689
    .local v0, "screenThresholdLevels":[I
    move-object/from16 v21, v1

    .end local v1    # "ambientThresholdLevels":[I
    .local v21, "ambientThresholdLevels":[I
    new-instance v1, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v1, v12, v14, v0}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v19, v1

    .line 692
    .local v19, "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v1, 0x10e0013

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-object/from16 v22, v14

    .end local v14    # "screenDarkeningThresholds":[I
    .local v22, "screenDarkeningThresholds":[I
    int-to-long v13, v1

    .line 694
    .local v13, "brighteningLightDebounce":J
    const v1, 0x10e0014

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-wide/from16 v23, v13

    .end local v13    # "brighteningLightDebounce":J
    .local v23, "brighteningLightDebounce":J
    int-to-long v13, v1

    .line 696
    .local v13, "darkeningLightDebounce":J
    const v1, 0x1110024

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v30

    .line 699
    .local v30, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    const v1, 0x10e0070

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v31

    .line 701
    .local v31, "lightSensorWarmUpTimeConfig":I
    const v1, 0x10e0016

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 703
    .local v1, "lightSensorRate":I
    move-object/from16 v32, v0

    .end local v0    # "screenThresholdLevels":[I
    .local v32, "screenThresholdLevels":[I
    const v0, 0x10e0015

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 705
    .local v0, "initialLightSensorRate":I
    move-object/from16 v25, v3

    const/4 v3, -0x1

    .end local v3    # "ambientDarkeningThresholds":[I
    .local v25, "ambientDarkeningThresholds":[I
    if-ne v0, v3, :cond_2

    .line 706
    move v0, v1

    move-object/from16 v20, v4

    goto :goto_0

    .line 707
    :cond_2
    if-le v0, v1, :cond_3

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v4

    .end local v4    # "pm":Landroid/os/PowerManager;
    .local v20, "pm":Landroid/os/PowerManager;
    const-string v4, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    .end local v20    # "pm":Landroid/os/PowerManager;
    .restart local v4    # "pm":Landroid/os/PowerManager;
    :cond_3
    move-object/from16 v20, v4

    .line 713
    .end local v4    # "pm":Landroid/os/PowerManager;
    .restart local v20    # "pm":Landroid/os/PowerManager;
    :goto_0
    const v3, 0x1040216

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 715
    .local v4, "lightSensorType":Ljava/lang/String;
    invoke-direct {v15, v4}, Lcom/android/server/display/DisplayPowerController;->findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v33

    .line 717
    .local v33, "lightSensor":Landroid/hardware/Sensor;
    const v3, 0x1110068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v34

    .line 719
    .local v34, "dualLightSensorSupport":Z
    const v3, 0x1040234

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 721
    .local v35, "mainLightSensor":Ljava/lang/String;
    const v3, 0x10401d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 723
    .local v36, "auxLightSensor":Ljava/lang/String;
    const v3, 0x105009b

    invoke-static {v2, v3}, Lcom/android/server/display/DisplayPowerController;->getFloat(Landroid/content/res/Resources;I)F

    move-result v37

    .line 728
    .local v37, "auxLightSensorLuxLimit":F
    const v3, 0x1070051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v38

    .line 730
    .local v38, "limitMinLux":[F
    const v3, 0x107007f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v39

    .line 734
    .local v39, "timeSlotsForMinLux":[I
    invoke-static {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v3

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 735
    if-eqz v3, :cond_4

    .line 736
    new-instance v3, Lcom/android/server/display/AutomaticBrightnessController;

    move/from16 v41, v1

    move-object/from16 v40, v21

    .end local v1    # "lightSensorRate":I
    .end local v21    # "ambientThresholdLevels":[I
    .local v40, "ambientThresholdLevels":[I
    .local v41, "lightSensorRate":I
    move-object v1, v3

    .line 737
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v21

    move-object/from16 v43, v3

    move-object/from16 v42, v25

    .end local v25    # "ambientDarkeningThresholds":[I
    .local v42, "ambientDarkeningThresholds":[I
    move-object/from16 v3, v21

    move-object/from16 v21, v2

    .end local v2    # "resources":Landroid/content/res/Resources;
    .local v21, "resources":Landroid/content/res/Resources;
    iget-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move-object/from16 v44, v6

    .end local v6    # "ambientBrighteningThresholds":[I
    .local v44, "ambientBrighteningThresholds":[I
    move-object v6, v2

    iget v2, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    move-object/from16 v45, v8

    move v8, v2

    iget v2, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    move/from16 v46, v9

    .end local v9    # "screenBrightnessSettingMinimumFloat":F
    .local v46, "screenBrightnessSettingMinimumFloat":F
    move v9, v2

    move-object/from16 v47, v21

    .end local v21    # "resources":Landroid/content/res/Resources;
    .local v47, "resources":Landroid/content/res/Resources;
    move-object/from16 v2, p0

    move-object/from16 v49, v4

    move-object/from16 v48, v20

    .end local v4    # "lightSensorType":Ljava/lang/String;
    .end local v20    # "pm":Landroid/os/PowerManager;
    .local v48, "pm":Landroid/os/PowerManager;
    .local v49, "lightSensorType":Ljava/lang/String;
    move-object/from16 v4, p4

    move-object/from16 v5, v33

    move/from16 v7, v31

    move/from16 v10, v29

    move/from16 v11, v41

    move-object/from16 v50, v12

    .end local v12    # "screenBrighteningThresholds":[I
    .local v50, "screenBrighteningThresholds":[I
    move v12, v0

    move-wide/from16 v54, v13

    move-object/from16 v51, v22

    move-wide/from16 v52, v23

    .end local v13    # "darkeningLightDebounce":J
    .end local v22    # "screenDarkeningThresholds":[I
    .end local v23    # "brighteningLightDebounce":J
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

    .line 745
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getBatteryLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->updateBatteryLevel(I)V

    const/4 v2, 0x0

    goto :goto_1

    .line 747
    .end local v40    # "ambientThresholdLevels":[I
    .end local v41    # "lightSensorRate":I
    .end local v42    # "ambientDarkeningThresholds":[I
    .end local v44    # "ambientBrighteningThresholds":[I
    .end local v46    # "screenBrightnessSettingMinimumFloat":F
    .end local v47    # "resources":Landroid/content/res/Resources;
    .end local v48    # "pm":Landroid/os/PowerManager;
    .end local v49    # "lightSensorType":Ljava/lang/String;
    .end local v50    # "screenBrighteningThresholds":[I
    .end local v51    # "screenDarkeningThresholds":[I
    .end local v52    # "brighteningLightDebounce":J
    .end local v54    # "darkeningLightDebounce":J
    .restart local v1    # "lightSensorRate":I
    .restart local v2    # "resources":Landroid/content/res/Resources;
    .restart local v4    # "lightSensorType":Ljava/lang/String;
    .restart local v6    # "ambientBrighteningThresholds":[I
    .restart local v9    # "screenBrightnessSettingMinimumFloat":F
    .restart local v12    # "screenBrighteningThresholds":[I
    .restart local v13    # "darkeningLightDebounce":J
    .restart local v20    # "pm":Landroid/os/PowerManager;
    .local v21, "ambientThresholdLevels":[I
    .restart local v22    # "screenDarkeningThresholds":[I
    .restart local v23    # "brighteningLightDebounce":J
    .restart local v25    # "ambientDarkeningThresholds":[I
    :cond_4
    move/from16 v41, v1

    move-object/from16 v47, v2

    move-object/from16 v49, v4

    move-object/from16 v44, v6

    move-object/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v50, v12

    move-wide/from16 v54, v13

    move-object v1, v15

    move-object/from16 v48, v20

    move-object/from16 v40, v21

    move-object/from16 v51, v22

    move-wide/from16 v52, v23

    move-object/from16 v42, v25

    .end local v1    # "lightSensorRate":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "lightSensorType":Ljava/lang/String;
    .end local v6    # "ambientBrighteningThresholds":[I
    .end local v9    # "screenBrightnessSettingMinimumFloat":F
    .end local v12    # "screenBrighteningThresholds":[I
    .end local v13    # "darkeningLightDebounce":J
    .end local v20    # "pm":Landroid/os/PowerManager;
    .end local v21    # "ambientThresholdLevels":[I
    .end local v22    # "screenDarkeningThresholds":[I
    .end local v23    # "brighteningLightDebounce":J
    .end local v25    # "ambientDarkeningThresholds":[I
    .restart local v40    # "ambientThresholdLevels":[I
    .restart local v41    # "lightSensorRate":I
    .restart local v42    # "ambientDarkeningThresholds":[I
    .restart local v44    # "ambientBrighteningThresholds":[I
    .restart local v46    # "screenBrightnessSettingMinimumFloat":F
    .restart local v47    # "resources":Landroid/content/res/Resources;
    .restart local v48    # "pm":Landroid/os/PowerManager;
    .restart local v49    # "lightSensorType":Ljava/lang/String;
    .restart local v50    # "screenBrighteningThresholds":[I
    .restart local v51    # "screenDarkeningThresholds":[I
    .restart local v52    # "brighteningLightDebounce":J
    .restart local v54    # "darkeningLightDebounce":J
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    goto :goto_1

    .line 668
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
    .end local v40    # "ambientThresholdLevels":[I
    .end local v41    # "lightSensorRate":I
    .end local v42    # "ambientDarkeningThresholds":[I
    .end local v44    # "ambientBrighteningThresholds":[I
    .end local v46    # "screenBrightnessSettingMinimumFloat":F
    .end local v47    # "resources":Landroid/content/res/Resources;
    .end local v48    # "pm":Landroid/os/PowerManager;
    .end local v49    # "lightSensorType":Ljava/lang/String;
    .end local v50    # "screenBrighteningThresholds":[I
    .end local v51    # "screenDarkeningThresholds":[I
    .end local v52    # "brighteningLightDebounce":J
    .end local v54    # "darkeningLightDebounce":J
    .restart local v2    # "resources":Landroid/content/res/Resources;
    .local v4, "pm":Landroid/os/PowerManager;
    .restart local v9    # "screenBrightnessSettingMinimumFloat":F
    :cond_5
    move-object/from16 v47, v2

    move-object/from16 v48, v4

    move-object/from16 v45, v8

    move/from16 v46, v9

    move v2, v14

    move-object v1, v15

    .line 751
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v4    # "pm":Landroid/os/PowerManager;
    .end local v9    # "screenBrightnessSettingMinimumFloat":F
    .restart local v46    # "screenBrightnessSettingMinimumFloat":F
    .restart local v47    # "resources":Landroid/content/res/Resources;
    .restart local v48    # "pm":Landroid/os/PowerManager;
    :goto_1
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 752
    const v0, 0x1110021

    move-object/from16 v4, v47

    .end local v47    # "resources":Landroid/content/res/Resources;
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 755
    const v0, 0x1110057

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 758
    const v0, 0x1110058

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 762
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 763
    if-eqz v0, :cond_6

    .line 764
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 768
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 769
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 770
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 771
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 772
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 773
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 774
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 776
    const/4 v5, 0x0

    .line 777
    .local v5, "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    const/4 v6, 0x0

    .line 779
    .local v6, "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    :try_start_0
    new-instance v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v0, v7, v8}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v5, v0

    .line 780
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {v0, v7, v4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-result-object v0

    move-object v6, v0

    .line 782
    invoke-virtual {v5, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z

    .line 783
    invoke-virtual {v6, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    move-object/from16 v8, v45

    goto :goto_2

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to set up display white-balance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v45

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 788
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 792
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessMode()I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMode:I

    .line 797
    invoke-static/range {p0 .. p0}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->hookDisplayPowerController(Lcom/android/server/display/IOpBacklightController;)V

    .line 802
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const-string v7, "camera"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 803
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v7, v9}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 807
    new-instance v0, Lcom/android/server/display/DisplayOLC;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {v0, v7, v9}, Lcom/android/server/display/DisplayOLC;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayOLC:Lcom/android/server/display/DisplayOLC;

    .line 812
    new-instance v0, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object v7, v0

    .line 830
    .local v7, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 835
    new-instance v0, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 836
    .local v9, "batteryFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 841
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "device_provisioned"

    invoke-static {v0, v10, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 842
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessMode()I

    move-result v0

    if-nez v0, :cond_8

    .line 844
    :try_start_1
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_brightness_float"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 859
    goto :goto_4

    .line 845
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 847
    .local v2, "exception":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_2
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 849
    .local v0, "brightnessInt":I
    const/16 v3, 0xff

    if-gt v0, v3, :cond_7

    .line 850
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(Landroid/content/Context;I)F

    move-result v3

    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(F)V

    goto :goto_3

    .line 853
    :cond_7
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(F)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 858
    .end local v0    # "brightnessInt":I
    :goto_3
    goto :goto_4

    .line 855
    :catch_2
    move-exception v0

    .line 857
    .local v0, "innerException":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "Both screen_brightness & screen_brightness_float not set."

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    .end local v0    # "innerException":Landroid/provider/Settings$SettingNotFoundException;
    .end local v2    # "exception":Landroid/provider/Settings$SettingNotFoundException;
    :cond_8
    :goto_4
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/display/DisplayPowerController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J

    .line 151
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 151
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/DisplayPowerController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # F

    .line 151
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    return p1
.end method

.method static synthetic access$2102(Lcom/android/server/display/DisplayPowerController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # F

    .line 151
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    .line 151
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->sProximityResFeature:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 151
    sput-boolean p0, Lcom/android/server/display/DisplayPowerController;->sLastPositive:Z

    return p0
.end method

.method static synthetic access$2700()Z
    .locals 1

    .line 151
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->sEnableProximityEvent:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->proximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 151
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mTorchModeEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateTorchModeStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateDitherStatus()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/OpBrightnessReasonAndRate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    return-object v0
.end method

.method private animateScreenBrightness(FF)V
    .locals 17
    .param p1, "target"    # F
    .param p2, "rate"    # F

    .line 1971
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

    .line 1976
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:F

    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:F

    sub-float v5, v2, v5

    .line 1977
    .local v5, "diff":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_1

    cmpl-float v6, v0, v5

    if-lez v6, :cond_1

    .line 1978
    cmpl-float v6, v0, v2

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1979
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

    .line 1980
    .local v6, "factor":F
    invoke-direct {v1, v0, v6, v4}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessByNits(FFZ)F

    move-result v0

    .line 1983
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

    .line 1984
    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    .line 1985
    .end local p2    # "rate":F
    .local v2, "rate":F
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPercentChange:Z

    .line 1986
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "rate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1988
    .end local v2    # "rate":F
    .restart local p2    # "rate":F
    :cond_2
    move/from16 v2, p2

    .end local p2    # "rate":F
    .restart local v2    # "rate":F
    :goto_1
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-static {v7}, Lcom/android/server/display/OpBrightnessReasonAndRate;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1990
    sget-boolean v7, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 1991
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

    .line 1995
    :cond_3
    iget v7, v1, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_2

    :cond_4
    move v7, v5

    .line 1996
    .local v7, "faceLightingMode":Z
    :goto_2
    const-string v8, " to "

    const-string v9, ", rate: "

    if-eqz v7, :cond_5

    .line 1997
    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    float-to-double v10, v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    div-double/2addr v10, v12

    double-to-int v10, v10

    const-string/jumbo v11, "sys.debug.face.rate"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1998
    .local v10, "tmpRate":I
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v0

    .line 2000
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

    .line 2001
    int-to-float v2, v10

    .end local v10    # "tmpRate":I
    goto :goto_3

    .line 2002
    :cond_5
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    if-eqz v10, :cond_6

    .line 2003
    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    const-string/jumbo v11, "sys.debug.face.reset"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 2004
    .restart local v10    # "tmpRate":I
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v12, 0x16

    invoke-virtual {v11, v12}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 2005
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

    .line 2006
    int-to-float v2, v10

    goto :goto_4

    .line 2002
    .end local v10    # "tmpRate":I
    :cond_6
    :goto_3
    nop

    .line 2012
    :goto_4
    sget v6, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessNormal:I

    if-ne v6, v4, :cond_7

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v6, :cond_7

    .line 2013
    const/high16 v6, 0x3fa00000    # 1.25f

    sget v8, Lcom/android/server/display/DisplayPowerController;->mLimitedNitsForCamera:I

    invoke-direct {v1, v0, v6, v8, v4}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessByNitsLimit(FFIZ)F

    move-result v0

    .line 2019
    :cond_7
    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mHdrMode:Z

    if-eqz v6, :cond_8

    .line 2020
    iget v6, v1, Lcom/android/server/display/DisplayPowerController;->mHdrBootFactor:F

    mul-float/2addr v0, v6

    .line 2027
    :cond_8
    invoke-direct {v1, v0, v2}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessInHighTemp(FF)[Ljava/lang/Float;

    move-result-object v6

    .line 2028
    .local v6, "ret":[Ljava/lang/Float;
    aget-object v5, v6, v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget-object v4, v6, v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 2031
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-virtual {v4, v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->clampBrightness(F)F

    move-result v4

    .line 2035
    .end local v0    # "target":F
    .local v4, "target":F
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessStaticsLevel()F

    move-result v0

    cmpl-float v0, v4, v0

    const/16 v5, 0xc8

    const-wide/16 v8, -0x1

    if-ltz v0, :cond_9

    iget-wide v10, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_9

    .line 2036
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    .line 2037
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/32 v8, 0x927c0

    invoke-virtual {v0, v5, v8, v9}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 2038
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessStaticsLevel()F

    move-result v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_a

    iget-wide v10, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_a

    .line 2040
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v10

    iget-wide v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x2710

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/display/OpAutoBrightnessHelper;->addRecord(JJJ)V

    .line 2041
    iput-wide v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    .line 2042
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2048
    :cond_a
    :goto_5
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, v4, v2}, Lcom/android/server/display/RampAnimator;->animateTo(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2049
    const-wide/32 v8, 0x20000

    float-to-int v0, v4

    const-string v5, "TargetScreenBrightness"

    invoke-static {v8, v9, v5, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2051
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v5, "debug.tracing.screen_brightness"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    :try_start_0
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2055
    invoke-static {v5, v4}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v5

    .line 2054
    invoke-interface {v0, v5}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2059
    goto :goto_6

    .line 2057
    :catch_0
    move-exception v0

    .line 2062
    :cond_b
    :goto_6
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_d

    .line 2063
    cmpg-float v0, v4, v3

    if-gtz v0, :cond_c

    .line 2064
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

    goto :goto_7

    .line 2066
    :cond_c
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    const/high16 v3, 0x447a0000    # 1000.0f

    invoke-virtual {v0, v3}, Lcom/android/server/display/OpAutoBrightnessHelper;->reportBrightness(F)V

    .line 2070
    :cond_d
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateDitherStatus()V

    .line 2075
    return-void
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .line 2091
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2092
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2093
    :cond_0
    if-eq p1, v2, :cond_1

    .line 2094
    return-void

    .line 2097
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2100
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2101
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2102
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2105
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2106
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v1

    .line 2105
    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 2107
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 2108
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2115
    :cond_4
    if-eq p1, v3, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    .line 2121
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_7

    if-eq p1, v3, :cond_7

    .line 2122
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2123
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2124
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    .line 2127
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_9

    .line 2131
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2132
    return-void

    .line 2148
    :cond_8
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2149
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2151
    :cond_9
    const/4 v4, 0x5

    if-ne p1, v4, :cond_c

    .line 2155
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2156
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 2157
    return-void

    .line 2161
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2162
    return-void

    .line 2166
    :cond_b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2167
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2168
    :cond_c
    const/4 v4, 0x3

    if-ne p1, v4, :cond_f

    .line 2173
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2174
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 2175
    return-void

    .line 2179
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2180
    return-void

    .line 2184
    :cond_e
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2185
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2186
    :cond_f
    const/4 v5, 0x4

    if-ne p1, v5, :cond_13

    .line 2190
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2191
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_10

    .line 2192
    return-void

    .line 2197
    :cond_10
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_12

    .line 2198
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2199
    return-void

    .line 2201
    :cond_11
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2205
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2206
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2207
    :cond_13
    const/4 v4, 0x6

    if-ne p1, v4, :cond_17

    .line 2211
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2212
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_14

    .line 2213
    return-void

    .line 2218
    :cond_14
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_16

    .line 2219
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2220
    return-void

    .line 2222
    :cond_15
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2226
    :cond_16
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2227
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_3

    .line 2230
    :cond_17
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2231
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v4, 0x0

    if-nez v0, :cond_18

    .line 2232
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2235
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_19

    .line 2238
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2239
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2240
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_3

    .line 2241
    :cond_19
    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2244
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_1a

    .line 2245
    goto :goto_2

    :cond_1a
    move v2, v3

    .line 2243
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2246
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_1b

    .line 2248
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    .line 2253
    :cond_1b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2256
    :goto_3
    return-void
.end method

.method private blockScreenOff()V
    .locals 4

    .line 1819
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_0

    .line 1820
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen off blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1821
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 1822
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 1823
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    :cond_0
    return-void
.end method

.method private blockScreenOn()V
    .locals 4

    .line 1801
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 1802
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen on blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1803
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1804
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1805
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_0
    return-void
.end method

.method private caculateBrightnessByNits(FFZ)F
    .locals 4
    .param p1, "brightness"    # F
    .param p2, "percent"    # F
    .param p3, "log"    # Z

    .line 3250
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v0, :cond_0

    .line 3251
    return p1

    .line 3252
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    mul-float/2addr v0, p2

    .line 3253
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    .line 3254
    .local v1, "b":F
    if-eqz p3, :cond_1

    .line 3255
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

    .line 3256
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

    .line 3258
    invoke-static {v3, v1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3255
    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    :cond_1
    return v1
.end method

.method private caculateBrightnessByNitsLimit(FFIZ)F
    .locals 4
    .param p1, "brightness"    # F
    .param p2, "percent"    # F
    .param p3, "limit_nits"    # I
    .param p4, "log"    # Z

    .line 3363
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v0, :cond_0

    .line 3364
    mul-float v0, p1, p2

    return v0

    .line 3365
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    mul-float/2addr v0, p2

    .line 3366
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

    .line 3367
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    .line 3368
    .local v1, "b":F
    if-eqz p4, :cond_2

    .line 3369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera:"

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

    .line 3370
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

    .line 3372
    invoke-static {v3, v1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3369
    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    :cond_2
    return v1
.end method

.method private caculateBrightnessInHighTemp(FF)[Ljava/lang/Float;
    .locals 8
    .param p1, "brightness"    # F
    .param p2, "rate"    # F

    .line 3302
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3331
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3302
    if-nez v0, :cond_0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_0

    .line 3303
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    .line 3304
    invoke-static {v2}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->updateHBMStatus(Z)V

    goto :goto_0

    .line 3305
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    if-eqz v0, :cond_1

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_1

    .line 3306
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    .line 3307
    invoke-static {v3}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->updateHBMStatus(Z)V

    .line 3309
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-enter v0

    .line 3311
    const/4 v5, 0x2

    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mInHighTemp:Z

    if-eqz v6, :cond_7

    const v6, 0x3ecccccd    # 0.4f

    cmpg-float v6, p1, v6

    if-gez v6, :cond_2

    goto :goto_3

    .line 3316
    :cond_2
    cmpg-float v1, p1, v1

    if-gtz v1, :cond_4

    .line 3318
    new-array v1, v5, [Ljava/lang/Float;

    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v1, v3

    .line 3319
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    goto :goto_1

    :cond_3
    move v6, p2

    :goto_1
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3331
    :try_start_1
    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3318
    return-object v1

    .line 3322
    :cond_4
    :try_start_2
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    mul-float/2addr v1, p1

    .line 3323
    .local v1, "ret":F
    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    cmpg-float v6, v1, v6

    if-gez v6, :cond_5

    .line 3324
    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    move v1, v6

    .line 3326
    :cond_5
    new-array v6, v5, [Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    .line 3327
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    goto :goto_2

    :cond_6
    move v7, p2

    :goto_2
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3331
    :try_start_3
    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3326
    return-object v6

    .line 3312
    .end local v1    # "ret":F
    :cond_7
    :goto_3
    :try_start_4
    new-array v1, v5, [Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v1, v3

    .line 3313
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    goto :goto_4

    :cond_8
    move v6, p2

    :goto_4
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v1, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3331
    :try_start_5
    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3312
    return-object v1

    .line 3331
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 3328
    :catch_0
    move-exception v1

    .line 3329
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

    .line 3331
    :try_start_7
    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-exit v0

    .line 3329
    return-object v5

    .line 3331
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    .line 3332
    nop

    .end local p0    # "this":Lcom/android/server/display/DisplayPowerController;
    .end local p1    # "brightness":F
    .end local p2    # "rate":F
    throw v1

    .line 3333
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

    .line 2800
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .line 2796
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static clampAutoBrightnessAdjustment(F)F
    .locals 2
    .param p0, "value"    # F

    .line 2805
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(F)F
    .locals 2
    .param p1, "value"    # F

    .line 1945
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1946
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    return v0

    .line 1948
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

    .line 1939
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .line 2375
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2376
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2377
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 2379
    :cond_0
    return-void
.end method

.method private convertToNits(I)F
    .locals 1
    .param p1, "backlight"    # I

    .line 2532
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_0

    .line 2533
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    return v0

    .line 2535
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private debounceProximitySensor()V
    .locals 6

    .line 2350
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 2353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2354
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 2356
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2360
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    .line 2363
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 2364
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0

    .line 2368
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2369
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2372
    .end local v0    # "now":J
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2685
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2686
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2693
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

    .line 2694
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

    .line 2695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2696
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2695
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastUserSetScreenBrightnessFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenBrightnessSettingFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightnessFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedScreenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2713
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

    .line 2714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2720
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2719
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2722
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    if-eqz v0, :cond_0

    .line 2723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 2724
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2723
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2727
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 2728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2729
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2728
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2731
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 2732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 2733
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2732
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2736
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_3

    .line 2737
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 2740
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_4

    .line 2741
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2744
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_5

    .line 2745
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2746
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 2749
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2750
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_6

    .line 2751
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->dump(Ljava/io/PrintWriter;)V

    .line 2752
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->dump(Ljava/io/PrintWriter;)V

    .line 2754
    :cond_6
    return-void
.end method

.method private findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 4
    .param p1, "sensorType"    # Ljava/lang/String;

    .line 924
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 926
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 927
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 928
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 929
    return-object v2

    .line 926
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 933
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

    .line 2444
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2446
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

    .line 2080
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_0

    .line 2081
    const/high16 v1, 0x43af0000    # 350.0f

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v0

    return v0

    .line 2084
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private static getFloat(Landroid/content/res/Resources;I)F
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .line 876
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 877
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 878
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 880
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    return v1

    .line 882
    :cond_0
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    return v1
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 888
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 889
    .local v0, "N":I
    new-array v1, v0, [F

    .line 890
    .local v1, "vals":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 891
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 890
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 893
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 894
    return-object v1
.end method

.method private getScreenBrightnessForVrSetting()F
    .locals 4

    .line 2457
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    const-string/jumbo v2, "screen_brightness_for_vr_float"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2460
    .local v0, "brightnessFloat":F
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForVr(F)F

    move-result v1

    return v1
.end method

.method private getScreenBrightnessMode()I
    .locals 4

    .line 2466
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

    .line 2450
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    const-string/jumbo v2, "screen_brightness_float"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2453
    .local v0, "brightness":F
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    return v1
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 6
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .line 2305
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_6

    .line 2306
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 2307
    return-void

    .line 2309
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    .line 2310
    return-void

    .line 2316
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2317
    const/4 v0, 0x0

    if-eqz p3, :cond_5

    .line 2320
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 2322
    .local v0, "fast":Z
    :cond_2
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2325
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mMotionCheck:Lcom/android/server/display/DisplayPowerController$MotionCheck;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->getPickUpPhoneState()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    .line 2329
    :cond_3
    add-long/2addr v2, p1

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1

    .line 2326
    :cond_4
    :goto_0
    add-long v4, p1, v2

    add-long/2addr v4, v2

    invoke-direct {p0, v4, v5}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 2338
    .end local v0    # "fast":Z
    :goto_1
    goto :goto_2

    .line 2339
    :cond_5
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2340
    const-wide/16 v0, 0xa

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 2345
    :goto_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    .line 2347
    :cond_6
    return-void
.end method

.method private handleSettingsChange(Z)V
    .locals 5
    .param p1, "userSwitch"    # Z

    .line 2401
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 2403
    if-eqz p1, :cond_1

    .line 2405
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 2406
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 2407
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 2411
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2416
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessMode()I

    move-result v0

    .line 2418
    .local v0, "mode":I
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMode:I

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_2

    .line 2421
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 2423
    :cond_2
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMode:I

    .line 2425
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2428
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 2432
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 2435
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getCurrentAmbientLux()F

    move-result v2

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/OpAutoBrightnessHelper;->adjustBrightness(FFF)V

    .line 2440
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 2441
    return-void
.end method

.method private initialize()V
    .locals 6

    .line 1061
    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 1062
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

    .line 1064
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v1, :cond_1

    .line 1065
    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1067
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1068
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1070
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 1072
    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1073
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1076
    :cond_1
    new-instance v0, Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 1078
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 1082
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 1083
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1084
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v2

    .line 1083
    invoke-static {v1, v2}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    goto :goto_1

    .line 1085
    :catch_0
    move-exception v0

    .line 1089
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1090
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v1

    .line 1089
    invoke-static {v0, v1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    .line 1091
    .local v0, "brightness":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 1092
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 1094
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1095
    const-string/jumbo v2, "screen_brightness_float"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1094
    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1097
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1098
    const-string/jumbo v2, "screen_brightness_for_vr_float"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1097
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1100
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1101
    const-string/jumbo v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1100
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1105
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1106
    const-string/jumbo v2, "smtbrn"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1105
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1109
    new-instance v1, Lcom/android/server/display/OpBrightnessReasonAndRate;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/display/OpBrightnessReasonAndRate;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    .line 1111
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1112
    const-string/jumbo v2, "ui_night_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1111
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1118
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1119
    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1118
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1124
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1125
    const-string v2, "game_mode_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1124
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1128
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1129
    const-string v2, "flashlight_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1128
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1132
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1133
    const-string v2, "auto_brightness_in_aod"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1132
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1135
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1136
    const-string v2, "fod_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1135
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1139
    return-void

    nop

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

    .line 1957
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x62

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1958
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

    .line 1961
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

    .line 2394
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2395
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2396
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 2397
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 2398
    return-void
.end method

.method private notifyBrightnessChanged(IZZ)V
    .locals 7
    .param p1, "brightness"    # I
    .param p2, "userInitiated"    # Z
    .param p3, "hadUserDataPoint"    # Z

    .line 2516
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v6

    .line 2517
    .local v6, "brightnessInNits":F
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_1

    .line 2522
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v0, :cond_0

    .line 2523
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    move v3, v0

    goto :goto_0

    .line 2524
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    move v3, v0

    :goto_0
    nop

    .line 2525
    .local v3, "powerFactor":F
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2527
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v5

    .line 2525
    move v1, v6

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZ)V

    .line 2529
    .end local v3    # "powerFactor":F
    :cond_1
    return-void
.end method

.method private proximitySensorEvent(JZ)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .line 2910
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    .line 2914
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_ctrl_psensor_positive"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2916
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2757
    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 2765
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2763
    :cond_0
    const-string v0, "Positive"

    return-object v0

    .line 2761
    :cond_1
    const-string v0, "Negative"

    return-object v0

    .line 2759
    :cond_2
    const-string v0, "Unknown"

    return-object v0
.end method

.method private putAutoBrightnessAdjustmentSetting(F)V
    .locals 3
    .param p1, "adjustment"    # F

    .line 2479
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2480
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2482
    return-void
.end method

.method private putScreenBrightnessSetting(F)V
    .locals 3
    .param p1, "brightnessValue"    # F

    .line 2473
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 2474
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_float"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2476
    return-void
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2770
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2778
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2776
    :cond_0
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    .line 2774
    :cond_1
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    .line 2772
    :cond_2
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0
.end method

.method private sendOnProximityNegativeSuspendWithWakelock()V
    .locals 2

    .line 2563
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2564
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2565
    return-void
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .line 2590
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2591
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2592
    return-void
.end method

.method private sendOnProximityPositiveSuspendWithWakelock()V
    .locals 2

    .line 2550
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2551
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2552
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .line 2577
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2578
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2579
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .line 2389
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2390
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2391
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1046
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1047
    monitor-exit v0

    .line 1048
    return-void

    .line 1047
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 2

    .line 1051
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_0

    .line 1052
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1053
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1054
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1056
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 4
    .param p1, "debounceTime"    # J

    .line 2382
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2385
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2386
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 2266
    if-eqz p1, :cond_0

    .line 2267
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    .line 2270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2271
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2275
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mMotionCheck:Lcom/android/server/display/DisplayPowerController$MotionCheck;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->startListening()V

    goto :goto_0

    .line 2279
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 2282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2285
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    .line 2287
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2288
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2289
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2290
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2291
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 2294
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_ctrl_psensor_positive"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2298
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mMotionCheck:Lcom/android/server/display/DisplayPowerController$MotionCheck;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController$MotionCheck;->stopListening()V

    .line 2302
    :cond_1
    :goto_0
    return-void
.end method

.method private setReportedScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 1934
    const-wide/32 v0, 0x20000

    const-string v2, "ReportedScreenStateToPolicy"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1935
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 1936
    return-void
.end method

.method private setScreenState(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 1837
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(IZ)Z
    .locals 7
    .param p1, "state"    # I
    .param p2, "reportOnly"    # Z

    .line 1841
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1842
    .local v2, "isOff":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, p1, :cond_6

    .line 1844
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-virtual {v3, p1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->setScreenState(I)V

    .line 1848
    const/4 v3, 0x2

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 1856
    :cond_1
    if-ne p1, v4, :cond_3

    .line 1857
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const-string v6, "FingerPrintMode"

    invoke-virtual {v5, v6, v1, v0}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_2

    .line 1849
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v5, p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->screenStateChange(I)V

    .line 1852
    new-array v5, v1, [I

    const/16 v6, 0x124

    aput v6, v5, v0

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1853
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    invoke-interface {v5, p1}, Lcom/oneplus/iris/IOneplusIrisManager;->screenStateChange(I)V

    .line 1862
    :cond_3
    :goto_2
    if-eqz v2, :cond_5

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v5, :cond_5

    .line 1863
    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v5, v3, :cond_4

    .line 1864
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1865
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    .line 1868
    invoke-static {v1}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateKeepHighVsync(Z)V

    .line 1870
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v3, v5}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 1871
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    goto :goto_3

    .line 1872
    :cond_4
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v3, :cond_5

    .line 1874
    return v0

    .line 1878
    :cond_5
    :goto_3
    if-nez p2, :cond_6

    .line 1879
    const-wide/32 v5, 0x20000

    const-string v3, "ScreenState"

    invoke-static {v5, v6, v3, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1881
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "debug.tracing.screen_state"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 1885
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    goto :goto_4

    .line 1886
    :catch_0
    move-exception v3

    .line 1898
    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_7

    .line 1900
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1901
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1902
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_5

    .line 1903
    :cond_7
    if-nez v2, :cond_8

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v4, :cond_8

    .line 1908
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 1909
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    .line 1910
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1912
    :cond_8
    :goto_5
    if-nez v2, :cond_a

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-nez v3, :cond_a

    .line 1913
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1914
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    .line 1915
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_6

    .line 1917
    :cond_9
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1920
    :goto_6
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 1924
    :cond_a
    if-eqz v2, :cond_b

    .line 1925
    invoke-static {v0}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doWriteRecord(Z)V

    .line 1927
    :cond_b
    invoke-static {v2}, Lcom/android/server/am/OpRestartProcessManagerInjector;->setScreenState(Z)V

    .line 1930
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v3, :cond_c

    move v0, v1

    :cond_c
    return v0
.end method

.method private static skipRampStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2783
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2791
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2789
    :cond_0
    const-string v0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object v0

    .line 2787
    :cond_1
    const-string v0, "RAMP_STATE_SKIP_INITIAL"

    return-object v0

    .line 2785
    :cond_2
    const-string v0, "RAMP_STATE_SKIP_NONE"

    return-object v0
.end method

.method private triggerProximitySensorEvent(Z)V
    .locals 4
    .param p1, "positive"    # Z

    .line 2900
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    .line 2901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2902
    .local v0, "time":J
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    .line 2903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P-Sensor Changed: positive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/display/DisplayPowerController;->proximitySensorEvent(JZ)V

    .line 2907
    .end local v0    # "time":J
    :cond_1
    return-void
.end method

.method private unblockScreenOff()V
    .locals 6

    .line 1828
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_0

    .line 1829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 1830
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 1831
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

    .line 1832
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen off blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1834
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private unblockScreenOn()V
    .locals 6

    .line 1810
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_0

    .line 1811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1812
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 1813
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

    .line 1814
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen on blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1816
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updateAutoBrightnessAdjustment()Z
    .locals 4

    .line 2485
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2486
    return v1

    .line 2488
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_1

    .line 2489
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2490
    return v1

    .line 2492
    :cond_1
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2493
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2494
    const/4 v0, 0x1

    return v0
.end method

.method private updateDitherStatus()V
    .locals 9

    .line 3515
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->SUPPORT_DITHER_CONTROLLER:Z

    if-eqz v0, :cond_c

    .line 3516
    const/4 v0, 0x0

    .line 3517
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

    .line 3521
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

    .line 3523
    .local v4, "dcStatus":Z
    :goto_1
    const/4 v5, 0x0

    .line 3524
    .local v5, "lowbrightness":Z
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    if-eqz v6, :cond_3

    .line 3525
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

    .line 3528
    :cond_3
    if-eqz v1, :cond_4

    .line 3529
    const/4 v0, 0x0

    goto :goto_5

    .line 3531
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    if-eqz v6, :cond_6

    .line 3532
    if-eqz v4, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v6

    :goto_3
    move v0, v6

    goto :goto_4

    .line 3534
    :cond_6
    const/4 v0, 0x0

    .line 3536
    :goto_4
    if-eqz v5, :cond_7

    if-nez v4, :cond_7

    .line 3537
    const/4 v0, 0x1

    .line 3542
    :cond_7
    :goto_5
    :try_start_0
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mDitherLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3543
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/display/DisplayPowerController;->mDitherEnabled:Z

    if-eq v0, v7, :cond_a

    .line 3544
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v7

    const/16 v8, 0x17

    if-eqz v0, :cond_8

    move v3, v2

    :cond_8
    invoke-interface {v7, v8, v3}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    .line 3545
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDitherEnabled:Z

    .line 3546
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_a

    .line 3547
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateDitherStatus(): "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_9

    const-string v7, "enable"

    goto :goto_6

    :cond_9
    const-string v7, "disable"

    :goto_6
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    :cond_a
    monitor-exit v6

    .line 3553
    goto :goto_8

    .line 3550
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

    .line 3551
    .restart local v0    # "enable":Z
    .restart local v1    # "fodMode":Z
    .restart local v4    # "dcStatus":Z
    .restart local v5    # "lowbrightness":Z
    .restart local p0    # "this":Lcom/android/server/display/DisplayPowerController;
    :catch_0
    move-exception v2

    .line 3552
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_b

    const-string v6, "enable"

    goto :goto_7

    :cond_b
    const-string v6, "disable"

    :goto_7
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

    .line 3555
    .end local v0    # "enable":Z
    .end local v1    # "fodMode":Z
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "dcStatus":Z
    .end local v5    # "lowbrightness":Z
    :cond_c
    :goto_8
    return-void
.end method

.method private updatePowerState()V
    .locals 32

    .line 1174
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1175
    .local v2, "mustInitialize":Z
    const/4 v3, 0x0

    .line 1176
    .local v3, "brightnessAdjustmentFlags":I
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1178
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1179
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateDitherStatus()V

    .line 1180
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1181
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_0

    .line 1182
    monitor-exit v4

    return-void

    .line 1185
    :cond_0
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_1

    .line 1186
    new-instance v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v5, v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1187
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1188
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1189
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1190
    const/4 v2, 0x1

    .line 1193
    const/4 v5, 0x3

    .local v5, "previousPolicy":I
    goto :goto_0

    .line 1194
    .end local v5    # "previousPolicy":I
    :cond_1
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v5, :cond_2

    .line 1195
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1196
    .restart local v5    # "previousPolicy":I
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1197
    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v6, v7

    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1198
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1199
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1200
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    goto :goto_0

    .line 1202
    .end local v5    # "previousPolicy":I
    :cond_2
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1205
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

    .line 1206
    .local v6, "mustNotify":Z
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1209
    if-eqz v2, :cond_4

    .line 1210
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 1217
    :cond_4
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 1218
    .local v4, "brightnessState":F
    const/4 v8, 0x0

    .line 1219
    .local v8, "performScreenOffTransition":Z
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eqz v9, :cond_8

    if-eq v9, v7, :cond_6

    if-eq v9, v10, :cond_5

    .line 1241
    const/4 v9, 0x2

    .local v9, "state":I
    goto :goto_3

    .line 1236
    .end local v9    # "state":I
    :cond_5
    const/4 v9, 0x5

    .line 1237
    .restart local v9    # "state":I
    goto :goto_3

    .line 1225
    .end local v9    # "state":I
    :cond_6
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v9, :cond_7

    .line 1226
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .restart local v9    # "state":I
    goto :goto_2

    .line 1228
    .end local v9    # "state":I
    :cond_7
    const/4 v9, 0x3

    .line 1230
    .restart local v9    # "state":I
    :goto_2
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v12, :cond_9

    .line 1231
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 1232
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v12, v11}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_3

    .line 1221
    .end local v9    # "state":I
    :cond_8
    const/4 v9, 0x1

    .line 1222
    .restart local v9    # "state":I
    const/4 v8, 0x1

    .line 1223
    nop

    .line 1244
    :cond_9
    :goto_3
    nop

    .line 1278
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v12, :cond_16

    .line 1279
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "useProximityForceSuspend = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DisplayPowerController"

    invoke-static {v13, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-eqz v12, :cond_12

    .line 1281
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v12, :cond_d

    .line 1282
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1284
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    if-nez v12, :cond_c

    .line 1285
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mProximity = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v13}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DisplayPowerController"

    invoke-static {v13, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_a

    .line 1287
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveSuspendWithWakelock()V

    goto :goto_4

    .line 1288
    :cond_a
    if-nez v12, :cond_b

    .line 1289
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeSuspendWithWakelock()V

    .line 1294
    :cond_b
    :goto_4
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    goto/16 :goto_6

    .line 1296
    :cond_c
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v12, :cond_17

    .line 1297
    const-string v12, "DisplayPowerController"

    const-string/jumbo v13, "the last proximity event has been handled"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1302
    :cond_d
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v12, :cond_17

    .line 1303
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mPowerRequest.useProximitySensor = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", mWaitingForNegativeProximity = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", state = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DisplayPowerController"

    invoke-static {v13, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    const/4 v13, 0x3

    if-eqz v12, :cond_f

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_f

    if-eq v9, v7, :cond_e

    if-ne v9, v13, :cond_f

    .line 1312
    :cond_e
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_6

    .line 1314
    :cond_f
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1316
    if-eq v9, v7, :cond_10

    if-ne v9, v13, :cond_11

    .line 1317
    :cond_10
    const-string v12, "DisplayPowerController"

    const-string/jumbo v13, "turn on lcd light due to proximity released"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeSuspendWithWakelock()V

    .line 1321
    :cond_11
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1322
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1323
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    goto :goto_6

    .line 1328
    :cond_12
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v12, :cond_13

    if-eq v9, v7, :cond_13

    .line 1329
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1330
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v12, :cond_15

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_15

    .line 1332
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1333
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    goto :goto_5

    .line 1335
    :cond_13
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v12, :cond_14

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_14

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_14

    if-eq v9, v7, :cond_14

    .line 1339
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_5

    .line 1341
    :cond_14
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1342
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1344
    :cond_15
    :goto_5
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_17

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-eq v12, v7, :cond_17

    .line 1346
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1347
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto :goto_6

    .line 1351
    :cond_16
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1353
    :cond_17
    :goto_6
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-nez v12, :cond_18

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_18

    .line 1354
    const/4 v9, 0x1

    .line 1361
    :cond_18
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v12

    .line 1362
    .local v12, "oldState":I
    invoke-direct {v1, v9, v8}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 1363
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v13}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v9

    .line 1365
    const/4 v13, 0x5

    if-ne v9, v7, :cond_19

    .line 1366
    const/high16 v4, -0x40800000    # -1.0f

    .line 1367
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v14, v13}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1371
    :cond_19
    if-ne v9, v13, :cond_1a

    .line 1372
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 1373
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1377
    :cond_1a
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    if-lez v14, :cond_1b

    .line 1378
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v15, v14}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(Landroid/content/Context;I)F

    move-result v4

    .line 1379
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v15, 0x15

    invoke-virtual {v14, v15}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1384
    :cond_1b
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-eqz v14, :cond_1c

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    cmpl-float v14, v14, v13

    if-ltz v14, :cond_1c

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    cmpg-float v14, v14, v15

    if-gtz v14, :cond_1c

    .line 1387
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    invoke-direct {v1, v14}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v4

    .line 1388
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v13, 0x7

    invoke-virtual {v14, v13}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1389
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    goto :goto_7

    .line 1391
    :cond_1c
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    .line 1394
    :goto_7
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, -0x2

    const-string v15, "auto_brightness_in_aod"

    invoke-static {v13, v15, v7, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v13

    if-ne v13, v7, :cond_1d

    move v13, v7

    goto :goto_8

    :cond_1d
    move v13, v0

    .line 1396
    .local v13, "autoBrightnessEnabledInAod":Z
    :goto_8
    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v14, :cond_1e

    .line 1397
    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v14

    if-eqz v14, :cond_1e

    if-eqz v13, :cond_1e

    move v14, v7

    goto :goto_9

    :cond_1e
    move v14, v0

    .line 1398
    .local v14, "autoBrightnessEnabledInDoze":Z
    :goto_9
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v15, :cond_20

    if-eq v9, v11, :cond_1f

    if-eqz v14, :cond_20

    .line 1400
    :cond_1f
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_20

    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v15, :cond_20

    move v15, v7

    goto :goto_a

    :cond_20
    move v15, v0

    .line 1403
    .local v15, "autoBrightnessEnabled":Z
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateUserSetScreenBrightness()Z

    move-result v26

    .line 1407
    .local v26, "userSetBrightnessChanged":Z
    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    invoke-direct {v1, v11}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v11

    if-eqz v11, :cond_21

    .line 1408
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 1409
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1410
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v10, 0x8

    invoke-virtual {v11, v10}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_b

    .line 1412
    :cond_21
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1415
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessAdjustment()Z

    move-result v10

    .line 1416
    .local v10, "autoBrightnessAdjustmentChanged":Z
    if-eqz v10, :cond_22

    .line 1417
    const/high16 v11, 0x7fc00000    # Float.NaN

    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1422
    :cond_22
    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_23

    .line 1423
    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1424
    .local v11, "autoBrightnessAdjustment":F
    const/4 v3, 0x1

    .line 1425
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    goto :goto_c

    .line 1427
    .end local v11    # "autoBrightnessAdjustment":F
    :cond_23
    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 1428
    .restart local v11    # "autoBrightnessAdjustment":F
    const/4 v3, 0x2

    .line 1429
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    .line 1435
    :goto_c
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    const/high16 v27, -0x40800000    # -1.0f

    if-eqz v0, :cond_24

    cmpl-float v0, v4, v27

    if-eqz v0, :cond_24

    .line 1437
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1438
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1439
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    goto :goto_d

    .line 1441
    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    .line 1446
    :goto_d
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_26

    if-nez v10, :cond_25

    if-eqz v26, :cond_26

    :cond_25
    const/4 v0, 0x1

    goto :goto_e

    :cond_26
    const/4 v0, 0x0

    .line 1448
    .local v0, "userInitiatedChange":Z
    :goto_e
    const/4 v7, 0x0

    .line 1450
    .local v7, "hadUserBrightnessPoint":Z
    move/from16 v28, v2

    .end local v2    # "mustInitialize":Z
    .local v28, "mustInitialize":Z
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_27

    .line 1451
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result v7

    .line 1452
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move/from16 v29, v3

    .end local v3    # "brightnessAdjustmentFlags":I
    .local v29, "brightnessAdjustmentFlags":I
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move/from16 v30, v7

    .end local v7    # "hadUserBrightnessPoint":Z
    .local v30, "hadUserBrightnessPoint":Z
    iget v7, v1, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    move/from16 v31, v8

    .end local v8    # "performScreenOffTransition":Z
    .local v31, "performScreenOffTransition":Z
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move-object/from16 v18, v2

    move/from16 v19, v15

    move-object/from16 v20, v3

    move/from16 v21, v7

    move/from16 v22, v26

    move/from16 v23, v11

    move/from16 v24, v10

    move/from16 v25, v8

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZI)V

    move/from16 v7, v30

    goto :goto_f

    .line 1450
    .end local v29    # "brightnessAdjustmentFlags":I
    .end local v30    # "hadUserBrightnessPoint":Z
    .end local v31    # "performScreenOffTransition":Z
    .restart local v3    # "brightnessAdjustmentFlags":I
    .restart local v7    # "hadUserBrightnessPoint":Z
    .restart local v8    # "performScreenOffTransition":Z
    :cond_27
    move/from16 v29, v3

    move/from16 v31, v8

    .line 1459
    .end local v3    # "brightnessAdjustmentFlags":I
    .end local v8    # "performScreenOffTransition":Z
    .restart local v29    # "brightnessAdjustmentFlags":I
    .restart local v31    # "performScreenOffTransition":Z
    :goto_f
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v2, :cond_28

    .line 1460
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v2, v3}, Lcom/android/server/display/BrightnessTracker;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1464
    :cond_28
    const/4 v2, 0x0

    .line 1465
    .local v2, "slowChange":Z
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1466
    move v3, v11

    .line 1467
    .local v3, "newAutoBrightnessAdjustment":F
    if-eqz v15, :cond_29

    .line 1468
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v8}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()F

    move-result v4

    .line 1469
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1470
    invoke-virtual {v8}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v3

    .line 1472
    :cond_29
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v8

    if-nez v8, :cond_2b

    cmpl-float v8, v4, v27

    if-nez v8, :cond_2a

    goto :goto_10

    .line 1491
    :cond_2a
    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto :goto_11

    .line 1476
    :cond_2b
    :goto_10
    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v8, :cond_2c

    if-nez v10, :cond_2c

    .line 1477
    const/4 v2, 0x1

    .line 1485
    :cond_2c
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-virtual {v8, v4}, Lcom/android/server/display/OpBrightnessReasonAndRate;->setSliderDuration(F)V

    .line 1487
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v8

    invoke-direct {v1, v8}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(F)V

    .line 1488
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1489
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    move/from16 v18, v2

    const/4 v2, 0x4

    .end local v2    # "slowChange":Z
    .local v18, "slowChange":Z
    invoke-virtual {v8, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    move/from16 v2, v18

    .line 1493
    .end local v18    # "slowChange":Z
    .restart local v2    # "slowChange":Z
    :goto_11
    cmpl-float v8, v11, v3

    if-eqz v8, :cond_2d

    .line 1496
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessAdjustmentSetting(F)V

    move/from16 v3, v29

    goto :goto_12

    .line 1499
    :cond_2d
    const/4 v8, 0x0

    move v3, v8

    .line 1501
    .end local v29    # "brightnessAdjustmentFlags":I
    .local v3, "brightnessAdjustmentFlags":I
    :goto_12
    goto :goto_13

    .line 1502
    .end local v3    # "brightnessAdjustmentFlags":I
    .restart local v29    # "brightnessAdjustmentFlags":I
    :cond_2e
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1503
    const/4 v3, 0x0

    .line 1519
    .end local v29    # "brightnessAdjustmentFlags":I
    .restart local v3    # "brightnessAdjustmentFlags":I
    :goto_13
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 1520
    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    invoke-direct {v1, v8}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v4

    .line 1521
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    move/from16 v18, v2

    const/4 v2, 0x1

    .end local v2    # "slowChange":Z
    .restart local v18    # "slowChange":Z
    invoke-virtual {v8, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1524
    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mPreAutoBrightnessEnabled:Z

    if-nez v2, :cond_30

    if-eqz v15, :cond_30

    move v2, v10

    move v8, v11

    .end local v10    # "autoBrightnessAdjustmentChanged":Z
    .end local v11    # "autoBrightnessAdjustment":F
    .local v2, "autoBrightnessAdjustmentChanged":Z
    .local v8, "autoBrightnessAdjustment":F
    float-to-double v10, v4

    const-wide v19, 0x3fa999999999999aL    # 0.05

    cmpl-double v10, v10, v19

    if-lez v10, :cond_2f

    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mPreState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2f

    .line 1527
    const v4, 0x3d4ccccd    # 0.05f

    .line 1528
    move v10, v12

    .end local v12    # "oldState":I
    .local v10, "oldState":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    .line 1529
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 1530
    .local v11, "msg":Landroid/os/Message;
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move/from16 v19, v13

    move/from16 v20, v14

    .end local v13    # "autoBrightnessEnabledInAod":Z
    .end local v14    # "autoBrightnessEnabledInDoze":Z
    .local v19, "autoBrightnessEnabledInAod":Z
    .local v20, "autoBrightnessEnabledInDoze":Z
    const-wide/16 v13, 0xc8

    invoke-virtual {v12, v11, v13, v14}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1531
    const-string v12, "DisplayPowerController"

    const-string v13, "brightnessState 0.05"

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 1524
    .end local v10    # "oldState":I
    .end local v11    # "msg":Landroid/os/Message;
    .end local v19    # "autoBrightnessEnabledInAod":Z
    .end local v20    # "autoBrightnessEnabledInDoze":Z
    .restart local v12    # "oldState":I
    .restart local v13    # "autoBrightnessEnabledInAod":Z
    .restart local v14    # "autoBrightnessEnabledInDoze":Z
    :cond_2f
    move v10, v12

    move/from16 v19, v13

    move/from16 v20, v14

    .end local v12    # "oldState":I
    .end local v13    # "autoBrightnessEnabledInAod":Z
    .end local v14    # "autoBrightnessEnabledInDoze":Z
    .restart local v10    # "oldState":I
    .restart local v19    # "autoBrightnessEnabledInAod":Z
    .restart local v20    # "autoBrightnessEnabledInDoze":Z
    goto :goto_14

    .end local v2    # "autoBrightnessAdjustmentChanged":Z
    .end local v8    # "autoBrightnessAdjustment":F
    .end local v19    # "autoBrightnessEnabledInAod":Z
    .end local v20    # "autoBrightnessEnabledInDoze":Z
    .local v10, "autoBrightnessAdjustmentChanged":Z
    .local v11, "autoBrightnessAdjustment":F
    .restart local v12    # "oldState":I
    .restart local v13    # "autoBrightnessEnabledInAod":Z
    .restart local v14    # "autoBrightnessEnabledInDoze":Z
    :cond_30
    move v2, v10

    move v8, v11

    move v10, v12

    move/from16 v19, v13

    move/from16 v20, v14

    .end local v11    # "autoBrightnessAdjustment":F
    .end local v12    # "oldState":I
    .end local v13    # "autoBrightnessEnabledInAod":Z
    .end local v14    # "autoBrightnessEnabledInDoze":Z
    .restart local v2    # "autoBrightnessAdjustmentChanged":Z
    .restart local v8    # "autoBrightnessAdjustment":F
    .local v10, "oldState":I
    .restart local v19    # "autoBrightnessEnabledInAod":Z
    .restart local v20    # "autoBrightnessEnabledInDoze":Z
    goto :goto_14

    .line 1519
    .end local v8    # "autoBrightnessAdjustment":F
    .end local v18    # "slowChange":Z
    .end local v19    # "autoBrightnessEnabledInAod":Z
    .end local v20    # "autoBrightnessEnabledInDoze":Z
    .local v2, "slowChange":Z
    .local v10, "autoBrightnessAdjustmentChanged":Z
    .restart local v11    # "autoBrightnessAdjustment":F
    .restart local v12    # "oldState":I
    .restart local v13    # "autoBrightnessEnabledInAod":Z
    .restart local v14    # "autoBrightnessEnabledInDoze":Z
    :cond_31
    move/from16 v18, v2

    move v2, v10

    move v8, v11

    move v10, v12

    move/from16 v19, v13

    move/from16 v20, v14

    .line 1534
    .end local v11    # "autoBrightnessAdjustment":F
    .end local v12    # "oldState":I
    .end local v13    # "autoBrightnessEnabledInAod":Z
    .end local v14    # "autoBrightnessEnabledInDoze":Z
    .local v2, "autoBrightnessAdjustmentChanged":Z
    .restart local v8    # "autoBrightnessAdjustment":F
    .local v10, "oldState":I
    .restart local v18    # "slowChange":Z
    .restart local v19    # "autoBrightnessEnabledInAod":Z
    .restart local v20    # "autoBrightnessEnabledInDoze":Z
    :goto_14
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v11}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v11

    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mPreState:I

    .line 1535
    iput-boolean v15, v1, Lcom/android/server/display/DisplayPowerController;->mPreAutoBrightnessEnabled:Z

    .line 1539
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_37

    .line 1540
    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    cmpl-float v11, v4, v11

    if-lez v11, :cond_32

    .line 1541
    const v11, 0x3d23d70a    # 0.04f

    sub-float v11, v4, v11

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1544
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    .line 1546
    :cond_32
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v11, :cond_33

    .line 1547
    const/4 v11, 0x0

    move/from16 v18, v11

    .line 1549
    :cond_33
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 1552
    sget-boolean v11, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v11, :cond_36

    .line 1553
    sget-boolean v11, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_34

    .line 1554
    const-string v11, "DisplayPowerController"

    const-string v12, "[DimScreen] Screen is dimming"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_34
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v11

    if-nez v11, :cond_36

    .line 1557
    sget-boolean v11, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_35

    .line 1558
    const-string v11, "DisplayPowerController"

    const-string v12, "[DimScreen] set dimming content provider for monitoring."

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :cond_35
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "device_is_dimming"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1580
    :cond_36
    move/from16 v21, v15

    goto :goto_16

    .line 1564
    :cond_37
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-eqz v11, :cond_3a

    .line 1565
    const/4 v11, 0x0

    .line 1566
    .end local v18    # "slowChange":Z
    .local v11, "slowChange":Z
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 1569
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v12, :cond_39

    .line 1570
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_38

    .line 1571
    const-string v12, "DisplayPowerController"

    const-string v13, "[DimScreen] Screen is not dimming -> reset"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_38
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v13, 0x57

    invoke-virtual {v12, v13, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 1574
    .local v12, "msg":Landroid/os/Message;
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move/from16 v21, v15

    .end local v15    # "autoBrightnessEnabled":Z
    .local v21, "autoBrightnessEnabled":Z
    const-wide/16 v14, 0xa

    invoke-virtual {v13, v12, v14, v15}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_15

    .line 1569
    .end local v12    # "msg":Landroid/os/Message;
    .end local v21    # "autoBrightnessEnabled":Z
    .restart local v15    # "autoBrightnessEnabled":Z
    :cond_39
    move/from16 v21, v15

    .line 1580
    .end local v15    # "autoBrightnessEnabled":Z
    .restart local v21    # "autoBrightnessEnabled":Z
    :goto_15
    move/from16 v18, v11

    goto :goto_16

    .line 1564
    .end local v11    # "slowChange":Z
    .end local v21    # "autoBrightnessEnabled":Z
    .restart local v15    # "autoBrightnessEnabled":Z
    .restart local v18    # "slowChange":Z
    :cond_3a
    move/from16 v21, v15

    .line 1580
    .end local v15    # "autoBrightnessEnabled":Z
    .restart local v21    # "autoBrightnessEnabled":Z
    :goto_16
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v11, :cond_3d

    .line 1581
    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    cmpl-float v11, v4, v11

    if-lez v11, :cond_3b

    .line 1582
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 1583
    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 1588
    .local v11, "brightnessFactor":F
    const/4 v12, 0x1

    invoke-direct {v1, v4, v11, v12}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessByNits(FFZ)F

    move-result v13

    .line 1590
    .local v13, "lowPowerBrightnessFloat":F
    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1592
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    .line 1594
    .end local v11    # "brightnessFactor":F
    .end local v13    # "lowPowerBrightnessFloat":F
    :cond_3b
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v11, :cond_3c

    .line 1595
    const/16 v18, 0x0

    .line 1597
    :cond_3c
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    goto :goto_17

    .line 1598
    :cond_3d
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-eqz v11, :cond_3e

    .line 1599
    const/16 v18, 0x0

    .line 1600
    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    .line 1605
    :cond_3e
    :goto_17
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v11, :cond_55

    .line 1606
    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v11, :cond_44

    .line 1607
    const/4 v11, 0x2

    if-ne v9, v11, :cond_43

    .line 1608
    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v11, :cond_3f

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v11, :cond_3f

    .line 1609
    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1610
    const/4 v11, 0x1

    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_19

    .line 1608
    :cond_3f
    const/4 v11, 0x1

    .line 1611
    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v12, v11, :cond_41

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v11, :cond_41

    iget v11, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1613
    invoke-static {v4, v11}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v11

    if-nez v11, :cond_40

    .line 1615
    const/4 v11, 0x2

    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_19

    .line 1613
    :cond_40
    const/4 v11, 0x2

    goto :goto_18

    .line 1611
    :cond_41
    const/4 v11, 0x2

    .line 1616
    :goto_18
    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v12, v11, :cond_42

    .line 1617
    const/4 v11, 0x0

    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_19

    .line 1616
    :cond_42
    const/4 v11, 0x0

    goto :goto_19

    .line 1620
    :cond_43
    const/4 v11, 0x0

    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 1624
    :cond_44
    :goto_19
    const/4 v11, 0x5

    if-eq v9, v11, :cond_46

    if-ne v10, v11, :cond_45

    goto :goto_1a

    :cond_45
    const/4 v11, 0x0

    goto :goto_1b

    :cond_46
    :goto_1a
    const/4 v11, 0x1

    .line 1626
    .local v11, "wasOrWillBeInVr":Z
    :goto_1b
    const/4 v12, 0x2

    if-ne v9, v12, :cond_47

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-eqz v12, :cond_47

    const/4 v12, 0x1

    goto :goto_1c

    :cond_47
    const/4 v12, 0x0

    .line 1631
    .local v12, "initialRampSkip":Z
    :goto_1c
    nop

    .line 1632
    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v13

    if-eqz v13, :cond_48

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v13, :cond_48

    const/4 v13, 0x1

    goto :goto_1d

    :cond_48
    const/4 v13, 0x0

    .line 1635
    .local v13, "hasBrightnessBuckets":Z
    :goto_1d
    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v14, :cond_49

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1636
    invoke-virtual {v14}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-nez v14, :cond_49

    const/4 v14, 0x1

    goto :goto_1e

    :cond_49
    const/4 v14, 0x0

    .line 1637
    .local v14, "isDisplayContentVisible":Z
    :goto_1e
    iget-boolean v15, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    if-nez v15, :cond_4b

    iget-boolean v15, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-eqz v15, :cond_4a

    goto :goto_1f

    :cond_4a
    const/4 v15, 0x0

    goto :goto_20

    :cond_4b
    :goto_1f
    const/4 v15, 0x1

    .line 1648
    .local v15, "brightnessIsTemporary":Z
    :goto_20
    cmpl-float v16, v4, v27

    if-nez v16, :cond_4c

    .line 1649
    const/16 v16, 0x0

    goto :goto_21

    :cond_4c
    move/from16 v16, v4

    :goto_21
    move/from16 v17, v16

    .line 1651
    .local v17, "animateValue":F
    move/from16 v16, v2

    .end local v2    # "autoBrightnessAdjustmentChanged":Z
    .local v16, "autoBrightnessAdjustmentChanged":Z
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget v2, v2, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->reason:I

    invoke-static {v2, v3}, Lcom/android/server/display/OpBrightnessReasonAndRate;->setReason(II)V

    .line 1652
    const/4 v2, 0x0

    .line 1653
    .local v2, "skipRampAnimatorScreenON":Z
    move/from16 v22, v5

    move/from16 v23, v6

    .end local v5    # "previousPolicy":I
    .end local v6    # "mustNotify":Z
    .local v22, "previousPolicy":I
    .local v23, "mustNotify":Z
    iget-wide v5, v1, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    move/from16 v25, v8

    move/from16 v24, v9

    .end local v8    # "autoBrightnessAdjustment":F
    .end local v9    # "state":I
    .local v24, "state":I
    .local v25, "autoBrightnessAdjustment":F
    const-wide/16 v8, -0x1

    cmp-long v5, v5, v8

    if-eqz v5, :cond_4e

    .line 1654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v8, v1, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    sub-long/2addr v5, v8

    .line 1655
    .local v5, "delta":J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_4d

    const-wide/16 v8, 0x3e8

    cmp-long v8, v5, v8

    if-gez v8, :cond_4d

    .line 1656
    const/4 v2, 0x1

    goto :goto_22

    .line 1658
    :cond_4d
    const-wide/16 v8, -0x1

    iput-wide v8, v1, Lcom/android/server/display/DisplayPowerController;->mSensorRightNowEnableTime:J

    .line 1660
    .end local v5    # "delta":J
    :cond_4e
    :goto_22
    move/from16 v5, v17

    .end local v17    # "animateValue":F
    .local v5, "animateValue":F
    invoke-direct {v1, v5}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 1661
    if-nez v12, :cond_51

    if-nez v13, :cond_51

    if-nez v11, :cond_51

    if-eqz v14, :cond_51

    if-nez v15, :cond_51

    if-eqz v2, :cond_4f

    goto :goto_24

    .line 1666
    :cond_4f
    nop

    .line 1667
    if-eqz v18, :cond_50

    const v6, 0x3e70f0f0

    goto :goto_23

    :cond_50
    const v6, 0x3f34b4b4

    .line 1666
    :goto_23
    invoke-direct {v1, v5, v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FF)V

    goto :goto_25

    .line 1664
    :cond_51
    :goto_24
    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FF)V

    goto :goto_25

    .line 1670
    :cond_52
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animateValue:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "DisplayPowerController"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :goto_25
    if-nez v15, :cond_56

    .line 1674
    if-eqz v0, :cond_54

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v6, :cond_53

    .line 1675
    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result v6

    if-nez v6, :cond_54

    .line 1678
    :cond_53
    const/4 v0, 0x0

    .line 1680
    :cond_54
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 1681
    invoke-static {v6, v4}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v6

    .line 1680
    invoke-direct {v1, v6, v0, v7}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessChanged(IZZ)V

    move v2, v0

    goto :goto_26

    .line 1605
    .end local v11    # "wasOrWillBeInVr":Z
    .end local v12    # "initialRampSkip":Z
    .end local v13    # "hasBrightnessBuckets":Z
    .end local v14    # "isDisplayContentVisible":Z
    .end local v15    # "brightnessIsTemporary":Z
    .end local v16    # "autoBrightnessAdjustmentChanged":Z
    .end local v22    # "previousPolicy":I
    .end local v23    # "mustNotify":Z
    .end local v24    # "state":I
    .end local v25    # "autoBrightnessAdjustment":F
    .local v2, "autoBrightnessAdjustmentChanged":Z
    .local v5, "previousPolicy":I
    .restart local v6    # "mustNotify":Z
    .restart local v8    # "autoBrightnessAdjustment":F
    .restart local v9    # "state":I
    :cond_55
    move/from16 v16, v2

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v25, v8

    move/from16 v24, v9

    .line 1688
    .end local v2    # "autoBrightnessAdjustmentChanged":Z
    .end local v5    # "previousPolicy":I
    .end local v6    # "mustNotify":Z
    .end local v8    # "autoBrightnessAdjustment":F
    .end local v9    # "state":I
    .restart local v16    # "autoBrightnessAdjustmentChanged":Z
    .restart local v22    # "previousPolicy":I
    .restart local v23    # "mustNotify":Z
    .restart local v24    # "state":I
    .restart local v25    # "autoBrightnessAdjustment":F
    :cond_56
    move v2, v0

    .end local v0    # "userInitiatedChange":Z
    .local v2, "userInitiatedChange":Z
    :goto_26
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    if-eqz v3, :cond_58

    .line 1689
    :cond_57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Brightness ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "] reason changing to: \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 1690
    invoke-virtual {v5, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', previous reason: \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1689
    const-string v5, "DisplayPowerController"

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1696
    :cond_58
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_5a

    .line 1697
    move/from16 v5, v24

    const/4 v0, 0x2

    .end local v24    # "state":I
    .local v5, "state":I
    if-ne v5, v0, :cond_59

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1698
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1699
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    goto :goto_27

    .line 1701
    :cond_59
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    goto :goto_27

    .line 1696
    .end local v5    # "state":I
    .restart local v24    # "state":I
    :cond_5a
    move/from16 v5, v24

    .line 1709
    .end local v24    # "state":I
    .restart local v5    # "state":I
    :goto_27
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_5c

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_5b

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1711
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_5c

    :cond_5b
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1712
    invoke-virtual {v0, v6}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    goto :goto_28

    :cond_5c
    const/4 v0, 0x0

    :goto_28
    move v6, v0

    .line 1713
    .local v6, "ready":Z
    if-eqz v6, :cond_5d

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 1714
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_5d

    const/4 v0, 0x1

    goto :goto_29

    :cond_5d
    const/4 v0, 0x0

    :goto_29
    move v8, v0

    .line 1717
    .local v8, "finished":Z
    if-eqz v6, :cond_5e

    const/4 v0, 0x1

    if-eq v5, v0, :cond_5e

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v9, v0, :cond_5e

    .line 1719
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1720
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn()V

    .line 1724
    :cond_5e
    if-nez v8, :cond_60

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v0, :cond_60

    .line 1725
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_5f

    .line 1726
    const-string v0, "DisplayPowerController"

    const-string v9, "Unfinished business..."

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_5f
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1729
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1733
    :cond_60
    if-eqz v6, :cond_63

    if-eqz v23, :cond_63

    .line 1735
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1736
    :try_start_2
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v0, :cond_61

    .line 1737
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1739
    sget-boolean v11, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v11, :cond_62

    .line 1740
    const-string v11, "DisplayPowerController"

    const-string v12, "Display ready!"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1736
    :cond_61
    const/4 v0, 0x1

    .line 1743
    :cond_62
    :goto_2a
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1744
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_2b

    .line 1743
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1733
    :cond_63
    const/4 v0, 0x1

    .line 1748
    :goto_2b
    if-eqz v8, :cond_65

    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v9, :cond_65

    .line 1749
    sget-boolean v9, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v9, :cond_64

    .line 1750
    const-string v9, "DisplayPowerController"

    const-string v11, "Finished business..."

    invoke-static {v9, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_64
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1753
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v11}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto :goto_2c

    .line 1748
    :cond_65
    const/4 v9, 0x0

    .line 1757
    :goto_2c
    const/4 v11, 0x2

    if-eq v5, v11, :cond_66

    goto :goto_2d

    :cond_66
    move v0, v9

    :goto_2d
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 1759
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v9, v22

    .end local v22    # "previousPolicy":I
    .local v9, "previousPolicy":I
    if-eq v9, v0, :cond_67

    .line 1760
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    .line 1762
    :cond_67
    return-void

    .line 1206
    .end local v4    # "brightnessState":F
    .end local v5    # "state":I
    .end local v6    # "ready":Z
    .end local v7    # "hadUserBrightnessPoint":Z
    .end local v8    # "finished":Z
    .end local v9    # "previousPolicy":I
    .end local v10    # "oldState":I
    .end local v16    # "autoBrightnessAdjustmentChanged":Z
    .end local v18    # "slowChange":Z
    .end local v19    # "autoBrightnessEnabledInAod":Z
    .end local v20    # "autoBrightnessEnabledInDoze":Z
    .end local v21    # "autoBrightnessEnabled":Z
    .end local v23    # "mustNotify":Z
    .end local v25    # "autoBrightnessAdjustment":F
    .end local v26    # "userSetBrightnessChanged":Z
    .end local v28    # "mustInitialize":Z
    .end local v31    # "performScreenOffTransition":Z
    .local v2, "mustInitialize":Z
    :catchall_1
    move-exception v0

    move/from16 v28, v2

    .end local v2    # "mustInitialize":Z
    .restart local v28    # "mustInitialize":Z
    goto :goto_2e

    .end local v28    # "mustInitialize":Z
    .restart local v2    # "mustInitialize":Z
    :catchall_2
    move-exception v0

    :goto_2e
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private updateTorchModeStatus()V
    .locals 3

    .line 917
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 918
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mTorchModeEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mFlashlightEnabled:Z

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setTorchModeEnabled(Z)V

    .line 920
    :cond_0
    return-void
.end method

.method private updateUserSetScreenBrightness()Z
    .locals 4

    .line 2498
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

    .line 2502
    :cond_0
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v2, v2, v0

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v2, :cond_1

    .line 2503
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 2504
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 2505
    return v1

    .line 2507
    :cond_1
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 2508
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    .line 2509
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 2510
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 2511
    const/4 v0, 0x1

    return v0

    .line 2500
    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public animateScreenBrightness(DFFF)V
    .locals 3
    .param p1, "percent"    # D
    .param p3, "minNits"    # F
    .param p4, "maxBrightness"    # F
    .param p5, "adjustBrightnessIntervalNits"    # F

    .line 3225
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

    .line 3228
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p3}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:F

    .line 3229
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p5}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:F

    .line 3230
    const-wide/16 v1, 0x0

    cmpg-double v1, p1, v1

    if-ltz v1, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:F

    cmpg-float v0, v1, v0

    if-lez v0, :cond_1

    .line 3233
    invoke-direct {p0, p4}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:F

    .line 3234
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:F

    .line 3235
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

    .line 3242
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/display/DisplayOLC;->limitPercent(D)D

    move-result-wide p1

    .line 3243
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPercent:D

    .line 3244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPercentChange:Z

    .line 3245
    iput p4, p0, Lcom/android/server/display/DisplayPowerController;->mOpMaxBrightness:F

    .line 3246
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 3247
    return-void

    .line 3239
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

    .line 3240
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2603
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2604
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2605
    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2612
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2614
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2615
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTempScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mHdrMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHdrBootFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mHdrBootFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFrontPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mFrontPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2652
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/OpAutoBrightnessHelper;->dump(Ljava/io/PrintWriter;)V

    .line 2657
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

    .line 2662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTorchModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mTorchModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFlashlightEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mFlashlightEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDitherEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDitherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInHighTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mInHighTemp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighTempRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighTempFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHighTempHBMFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInHBM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mInHBM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2676
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$11;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 2682
    return-void

    .line 2612
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

    .line 3337
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    aget-object v0, p2, v1

    const-string v3, "hbm"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3338
    const/4 v0, 0x1

    aget-object v1, p2, v0

    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    .line 3339
    .local v1, "highTemp":Z
    const/4 v3, 0x2

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3341
    .local v3, "factor":I
    array-length v4, p2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 3342
    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    .line 3345
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/android/server/display/DisplayPowerController;->updateHighTempStatus(ZI)V

    .line 3347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mInHighTemp="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mInHighTemp:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHighTempRate="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempRate:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHighTempFactor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mHighTempHBMFactor="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3351
    return v0

    .line 3354
    .end local v1    # "highTemp":Z
    .end local v3    # "factor":I
    :cond_1
    return v1
.end method

.method public frontPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3503
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mFrontPackageName:Ljava/lang/String;

    .line 3505
    const-string v0, "com.oneplus.camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3507
    .local v0, "boostNormalBrightness":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-virtual {v1, v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->setBoostBrightnessNormal(Z)V

    .line 3509
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/OpAutoBrightnessHelper;->setFontPackageName(Ljava/lang/String;)V

    .line 3510
    invoke-static {p1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->frontPackageChanged(Ljava/lang/String;)V

    .line 3511
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

    .line 969
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 2

    .line 868
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 869
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

    .line 959
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessValue()F
    .locals 1

    .line 1771
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->getBrightnessValue()F

    move-result v0

    return v0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 1038
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_0

    .line 1039
    const/4 v0, 0x0

    return-object v0

    .line 1041
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .line 940
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

    .line 963
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    .line 964
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    .line 965
    return-void
.end method

.method public overrideScreenBrightnessRangeMinimum(I)V
    .locals 4
    .param p1, "minimum"    # I

    .line 3048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    .line 3049
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    .line 3052
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 3053
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3054
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3055
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 3056
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3057
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    .line 3058
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    .line 3059
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    goto :goto_0

    .line 3056
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3062
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    .line 3063
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    .line 977
    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 5
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .line 995
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 996
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

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1001
    const/4 v1, 0x0

    .line 1003
    .local v1, "changed":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v3, :cond_1

    .line 1005
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1006
    const/4 v1, 0x1

    .line 1009
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 1010
    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1011
    const/4 v1, 0x1

    goto :goto_0

    .line 1012
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1013
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1014
    const/4 v1, 0x1

    goto :goto_0

    .line 1017
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v3, :cond_4

    .line 1018
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1019
    const/4 v1, 0x1

    .line 1020
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    .line 1024
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 1025
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1028
    :cond_5
    if-eqz v1, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_6

    .line 1029
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1030
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1033
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return v2

    .line 1034
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

    .line 3079
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_0

    .line 3080
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setAmbientColorTemperatureOverride(F)Z

    .line 3084
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3086
    :cond_0
    return-void
.end method

.method setAutoBrightnessLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3035
    sput-boolean p1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 3036
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 3037
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    .line 3039
    :cond_0
    invoke-static {p1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->enableDebug(Z)V

    .line 3040
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 2
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1775
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1776
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1777
    return-void
.end method

.method setDisplayWhiteBalanceLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3072
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_0

    .line 3073
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setLoggingEnabled(Z)Z

    .line 3074
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setLoggingEnabled(Z)Z

    .line 3076
    :cond_0
    return-void
.end method

.method public setHdrMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 3384
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mHdrMode:Z

    .line 3385
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3386
    return-void
.end method

.method public setProximityEventEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 2884
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->sProximityResFeature:Z

    if-nez v0, :cond_0

    .line 2885
    return-void

    .line 2888
    :cond_0
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PsetProximityEventEnable enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    :cond_1
    sput-boolean p1, Lcom/android/server/display/DisplayPowerController;->sEnableProximityEvent:Z

    .line 2892
    if-eqz p1, :cond_2

    .line 2893
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->sLastPositive:Z

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->triggerProximitySensorEvent(Z)V

    goto :goto_0

    .line 2895
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->triggerProximitySensorEvent(Z)V

    .line 2897
    :goto_0
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 4
    .param p1, "adjustment"    # F

    .line 1795
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1796
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1795
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1797
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1798
    return-void
.end method

.method public setTemporaryBrightness(F)V
    .locals 4
    .param p1, "brightness"    # F

    .line 1782
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    const-string v1, "DisplayPowerController"

    if-eqz v0, :cond_0

    .line 1783
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

    .line 1784
    return-void

    .line 1786
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemporaryBrightness:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOpBrightnessReasonAndRate:Lcom/android/server/display/OpBrightnessReasonAndRate;

    invoke-virtual {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getAppPkg()Z

    .line 1789
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    .line 1790
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x0

    .line 1789
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1791
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1792
    return-void
.end method

.method public setUseProximityForceSuspend(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 946
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-nez v0, :cond_0

    .line 947
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    .line 949
    :cond_0
    return-void
.end method

.method public updateBrightness()V
    .locals 0

    .line 1766
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1767
    return-void
.end method

.method public updateHighTempStatus(ZI)V
    .locals 12
    .param p1, "highTemp"    # Z
    .param p2, "factorOfHighTemp"    # I

    .line 3270
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

    .line 3271
    int-to-float v0, p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 3272
    .local v0, "factor":F
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    monitor-enter v2

    .line 3273
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mInHighTemp:Z

    .line 3274
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempChange:Ljava/lang/Boolean;

    .line 3279
    cmpl-float v1, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    goto :goto_1

    .line 3285
    :cond_0
    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 3286
    .local v4, "normalFactor":D
    float-to-double v8, v0

    mul-double/2addr v6, v4

    sub-double/2addr v8, v6

    .line 3288
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

    .line 3295
    :cond_1
    double-to-float v1, v4

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    .line 3296
    double-to-float v1, v8

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    .line 3297
    .end local v4    # "normalFactor":D
    .end local v8    # "hbmFactor":D
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3298
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 3299
    return-void

    .line 3289
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

    .line 3290
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    .line 3291
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    .line 3292
    monitor-exit v2

    return-void

    .line 3280
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

    .line 3281
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempFactor:F

    .line 3282
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mHighTempHBMFactor:F

    .line 3283
    monitor-exit v2

    return-void

    .line 3297
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateWhiteBalance()V
    .locals 0

    .line 3068
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3069
    return-void
.end method
