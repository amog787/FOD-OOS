.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/AlsMotion$Listener;
.implements Lcom/android/server/display/IOpBacklightController;
.implements Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$BrightnessReason;,
        Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$BrightnessConfigUpdater;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x0

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field static DEBUG:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final DELAY_MS:I = 0xa

.field private static final INVALID_RAMP_RATE:I = -0x1

.field private static final IS_SUPPORT_DECR_BL_CJ:Z

.field private static final IS_SUPPORT_DIM_MODE_GESTURE:Z

.field private static final MSG_CONFIGURE_BRIGHTNESS:I = 0x5

.field private static final MSG_DELAY_DIM_STATUS:I = 0x57

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_ONLINE_CFG:I = 0x64

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_OFF_UNBLOCKED:I = 0x4

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_SET_DIMMING_SPEED:I = 0x58

.field private static final MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT:I = 0x7

.field private static final MSG_SET_TEMPORARY_BRIGHTNESS:I = 0x6

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final MSG_UPDATE_POWER_STATE2:I = 0x63

.field private static final MSG_UPDATE_RECORD_TIMESTAMP:I = 0xc8

.field private static PROJ_NAME:Ljava/lang/String; = null

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x14

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final RAMP_STATE_SKIP_AUTOBRIGHT:I = 0x2

.field private static final RAMP_STATE_SKIP_INITIAL:I = 0x1

.field private static final RAMP_STATE_SKIP_NONE:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z = false


# instance fields
.field private final BOOST_PARAMS:F

.field private final BRIGHTNESS_STATICS_NITS:F

.field private final ENABLE_DIMMING_EXIT_HBM:Z

.field private mAdjustBrightnessInterval:I

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private mAlsMotion:Lcom/android/server/display/AlsMotion;

.field private mAngleChangingTime:J

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedBrightnessBoost:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAppliedScreenBrightnessOverride:Z

.field private mAppliedTemporaryAutoBrightnessAdjustment:Z

.field private mAppliedTemporaryBrightness:Z

.field private mAutoBrightnessAdjustment:F

.field private mAutoBrightnessEnabled:Z

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private mAutomaticBrightnessMode:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBoostBrightnessHDR:Z

.field private mBoostBrightnessNormal:Z

.field private mBrightnessBucketsInDozeConfig:Z

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private mBrightnessLimit:I

.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBrightnessRampRateFast:I

.field private final mBrightnessRampRateSlow:I

.field private mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private mBrightnessStaticsTimestamp:J

.field private final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private final mColorFadeEnabled:Z

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenBrightnessSetting:I

.field private mDebugMark:I

.field private mDisplayBlanksAfterDozeConfig:Z

.field private mDisplayOLC:Lcom/android/server/display/DisplayOLC;

.field private mDisplayReadyLocked:Z

.field private final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field private final mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

.field private mDozing:Z

.field private mEnableAutoBrightnessDuringCall:Z

.field private mForceUpdateBrightness:Z

.field private mGameModeStatus:I

.field private mHDRMode:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mInitialAutoBrightness:I

.field private mIsAngleChangeCauseDarken:Z

.field private mIsFlushPending:Z

.field private mIsOpBacklight:I

.field private mIsPowerStateUpdatePending:Z

.field private mIsWalking:I

.field private mIsWalkingTime:J

.field private mLastUserSetScreenBrightness:I

.field private final mLock:Ljava/lang/Object;

.field protected mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field protected mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field private mOneplusDisplayService:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mOnlineConfigHandler:Landroid/os/Handler;

.field private mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

.field private mOnlineConfigInited:Z

.field private mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOpBacklightLock:Ljava/lang/Object;

.field private mOpMaxBrightness:I

.field private mOpMinBrightness:I

.field private mPendingAutoBrightnessAdjustment:F

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenBrightnessSetting:I

.field private mPendingScreenOff:Z

.field private mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPercent:D

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mPrevState:I

.field private mProximity:I

.field private final mProximityDelayForLightSensor:I

.field private mProximityEventHandled:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mRecoverFaceLight:Z

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDefault:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessForVr:I

.field private final mScreenBrightnessForVrDefault:I

.field private final mScreenBrightnessForVrRangeMaximum:I

.field private final mScreenBrightnessForVrRangeMinimum:I

.field public mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOffBlockStartRealTime:J

.field private mScreenOnBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field private mSkipRampState:I

.field private final mSkipScreenOnBrightnessRamp:Z

.field private mStageEnable:I

.field private mTempScreenBrightnessRangeMinimum:I

.field private mTemporaryAutoBrightnessAdjustment:F

.field private mTemporaryScreenBrightness:I

.field private mUnfinishedBusiness:Z

.field private mUseCurveGenAlgo:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mhalfDeviceId:I

.field private useProximityForceSuspend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 158
    nop

    .line 176
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 177
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    .line 255
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x106

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DECR_BL_CJ:Z

    .line 258
    new-array v1, v1, [I

    const/16 v2, 0xef

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    .line 568
    const-string v0, "DisplayBrightness"

    sput-object v0, Lcom/android/server/display/DisplayPowerController;->PROJ_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 45
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;

    .line 599
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    const-string v14, "DisplayPowerController"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const/4 v12, 0x0

    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mIsPowerStateUpdatePending:Z

    .line 214
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mIsFlushPending:Z

    .line 215
    const-wide/16 v0, -0x1

    iput-wide v0, v15, Lcom/android/server/display/DisplayPowerController;->mAngleChangingTime:J

    .line 216
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mAlsMotion:Lcom/android/server/display/AlsMotion;

    .line 217
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mIsAngleChangeCauseDarken:Z

    .line 222
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mEnableAutoBrightnessDuringCall:Z

    .line 256
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    .line 262
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 305
    iput v12, v15, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    .line 306
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    .line 398
    const/4 v11, -0x1

    iput v11, v15, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 401
    iput v11, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 402
    iput-wide v0, v15, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 445
    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v3, v15, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 446
    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v3, v15, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 462
    iput v12, v15, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 518
    iput v12, v15, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessMode:I

    .line 520
    iput v12, v15, Lcom/android/server/display/DisplayPowerController;->mGameModeStatus:I

    .line 521
    iput v12, v15, Lcom/android/server/display/DisplayPowerController;->mIsOpBacklight:I

    .line 522
    iput v12, v15, Lcom/android/server/display/DisplayPowerController;->mDebugMark:I

    .line 531
    const/4 v10, 0x1

    iput v10, v15, Lcom/android/server/display/DisplayPowerController;->mPrevState:I

    .line 537
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mBoostBrightnessNormal:Z

    .line 538
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mBoostBrightnessHDR:Z

    .line 539
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mHDRMode:Z

    .line 540
    iput v12, v15, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    .line 541
    iput-wide v0, v15, Lcom/android/server/display/DisplayPowerController;->mIsWalkingTime:J

    .line 552
    iput-boolean v10, v15, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    .line 553
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    .line 564
    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mOneplusDisplayService:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    .line 567
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigInited:Z

    .line 570
    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 571
    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigHandler:Landroid/os/Handler;

    .line 572
    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    .line 573
    iput v11, v15, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    .line 574
    iput v12, v15, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    .line 575
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mOpBacklightLock:Ljava/lang/Object;

    .line 576
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, v15, Lcom/android/server/display/DisplayPowerController;->mPercent:D

    .line 577
    iput v11, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    .line 578
    const/4 v3, 0x2

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:I

    .line 579
    const/16 v7, 0x3ff

    iput v7, v15, Lcom/android/server/display/DisplayPowerController;->mOpMaxBrightness:I

    .line 580
    const/16 v3, 0x12c

    iput v3, v15, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:I

    .line 585
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mUseCurveGenAlgo:Z

    .line 588
    iput-wide v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    .line 589
    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_STATICS_NITS:F

    .line 1113
    new-instance v0, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1129
    new-instance v0, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 2454
    new-instance v0, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 2733
    new-instance v0, Lcom/android/server/display/DisplayPowerController$5;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 2752
    new-instance v0, Lcom/android/server/display/DisplayPowerController$6;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

    .line 2769
    new-instance v0, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

    .line 2787
    new-instance v0, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 2804
    new-instance v0, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 3215
    new-instance v0, Lcom/android/server/display/DisplayPowerController$12;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$12;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 3326
    iput-boolean v12, v15, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    .line 600
    new-instance v0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 601
    new-instance v0, Lcom/android/server/display/BrightnessTracker;

    invoke-direct {v0, v13, v2}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 602
    new-instance v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v0, v15, v1}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 603
    move-object/from16 v5, p2

    iput-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 605
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 606
    move-object/from16 v4, p4

    iput-object v4, v15, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 607
    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 608
    move-object/from16 v2, p5

    iput-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 609
    iput-object v13, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 613
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 616
    new-instance v0, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {v0}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    .line 620
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 621
    .local v9, "resources":Landroid/content/res/Resources;
    const v0, 0x10e00b7

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v8

    .line 624
    .local v8, "screenBrightnessSettingMinimum":I
    const v0, 0x10e00ad

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 627
    const v0, 0x10e00ac

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 630
    iget v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 631
    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 635
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_is_dimming"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 639
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 646
    :cond_0
    new-array v0, v10, [I

    const/16 v1, 0x70

    aput v1, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    const v0, 0x10e00b5

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    goto :goto_0

    .line 650
    :cond_1
    const v0, 0x10e00b4

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 654
    :goto_0
    const v0, 0x10e00b1

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    .line 657
    const v0, 0x10e00b0

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    .line 659
    const v0, 0x10e00af

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    .line 661
    const v0, 0x10e00ae

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    .line 664
    const v0, 0x1110027

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 667
    const v0, 0x111000e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 670
    const v0, 0x10e0020

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    .line 672
    const v0, 0x10e0022

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    .line 674
    const v0, 0x11100c3

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    .line 679
    const v0, 0x10e00a6

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->mProximityDelayForLightSensor:I

    .line 685
    const v0, 0x10e001f

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, v15, Lcom/android/server/display/DisplayPowerController;->BOOST_PARAMS:F

    .line 692
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOneplusDisplayService:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    .line 693
    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mOneplusDisplayService:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    if-eqz v0, :cond_2

    .line 694
    const-string v0, "IOneplusDisplay service fetched successfully."

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    :cond_2
    goto :goto_1

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch IOneplusDisplay service"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const v0, 0x111006e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->ENABLE_DIMMING_EXIT_HBM:Z

    .line 703
    iget-boolean v0, v15, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v0, :cond_7

    .line 704
    const v0, 0x1130006

    invoke-virtual {v9, v0, v10, v10}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 708
    .local v0, "dozeScaleFactor":F
    const v1, 0x107000e

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 710
    .local v6, "ambientBrighteningThresholds":[I
    const v1, 0x107000f

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 712
    .local v3, "ambientDarkeningThresholds":[I
    const v1, 0x1070010

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 714
    .local v1, "ambientThresholdLevels":[I
    new-instance v7, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v7, v6, v3, v1}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v18, v7

    .line 718
    .local v18, "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v7, 0x1070070

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 720
    .local v7, "screenBrighteningThresholds":[I
    const v10, 0x1070075

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    .line 722
    .local v10, "screenDarkeningThresholds":[I
    const v12, 0x1070076

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v12

    .line 724
    .local v12, "screenThresholdLevels":[I
    new-instance v11, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v11, v7, v10, v12}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v19, v11

    .line 727
    .local v19, "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v11, 0x10e0010

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object/from16 v25, v12

    .end local v12    # "screenThresholdLevels":[I
    .local v25, "screenThresholdLevels":[I
    int-to-long v12, v11

    .line 729
    .local v12, "brighteningLightDebounce":J
    const v11, 0x10e0011

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-wide/from16 v26, v12

    .end local v12    # "brighteningLightDebounce":J
    .local v26, "brighteningLightDebounce":J
    int-to-long v12, v11

    .line 731
    .local v12, "darkeningLightDebounce":J
    const v11, 0x1110022

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v28

    .line 734
    .local v28, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    const v11, 0x10e006a

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v29

    .line 736
    .local v29, "lightSensorWarmUpTimeConfig":I
    const v11, 0x10e0013

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 738
    .local v11, "lightSensorRate":I
    move-object/from16 v20, v1

    .end local v1    # "ambientThresholdLevels":[I
    .local v20, "ambientThresholdLevels":[I
    const v1, 0x10e0012

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 740
    .local v1, "initialLightSensorRate":I
    move-wide/from16 v30, v12

    const/4 v12, -0x1

    .end local v12    # "darkeningLightDebounce":J
    .local v30, "darkeningLightDebounce":J
    if-ne v1, v12, :cond_3

    .line 741
    move v1, v11

    move/from16 v32, v1

    goto :goto_2

    .line 742
    :cond_3
    if-le v1, v11, :cond_4

    .line 743
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")."

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_4
    move/from16 v32, v1

    .end local v1    # "initialLightSensorRate":I
    .local v32, "initialLightSensorRate":I
    :goto_2
    const v1, 0x10e0014

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 750
    .local v13, "shortTermModelTimeout":I
    const v1, 0x1040173

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 752
    .local v12, "lightSensorType":Ljava/lang/String;
    invoke-direct {v15, v12}, Lcom/android/server/display/DisplayPowerController;->findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v33

    .line 754
    .local v33, "lightSensor":Landroid/hardware/Sensor;
    invoke-static {v9}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 755
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_6

    .line 758
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "use_curve_gen_algo"

    move-object/from16 v34, v12

    const/4 v12, 0x0

    .end local v12    # "lightSensorType":Ljava/lang/String;
    .local v34, "lightSensorType":Ljava/lang/String;
    invoke-static {v1, v2, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v12

    :goto_3
    iput-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mUseCurveGenAlgo:Z

    .line 760
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-boolean v2, v15, Lcom/android/server/display/DisplayPowerController;->mUseCurveGenAlgo:Z

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->enableCurveGenAlgo(Z)V

    .line 762
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v35, v20

    .end local v20    # "ambientThresholdLevels":[I
    .local v35, "ambientThresholdLevels":[I
    move-object v1, v2

    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v20

    move-object/from16 v36, v3

    .end local v3    # "ambientDarkeningThresholds":[I
    .local v36, "ambientDarkeningThresholds":[I
    move-object/from16 v3, v20

    iget-object v12, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move-object/from16 v37, v6

    .end local v6    # "ambientBrighteningThresholds":[I
    .local v37, "ambientBrighteningThresholds":[I
    move-object v6, v12

    iget v12, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v38, v8

    .end local v8    # "screenBrightnessSettingMinimum":I
    .local v38, "screenBrightnessSettingMinimum":I
    move v8, v12

    iget v12, v15, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move-object/from16 v39, v9

    .end local v9    # "resources":Landroid/content/res/Resources;
    .local v39, "resources":Landroid/content/res/Resources;
    move v9, v12

    int-to-long v4, v13

    move-wide/from16 v20, v4

    .line 769
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object v12, v2

    const/16 v17, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, v33

    move-object/from16 v40, v7

    .end local v7    # "screenBrighteningThresholds":[I
    .local v40, "screenBrighteningThresholds":[I
    move/from16 v7, v29

    move-object/from16 v41, v10

    .end local v10    # "screenDarkeningThresholds":[I
    .local v41, "screenDarkeningThresholds":[I
    move v10, v0

    move/from16 v24, v11

    .end local v11    # "lightSensorRate":I
    .local v24, "lightSensorRate":I
    move/from16 v42, v0

    move-object v0, v12

    .end local v0    # "dozeScaleFactor":F
    .local v42, "dozeScaleFactor":F
    move/from16 v12, v32

    move/from16 v43, v13

    move-object/from16 v44, v14

    .end local v13    # "shortTermModelTimeout":I
    .local v43, "shortTermModelTimeout":I
    move-wide/from16 v13, v26

    move-wide/from16 v15, v30

    move/from16 v17, v28

    move-object/from16 v23, p0

    invoke-direct/range {v1 .. v23}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;JLandroid/content/pm/PackageManager;Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v2, 0x0

    goto :goto_4

    .line 771
    .end local v24    # "lightSensorRate":I
    .end local v34    # "lightSensorType":Ljava/lang/String;
    .end local v35    # "ambientThresholdLevels":[I
    .end local v36    # "ambientDarkeningThresholds":[I
    .end local v37    # "ambientBrighteningThresholds":[I
    .end local v38    # "screenBrightnessSettingMinimum":I
    .end local v39    # "resources":Landroid/content/res/Resources;
    .end local v40    # "screenBrighteningThresholds":[I
    .end local v41    # "screenDarkeningThresholds":[I
    .end local v42    # "dozeScaleFactor":F
    .end local v43    # "shortTermModelTimeout":I
    .restart local v0    # "dozeScaleFactor":F
    .restart local v3    # "ambientDarkeningThresholds":[I
    .restart local v6    # "ambientBrighteningThresholds":[I
    .restart local v7    # "screenBrighteningThresholds":[I
    .restart local v8    # "screenBrightnessSettingMinimum":I
    .restart local v9    # "resources":Landroid/content/res/Resources;
    .restart local v10    # "screenDarkeningThresholds":[I
    .restart local v11    # "lightSensorRate":I
    .restart local v12    # "lightSensorType":Ljava/lang/String;
    .restart local v13    # "shortTermModelTimeout":I
    .restart local v20    # "ambientThresholdLevels":[I
    :cond_6
    move/from16 v42, v0

    move-object/from16 v36, v3

    move-object/from16 v37, v6

    move-object/from16 v40, v7

    move/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v41, v10

    move/from16 v24, v11

    move-object/from16 v34, v12

    move/from16 v43, v13

    move-object/from16 v44, v14

    move-object v1, v15

    move-object/from16 v35, v20

    .end local v0    # "dozeScaleFactor":F
    .end local v3    # "ambientDarkeningThresholds":[I
    .end local v6    # "ambientBrighteningThresholds":[I
    .end local v7    # "screenBrighteningThresholds":[I
    .end local v8    # "screenBrightnessSettingMinimum":I
    .end local v9    # "resources":Landroid/content/res/Resources;
    .end local v10    # "screenDarkeningThresholds":[I
    .end local v11    # "lightSensorRate":I
    .end local v12    # "lightSensorType":Ljava/lang/String;
    .end local v13    # "shortTermModelTimeout":I
    .end local v20    # "ambientThresholdLevels":[I
    .restart local v24    # "lightSensorRate":I
    .restart local v34    # "lightSensorType":Ljava/lang/String;
    .restart local v35    # "ambientThresholdLevels":[I
    .restart local v36    # "ambientDarkeningThresholds":[I
    .restart local v37    # "ambientBrighteningThresholds":[I
    .restart local v38    # "screenBrightnessSettingMinimum":I
    .restart local v39    # "resources":Landroid/content/res/Resources;
    .restart local v40    # "screenBrighteningThresholds":[I
    .restart local v41    # "screenDarkeningThresholds":[I
    .restart local v42    # "dozeScaleFactor":F
    .restart local v43    # "shortTermModelTimeout":I
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    goto :goto_4

    .line 703
    .end local v18    # "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v19    # "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v24    # "lightSensorRate":I
    .end local v25    # "screenThresholdLevels":[I
    .end local v26    # "brighteningLightDebounce":J
    .end local v28    # "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    .end local v29    # "lightSensorWarmUpTimeConfig":I
    .end local v30    # "darkeningLightDebounce":J
    .end local v32    # "initialLightSensorRate":I
    .end local v33    # "lightSensor":Landroid/hardware/Sensor;
    .end local v34    # "lightSensorType":Ljava/lang/String;
    .end local v35    # "ambientThresholdLevels":[I
    .end local v36    # "ambientDarkeningThresholds":[I
    .end local v37    # "ambientBrighteningThresholds":[I
    .end local v38    # "screenBrightnessSettingMinimum":I
    .end local v39    # "resources":Landroid/content/res/Resources;
    .end local v40    # "screenBrighteningThresholds":[I
    .end local v41    # "screenDarkeningThresholds":[I
    .end local v42    # "dozeScaleFactor":F
    .end local v43    # "shortTermModelTimeout":I
    .restart local v8    # "screenBrightnessSettingMinimum":I
    .restart local v9    # "resources":Landroid/content/res/Resources;
    :cond_7
    move/from16 v38, v8

    move-object/from16 v39, v9

    move v2, v12

    move-object/from16 v44, v14

    move-object v1, v15

    .line 775
    .end local v8    # "screenBrightnessSettingMinimum":I
    .end local v9    # "resources":Landroid/content/res/Resources;
    .restart local v38    # "screenBrightnessSettingMinimum":I
    .restart local v39    # "resources":Landroid/content/res/Resources;
    :goto_4
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 776
    const v0, 0x111001f

    move-object/from16 v4, v39

    .end local v39    # "resources":Landroid/content/res/Resources;
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 779
    const v0, 0x1110052

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 782
    const v0, 0x1110053

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 786
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 787
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_8

    .line 788
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 793
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 794
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    .line 795
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 799
    new-array v0, v3, [I

    const/16 v5, 0x7d

    aput v5, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 800
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "boost_brightness_normal"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_9

    move v0, v3

    goto :goto_5

    :cond_9
    move v0, v2

    :goto_5
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBoostBrightnessNormal:Z

    .line 802
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "boost_brightness_hdr"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_a

    move v0, v3

    goto :goto_6

    :cond_a
    move v0, v2

    :goto_6
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBoostBrightnessHDR:Z

    .line 804
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "hdr_mode"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_b

    goto :goto_7

    :cond_b
    move v3, v2

    :goto_7
    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mHDRMode:Z

    .line 809
    :cond_c
    const/4 v3, -0x1

    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 810
    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 811
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 812
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 814
    const/4 v5, 0x0

    .line 815
    .local v5, "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    const/4 v6, 0x0

    .line 817
    .local v6, "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    :try_start_1
    new-instance v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v0, v7, v8}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v5, v0

    .line 818
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {v0, v7, v4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-result-object v0

    move-object v6, v0

    .line 820
    invoke-virtual {v5, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z

    .line 821
    invoke-virtual {v6, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 824
    goto :goto_8

    .line 822
    :catch_1
    move-exception v0

    .line 823
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

    .line 825
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 826
    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 830
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_brightness_mode"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessMode:I

    .line 832
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DECR_BL_CJ:Z

    if-eqz v0, :cond_d

    .line 833
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "pubg-fg-status"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v0, v7, v2, v8, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 835
    :cond_d
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    const/16 v7, 0x3ff

    if-ne v0, v7, :cond_f

    .line 837
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "EvenOdd-deviceId"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    .line 839
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    if-eq v0, v3, :cond_e

    .line 840
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    invoke-virtual {v0, v3}, Lcom/android/server/display/OpAutoBrightnessHelper;->setOptFuncValue(I)V

    .line 841
    :cond_e
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "EvenOdd-stage"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initOnlineConfig()Z

    move-result v0

    if-nez v0, :cond_f

    .line 844
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 845
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/32 v7, 0xea60

    invoke-virtual {v2, v0, v7, v8}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 850
    .end local v0    # "msg":Landroid/os/Message;
    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->hookDisplayPowerController(Lcom/android/server/display/IOpBacklightController;)V

    .line 853
    new-instance v0, Lcom/android/server/display/DisplayOLC;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v7, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-direct {v0, v2, v3, v7}, Lcom/android/server/display/DisplayOLC;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMappingStrategy;I)V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayOLC:Lcom/android/server/display/DisplayOLC;

    .line 856
    new-instance v0, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    .line 866
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 867
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerController;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/display/DisplayPowerController;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J

    .line 158
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 158
    sget-object v0, Lcom/android/server/display/DisplayPowerController;->PROJ_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerController;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->parseOnlineConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->initOnlineConfig()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 158
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsPowerStateUpdatePending:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # I

    .line 158
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 158
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # I

    .line 158
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/display/DisplayPowerController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # F

    .line 158
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$3000()Z
    .locals 1

    .line 158
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DECR_BL_CJ:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mGameModeStatus:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # I

    .line 158
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mGameModeStatus:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/display/DisplayPowerController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDebugMark:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # I

    .line 158
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mDebugMark:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mUseCurveGenAlgo:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 158
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mUseCurveGenAlgo:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getDcEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->needAdjustBrightenDebounceTime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->ENABLE_DIMMING_EXIT_HBM:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 158
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method private animateScreenBrightness(II)V
    .locals 17
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .line 2087
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DECR_BL_CJ:Z

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mGameModeStatus:I

    if-ne v3, v6, :cond_0

    const/16 v3, 0x2bc

    if-le v0, v3, :cond_0

    .line 2091
    int-to-float v3, v0

    const/high16 v7, 0x442f0000    # 700.0f

    sub-float/2addr v3, v7

    const v7, 0x43a18000    # 323.0f

    div-float/2addr v3, v7

    float-to-double v7, v3

    const-wide v9, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v7, v9

    sub-double v7, v4, v7

    .line 2092
    .local v7, "factor":D
    int-to-double v9, v0

    mul-double/2addr v9, v7

    double-to-int v0, v9

    .line 2093
    .end local p1    # "target":I
    .local v0, "target":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " f-->:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "DisplayPowerController"

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    goto :goto_0

    .line 2096
    .end local v0    # "target":I
    .end local v7    # "factor":D
    .restart local p1    # "target":I
    :cond_0
    move v3, v0

    .end local p1    # "target":I
    .local v3, "target":I
    :goto_0
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    if-eqz v0, :cond_1

    .line 2097
    return-void

    .line 2101
    :cond_1
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mOpBacklightLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2102
    :try_start_0
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    const/16 v8, 0x3ff

    if-gez v0, :cond_4

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsOpBacklight:I

    if-ne v0, v6, :cond_4

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mOpMaxBrightness:I

    if-ge v3, v0, :cond_4

    iget-wide v9, v1, Lcom/android/server/display/DisplayPowerController;->mPercent:D

    cmpg-double v0, v9, v4

    if-gez v0, :cond_4

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    const/16 v9, 0xfff

    if-eq v0, v9, :cond_2

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    if-ne v0, v8, :cond_4

    :cond_2
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_4

    .line 2109
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:I

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:I

    sub-int/2addr v0, v9

    .line 2110
    .local v0, "diff":I
    if-lez v0, :cond_4

    if-le v3, v0, :cond_4

    .line 2111
    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:I

    if-le v3, v9, :cond_3

    iget v9, v1, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:I

    goto :goto_1

    :cond_3
    move v9, v3

    .line 2112
    .local v9, "tmpTarget":I
    :goto_1
    sub-int v10, v9, v0

    int-to-double v10, v10

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    iget-wide v12, v1, Lcom/android/server/display/DisplayPowerController;->mPercent:D

    sub-double v12, v4, v12

    mul-double/2addr v10, v12

    sub-double/2addr v4, v10

    .line 2113
    .local v4, "factor":D
    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessByNits(IDZ)I

    move-result v10

    move v3, v10

    .line 2116
    .end local v0    # "diff":I
    .end local v4    # "factor":D
    .end local v9    # "tmpTarget":I
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2120
    new-array v0, v6, [I

    const/16 v4, 0x7d

    const/4 v5, 0x0

    aput v4, v0, v5

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2121
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBoostBrightnessNormal:Z

    if-eqz v0, :cond_5

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessMode:I

    if-eq v0, v6, :cond_6

    :cond_5
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mHDRMode:Z

    if-eqz v0, :cond_10

    .line 2122
    :cond_6
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mHDRMode:Z

    if-eqz v0, :cond_7

    .line 2123
    int-to-float v0, v3

    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->BOOST_PARAMS:F

    mul-float/2addr v0, v4

    float-to-int v3, v0

    .line 2126
    :cond_7
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBoostBrightnessNormal:Z

    if-eqz v0, :cond_e

    .line 2128
    const/16 v0, 0x28

    if-ge v3, v0, :cond_8

    .line 2129
    const/16 v0, 0x28

    move v3, v0

    .end local v3    # "target":I
    .local v0, "target":I
    goto :goto_2

    .line 2130
    .end local v0    # "target":I
    .restart local v3    # "target":I
    :cond_8
    const/16 v0, 0x50

    if-ge v3, v0, :cond_9

    .line 2131
    const/16 v0, 0x50

    move v3, v0

    .end local v3    # "target":I
    .restart local v0    # "target":I
    goto :goto_2

    .line 2132
    .end local v0    # "target":I
    .restart local v3    # "target":I
    :cond_9
    const/16 v0, 0xb8

    if-ge v3, v0, :cond_a

    .line 2133
    const/16 v0, 0xb8

    move v3, v0

    .end local v3    # "target":I
    .restart local v0    # "target":I
    goto :goto_2

    .line 2134
    .end local v0    # "target":I
    .restart local v3    # "target":I
    :cond_a
    const/16 v0, 0x168

    if-ge v3, v0, :cond_b

    .line 2135
    const/16 v0, 0x168

    move v3, v0

    .end local v3    # "target":I
    .restart local v0    # "target":I
    goto :goto_2

    .line 2136
    .end local v0    # "target":I
    .restart local v3    # "target":I
    :cond_b
    const/16 v0, 0x200

    if-ge v3, v0, :cond_c

    .line 2137
    const/16 v0, 0x200

    move v3, v0

    .end local v3    # "target":I
    .restart local v0    # "target":I
    goto :goto_2

    .line 2138
    .end local v0    # "target":I
    .restart local v3    # "target":I
    :cond_c
    const/16 v0, 0x370

    if-ge v3, v0, :cond_d

    .line 2139
    const/16 v0, 0x370

    move v3, v0

    .end local v3    # "target":I
    .restart local v0    # "target":I
    goto :goto_2

    .line 2140
    .end local v0    # "target":I
    .restart local v3    # "target":I
    :cond_d
    if-ge v3, v8, :cond_e

    .line 2141
    const/16 v0, 0x3ff

    move v3, v0

    .line 2145
    :cond_e
    :goto_2
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le v3, v0, :cond_f

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mHDRMode:Z

    if-eqz v0, :cond_f

    .line 2146
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    sub-int v0, v3, v0

    invoke-virtual {v1, v0, v5}, Lcom/android/server/display/DisplayPowerController;->animateHBMBrightness(IZ)V

    .line 2147
    return-void

    .line 2148
    :cond_f
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le v3, v0, :cond_10

    .line 2149
    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    .line 2157
    :cond_10
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animating brightness: target="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DisplayPowerController"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isFodEnabled()Z

    move-result v4

    .line 2166
    .local v4, "isFodMode":Z
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    if-eqz v0, :cond_12

    goto :goto_3

    :cond_12
    move v6, v5

    .line 2170
    .local v6, "faceLightingMode":Z
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessStaticsLevel()I

    move-result v0

    const/16 v7, 0xc8

    const-wide/16 v8, -0x1

    if-lt v3, v0, :cond_13

    iget-wide v10, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_13

    .line 2171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    .line 2172
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/32 v8, 0x927c0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 2173
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessStaticsLevel()I

    move-result v0

    if-ge v3, v0, :cond_14

    iget-wide v10, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_14

    .line 2175
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v10

    iget-wide v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x2710

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/display/OpAutoBrightnessHelper;->addRecord(JJJ)V

    .line 2176
    iput-wide v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessStaticsTimestamp:J

    .line 2177
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2183
    :cond_14
    :goto_4
    if-eqz v6, :cond_15

    .line 2184
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    int-to-double v7, v0

    const-wide v9, 0x3fd3333333333333L    # 0.3

    div-double/2addr v7, v9

    double-to-int v0, v7

    const-string/jumbo v7, "sys.debug.face.rate"

    invoke-static {v7, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2185
    .local v0, "tmpRate":I
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v3

    .line 2186
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v7, v3, v0}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    .line 2187
    .local v7, "status":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Animating lighting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DisplayPowerController"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    .end local v0    # "tmpRate":I
    goto :goto_5

    .end local v7    # "status":Z
    :cond_15
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    if-eqz v0, :cond_16

    .line 2189
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    mul-int/lit8 v0, v0, 0x3

    const-string/jumbo v7, "sys.debug.face.reset"

    invoke-static {v7, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2190
    .restart local v0    # "tmpRate":I
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v7, v3, v0}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    .line 2191
    .restart local v7    # "status":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Animating recover lighting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DisplayPowerController"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    .end local v0    # "tmpRate":I
    goto :goto_5

    .end local v7    # "status":Z
    :cond_16
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBoostBrightnessNormal:Z

    if-eqz v0, :cond_17

    .line 2194
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    const/16 v7, 0x9c4

    invoke-virtual {v0, v3, v7}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    .restart local v7    # "status":Z
    goto :goto_5

    .line 2195
    .end local v7    # "status":Z
    :cond_17
    if-eqz v4, :cond_18

    .line 2196
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    const/16 v7, 0x1e0

    invoke-virtual {v0, v3, v7}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    .restart local v7    # "status":Z
    goto :goto_5

    .line 2197
    .end local v7    # "status":Z
    :cond_18
    const/4 v0, -0x1

    if-eq v2, v0, :cond_19

    .line 2198
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    .restart local v7    # "status":Z
    goto :goto_5

    .line 2200
    .end local v7    # "status":Z
    :cond_19
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v7, v3, v0}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    .line 2202
    .restart local v7    # "status":Z
    :goto_5
    if-eqz v7, :cond_1a

    .line 2203
    const-wide/32 v8, 0x20000

    const-string v0, "TargetScreenBrightness"

    invoke-static {v8, v9, v0, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2205
    :try_start_1
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2208
    goto :goto_6

    .line 2206
    :catch_0
    move-exception v0

    .line 2212
    :cond_1a
    :goto_6
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    .line 2218
    invoke-direct {v1, v3}, Lcom/android/server/display/DisplayPowerController;->notifyLevelChangeToBrightnessHelper(I)V

    .line 2220
    return-void

    .line 2116
    .end local v4    # "isFodMode":Z
    .end local v6    # "faceLightingMode":Z
    .end local v7    # "status":Z
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .line 2289
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2290
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2291
    :cond_0
    if-eq p1, v2, :cond_1

    .line 2292
    return-void

    .line 2295
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2298
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2299
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2300
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2303
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2304
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v1

    .line 2303
    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 2305
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 2306
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2313
    :cond_4
    if-eq p1, v3, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    .line 2319
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_7

    if-eq p1, v3, :cond_7

    .line 2320
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2321
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2322
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    .line 2325
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_9

    .line 2329
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2330
    return-void

    .line 2346
    :cond_8
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2347
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2349
    :cond_9
    const/4 v4, 0x5

    if-ne p1, v4, :cond_c

    .line 2353
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2354
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 2355
    return-void

    .line 2359
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 2360
    return-void

    .line 2364
    :cond_b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2365
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2366
    :cond_c
    const/4 v4, 0x3

    if-ne p1, v4, :cond_f

    .line 2371
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2372
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 2373
    return-void

    .line 2377
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2378
    return-void

    .line 2382
    :cond_e
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2383
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2384
    :cond_f
    const/4 v5, 0x4

    if-ne p1, v5, :cond_13

    .line 2388
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2389
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_10

    .line 2390
    return-void

    .line 2395
    :cond_10
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_12

    .line 2396
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2397
    return-void

    .line 2399
    :cond_11
    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2403
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2404
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    .line 2405
    :cond_13
    const/4 v4, 0x6

    if-ne p1, v4, :cond_17

    .line 2409
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2410
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_14

    .line 2411
    return-void

    .line 2416
    :cond_14
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_16

    .line 2417
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_15

    .line 2418
    return-void

    .line 2420
    :cond_15
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2424
    :cond_16
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2425
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_3

    .line 2428
    :cond_17
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2429
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v4, 0x0

    if-nez v0, :cond_18

    .line 2430
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2433
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_19

    .line 2436
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2437
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2438
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_3

    .line 2439
    :cond_19
    if-eqz p2, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2441
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_1a

    .line 2442
    goto :goto_2

    :cond_1a
    move v2, v3

    .line 2440
    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2443
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_1b

    .line 2445
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    .line 2449
    :cond_1b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2452
    :goto_3
    return-void
.end method

.method private blockScreenOff()V
    .locals 4

    .line 1956
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_0

    .line 1957
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen off blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1958
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 1959
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 1960
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :cond_0
    return-void
.end method

.method private blockScreenOn()V
    .locals 4

    .line 1938
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 1939
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen on blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1940
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1942
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_0
    return-void
.end method

.method private caculateBrightnessByNits(IDZ)I
    .locals 4
    .param p1, "brightness"    # I
    .param p2, "percent"    # D
    .param p4, "log"    # Z

    .line 3534
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v0, :cond_0

    .line 3535
    return p1

    .line 3536
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, p2

    double-to-float v0, v0

    .line 3537
    .local v0, "nits":F
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 3538
    .local v1, "b":I
    if-eqz p4, :cond_1

    .line 3539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LPB:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 3540
    invoke-virtual {v3, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ") --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 3542
    invoke-virtual {v3, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3539
    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    :cond_1
    return v1
.end method

.method private caculateBrightnessRateLocked(DID)I
    .locals 5
    .param p1, "percent"    # D
    .param p3, "brightness"    # I
    .param p4, "durationInSecond"    # D

    .line 3546
    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessByNits(IDZ)I

    move-result v0

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    .line 3547
    .local v0, "delta":D
    div-double v2, v0, p4

    double-to-int v2, v2

    .line 3548
    .local v2, "rate":I
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    .line 3549
    return v2
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .line 3000
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static clampAutoBrightnessAdjustment(F)F
    .locals 2
    .param p0, "value"    # F

    .line 3004
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .line 2070
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    if-eqz v0, :cond_0

    .line 2071
    if-ge p1, v0, :cond_0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    if-gt v0, v1, :cond_0

    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "override brightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0

    .line 2080
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightnessForVr(I)I
    .locals 2
    .param p1, "value"    # I

    .line 2063
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .line 2552
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2553
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2554
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 2556
    :cond_0
    return-void
.end method

.method private convertToNits(I)F
    .locals 1
    .param p1, "backlight"    # I

    .line 2726
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_0

    .line 2727
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    return v0

    .line 2729
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private debounceProximitySensor()V
    .locals 6

    .line 2527
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 2530
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2531
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 2533
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2537
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    .line 2540
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 2541
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0

    .line 2545
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2546
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2549
    .end local v0    # "now":J
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2883
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2884
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2891
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

    .line 2892
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

    .line 2893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2894
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2893
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastUserSetScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedScreenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2911
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

    .line 2912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2919
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2918
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2921
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    if-eqz v0, :cond_0

    .line 2922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 2923
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2922
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 2927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2928
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2927
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 2931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 2932
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2931
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_3

    .line 2936
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 2939
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_4

    .line 2940
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2943
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_5

    .line 2944
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2945
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 2948
    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2949
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_6

    .line 2950
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->dump(Ljava/io/PrintWriter;)V

    .line 2951
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->dump(Ljava/io/PrintWriter;)V

    .line 2956
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/OpAutoBrightnessHelper;->dump(Ljava/io/PrintWriter;)V

    .line 2958
    return-void
.end method

.method private findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 4
    .param p1, "sensorType"    # Ljava/lang/String;

    .line 901
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 903
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 904
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 905
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 906
    return-object v2

    .line 903
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 910
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

    .line 2648
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "screen_auto_brightness_adj"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2650
    .local v0, "adj":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAutoBrightnessAdjustment(F)F

    move-result v1

    :goto_0
    return v1
.end method

.method private getBrightnessStaticsLevel()I
    .locals 2

    .line 2223
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_0

    .line 2224
    const/high16 v1, 0x43af0000    # 350.0f

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 2227
    :cond_0
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    return v0
.end method

.method private getDcEnable()Z
    .locals 3

    .line 1175
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

.method private getScreenBrightnessForVrSetting()I
    .locals 4

    .line 2661
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    const-string/jumbo v2, "screen_brightness_for_vr"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2664
    .local v0, "brightness":I
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForVr(I)I

    move-result v1

    return v1
.end method

.method private getScreenBrightnessSetting()I
    .locals 4

    .line 2654
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    const-string/jumbo v2, "screen_brightness"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2657
    .local v0, "brightness":I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v1

    return v1
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .line 2499
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_3

    .line 2500
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    .line 2501
    return-void

    .line 2503
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    .line 2504
    return-void

    .line 2510
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2511
    if-eqz p3, :cond_2

    .line 2512
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2513
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_0

    .line 2516
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2517
    const-wide/16 v0, 0x14

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 2522
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    .line 2524
    :cond_3
    return-void
.end method

.method private handleSettingsChange(Z)V
    .locals 7
    .param p1, "userSwitch"    # Z

    .line 2578
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 2579
    if-eqz p1, :cond_0

    .line 2581
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 2582
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 2583
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 2589
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessMode:I

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2593
    .local v0, "currentBrightnessMode":I
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessMode:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_2

    .line 2597
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "game_mode_status"

    invoke-static {v1, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 2599
    .local v1, "gameModeStarted":I
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "game_mode_close_automatic_brightness"

    invoke-static {v5, v6, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 2602
    .local v2, "disableAutoBrightness":I
    if-ne v1, v4, :cond_1

    if-eq v2, v4, :cond_2

    .line 2603
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 2606
    .end local v1    # "gameModeStarted":I
    .end local v2    # "disableAutoBrightness":I
    :cond_2
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessMode:I

    .line 2611
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessMode:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2612
    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getExtremeState()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 2613
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->exitExtremeState()V

    .line 2617
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2620
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    .line 2624
    new-array v1, v4, [I

    const/16 v2, 0x7d

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2625
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boost_brightness_normal"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBoostBrightnessNormal:Z

    .line 2627
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boost_brightness_hdr"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBoostBrightnessHDR:Z

    .line 2629
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdr_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_6

    move v3, v4

    :cond_6
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mHDRMode:Z

    .line 2636
    :cond_7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessMode:I

    if-ne v1, v4, :cond_8

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    if-eq v1, v2, :cond_8

    .line 2639
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/OpAutoBrightnessHelper;->adjustBrightness(FII)V

    .line 2644
    :cond_8
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 2645
    return-void
.end method

.method private initOnlineConfig()Z
    .locals 5

    .line 3033
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController$BrightnessConfigUpdater;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    sget-object v4, Lcom/android/server/display/DisplayPowerController;->PROJ_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 3034
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    const-string v1, "DisplayPowerController"

    if-nez v0, :cond_0

    .line 3035
    const-string v0, "OLC Observer is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    const/4 v0, 0x0

    return v0

    .line 3038
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Brightness_OLC"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    .line 3039
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3040
    new-instance v0, Lcom/android/server/display/DisplayPowerController$11;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/DisplayPowerController$11;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigHandler:Landroid/os/Handler;

    .line 3058
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 3059
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mOnlineConfigHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3060
    const-string v0, "OLC init DONE!"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    return v2
.end method

.method private initialize()V
    .locals 6

    .line 1038
    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 1039
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

    .line 1041
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1044
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1045
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1047
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 1049
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1050
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1053
    :cond_1
    new-instance v0, Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 1055
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 1058
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator;->setMax(I)V

    .line 1062
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    goto :goto_1

    .line 1064
    :catch_0
    move-exception v0

    .line 1069
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    .line 1070
    .local v0, "brightness":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    .line 1071
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 1074
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1075
    const-string/jumbo v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1074
    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1077
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1078
    const-string/jumbo v2, "screen_brightness_for_vr"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1077
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1080
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1081
    const-string/jumbo v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1080
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1086
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x7d

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1087
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1088
    const-string v2, "boost_brightness_normal"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1087
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1090
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1091
    const-string v2, "boost_brightness_hdr"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1090
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1093
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1094
    const-string v2, "hdr_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1093
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1101
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1102
    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1101
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1107
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1108
    const-string/jumbo v2, "use_curve_gen_algo"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1107
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1111
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

.method private isFodEnabled()Z
    .locals 4

    .line 2279
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const-string v2, "ColorDisable"

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 2280
    :catch_0
    move-exception v1

    .line 2281
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch FOD status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    return v0
.end method

.method private logDisplayPolicyChanged(I)V
    .locals 2
    .param p1, "newPolicy"    # I

    .line 2571
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2572
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2573
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 2574
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 2575
    return-void
.end method

.method private needAdjustBrightenDebounceTime()Z
    .locals 2

    .line 1179
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1180
    .local v0, "projectName":Ljava/lang/String;
    const-string v1, "19850"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19851"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18865"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1181
    const-string v1, "19801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19830"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19831"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1182
    const-string v1, "19833"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19861"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19863"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1185
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 1183
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private notifyBrightnessChanged(IZZ)V
    .locals 7
    .param p1, "brightness"    # I
    .param p2, "userInitiated"    # Z
    .param p3, "hadUserDataPoint"    # Z

    .line 2710
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v6

    .line 2711
    .local v6, "brightnessInNits":F
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_1

    .line 2716
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v0, :cond_0

    .line 2717
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    move v3, v0

    goto :goto_0

    .line 2718
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    move v3, v0

    :goto_0
    nop

    .line 2719
    .local v3, "powerFactor":F
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2721
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v5

    .line 2719
    move v1, v6

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZ)V

    .line 2723
    .end local v3    # "powerFactor":F
    :cond_1
    return-void
.end method

.method private notifyLevelChangeToBrightnessHelper(I)V
    .locals 6
    .param p1, "target"    # I

    .line 2234
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessMode:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2236
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 2238
    int-to-float v0, p1

    const v4, 0x3ccccccd    # 0.025f

    sget v5, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    .line 2239
    const/4 v0, 0x2

    .local v0, "currentState":I
    goto :goto_0

    .line 2240
    .end local v0    # "currentState":I
    :cond_0
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-lt p1, v0, :cond_1

    .line 2241
    const/4 v0, 0x1

    .restart local v0    # "currentState":I
    goto :goto_0

    .line 2243
    .end local v0    # "currentState":I
    :cond_1
    const/4 v0, -0x1

    .line 2245
    .restart local v0    # "currentState":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/OpAutoBrightnessHelper;->getExtremeState()I

    move-result v4

    if-eq v4, v0, :cond_8

    .line 2246
    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_2

    goto :goto_1

    .line 2258
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getExtremeState()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 2259
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->exitExtremeState()V

    .line 2261
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/OpAutoBrightnessHelper;->enterExtremeState(FI)V

    .line 2263
    goto :goto_1

    .line 2251
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getExtremeState()I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 2252
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->exitExtremeState()V

    .line 2254
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->enterExtremeState(FI)V

    .line 2256
    goto :goto_1

    .line 2248
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->exitExtremeState()V

    .line 2249
    goto :goto_1

    .line 2268
    .end local v0    # "currentState":I
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2269
    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getExtremeState()I

    move-result v0

    if-eq v0, v1, :cond_9

    .line 2270
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->exitExtremeState()V

    goto :goto_2

    .line 2268
    :cond_8
    :goto_1
    nop

    .line 2272
    :cond_9
    :goto_2
    return-void
.end method

.method private parseOnlineConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 13
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 3065
    const-string v0, "EvenOdd-deviceId"

    const-string v1, "DisplayPowerController"

    if-nez p1, :cond_0

    .line 3066
    const-string v0, "OLC is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    return-void

    .line 3069
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#OLC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 3073
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "newfeature"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 3074
    .local v5, "status":I
    const-string v6, "brightnessLimit"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    .line 3075
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "Brightness-limit"

    iget v8, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3077
    const-string v6, "EvenOdd-stage"

    if-nez v5, :cond_1

    .line 3078
    :try_start_1
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    .line 3079
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3081
    :cond_1
    const-string/jumbo v7, "stage"

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v5, v9, :cond_4

    .line 3082
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "#1 mhalfDeviceId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    iget v10, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 3084
    iget-object v10, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v0, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    .line 3086
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#2 mhalfDeviceId:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    iget v10, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    if-ne v10, v11, :cond_2

    .line 3091
    const-string/jumbo v10, "ro.serialno"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3092
    .local v10, "sno":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 3093
    .local v11, "b":[B
    array-length v12, v11

    sub-int/2addr v12, v9

    aget-byte v12, v11, v12

    rem-int/2addr v12, v8

    iput v12, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    .line 3094
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#3 mhalfDeviceId:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget v12, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    invoke-static {v8, v0, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3099
    .end local v10    # "sno":Ljava/lang/String;
    .end local v11    # "b":[B
    :cond_2
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    if-ne v0, v9, :cond_3

    .line 3100
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    .line 3101
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3104
    :cond_3
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    .line 3105
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3108
    :cond_4
    if-ne v5, v8, :cond_5

    .line 3109
    iput v9, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    .line 3110
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    .line 3111
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3114
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    invoke-virtual {v0, v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->setOptFuncValue(I)V

    .line 3115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    invoke-virtual {v0, v2}, Lcom/android/server/display/RampAnimator;->setStageEnable(I)V

    .line 3116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mhalfDeviceId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mhalfDeviceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " stage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3121
    nop

    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "status":I
    goto :goto_1

    .line 3119
    :catch_0
    move-exception v0

    .line 3120
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig]  Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3117
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 3118
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    .end local v0    # "e":Lorg/json/JSONException;
    nop

    .line 3122
    :goto_1
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2961
    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 2969
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2967
    :cond_0
    const-string v0, "Positive"

    return-object v0

    .line 2965
    :cond_1
    const-string v0, "Negative"

    return-object v0

    .line 2963
    :cond_2
    const-string v0, "Unknown"

    return-object v0
.end method

.method private putAutoBrightnessAdjustmentSetting(F)V
    .locals 3
    .param p1, "adjustment"    # F

    .line 2674
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2675
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2677
    return-void
.end method

.method private putScreenBrightnessSetting(I)V
    .locals 3
    .param p1, "brightness"    # I

    .line 2668
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 2669
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2671
    return-void
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2974
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2982
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2980
    :cond_0
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    .line 2978
    :cond_1
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    .line 2976
    :cond_2
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0
.end method

.method private sendOnProximityNegativeSuspendWithWakelock()V
    .locals 4

    .line 2763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mEnableAutoBrightnessDuringCall:Z

    .line 2765
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2766
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximityDelayForLightSensor:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2767
    return-void
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 4

    .line 2798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mEnableAutoBrightnessDuringCall:Z

    .line 2800
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2801
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximityDelayForLightSensor:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2802
    return-void
.end method

.method private sendOnProximityPositiveSuspendWithWakelock()V
    .locals 4

    .line 2746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mEnableAutoBrightnessDuringCall:Z

    .line 2748
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2749
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximityDelayForLightSensor:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2750
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 4

    .line 2781
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mEnableAutoBrightnessDuringCall:Z

    .line 2783
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2784
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximityDelayForLightSensor:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2785
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .line 2566
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2567
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2568
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .line 1022
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1024
    monitor-exit v0

    .line 1025
    return-void

    .line 1024
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 2

    .line 1028
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_0

    .line 1029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1030
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1031
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1033
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 4
    .param p1, "debounceTime"    # J

    .line 2559
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2560
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2562
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2563
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .line 2462
    if-eqz p1, :cond_0

    .line 2463
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_2

    .line 2466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2467
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 2471
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2474
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2477
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    .line 2479
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2480
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2481
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2482
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2483
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 2487
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_ctrl_psensor_positive"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2493
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mEnableAutoBrightnessDuringCall:Z

    .line 2496
    :cond_2
    :goto_0
    return-void
.end method

.method private setReportedScreenState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 2058
    const-wide/32 v0, 0x20000

    const-string v2, "ReportedScreenStateToPolicy"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2059
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2060
    return-void
.end method

.method private setScreenState(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 1974
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(IZ)Z
    .locals 8
    .param p1, "state"    # I
    .param p2, "reportOnly"    # Z

    .line 1978
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1979
    .local v2, "isOff":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, p1, :cond_6

    .line 1983
    const/4 v3, 0x2

    if-eqz v2, :cond_2

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v5, :cond_2

    .line 1984
    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v5, v3, :cond_1

    .line 1985
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1986
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    .line 1987
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 1988
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    goto :goto_1

    .line 1989
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v5, :cond_2

    .line 1991
    return v1

    .line 1995
    :cond_2
    :goto_1
    if-nez p2, :cond_6

    .line 1996
    const-wide/32 v5, 0x20000

    const-string v7, "ScreenState"

    invoke-static {v5, v6, v7, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 1997
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 2000
    if-eq p1, v0, :cond_4

    if-ne p1, v3, :cond_3

    goto :goto_2

    .line 2002
    :cond_3
    if-ne p1, v4, :cond_5

    .line 2003
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const-string v5, "FingerPrintMode"

    invoke-virtual {v3, v5, v0, v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_3

    .line 2001
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v3, p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->screenStateChange(I)V

    .line 2008
    :cond_5
    :goto_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    goto :goto_4

    .line 2009
    :catch_0
    move-exception v3

    .line 2021
    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_7

    .line 2023
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2024
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2025
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_5

    .line 2026
    :cond_7
    if-nez v2, :cond_8

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v3, v4, :cond_8

    .line 2031
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 2032
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    .line 2033
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2035
    :cond_8
    :goto_5
    if-nez v2, :cond_a

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-nez v3, :cond_a

    .line 2036
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2037
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    .line 2038
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_6

    .line 2040
    :cond_9
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2042
    :goto_6
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 2047
    :cond_a
    if-eqz v2, :cond_b

    .line 2048
    invoke-static {v1}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doWriteRecord(Z)V

    .line 2050
    :cond_b
    invoke-static {v2}, Lcom/android/server/am/OpRestartProcessManagerInjector;->setScreenState(Z)V

    .line 2054
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v3, :cond_c

    goto :goto_7

    :cond_c
    move v0, v1

    :goto_7
    return v0
.end method

.method private static skipRampStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2987
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2995
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2993
    :cond_0
    const-string v0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object v0

    .line 2991
    :cond_1
    const-string v0, "RAMP_STATE_SKIP_INITIAL"

    return-object v0

    .line 2989
    :cond_2
    const-string v0, "RAMP_STATE_SKIP_NONE"

    return-object v0
.end method

.method private unblockScreenOff()V
    .locals 6

    .line 1965
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_0

    .line 1966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 1967
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 1968
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

    .line 1969
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen off blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1971
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private unblockScreenOn()V
    .locals 6

    .line 1947
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_0

    .line 1948
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1949
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 1950
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

    .line 1951
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen on blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1953
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updateAutoBrightnessAdjustment()Z
    .locals 4

    .line 2680
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2681
    return v1

    .line 2683
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_1

    .line 2684
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2685
    return v1

    .line 2687
    :cond_1
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 2688
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2689
    const/4 v0, 0x1

    return v0
.end method

.method private updatePowerState()V
    .locals 29

    .line 1194
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 1195
    .local v2, "mustInitialize":Z
    const/4 v3, 0x0

    .line 1196
    .local v3, "brightnessAdjustmentFlags":I
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1198
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1199
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1200
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_0

    .line 1201
    monitor-exit v4

    return-void

    .line 1204
    :cond_0
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_1

    .line 1205
    new-instance v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v5, v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1206
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1207
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1208
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1209
    const/4 v2, 0x1

    .line 1212
    const/4 v5, 0x3

    .local v5, "previousPolicy":I
    goto :goto_0

    .line 1213
    .end local v5    # "previousPolicy":I
    :cond_1
    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v5, :cond_2

    .line 1214
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1215
    .restart local v5    # "previousPolicy":I
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1216
    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v6, v7

    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1217
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1218
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1219
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    goto :goto_0

    .line 1221
    .end local v5    # "previousPolicy":I
    :cond_2
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1224
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

    .line 1225
    .local v6, "mustNotify":Z
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1228
    if-eqz v2, :cond_4

    .line 1229
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 1235
    :cond_4
    const/4 v4, -0x1

    .line 1236
    .local v4, "brightness":I
    const/4 v8, 0x0

    .line 1237
    .local v8, "performScreenOffTransition":Z
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eqz v9, :cond_8

    if-eq v9, v7, :cond_6

    if-eq v9, v10, :cond_5

    .line 1259
    const/4 v9, 0x2

    .local v9, "state":I
    goto :goto_3

    .line 1254
    .end local v9    # "state":I
    :cond_5
    const/4 v9, 0x5

    .line 1255
    .restart local v9    # "state":I
    goto :goto_3

    .line 1243
    .end local v9    # "state":I
    :cond_6
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v9, :cond_7

    .line 1244
    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .restart local v9    # "state":I
    goto :goto_2

    .line 1246
    .end local v9    # "state":I
    :cond_7
    const/4 v9, 0x3

    .line 1248
    .restart local v9    # "state":I
    :goto_2
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v12, :cond_9

    .line 1249
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    .line 1250
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v12, v11}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_3

    .line 1239
    .end local v9    # "state":I
    :cond_8
    const/4 v9, 0x1

    .line 1240
    .restart local v9    # "state":I
    const/4 v8, 0x1

    .line 1241
    nop

    .line 1262
    :cond_9
    :goto_3
    nop

    .line 1296
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v13, 0x3

    if-eqz v12, :cond_16

    .line 1297
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

    .line 1298
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-eqz v12, :cond_12

    .line 1299
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v12, :cond_d

    .line 1300
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1302
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    if-nez v12, :cond_c

    .line 1303
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

    .line 1304
    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_a

    .line 1305
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveSuspendWithWakelock()V

    goto :goto_4

    .line 1306
    :cond_a
    if-nez v12, :cond_b

    .line 1307
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeSuspendWithWakelock()V

    .line 1312
    :cond_b
    :goto_4
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    goto/16 :goto_6

    .line 1314
    :cond_c
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v12, :cond_17

    .line 1315
    const-string v12, "DisplayPowerController"

    const-string/jumbo v14, "the last proximity event has been handled"

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1320
    :cond_d
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v12, :cond_17

    .line 1321
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

    .line 1327
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v12, :cond_f

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_f

    if-eq v9, v7, :cond_e

    if-ne v9, v13, :cond_f

    .line 1330
    :cond_e
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_6

    .line 1332
    :cond_f
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1334
    if-eq v9, v7, :cond_10

    if-ne v9, v13, :cond_11

    .line 1335
    :cond_10
    const-string v12, "DisplayPowerController"

    const-string/jumbo v14, "turn on lcd light due to proximity released"

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeSuspendWithWakelock()V

    .line 1339
    :cond_11
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1340
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1341
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mProximityEventHandled:Z

    goto :goto_6

    .line 1346
    :cond_12
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v12, :cond_13

    if-eq v9, v7, :cond_13

    .line 1347
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1348
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v12, :cond_15

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_15

    .line 1350
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1351
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    goto :goto_5

    .line 1353
    :cond_13
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v12, :cond_14

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_14

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v12, v7, :cond_14

    if-eq v9, v7, :cond_14

    .line 1357
    invoke-direct {v1, v7}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_5

    .line 1359
    :cond_14
    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1360
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1362
    :cond_15
    :goto_5
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_17

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-eq v12, v7, :cond_17

    .line 1364
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1365
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto :goto_6

    .line 1369
    :cond_16
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1371
    :cond_17
    :goto_6
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-nez v12, :cond_18

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_18

    .line 1372
    const/4 v9, 0x1

    .line 1379
    :cond_18
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v12

    .line 1380
    .local v12, "oldState":I
    invoke-direct {v1, v9, v8}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 1381
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v14}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v9

    .line 1384
    const/4 v14, 0x5

    if-ne v9, v7, :cond_19

    .line 1385
    const/4 v4, 0x0

    .line 1386
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v15, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1390
    :cond_19
    if-ne v9, v14, :cond_1a

    .line 1391
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:I

    .line 1392
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x6

    invoke-virtual {v15, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1397
    :cond_1a
    if-gez v4, :cond_1b

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    if-ltz v14, :cond_1b

    .line 1398
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    .line 1399
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v4

    .line 1400
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1401
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    goto :goto_7

    .line 1403
    :cond_1b
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    .line 1409
    :goto_7
    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v14, :cond_1c

    .line 1410
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mEnableAutoBrightnessDuringCall:Z

    .line 1414
    :cond_1c
    iget-boolean v14, v1, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v14, :cond_1e

    .line 1415
    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v14

    if-eqz v14, :cond_1e

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eq v14, v11, :cond_1d

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-ne v14, v13, :cond_1e

    :cond_1d
    move v14, v7

    goto :goto_8

    :cond_1e
    move v14, v0

    .line 1417
    .local v14, "autoBrightnessEnabledInDoze":Z
    :goto_8
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v15, :cond_21

    if-eq v9, v11, :cond_1f

    if-nez v14, :cond_1f

    iget-boolean v15, v1, Lcom/android/server/display/DisplayPowerController;->mEnableAutoBrightnessDuringCall:Z

    if-eqz v15, :cond_21

    :cond_1f
    if-ltz v4, :cond_20

    if-nez v4, :cond_21

    iget-boolean v15, v1, Lcom/android/server/display/DisplayPowerController;->mEnableAutoBrightnessDuringCall:Z

    if-eqz v15, :cond_21

    :cond_20
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v15, :cond_21

    move v15, v7

    goto :goto_9

    :cond_21
    move v15, v0

    .line 1421
    .local v15, "autoBrightnessEnabled":Z
    :goto_9
    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    and-int/2addr v10, v11

    move/from16 v25, v14

    .end local v14    # "autoBrightnessEnabledInDoze":Z
    .local v25, "autoBrightnessEnabledInDoze":Z
    const/4 v11, -0x1

    if-lez v10, :cond_24

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    if-eq v10, v13, :cond_24

    .line 1423
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mAlsMotion:Lcom/android/server/display/AlsMotion;

    if-nez v10, :cond_22

    .line 1424
    new-instance v10, Lcom/android/server/display/AlsMotion;

    invoke-direct {v10}, Lcom/android/server/display/AlsMotion;-><init>()V

    iput-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mAlsMotion:Lcom/android/server/display/AlsMotion;

    .line 1425
    :cond_22
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    if-nez v10, :cond_23

    .line 1426
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "Brightness-limit"

    invoke-static {v10, v13, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    .line 1428
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mAlsMotion:Lcom/android/server/display/AlsMotion;

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v13, v1}, Lcom/android/server/display/AlsMotion;->start(Landroid/content/Context;Lcom/android/server/display/AlsMotion$Listener;)V

    .line 1429
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    .line 1430
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    .line 1431
    const-string v10, "DisplayPowerController"

    const-string v13, "ALSM START!"

    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1433
    :cond_23
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mAlsMotion:Lcom/android/server/display/AlsMotion;

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v13}, Lcom/android/server/display/AlsMotion;->stop(Landroid/content/Context;)V

    .line 1434
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    .line 1435
    const-wide/16 v13, -0x1

    iput-wide v13, v1, Lcom/android/server/display/DisplayPowerController;->mAngleChangingTime:J

    .line 1436
    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    .line 1437
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsAngleChangeCauseDarken:Z

    .line 1438
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    .line 1439
    const-string v10, "DisplayPowerController"

    const-string v13, "ALSM STOP!"

    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_24
    :goto_a
    iget v10, v1, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    const/4 v13, 0x2

    and-int/2addr v10, v13

    if-nez v10, :cond_25

    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    if-eqz v10, :cond_25

    .line 1444
    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mAlsMotion:Lcom/android/server/display/AlsMotion;

    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v13}, Lcom/android/server/display/AlsMotion;->stop(Landroid/content/Context;)V

    .line 1445
    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    .line 1446
    const-wide/16 v13, -0x1

    iput-wide v13, v1, Lcom/android/server/display/DisplayPowerController;->mAngleChangingTime:J

    .line 1447
    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    .line 1448
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsAngleChangeCauseDarken:Z

    .line 1449
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    .line 1450
    const-string v10, "DisplayPowerController"

    const-string v13, "ALSM STOP."

    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_25
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateUserSetScreenBrightness()Z

    move-result v10

    .line 1456
    .local v10, "userSetBrightnessChanged":Z
    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    if-lez v13, :cond_27

    .line 1457
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 1458
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1461
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    if-ne v13, v14, :cond_26

    .line 1462
    iput v11, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 1465
    :cond_26
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_b

    .line 1467
    :cond_27
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1470
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessAdjustment()Z

    move-result v13

    .line 1471
    .local v13, "autoBrightnessAdjustmentChanged":Z
    if-eqz v13, :cond_28

    .line 1472
    const/high16 v14, 0x7fc00000    # Float.NaN

    iput v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1477
    :cond_28
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_29

    .line 1478
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1479
    .local v14, "autoBrightnessAdjustment":F
    const/4 v3, 0x1

    .line 1480
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    goto :goto_c

    .line 1482
    .end local v14    # "autoBrightnessAdjustment":F
    :cond_29
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 1483
    .restart local v14    # "autoBrightnessAdjustment":F
    const/4 v3, 0x2

    .line 1484
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    .line 1491
    :goto_c
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v11, :cond_2a

    if-eqz v4, :cond_2a

    .line 1493
    sget v4, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    .line 1494
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v0, 0x9

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1495
    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    goto :goto_d

    .line 1497
    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    .line 1502
    :goto_d
    if-gez v4, :cond_2c

    if-nez v13, :cond_2b

    if-eqz v10, :cond_2c

    :cond_2b
    move v0, v7

    goto :goto_e

    :cond_2c
    const/4 v0, 0x0

    .line 1505
    .local v0, "userInitiatedChange":Z
    :goto_e
    const/4 v11, 0x0

    .line 1507
    .local v11, "hadUserBrightnessPoint":Z
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v7, :cond_2d

    .line 1508
    invoke-virtual {v7}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result v11

    .line 1509
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move/from16 v26, v2

    .end local v2    # "mustInitialize":Z
    .local v26, "mustInitialize":Z
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move/from16 v27, v3

    .end local v3    # "brightnessAdjustmentFlags":I
    .local v27, "brightnessAdjustmentFlags":I
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    int-to-float v3, v3

    move/from16 v28, v8

    .end local v8    # "performScreenOffTransition":Z
    .local v28, "performScreenOffTransition":Z
    sget v8, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v8, v8

    div-float v20, v3, v8

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move-object/from16 v17, v7

    move/from16 v18, v15

    move-object/from16 v19, v2

    move/from16 v21, v10

    move/from16 v22, v14

    move/from16 v23, v13

    move/from16 v24, v3

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZI)V

    goto :goto_f

    .line 1507
    .end local v26    # "mustInitialize":Z
    .end local v27    # "brightnessAdjustmentFlags":I
    .end local v28    # "performScreenOffTransition":Z
    .restart local v2    # "mustInitialize":Z
    .restart local v3    # "brightnessAdjustmentFlags":I
    .restart local v8    # "performScreenOffTransition":Z
    :cond_2d
    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v8

    .line 1518
    .end local v2    # "mustInitialize":Z
    .end local v3    # "brightnessAdjustmentFlags":I
    .end local v8    # "performScreenOffTransition":Z
    .restart local v26    # "mustInitialize":Z
    .restart local v27    # "brightnessAdjustmentFlags":I
    .restart local v28    # "performScreenOffTransition":Z
    :goto_f
    if-nez v15, :cond_2e

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_2e

    .line 1519
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    .line 1522
    :cond_2e
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    if-ne v9, v7, :cond_31

    .line 1523
    iget v7, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2f

    .line 1524
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    .line 1525
    :cond_2f
    iget-wide v7, v1, Lcom/android/server/display/DisplayPowerController;->mAngleChangingTime:J

    cmp-long v7, v7, v2

    if-gtz v7, :cond_30

    iget-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mIsAngleChangeCauseDarken:Z

    if-eqz v7, :cond_31

    .line 1526
    :cond_30
    const-wide/16 v7, -0x1

    iput-wide v7, v1, Lcom/android/server/display/DisplayPowerController;->mAngleChangingTime:J

    .line 1527
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/display/DisplayPowerController;->mIsAngleChangeCauseDarken:Z

    .line 1530
    :cond_31
    iget v7, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_32

    if-ne v9, v8, :cond_32

    iget v7, v1, Lcom/android/server/display/DisplayPowerController;->mPrevState:I

    if-eq v7, v8, :cond_32

    .line 1532
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    .line 1536
    :cond_32
    const/4 v7, 0x0

    .line 1537
    .local v7, "slowChange":Z
    if-gez v4, :cond_40

    .line 1538
    move v8, v14

    .line 1539
    .local v8, "newAutoBrightnessAdjustment":F
    if-eqz v15, :cond_33

    .line 1540
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v4

    .line 1541
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1542
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v8

    .line 1544
    :cond_33
    if-ltz v4, :cond_3e

    .line 1546
    invoke-direct {v1, v4}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v2

    .line 1547
    .end local v4    # "brightness":I
    .local v2, "brightness":I
    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v3, :cond_34

    if-nez v13, :cond_34

    .line 1548
    const/4 v7, 0x1

    .line 1552
    :cond_34
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_37

    if-ne v9, v4, :cond_35

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mPrevState:I

    if-ne v3, v4, :cond_36

    :cond_35
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    if-le v2, v3, :cond_37

    .line 1555
    :cond_36
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    .line 1557
    :cond_37
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-lez v3, :cond_3b

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    if-lez v3, :cond_3b

    if-ge v2, v3, :cond_3b

    .line 1560
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v3

    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    if-lt v3, v4, :cond_3b

    .line 1561
    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    if-gtz v3, :cond_3a

    const/4 v3, 0x2

    if-ne v9, v3, :cond_38

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mPrevState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_38

    goto :goto_10

    .line 1567
    :cond_38
    iget-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mIsAngleChangeCauseDarken:Z

    if-nez v3, :cond_39

    iget-wide v3, v1, Lcom/android/server/display/DisplayPowerController;->mAngleChangingTime:J

    const-wide/16 v17, 0x0

    cmp-long v19, v3, v17

    if-lez v19, :cond_3b

    .line 1569
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sub-long v3, v3, v19

    const-wide/16 v19, 0x2710

    cmp-long v3, v3, v19

    if-gez v3, :cond_3b

    .line 1570
    :cond_39
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mIsAngleChangeCauseDarken:Z

    .line 1571
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    .line 1572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#2 ABL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisplayPowerController"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1563
    :cond_3a
    :goto_10
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    .line 1564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#1 ABL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisplayPowerController"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_3b
    :goto_11
    iget-wide v3, v1, Lcom/android/server/display/DisplayPowerController;->mAngleChangingTime:J

    const-wide/16 v17, 0x0

    cmp-long v3, v3, v17

    if-lez v3, :cond_3c

    iget v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    if-le v2, v3, :cond_3c

    .line 1577
    const-wide/16 v3, -0x1

    iput-wide v3, v1, Lcom/android/server/display/DisplayPowerController;->mAngleChangingTime:J

    .line 1578
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mIsAngleChangeCauseDarken:Z

    .line 1589
    :cond_3c
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_3d

    iget-boolean v3, v3, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    if-nez v3, :cond_3d

    .line 1590
    invoke-direct {v1, v2}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(I)V

    .line 1593
    :cond_3d
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1594
    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    move v4, v2

    goto :goto_12

    .line 1596
    .end local v2    # "brightness":I
    .restart local v4    # "brightness":I
    :cond_3e
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1598
    :goto_12
    cmpl-float v2, v14, v8

    if-eqz v2, :cond_3f

    .line 1601
    invoke-direct {v1, v8}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessAdjustmentSetting(F)V

    move/from16 v3, v27

    goto :goto_13

    .line 1604
    :cond_3f
    const/4 v3, 0x0

    .line 1606
    .end local v8    # "newAutoBrightnessAdjustment":F
    .end local v27    # "brightnessAdjustmentFlags":I
    .restart local v3    # "brightnessAdjustmentFlags":I
    :goto_13
    goto :goto_14

    .line 1607
    .end local v3    # "brightnessAdjustmentFlags":I
    .restart local v27    # "brightnessAdjustmentFlags":I
    :cond_40
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1608
    const/4 v3, 0x0

    .line 1623
    .end local v27    # "brightnessAdjustmentFlags":I
    .restart local v3    # "brightnessAdjustmentFlags":I
    :goto_14
    if-gez v4, :cond_41

    .line 1624
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    invoke-direct {v1, v2}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v4

    .line 1625
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1630
    :cond_41
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_48

    .line 1631
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v4, v2, :cond_42

    .line 1632
    add-int/lit8 v2, v4, -0xa

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1634
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    .line 1636
    :cond_42
    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v2, :cond_43

    .line 1637
    const/4 v7, 0x0

    .line 1639
    :cond_43
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 1642
    new-array v8, v2, [I

    const/16 v17, 0x50

    const/16 v18, 0x0

    aput v17, v8, v18

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 1643
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move/from16 v17, v4

    .end local v4    # "brightness":I
    .local v17, "brightness":I
    const-string v4, "fp_screen_time_out"

    invoke-static {v8, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_15

    .line 1642
    .end local v17    # "brightness":I
    .restart local v4    # "brightness":I
    :cond_44
    move/from16 v17, v4

    .line 1649
    .end local v4    # "brightness":I
    .restart local v17    # "brightness":I
    :goto_15
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v2, :cond_47

    .line 1650
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_45

    .line 1651
    const-string v2, "DisplayPowerController"

    const-string v4, "[DimScreen] Screen is dimming"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    :cond_45
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-nez v2, :cond_47

    .line 1656
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_46

    .line 1657
    const-string v2, "DisplayPowerController"

    const-string v4, "[DimScreen] set dimming content provider for monitoring."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :cond_46
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "device_is_dimming"

    const/4 v8, 0x1

    invoke-static {v2, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1688
    :cond_47
    move/from16 v2, v17

    goto :goto_17

    .line 1664
    .end local v17    # "brightness":I
    .restart local v4    # "brightness":I
    :cond_48
    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-eqz v2, :cond_4c

    .line 1665
    const/4 v7, 0x0

    .line 1666
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 1669
    move/from16 v18, v4

    const/4 v8, 0x1

    .end local v4    # "brightness":I
    .local v18, "brightness":I
    new-array v4, v8, [I

    const/16 v8, 0x50

    aput v8, v4, v2

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 1670
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "fp_screen_time_out"

    invoke-static {v4, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1676
    :cond_49
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v2, :cond_4b

    .line 1677
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_4a

    .line 1678
    const-string v2, "DisplayPowerController"

    const-string v4, "[DimScreen] Screen is not dimming -> reset"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_4a
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v4, 0x57

    invoke-virtual {v2, v4, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1681
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move/from16 v17, v7

    .end local v7    # "slowChange":Z
    .local v17, "slowChange":Z
    const-wide/16 v7, 0xa

    invoke-virtual {v4, v2, v7, v8}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_16

    .line 1676
    .end local v2    # "msg":Landroid/os/Message;
    .end local v17    # "slowChange":Z
    .restart local v7    # "slowChange":Z
    :cond_4b
    move/from16 v17, v7

    .line 1688
    .end local v7    # "slowChange":Z
    .restart local v17    # "slowChange":Z
    :goto_16
    move/from16 v7, v17

    move/from16 v2, v18

    goto :goto_17

    .line 1664
    .end local v17    # "slowChange":Z
    .end local v18    # "brightness":I
    .restart local v4    # "brightness":I
    .restart local v7    # "slowChange":Z
    :cond_4c
    move/from16 v18, v4

    .end local v4    # "brightness":I
    .restart local v18    # "brightness":I
    move/from16 v2, v18

    .line 1688
    .end local v18    # "brightness":I
    .local v2, "brightness":I
    :goto_17
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v4, :cond_4f

    .line 1689
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    if-le v2, v4, :cond_4d

    .line 1690
    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 1691
    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1692
    .local v4, "brightnessFactor":F
    int-to-float v8, v2

    mul-float/2addr v8, v4

    float-to-int v8, v8

    .line 1693
    .local v8, "lowPowerBrightness":I
    move/from16 v18, v2

    .end local v2    # "brightness":I
    .restart local v18    # "brightness":I
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1694
    .end local v18    # "brightness":I
    .restart local v2    # "brightness":I
    move/from16 v18, v2

    .end local v2    # "brightness":I
    .restart local v18    # "brightness":I
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    move/from16 v19, v4

    const/4 v4, 0x2

    .end local v4    # "brightnessFactor":F
    .local v19, "brightnessFactor":F
    invoke-virtual {v2, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    move/from16 v2, v18

    goto :goto_18

    .line 1689
    .end local v8    # "lowPowerBrightness":I
    .end local v18    # "brightness":I
    .end local v19    # "brightnessFactor":F
    .restart local v2    # "brightness":I
    :cond_4d
    move/from16 v18, v2

    .line 1696
    :goto_18
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v4, :cond_4e

    .line 1697
    const/4 v7, 0x0

    .line 1699
    :cond_4e
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    goto :goto_19

    .line 1700
    :cond_4f
    move/from16 v18, v2

    .end local v2    # "brightness":I
    .restart local v18    # "brightness":I
    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-eqz v2, :cond_50

    .line 1701
    const/4 v7, 0x0

    .line 1702
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    move/from16 v2, v18

    goto :goto_19

    .line 1700
    :cond_50
    move/from16 v2, v18

    .line 1707
    .end local v18    # "brightness":I
    .restart local v2    # "brightness":I
    :goto_19
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v4, :cond_6b

    .line 1708
    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v4, :cond_55

    .line 1709
    const/4 v4, 0x2

    if-ne v9, v4, :cond_54

    .line 1710
    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v4, :cond_51

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v4, :cond_51

    .line 1711
    iput v2, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    .line 1712
    const/4 v4, 0x1

    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_1a

    .line 1710
    :cond_51
    const/4 v4, 0x1

    .line 1713
    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v8, v4, :cond_52

    iget-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v4, :cond_52

    iget v4, v1, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:I

    if-eq v2, v4, :cond_52

    .line 1716
    const/4 v4, 0x2

    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_1a

    .line 1713
    :cond_52
    const/4 v4, 0x2

    .line 1717
    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v8, v4, :cond_53

    .line 1718
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_1a

    .line 1717
    :cond_53
    const/4 v4, 0x0

    goto :goto_1a

    .line 1721
    :cond_54
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 1725
    :cond_55
    :goto_1a
    const/4 v4, 0x5

    if-eq v9, v4, :cond_57

    if-ne v12, v4, :cond_56

    goto :goto_1b

    :cond_56
    const/4 v4, 0x0

    goto :goto_1c

    :cond_57
    :goto_1b
    const/4 v4, 0x1

    .line 1727
    .local v4, "wasOrWillBeInVr":Z
    :goto_1c
    const/4 v8, 0x2

    if-ne v9, v8, :cond_58

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-eqz v8, :cond_58

    const/4 v8, 0x1

    goto :goto_1d

    :cond_58
    const/4 v8, 0x0

    .line 1732
    .local v8, "initialRampSkip":Z
    :goto_1d
    nop

    .line 1733
    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v16

    if-eqz v16, :cond_59

    move/from16 v16, v10

    .end local v10    # "userSetBrightnessChanged":Z
    .local v16, "userSetBrightnessChanged":Z
    iget-boolean v10, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v10, :cond_5a

    const/4 v10, 0x1

    goto :goto_1e

    .end local v16    # "userSetBrightnessChanged":Z
    .restart local v10    # "userSetBrightnessChanged":Z
    :cond_59
    move/from16 v16, v10

    .end local v10    # "userSetBrightnessChanged":Z
    .restart local v16    # "userSetBrightnessChanged":Z
    :cond_5a
    const/4 v10, 0x0

    .line 1736
    .local v10, "hasBrightnessBuckets":Z
    :goto_1e
    move/from16 v18, v12

    .end local v12    # "oldState":I
    .local v18, "oldState":I
    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v12, :cond_5b

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1737
    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v12

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v17

    if-nez v12, :cond_5b

    const/4 v12, 0x1

    goto :goto_1f

    :cond_5b
    const/4 v12, 0x0

    .line 1738
    .local v12, "isDisplayContentVisible":Z
    :goto_1f
    move/from16 v17, v13

    .end local v13    # "autoBrightnessAdjustmentChanged":Z
    .local v17, "autoBrightnessAdjustmentChanged":Z
    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    if-nez v13, :cond_5d

    iget-boolean v13, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-eqz v13, :cond_5c

    goto :goto_20

    :cond_5c
    const/4 v13, 0x0

    goto :goto_21

    :cond_5d
    :goto_20
    const/4 v13, 0x1

    .line 1740
    .local v13, "brightnessIsTemporary":Z
    :goto_21
    if-nez v8, :cond_64

    if-nez v10, :cond_64

    if-nez v4, :cond_64

    if-eqz v12, :cond_64

    if-eqz v13, :cond_5e

    move/from16 v19, v14

    move/from16 v20, v15

    goto :goto_25

    .line 1764
    :cond_5e
    move/from16 v19, v14

    const/4 v14, 0x2

    .end local v14    # "autoBrightnessAdjustment":F
    .local v19, "autoBrightnessAdjustment":F
    if-ne v9, v14, :cond_60

    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mPrevState:I

    move/from16 v20, v15

    const/4 v15, 0x3

    .end local v15    # "autoBrightnessEnabled":Z
    .local v20, "autoBrightnessEnabled":Z
    if-ne v14, v15, :cond_61

    .line 1765
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    const/4 v15, 0x2

    and-int/2addr v14, v15

    if-lez v14, :cond_5f

    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    if-lez v14, :cond_5f

    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    if-ge v2, v14, :cond_5f

    .line 1766
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    .line 1767
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#3 BL:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DisplayPowerController"

    invoke-static {v15, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_5f
    const/4 v14, 0x0

    invoke-direct {v1, v2, v14}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto :goto_22

    .line 1764
    .end local v20    # "autoBrightnessEnabled":Z
    .restart local v15    # "autoBrightnessEnabled":Z
    :cond_60
    move/from16 v20, v15

    .line 1775
    .end local v15    # "autoBrightnessEnabled":Z
    .restart local v20    # "autoBrightnessEnabled":Z
    :cond_61
    :goto_22
    if-eqz v7, :cond_62

    .line 1776
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/server/display/RampAnimator;->mEnableDelay:Z

    goto :goto_23

    .line 1778
    :cond_62
    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/server/display/RampAnimator;->mEnableDelay:Z

    .line 1784
    :goto_23
    nop

    .line 1785
    if-eqz v7, :cond_63

    const/4 v14, -0x1

    goto :goto_24

    :cond_63
    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    .line 1784
    :goto_24
    invoke-direct {v1, v2, v14}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto/16 :goto_26

    .line 1740
    .end local v19    # "autoBrightnessAdjustment":F
    .end local v20    # "autoBrightnessEnabled":Z
    .restart local v14    # "autoBrightnessAdjustment":F
    .restart local v15    # "autoBrightnessEnabled":Z
    :cond_64
    move/from16 v19, v14

    move/from16 v20, v15

    .line 1744
    .end local v14    # "autoBrightnessAdjustment":F
    .end local v15    # "autoBrightnessEnabled":Z
    .restart local v19    # "autoBrightnessAdjustment":F
    .restart local v20    # "autoBrightnessEnabled":Z
    :goto_25
    sget-boolean v14, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v14, :cond_65

    .line 1745
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initialRampSkip: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", hasBrightnessBuckets:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", wasOrWillBeInVr: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", isDisplayContentVisible: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", brightnessIsTemporary:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DisplayPowerController"

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_65
    const/4 v14, 0x3

    if-ne v9, v14, :cond_66

    iget v15, v1, Lcom/android/server/display/DisplayPowerController;->mPrevState:I

    const/4 v14, 0x1

    if-ne v15, v14, :cond_66

    .line 1750
    mul-int/lit8 v14, v2, 0xa

    const/4 v15, 0x3

    div-int/2addr v14, v15

    invoke-direct {v1, v2, v14}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto :goto_26

    .line 1752
    :cond_66
    const/4 v14, 0x2

    if-ne v9, v14, :cond_67

    .line 1753
    iget v15, v1, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    and-int/2addr v15, v14

    if-lez v15, :cond_67

    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    if-lez v14, :cond_67

    iget v14, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    if-ge v2, v14, :cond_67

    .line 1754
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    .line 1755
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#2 BL:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DisplayPowerController"

    invoke-static {v15, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_67
    const/4 v14, 0x0

    invoke-direct {v1, v2, v14}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 1791
    :goto_26
    iput v9, v1, Lcom/android/server/display/DisplayPowerController;->mPrevState:I

    .line 1794
    if-nez v13, :cond_6a

    .line 1795
    if-eqz v0, :cond_69

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v14, :cond_68

    .line 1796
    invoke-virtual {v14}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result v14

    if-nez v14, :cond_69

    .line 1799
    :cond_68
    const/4 v0, 0x0

    .line 1801
    :cond_69
    invoke-direct {v1, v2, v0, v11}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessChanged(IZZ)V

    move v4, v0

    goto :goto_27

    .line 1794
    :cond_6a
    move v4, v0

    goto :goto_27

    .line 1707
    .end local v4    # "wasOrWillBeInVr":Z
    .end local v8    # "initialRampSkip":Z
    .end local v16    # "userSetBrightnessChanged":Z
    .end local v17    # "autoBrightnessAdjustmentChanged":Z
    .end local v18    # "oldState":I
    .end local v19    # "autoBrightnessAdjustment":F
    .end local v20    # "autoBrightnessEnabled":Z
    .local v10, "userSetBrightnessChanged":Z
    .local v12, "oldState":I
    .local v13, "autoBrightnessAdjustmentChanged":Z
    .restart local v14    # "autoBrightnessAdjustment":F
    .restart local v15    # "autoBrightnessEnabled":Z
    :cond_6b
    move/from16 v16, v10

    move/from16 v18, v12

    move/from16 v17, v13

    move/from16 v19, v14

    move/from16 v20, v15

    .end local v10    # "userSetBrightnessChanged":Z
    .end local v12    # "oldState":I
    .end local v13    # "autoBrightnessAdjustmentChanged":Z
    .end local v14    # "autoBrightnessAdjustment":F
    .end local v15    # "autoBrightnessEnabled":Z
    .restart local v16    # "userSetBrightnessChanged":Z
    .restart local v17    # "autoBrightnessAdjustmentChanged":Z
    .restart local v18    # "oldState":I
    .restart local v19    # "autoBrightnessAdjustment":F
    .restart local v20    # "autoBrightnessEnabled":Z
    move v4, v0

    .line 1807
    .end local v0    # "userInitiatedChange":Z
    .local v4, "userInitiatedChange":Z
    :goto_27
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    if-eqz v3, :cond_6d

    .line 1808
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Brightness ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] reason changing to: \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 1809
    invoke-virtual {v8, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\', previous reason: \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\'."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1808
    const-string v8, "DisplayPowerController"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1815
    :cond_6d
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_6f

    .line 1816
    const/4 v0, 0x2

    if-ne v9, v0, :cond_6e

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1817
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1818
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    goto :goto_28

    .line 1820
    :cond_6e
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1828
    :cond_6f
    :goto_28
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_71

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_70

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1830
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_71

    :cond_70
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1831
    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v0, 0x1

    goto :goto_29

    :cond_71
    const/4 v0, 0x0

    :goto_29
    move v8, v0

    .line 1832
    .local v8, "ready":Z
    if-eqz v8, :cond_72

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 1833
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_72

    const/4 v0, 0x1

    goto :goto_2a

    :cond_72
    const/4 v0, 0x0

    :goto_2a
    move v10, v0

    .line 1836
    .local v10, "finished":Z
    if-eqz v8, :cond_73

    const/4 v0, 0x1

    if-eq v9, v0, :cond_73

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v12, v0, :cond_73

    .line 1838
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 1839
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn()V

    .line 1843
    :cond_73
    if-nez v10, :cond_75

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v0, :cond_75

    .line 1844
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_74

    .line 1845
    const-string v0, "DisplayPowerController"

    const-string v12, "Unfinished business..."

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_74
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1848
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1852
    :cond_75
    if-eqz v8, :cond_78

    if-eqz v6, :cond_78

    .line 1854
    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1855
    :try_start_2
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v0, :cond_76

    .line 1856
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1858
    sget-boolean v13, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v13, :cond_77

    .line 1859
    const-string v13, "DisplayPowerController"

    const-string v14, "Display ready!"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1855
    :cond_76
    const/4 v0, 0x1

    .line 1862
    :cond_77
    :goto_2b
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1863
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_2c

    .line 1862
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1852
    :cond_78
    const/4 v0, 0x1

    .line 1867
    :goto_2c
    if-eqz v10, :cond_7a

    iget-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v12, :cond_7a

    .line 1868
    sget-boolean v12, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v12, :cond_79

    .line 1869
    const-string v12, "DisplayPowerController"

    const-string v13, "Finished business..."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_79
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1872
    iget-object v13, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v13}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto :goto_2d

    .line 1867
    :cond_7a
    const/4 v12, 0x0

    .line 1876
    :goto_2d
    const/4 v13, 0x2

    if-eq v9, v13, :cond_7b

    goto :goto_2e

    :cond_7b
    move v0, v12

    :goto_2e
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 1878
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v5, v0, :cond_7c

    .line 1879
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    .line 1881
    :cond_7c
    return-void

    .line 1225
    .end local v4    # "userInitiatedChange":Z
    .end local v5    # "previousPolicy":I
    .end local v6    # "mustNotify":Z
    .end local v7    # "slowChange":Z
    .end local v8    # "ready":Z
    .end local v9    # "state":I
    .end local v10    # "finished":Z
    .end local v11    # "hadUserBrightnessPoint":Z
    .end local v16    # "userSetBrightnessChanged":Z
    .end local v17    # "autoBrightnessAdjustmentChanged":Z
    .end local v18    # "oldState":I
    .end local v19    # "autoBrightnessAdjustment":F
    .end local v20    # "autoBrightnessEnabled":Z
    .end local v25    # "autoBrightnessEnabledInDoze":Z
    .end local v26    # "mustInitialize":Z
    .end local v28    # "performScreenOffTransition":Z
    .local v2, "mustInitialize":Z
    :catchall_1
    move-exception v0

    move/from16 v26, v2

    .end local v2    # "mustInitialize":Z
    .restart local v26    # "mustInitialize":Z
    goto :goto_2f

    .end local v26    # "mustInitialize":Z
    .restart local v2    # "mustInitialize":Z
    :catchall_2
    move-exception v0

    :goto_2f
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private updateUserSetScreenBrightness()Z
    .locals 4

    .line 2693
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2694
    return v1

    .line 2696
    :cond_0
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    const/4 v3, -0x1

    if-ne v2, v0, :cond_1

    .line 2697
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 2698
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 2699
    return v1

    .line 2701
    :cond_1
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    .line 2702
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:I

    .line 2703
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:I

    .line 2704
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    .line 2705
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public alsMotionFlush()V
    .locals 2

    .line 3017
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3022
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsFlushPending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsAngleChangeCauseDarken:Z

    if-nez v0, :cond_1

    .line 3024
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAlsMotion:Lcom/android/server/display/AlsMotion;

    if-eqz v0, :cond_1

    .line 3027
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsFlushPending:Z

    .line 3028
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AlsMotion;->flush(Landroid/content/Context;)V

    .line 3030
    :cond_1
    return-void

    .line 3018
    :cond_2
    :goto_0
    return-void
.end method

.method public animateHBMBrightness(IZ)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "persist"    # Z

    .line 1892
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:I

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->calculateRampRate(II)I

    move-result v0

    .line 1896
    .local v0, "ramprate":I
    if-eqz p2, :cond_0

    .line 1897
    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(I)V

    .line 1899
    :cond_0
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating HBM brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPowerController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v1, v2, p1, v0}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->animateHBMScreenBrightness(Lcom/android/server/display/RampAnimator;Lcom/android/internal/app/IBatteryStats;II)V

    .line 1908
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->notifyLevelChangeToBrightnessHelper(I)V

    .line 1910
    return-void
.end method

.method public animateScreenBrightness(DIIII)V
    .locals 21
    .param p1, "percent"    # D
    .param p3, "duration"    # I
    .param p4, "minBrightness"    # I
    .param p5, "maxBrightness"    # I
    .param p6, "adjustBrightnessInterval"    # I

    .line 3496
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateScreenBrightness: percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adjustBrightnessInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBacklightController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    const-wide/16 v0, 0x0

    cmpg-double v0, v8, v0

    if-ltz v0, :cond_6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v8, v0

    if-gtz v0, :cond_6

    if-lez v10, :cond_6

    if-gt v11, v13, :cond_0

    goto/16 :goto_3

    .line 3503
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()I

    move-result v14

    .line 3504
    .local v14, "brightness":I
    const/16 v15, 0x1e

    .line 3505
    .local v15, "rate":I
    iget-object v5, v7, Lcom/android/server/display/DisplayPowerController;->mOpBacklightLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3506
    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput v0, v7, Lcom/android/server/display/DisplayPowerController;->mIsOpBacklight:I

    .line 3507
    iput v11, v7, Lcom/android/server/display/DisplayPowerController;->mOpMinBrightness:I

    .line 3508
    iput v12, v7, Lcom/android/server/display/DisplayPowerController;->mOpMaxBrightness:I

    .line 3509
    iput v13, v7, Lcom/android/server/display/DisplayPowerController;->mAdjustBrightnessInterval:I

    .line 3510
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 3511
    .local v0, "p":D
    iget-wide v2, v7, Lcom/android/server/display/DisplayPowerController;->mPercent:D

    const-wide v16, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v2, v2, v16

    if-gez v2, :cond_2

    .line 3512
    iget-wide v2, v7, Lcom/android/server/display/DisplayPowerController;->mPercent:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    move-wide/from16 v16, v0

    goto :goto_1

    .line 3513
    :cond_2
    cmpg-double v2, v8, v16

    if-gez v2, :cond_3

    .line 3514
    move-wide/from16 v0, p1

    move-wide/from16 v16, v0

    goto :goto_1

    .line 3513
    :cond_3
    move-wide/from16 v16, v0

    .line 3515
    .end local v0    # "p":D
    .local v16, "p":D
    :goto_1
    int-to-double v0, v10

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v18, v0, v2

    move-object/from16 v1, p0

    move-wide/from16 v2, v16

    move v4, v14

    move-object/from16 v20, v5

    move-wide/from16 v5, v18

    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayPowerController;->caculateBrightnessRateLocked(DID)I

    move-result v0

    move v15, v0

    .line 3516
    iput-wide v8, v7, Lcom/android/server/display/DisplayPowerController;->mPercent:D

    .line 3517
    .end local v16    # "p":D
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3518
    iget v0, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    const/16 v1, 0xfff

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_5

    :cond_4
    if-le v14, v11, :cond_5

    if-ge v14, v12, :cond_5

    .line 3522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/server/display/DisplayPowerController;->mIsOpBacklight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " --> :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    if-gez v0, :cond_5

    iget v0, v7, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I

    if-gez v0, :cond_5

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-nez v0, :cond_5

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v0, :cond_5

    .line 3528
    invoke-direct {v7, v14, v15}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 3531
    :cond_5
    return-void

    .line 3517
    :catchall_0
    move-exception v0

    move-object/from16 v20, v5

    :goto_2
    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 3501
    .end local v14    # "brightness":I
    .end local v15    # "rate":I
    :cond_6
    :goto_3
    return-void
.end method

.method public callback(ZFFJ)V
    .locals 4
    .param p1, "isWalking"    # Z
    .param p2, "angleDegree"    # F
    .param p3, "maxAngleDegree"    # F
    .param p4, "timestamp"    # J

    .line 873
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 877
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWalking:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " angleDegree:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " maxAngleDegree:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " timestamp:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    .line 879
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    goto :goto_0

    .line 880
    :cond_2
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    if-ne v0, v3, :cond_3

    if-nez p1, :cond_3

    .line 881
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    .line 889
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsFlushPending:Z

    if-eqz v0, :cond_5

    .line 890
    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_4

    .line 891
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mAngleChangingTime:J

    .line 893
    :cond_4
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mIsFlushPending:Z

    .line 895
    :cond_5
    return-void

    .line 874
    :cond_6
    :goto_1
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    .line 875
    return-void
.end method

.method public debug(II)V
    .locals 0
    .param p1, "diffSteps"    # I
    .param p2, "totalSteps"    # I

    .line 898
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2813
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2814
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2815
    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2821
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2822
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2824
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2825
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTempScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateFast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateSlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x7d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBoostBrightnessNormal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBoostBrightnessNormal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBoostBrightnessHDR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBoostBrightnessHDR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHDRMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mHDRMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityDelayForLightSensor ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityDelayForLightSensor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableAutoBrightnessDuringCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mEnableAutoBrightnessDuringCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-boolean v1, v1, Lcom/android/server/display/RampAnimator;->mEnableDelay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseCurveGenAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseCurveGenAlgo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessStaticsLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getBrightnessStaticsLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RampAnimator;->dump(Ljava/io/PrintWriter;)V

    .line 2874
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$10;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 2880
    return-void

    .line 2822
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
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

    .line 946
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
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

    .line 936
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_0

    .line 1016
    const/4 v0, 0x0

    return-object v0

    .line 1018
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getStageEnable()I
    .locals 2

    .line 3010
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_0

    .line 3011
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    return v0

    .line 3013
    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .line 917
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

    .line 940
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    .line 941
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    .line 942
    return-void
.end method

.method public overrideScreenBrightnessRangeMinimum(I)V
    .locals 4
    .param p1, "minimum"    # I

    .line 3330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    .line 3331
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    .line 3334
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 3335
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3336
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3337
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 3338
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3339
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    .line 3340
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mRecoverFaceLight:Z

    .line 3341
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    goto :goto_0

    .line 3338
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3344
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTempScreenBrightnessRangeMinimum:I

    .line 3345
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 1

    .line 953
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    .line 954
    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 5
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .line 972
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 973
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

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 978
    const/4 v1, 0x0

    .line 980
    .local v1, "changed":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v3, :cond_1

    .line 982
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 983
    const/4 v1, 0x1

    .line 986
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 987
    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 988
    const/4 v1, 0x1

    goto :goto_0

    .line 989
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 990
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 991
    const/4 v1, 0x1

    goto :goto_0

    .line 994
    :cond_3
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v3, :cond_4

    .line 995
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 996
    const/4 v1, 0x1

    .line 997
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mForceUpdateBrightness:Z

    .line 1001
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 1002
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1005
    :cond_5
    if-eqz v1, :cond_6

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_6

    .line 1006
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1007
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1010
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return v2

    .line 1011
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

    .line 3361
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_0

    .line 3362
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setAmbientColorTemperatureOverride(F)Z

    .line 3366
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3368
    :cond_0
    return-void
.end method

.method setAutoBrightnessLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3317
    sput-boolean p1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 3319
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    .line 3320
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    .line 3322
    :cond_0
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 2
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1914
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1915
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1916
    return-void
.end method

.method public setDimmingSpeedInternal(I)V
    .locals 4
    .param p1, "frames"    # I

    .line 1163
    const-string v0, "DisplayPowerController"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOneplusDisplayService:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v2, 0x20

    invoke-interface {v1, v2, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDimmingSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    goto :goto_0

    .line 1165
    :catch_0
    move-exception v1

    .line 1166
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set dimming speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method setDisplayWhiteBalanceLoggingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 3354
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_0

    .line 3355
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setLoggingEnabled(Z)Z

    .line 3356
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setLoggingEnabled(Z)Z

    .line 3358
    :cond_0
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 4
    .param p1, "adjustment"    # F

    .line 1932
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 1933
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 1932
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1934
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1935
    return-void
.end method

.method public setTemporaryBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .line 1919
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mStageEnable:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsWalking:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    if-lez v0, :cond_0

    if-ge p1, v0, :cond_0

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLimit:I

    .line 1926
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1928
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1929
    return-void
.end method

.method public setUseProximityForceSuspend(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 923
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    if-nez v0, :cond_0

    .line 924
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->useProximityForceSuspend:Z

    .line 926
    :cond_0
    return-void
.end method

.method public updateBrightness()V
    .locals 0

    .line 1885
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1886
    return-void
.end method

.method public updateWhiteBalance()V
    .locals 0

    .line 3350
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3351
    return-void
.end method
