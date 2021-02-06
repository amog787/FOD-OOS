.class Lcom/android/server/display/OpBrightnessReasonAndRate;
.super Ljava/lang/Object;
.source "OpBrightnessReasonAndRate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;,
        Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;
    }
.end annotation


# static fields
.field static final ADJUSTMENT_AUTO:I = 0x2

.field static final ADJUSTMENT_AUTO_TEMP:I = 0x1

.field private static final DEBUG:Z = true

.field private static HZ:I = 0x0

.field private static final INVALID_DELTA:F = 3.0f

.field static final MODIFIER_DIMMED:I = 0x1

.field static final MODIFIER_LOW_POWER:I = 0x2

.field static final MODIFIER_MASK:I = 0x3

.field private static final MSG_UNBLOCK_HBM:I = 0x1

.field static final REASON_AUTOMATIC:I = 0x4

.field static final REASON_AUTOMATIC_ONING:I = 0xa

.field static final REASON_BOOST:I = 0x9

.field static final REASON_DOZE:I = 0x2

.field static final REASON_DOZE_DEFAULT:I = 0x3

.field static final REASON_MANUAL:I = 0x1

.field static final REASON_OVERRIDE:I = 0x7

.field static final REASON_SCREEN_OFF:I = 0x5

.field static final REASON_TEMPORARY:I = 0x8

.field static final REASON_UNKNOWN:I = 0x0

.field static final REASON_VR:I = 0x6

.field private static final STATUS_3RD_APP:I = 0x14

.field private static final STATUS_AUTOMATIC_OFF:I = 0x32

.field private static final STATUS_AUTOMATIC_ON:I = 0x2d

.field private static final STATUS_CAMERA_OFF:I = 0x3c

.field private static final STATUS_CAMERA_ON:I = 0x37

.field private static final STATUS_DIM_OFF:I = 0x1e

.field private static final STATUS_DIM_ON:I = 0x19

.field private static final STATUS_LOWPOWER_OFF:I = 0x28

.field private static final STATUS_LOWPOWER_ON:I = 0x23

.field private static final STATUS_OVERRIDE_OFF:I = 0x46

.field private static final STATUS_OVERRIDE_ON:I = 0x41

.field private static final STATUS_SCREEN_OFF:I = 0x0

.field private static final STATUS_SETTING_AUTOMATIC:I = 0xa

.field private static final STATUS_SETTING_AUTOMATIC_ADJ:I = 0xc

.field private static final STATUS_SETTING_AUTOMATIC_TEMP:I = 0xb

.field private static final STATUS_SETTING_MANUAL:I = 0x5

.field private static final STATUS_SETTING_SYSUI:I = 0xf

.field private static final STATUS_TEMPORARY:I = 0x4b

.field private static final TAG:Ljava/lang/String; = "RampAnimator"

.field private static mAutoBrightnessEnabled:Z

.field private static mAutoRate:I

.field private static mAutoStep:I

.field public static mBoostBrightnessNormal:I

.field private static mBrightnessAdjustmentFlags:I

.field private static mCallingUid:I

.field public static mCameraInFront:Z

.field public static mCameraRequestBoost:Z

.field private static mContext:Landroid/content/Context;

.field private static mCount:I

.field public static mCurrentValue:F

.field private static mDarkModeInitiated:Z

.field private static mDebug:Z

.field private static mDelta:F

.field private static mDimDebug:I

.field private static final mDimR:[Ljava/lang/String;

.field private static mDimRate:[F

.field private static mDimRate2:[F

.field private static mDimStartTimeMs:J

.field private static mFodMode:I

.field private static mFrontPackageName:Ljava/lang/String;

.field private static mGeneration:J

.field private static mIsAutoBrightnessStatusChange:Z

.field private static mIsBoostBrightnessNormalChange:I

.field private static mIsPowerRequestLowPowerModeChange:Z

.field private static mIsSystemUIOrSetting:Z

.field private static mIsowerRequestScreenBrightnessOverrideChange:Z

.field private static mPolicyChange:Z

.field private static mPowerRequestLowPowerMode:Z

.field private static mPowerRequestPolicy:I

.field private static mPowerRequestScreenBrightnessOverride:F

.field private static mPreAutoBrightnessEnabled:Z

.field private static mPreBoostBrightnessNormal:I

.field private static mPrePowerRequestLowPowerMode:Z

.field private static mPrePowerRequestPolicy:I

.field private static mPrePowerRequestScreenBrightnessOverride:F

.field private static mPreStatus:I

.field private static mRateVariable:Z

.field private static mReason:I

.field private static mRunningGeneration:J

.field private static mStage1:F

.field private static mStatus:I

.field private static mStepCount:I

.field private static mTargetValue:F

.field static mTargetValueReason:I

.field private static mTime:F

.field private static mbke:F

.field private static mfe:F


# instance fields
.field private mBlockHbm:Z

.field private mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

.field private mCallbacks:Lcom/android/server/display/DisplayPowerController;

.field private mHandler:Landroid/os/Handler;

.field private mScreenState:I

.field private final mSettingsObserver:Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    .line 43
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    .line 44
    const/4 v1, -0x1

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    .line 45
    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestPolicy:I

    .line 46
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPolicyChange:Z

    .line 48
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestLowPowerMode:Z

    .line 49
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestLowPowerMode:Z

    .line 50
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsPowerRequestLowPowerModeChange:Z

    .line 52
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoBrightnessEnabled:Z

    .line 53
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreAutoBrightnessEnabled:Z

    .line 54
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsAutoBrightnessStatusChange:Z

    .line 56
    const/4 v2, 0x0

    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    .line 57
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestScreenBrightnessOverride:F

    .line 58
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsowerRequestScreenBrightnessOverrideChange:Z

    .line 59
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    .line 60
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    .line 62
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessNormal:I

    .line 63
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCameraInFront:Z

    .line 64
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCameraRequestBoost:Z

    .line 65
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreBoostBrightnessNormal:I

    .line 66
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsBoostBrightnessNormalChange:I

    .line 67
    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 68
    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 92
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessAdjustmentFlags:I

    .line 97
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCount:I

    .line 98
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStepCount:I

    .line 99
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallingUid:I

    .line 100
    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGeneration:J

    .line 101
    sput-wide v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mRunningGeneration:J

    .line 103
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    .line 104
    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    .line 105
    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    .line 106
    const/4 v1, 0x1

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    .line 107
    const/16 v1, 0x50

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoRate:I

    .line 108
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mRateVariable:Z

    .line 109
    const/16 v1, 0x3c

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->HZ:I

    .line 111
    sput-wide v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimStartTimeMs:J

    .line 114
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStage1:F

    .line 115
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mbke:F

    .line 116
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mfe:F

    .line 117
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTime:F

    .line 120
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFodMode:I

    .line 121
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    .line 123
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDarkModeInitiated:Z

    .line 124
    const/16 v0, 0xb

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimRate:[F

    .line 138
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimRate2:[F

    .line 152
    const-string v1, "dimR0"

    const-string v2, "dimR1"

    const-string v3, "dimR2"

    const-string v4, "dimR3"

    const-string v5, "dimR4"

    const-string v6, "dimR5"

    const-string v7, "dimR6"

    const-string v8, "dimR7"

    const-string v9, "dimR8"

    const-string v10, "dimR9"

    const-string v11, "dimR10"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimR:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x3c700780
        0x3cf00780
        0x3d3405a0
        0x3d700780
        0x3d9604b0
        0x3db405a0
        0x3df00780
        0x3e430618
        0x3e610708
        0x3e700780
        0x3e700780
    .end array-data

    :array_1
    .array-data 4
        0x3c700780
        0x3c700780
        0x3cb405a0
        0x3d3405a0
        0x3d3405a0
        0x3d700780
        0x3d8c0460
        0x3db405a0
        0x3df00780
        0x3df00780
        0x3df00780
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "displayPowerController"    # Lcom/android/server/display/DisplayPowerController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mScreenState:I

    .line 122
    iput-boolean v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    .line 172
    sput-object p2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    .line 173
    iput-object p1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallbacks:Lcom/android/server/display/DisplayPowerController;

    .line 174
    iput-object p3, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mHandler:Landroid/os/Handler;

    .line 175
    new-instance v0, Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;-><init>(Lcom/android/server/display/OpBrightnessReasonAndRate;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mSettingsObserver:Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;

    .line 176
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    const-string v1, "fod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mSettingsObserver:Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;

    .line 176
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 179
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 180
    const-string v1, "dim_debug"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mSettingsObserver:Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;

    .line 179
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 182
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
    const-string v1, "boost_brightness_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mSettingsObserver:Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;

    .line 182
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 185
    new-instance v0, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    iget-object v1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;-><init>(Lcom/android/server/display/OpBrightnessReasonAndRate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    .line 186
    return-void
.end method

.method public static EqualsWithMargin(FF)Z
    .locals 3
    .param p0, "A"    # F
    .param p1, "B"    # F

    .line 167
    const v0, 0x358637bd    # 1.0E-6f

    .line 168
    .local v0, "MARGIN":F
    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x358637bd    # 1.0E-6f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static IsSetValueEnable()Z
    .locals 4

    .line 912
    const/4 v0, 0x1

    .line 913
    .local v0, "ret":Z
    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 914
    return v0

    .line 915
    :cond_0
    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStepCount:I

    add-int/2addr v3, v2

    sput v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStepCount:I

    .line 916
    rem-int/2addr v3, v1

    if-nez v3, :cond_1

    .line 917
    const/4 v0, 0x1

    goto :goto_0

    .line 919
    :cond_1
    const/4 v0, 0x0

    .line 921
    :goto_0
    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStepCount:I

    const/16 v2, 0x2710

    if-le v1, v2, :cond_2

    .line 922
    const/4 v1, 0x0

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStepCount:I

    .line 923
    :cond_2
    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 21
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFodMode:I

    return p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .line 21
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 21
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 21
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 21
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoRate:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 21
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoRate:I

    return p0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 21
    sput-boolean p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mRateVariable:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/display/OpBrightnessReasonAndRate;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OpBrightnessReasonAndRate;
    .param p1, "x1"    # Z

    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->handleSettingsChange(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/display/OpBrightnessReasonAndRate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OpBrightnessReasonAndRate;
    .param p1, "x1"    # Z

    .line 21
    iput-boolean p1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/display/OpBrightnessReasonAndRate;)Lcom/android/server/display/DisplayPowerController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpBrightnessReasonAndRate;

    .line 21
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallbacks:Lcom/android/server/display/DisplayPowerController;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 21
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 21
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 21
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    return p0
.end method

.method static synthetic access$400()F
    .locals 1

    .line 21
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStage1:F

    return v0
.end method

.method static synthetic access$402(F)F
    .locals 0
    .param p0, "x0"    # F

    .line 21
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStage1:F

    return p0
.end method

.method static synthetic access$500()F
    .locals 1

    .line 21
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mbke:F

    return v0
.end method

.method static synthetic access$502(F)F
    .locals 0
    .param p0, "x0"    # F

    .line 21
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mbke:F

    return p0
.end method

.method static synthetic access$600()F
    .locals 1

    .line 21
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mfe:F

    return v0
.end method

.method static synthetic access$602(F)F
    .locals 0
    .param p0, "x0"    # F

    .line 21
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mfe:F

    return p0
.end method

.method static synthetic access$700()F
    .locals 1

    .line 21
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTime:F

    return v0
.end method

.method static synthetic access$702(F)F
    .locals 0
    .param p0, "x0"    # F

    .line 21
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTime:F

    return p0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[F
    .locals 1

    .line 21
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimRate:[F

    return-object v0
.end method

.method public static enableDebug(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 909
    sput-boolean p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    .line 910
    return-void
.end method

.method public static frontPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 926
    sput-object p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFrontPackageName:Ljava/lang/String;

    .line 927
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_0

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFrontPackageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFrontPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RampAnimator"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    return-void
.end method

.method static getRate(F)F
    .locals 11
    .param p0, "rate"    # F

    .line 475
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    const/high16 v1, 0x447a0000    # 1000.0f

    const-string v2, "dim_rate:"

    const/4 v3, -0x2

    const-string v4, "dim_rate"

    const/4 v5, 0x0

    const-string v6, "RampAnimator"

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    .line 476
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 479
    .local v0, "ir":I
    if-lez v0, :cond_0

    .line 480
    int-to-float v3, v0

    div-float p0, v3, v1

    .line 481
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return p0

    .line 484
    .end local v0    # "ir":I
    :cond_1
    sput-boolean v5, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDarkModeInitiated:Z

    .line 486
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v7, 0x4b

    if-eq v0, v7, :cond_2

    const/16 v8, 0xc

    if-ne v0, v8, :cond_3

    :cond_2
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    if-eqz v0, :cond_3

    .line 489
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getRateByBrightness(F)F

    move-result p0

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADJ RATE:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_3
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const-string v8, " rate:"

    if-ne v0, v7, :cond_4

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PKG:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFrontPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->EqualsWithMargin(FF)Z

    move-result v0

    const/16 v7, 0x19

    if-eqz v0, :cond_5

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    if-eq v0, v7, :cond_5

    .line 496
    return p0

    .line 497
    :cond_5
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v9, 0x46

    if-eq v0, v9, :cond_e

    const/16 v9, 0x41

    if-ne v0, v9, :cond_6

    goto/16 :goto_3

    .line 500
    :cond_6
    if-ne v0, v7, :cond_9

    .line 502
    const/16 v0, 0x1770

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeServiceInjector;->pokeDynamicVsyncAnimation(I)V

    .line 503
    const-string/jumbo v0, "pokeDynamicVsyncAnimation 6000"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sput-wide v9, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimStartTimeMs:J

    .line 506
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v0, v7

    .line 508
    .end local p0    # "rate":F
    .local v0, "rate":F
    sget p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    const/4 v7, 0x4

    if-ne p0, v7, :cond_8

    .line 509
    sget-object p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 512
    .local p0, "ir":I
    if-lez p0, :cond_7

    .line 513
    int-to-float v3, p0

    div-float v0, v3, v1

    .line 514
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    goto :goto_0

    .line 508
    .end local p0    # "ir":I
    :cond_8
    move p0, v0

    .line 516
    .end local v0    # "rate":F
    .local p0, "rate":F
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIM ON RATE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mFodMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFodMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 517
    :cond_9
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_b

    .line 518
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    .line 519
    .end local p0    # "rate":F
    .restart local v0    # "rate":F
    const/high16 p0, 0x40400000    # 3.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_a

    .line 520
    const/high16 p0, 0x40400000    # 3.0f

    .end local v0    # "rate":F
    .restart local p0    # "rate":F
    goto :goto_1

    .line 519
    .end local p0    # "rate":F
    .restart local v0    # "rate":F
    :cond_a
    move p0, v0

    .line 521
    .end local v0    # "rate":F
    .restart local p0    # "rate":F
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIM OFF RATE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 522
    :cond_b
    const/16 v1, 0x23

    if-eq v0, v1, :cond_d

    const/16 v1, 0x28

    if-ne v0, v1, :cond_c

    goto :goto_2

    .line 526
    :cond_c
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_f

    .line 527
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getRateByBrightness(F)F

    move-result p0

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REASON_AUTOMATIC_ONING:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 524
    :cond_d
    :goto_2
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float p0, v0, v1

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LP ON RATE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 498
    :cond_e
    :goto_3
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getRateByBrightness(F)F

    move-result p0

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OR OFF RATE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_f
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "G:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGeneration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " preS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mIsSystemUIOrSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return p0
.end method

.method static getRateByBrightness(F)F
    .locals 9
    .param p0, "brightness"    # F

    .line 446
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    .line 447
    .local v0, "curb":F
    sub-float v1, p0, v0

    .line 448
    .local v1, "delta":F
    const/4 v2, 0x0

    .line 449
    .local v2, "rate":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v7, 0x3e000000    # 0.125f

    const/high16 v8, 0x40000000    # 2.0f

    if-ltz v3, :cond_3

    .line 450
    cmpg-float v3, v1, v7

    if-gez v3, :cond_0

    .line 451
    mul-float/2addr v8, v1

    .end local v2    # "rate":F
    .local v8, "rate":F
    goto :goto_0

    .line 452
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_0
    cmpg-float v3, v1, v6

    if-gez v3, :cond_1

    .line 453
    move v8, v1

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 454
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_1
    cmpg-float v3, v1, v5

    if-gez v3, :cond_2

    .line 455
    div-float v3, v1, v4

    mul-float/2addr v8, v3

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 457
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_2
    div-float v8, v1, v8

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 459
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_3
    neg-float v1, v1

    .line 460
    cmpg-float v3, v1, v7

    if-gez v3, :cond_4

    .line 461
    mul-float/2addr v8, v1

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 462
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_4
    cmpg-float v3, v1, v6

    if-gez v3, :cond_5

    .line 463
    move v8, v1

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 464
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_5
    cmpg-float v3, v1, v5

    if-gez v3, :cond_6

    .line 465
    div-float v3, v1, v4

    mul-float/2addr v8, v3

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 467
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_6
    div-float v8, v1, v8

    .line 469
    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    :goto_0
    const v2, 0x3c700780

    cmpg-float v2, v8, v2

    if-gez v2, :cond_7

    .line 470
    const v8, 0x3c700780

    .line 471
    :cond_7
    return v8
.end method

.method static getRateByDelta(F)F
    .locals 8
    .param p0, "delta"    # F

    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "rate":F
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40200000    # 2.5f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3e800000    # 0.25f

    const/high16 v6, 0x3e000000    # 0.125f

    const/high16 v7, 0x40000000    # 2.0f

    if-ltz v1, :cond_3

    .line 544
    cmpg-float v1, p0, v6

    if-gez v1, :cond_0

    .line 545
    mul-float/2addr v7, p0

    .end local v0    # "rate":F
    .local v7, "rate":F
    goto :goto_0

    .line 546
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_0
    cmpg-float v1, p0, v5

    if-gez v1, :cond_1

    .line 547
    move v7, p0

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 548
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_1
    cmpg-float v1, p0, v4

    if-gez v1, :cond_2

    .line 549
    div-float v1, p0, v2

    mul-float/2addr v7, v1

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 551
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_2
    div-float v7, p0, v3

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 553
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_3
    neg-float p0, p0

    .line 554
    cmpg-float v1, p0, v6

    if-gez v1, :cond_4

    .line 555
    mul-float/2addr v7, p0

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 556
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_4
    cmpg-float v1, p0, v5

    if-gez v1, :cond_5

    .line 557
    move v7, p0

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 558
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_5
    cmpg-float v1, p0, v4

    if-gez v1, :cond_6

    .line 559
    div-float v1, p0, v2

    mul-float/2addr v7, v1

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 561
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_6
    div-float v7, p0, v3

    .line 563
    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    :goto_0
    const v0, 0x3c700780

    cmpg-float v0, v7, v0

    if-gez v0, :cond_7

    .line 564
    const v7, 0x3c700780

    .line 565
    :cond_7
    return v7
.end method

.method static getRunningRate(FFFI)F
    .locals 38
    .param p0, "targ"    # F
    .param p1, "cur"    # F
    .param p2, "rate"    # F
    .param p3, "hz"    # I

    .line 569
    move/from16 v0, p0

    move/from16 v1, p3

    const-wide/16 v2, 0x0

    .line 570
    .local v2, "deltaTime":J
    const/4 v4, 0x1

    sput v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    .line 571
    const/16 v5, 0x37

    if-le v1, v5, :cond_0

    const/16 v5, 0x7a

    if-ge v1, v5, :cond_0

    .line 572
    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->HZ:I

    .line 574
    :cond_0
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    .line 575
    sput p1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    .line 576
    move/from16 v5, p2

    .line 577
    .local v5, "ret":F
    sub-float v6, v0, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 578
    .local v6, "runningTimeDelta":F
    sget v7, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 579
    .local v7, "deltaAbs":F
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    const-string v9, " mCurrentValue:"

    const-string v10, " mTargetValue:"

    const-string v11, " preS:"

    const-string v12, " S:"

    const-string v13, " runningTimeDelta:"

    const-string v14, " mDelta:"

    const-string v15, " level:"

    const-string v1, "getRunningRate:"

    move-wide/from16 v16, v2

    .end local v2    # "deltaTime":J
    .local v16, "deltaTime":J
    const-string v2, "RampAnimator"

    if-ne v8, v4, :cond_1

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x46000000    # 8192.0f

    mul-float v15, v5, v1

    float-to-int v1, v15

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return v5

    .line 588
    :cond_1
    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/4 v8, 0x0

    const/16 v4, 0xa

    const-wide v18, 0x3fc999999999999aL    # 0.2

    const v20, 0x3e1604b0

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    const-wide v23, 0x3fd3333333333333L    # 0.3

    const/high16 v25, 0x40000000    # 2.0f

    const/high16 v26, 0x40400000    # 3.0f

    const v27, 0x3dcccccd    # 0.1f

    const v28, 0x45fff800    # 8191.0f

    if-ne v3, v4, :cond_11

    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    if-ne v3, v4, :cond_11

    .line 589
    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_7

    .line 590
    mul-float v26, v26, v7

    const/high16 v3, 0x40800000    # 4.0f

    div-float v26, v26, v3

    cmpl-float v3, v6, v26

    if-lez v3, :cond_2

    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v3, v3

    cmpl-double v3, v3, v21

    if-lez v3, :cond_2

    .line 591
    const/high16 v3, 0x40c00000    # 6.0f

    div-float v3, v7, v3

    .end local v5    # "ret":F
    .local v3, "ret":F
    goto :goto_0

    .line 603
    .end local v3    # "ret":F
    .restart local v5    # "ret":F
    :cond_2
    const/high16 v3, 0x41000000    # 8.0f

    div-float v3, v7, v3

    div-float v4, v6, v7

    mul-float/2addr v3, v4

    .line 605
    .end local v5    # "ret":F
    .restart local v3    # "ret":F
    :goto_0
    const v4, 0x3df5c28f    # 0.12f

    cmpg-float v4, v6, v4

    if-gez v4, :cond_3

    const v4, 0x3bf00780

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 606
    const v3, 0x3bf00780

    .line 609
    :cond_3
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    move-object/from16 v29, v9

    float-to-double v8, v4

    const-wide v21, 0x3fd851eb851eb852L    # 0.38

    cmpg-double v5, v8, v21

    if-gez v5, :cond_4

    float-to-double v4, v4

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    cmpl-double v4, v4, v8

    if-lez v4, :cond_4

    .line 610
    const v4, 0x3c700780

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    .line 611
    const v3, 0x3c700780

    .line 618
    :cond_4
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoRate:I

    int-to-float v4, v4

    .line 619
    .local v4, "r":F
    sget v5, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    const v8, 0x3ea5a52d

    cmpg-float v5, v5, v8

    if-gez v5, :cond_5

    .line 620
    const/4 v5, 0x3

    sput v5, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    .line 621
    div-float v3, v4, v28

    .line 623
    :cond_5
    div-float v5, v4, v28

    cmpg-float v5, v3, v5

    if-gez v5, :cond_6

    .line 624
    div-float v3, v4, v28

    .line 625
    .end local v4    # "r":F
    :cond_6
    move v5, v3

    goto :goto_2

    .line 626
    .end local v3    # "ret":F
    .restart local v5    # "ret":F
    :cond_7
    move-object/from16 v29, v9

    const v3, 0x3e99999a    # 0.3f

    cmpl-float v3, v7, v3

    if-lez v3, :cond_9

    .line 627
    mul-float v3, v7, v25

    .line 628
    .end local v5    # "ret":F
    .restart local v3    # "ret":F
    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v7

    cmpg-float v4, v6, v4

    if-gez v4, :cond_8

    .line 629
    move v3, v7

    .line 630
    :cond_8
    mul-float v4, v7, v27

    cmpg-float v4, v6, v4

    if-gez v4, :cond_d

    .line 631
    div-float v3, v7, v25

    goto :goto_1

    .line 632
    .end local v3    # "ret":F
    .restart local v5    # "ret":F
    :cond_9
    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v3, v7, v3

    if-lez v3, :cond_a

    .line 633
    const v3, 0x3fcccccd    # 1.6f

    mul-float/2addr v3, v7

    .end local v5    # "ret":F
    .restart local v3    # "ret":F
    goto :goto_1

    .line 634
    .end local v3    # "ret":F
    .restart local v5    # "ret":F
    :cond_a
    const v3, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v7, v3

    if-lez v3, :cond_b

    .line 635
    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v7

    .end local v5    # "ret":F
    .restart local v3    # "ret":F
    goto :goto_1

    .line 636
    .end local v3    # "ret":F
    .restart local v5    # "ret":F
    :cond_b
    const v3, 0x3e19999a    # 0.15f

    cmpl-float v3, v7, v3

    if-lez v3, :cond_c

    .line 637
    const/high16 v3, 0x3fc00000    # 1.5f

    div-float v3, v7, v3

    .end local v5    # "ret":F
    .restart local v3    # "ret":F
    goto :goto_1

    .line 639
    .end local v3    # "ret":F
    .restart local v5    # "ret":F
    :cond_c
    div-float v3, v7, v26

    .line 640
    .end local v5    # "ret":F
    .restart local v3    # "ret":F
    :cond_d
    :goto_1
    cmpg-float v4, v6, v27

    if-gez v4, :cond_f

    .line 641
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    cmpl-double v4, v4, v18

    if-lez v4, :cond_e

    .line 642
    const v3, 0x3cf00780

    move v5, v3

    goto :goto_2

    .line 644
    :cond_e
    const v3, 0x3c700780

    move v5, v3

    goto :goto_2

    .line 640
    :cond_f
    move v5, v3

    .line 647
    .end local v3    # "ret":F
    .restart local v5    # "ret":F
    :goto_2
    float-to-double v3, v0

    const-wide v8, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v3, v3, v8

    if-lez v3, :cond_10

    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    float-to-double v3, v3

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v3, v3, v8

    if-lez v3, :cond_10

    .line 648
    div-float v5, v7, v25

    move-object/from16 v30, v10

    move-wide/from16 v3, v16

    goto/16 :goto_9

    .line 783
    :cond_10
    move-object/from16 v30, v10

    move-wide/from16 v3, v16

    goto/16 :goto_9

    .line 588
    :cond_11
    move-object/from16 v29, v9

    .line 652
    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v4, 0x19

    if-ne v3, v4, :cond_2e

    .line 653
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget-wide v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimStartTimeMs:J

    sub-long/2addr v3, v8

    .line 654
    .end local v16    # "deltaTime":J
    .local v3, "deltaTime":J
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFodMode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2d

    .line 664
    const v8, 0x3f666666    # 0.9f

    .line 665
    .local v8, "stage1":F
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v16, v9, v8

    .line 666
    .local v16, "stage2":F
    const v17, 0x3eb33333    # 0.35f

    .line 667
    .local v17, "backend":F
    const v25, 0x3dcccccd    # 0.1f

    .line 668
    .local v25, "frontend":F
    const/high16 v26, 0x3f000000    # 0.5f

    .line 669
    .local v26, "time":F
    const v27, 0x3f59999a    # 0.85f

    cmpl-float v27, v7, v27

    if-lez v27, :cond_12

    .line 670
    const v8, 0x3f666666    # 0.9f

    .line 671
    const v17, 0x3eb33333    # 0.35f

    .line 672
    const v25, 0x3dcccccd    # 0.1f

    .line 673
    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v30, v10

    goto/16 :goto_3

    .line 674
    :cond_12
    const/high16 v27, 0x3f400000    # 0.75f

    cmpl-float v27, v7, v27

    if-lez v27, :cond_13

    .line 675
    const v8, 0x3f666666    # 0.9f

    .line 676
    const v17, 0x3eb33333    # 0.35f

    .line 677
    const v25, 0x3dcccccd    # 0.1f

    .line 678
    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v30, v10

    goto/16 :goto_3

    .line 679
    :cond_13
    const v27, 0x3f266666    # 0.65f

    cmpl-float v27, v7, v27

    if-lez v27, :cond_14

    .line 680
    const v8, 0x3f666666    # 0.9f

    .line 681
    const v17, 0x3eb33333    # 0.35f

    .line 682
    const v25, 0x3dcccccd    # 0.1f

    .line 683
    const v26, 0x3f99999a    # 1.2f

    move-object/from16 v30, v10

    goto :goto_3

    .line 684
    :cond_14
    const v27, 0x3f0ccccd    # 0.55f

    cmpl-float v27, v7, v27

    if-lez v27, :cond_15

    .line 685
    const v8, 0x3f666666    # 0.9f

    .line 686
    const v17, 0x3eb33333    # 0.35f

    .line 687
    const v25, 0x3dcccccd    # 0.1f

    .line 688
    const v26, 0x3f4ccccd    # 0.8f

    move-object/from16 v30, v10

    goto :goto_3

    .line 689
    :cond_15
    const v27, 0x3ee66666    # 0.45f

    cmpl-float v27, v7, v27

    if-lez v27, :cond_16

    .line 690
    const v8, 0x3f4ccccd    # 0.8f

    .line 691
    const v17, 0x3eb33333    # 0.35f

    .line 692
    const v25, 0x3dcccccd    # 0.1f

    .line 693
    const v26, 0x3f4ccccd    # 0.8f

    move-object/from16 v30, v10

    goto :goto_3

    .line 694
    :cond_16
    const v27, 0x3eb33333    # 0.35f

    cmpl-float v27, v7, v27

    if-lez v27, :cond_17

    .line 695
    const v8, 0x3f4ccccd    # 0.8f

    .line 696
    const v17, 0x3eb33333    # 0.35f

    .line 697
    const v25, 0x3dcccccd    # 0.1f

    .line 698
    const v26, 0x3f4ccccd    # 0.8f

    move-object/from16 v30, v10

    goto :goto_3

    .line 699
    :cond_17
    move-object/from16 v30, v10

    float-to-double v9, v7

    const-wide/high16 v31, 0x3fd0000000000000L    # 0.25

    cmpl-double v9, v9, v31

    if-lez v9, :cond_18

    .line 700
    const v8, 0x3f4ccccd    # 0.8f

    .line 701
    const v17, 0x3eb33333    # 0.35f

    .line 702
    const v25, 0x3dcccccd    # 0.1f

    .line 703
    const/high16 v26, 0x3f800000    # 1.0f

    goto :goto_3

    .line 705
    :cond_18
    const v8, 0x3f4ccccd    # 0.8f

    .line 706
    const v17, 0x3eb33333    # 0.35f

    .line 707
    const v25, 0x3dcccccd    # 0.1f

    .line 708
    const v26, 0x3f99999a    # 1.2f

    .line 710
    :goto_3
    sget v9, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_19

    .line 711
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStage1:F

    .line 712
    sget v17, Lcom/android/server/display/OpBrightnessReasonAndRate;->mbke:F

    .line 713
    sget v25, Lcom/android/server/display/OpBrightnessReasonAndRate;->mfe:F

    .line 714
    sget v26, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTime:F

    .line 716
    :cond_19
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v10, v9, v8

    .line 717
    .end local v16    # "stage2":F
    .local v10, "stage2":F
    mul-float v16, v10, v7

    cmpl-float v16, v6, v16

    if-lez v16, :cond_22

    .line 718
    mul-float v16, v8, v7

    .line 719
    .local v16, "deltaStage1":F
    mul-float v31, v16, v25

    .line 720
    .local v31, "deltaFrontEnd":F
    sub-float v32, v9, v25

    sub-float v32, v32, v17

    mul-float v32, v32, v16

    div-float v32, v32, v26

    .line 721
    .local v32, "platformRate":F
    sub-float v9, v7, v6

    const v33, 0x3cf00780

    div-float v33, v33, v32

    mul-float v33, v33, v31

    add-float v9, v9, v33

    .line 722
    .local v9, "deltaDelta":F
    div-float v33, v9, v31

    .line 723
    .local v33, "factor":F
    const/high16 v27, 0x3f800000    # 1.0f

    cmpl-float v34, v33, v27

    if-lez v34, :cond_1a

    const/high16 v34, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_1a
    move/from16 v34, v33

    :goto_4
    move/from16 v33, v34

    .line 725
    mul-float v34, v16, v25

    sub-float v34, v7, v34

    cmpl-float v34, v6, v34

    if-lez v34, :cond_1b

    .line 726
    mul-float v5, v32, v33

    move/from16 v34, v8

    goto :goto_6

    .line 727
    :cond_1b
    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v27, v27, v17

    mul-float v27, v27, v16

    sub-float v27, v7, v27

    cmpl-float v27, v6, v27

    if-lez v27, :cond_1c

    .line 728
    move/from16 v5, v32

    move/from16 v34, v8

    goto :goto_6

    .line 730
    :cond_1c
    mul-float v27, v7, v10

    sub-float v27, v6, v27

    mul-float v34, v7, v8

    mul-float v34, v34, v17

    div-float v27, v27, v34

    mul-float v5, v32, v27

    .line 731
    const/16 v27, 0x0

    .line 732
    .local v27, "tmp":F
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    move/from16 v34, v8

    move/from16 v35, v9

    .end local v8    # "stage1":F
    .end local v9    # "deltaDelta":F
    .local v34, "stage1":F
    .local v35, "deltaDelta":F
    float-to-double v8, v0

    const-wide v36, 0x3fe3333333333333L    # 0.6

    cmpl-double v8, v8, v36

    if-lez v8, :cond_1d

    .line 733
    const v0, 0x3e1604b0

    .end local v27    # "tmp":F
    .local v0, "tmp":F
    goto :goto_5

    .line 734
    .end local v0    # "tmp":F
    .restart local v27    # "tmp":F
    :cond_1d
    float-to-double v8, v0

    cmpl-double v8, v8, v21

    if-lez v8, :cond_1e

    .line 735
    const v0, 0x3f83441a

    .end local v27    # "tmp":F
    .restart local v0    # "tmp":F
    goto :goto_5

    .line 736
    .end local v0    # "tmp":F
    .restart local v27    # "tmp":F
    :cond_1e
    float-to-double v8, v0

    const-wide v21, 0x3fd999999999999aL    # 0.4

    cmpl-double v8, v8, v21

    if-lez v8, :cond_1f

    .line 737
    const v0, 0x3db405a0

    .end local v27    # "tmp":F
    .restart local v0    # "tmp":F
    goto :goto_5

    .line 738
    .end local v0    # "tmp":F
    .restart local v27    # "tmp":F
    :cond_1f
    float-to-double v8, v0

    cmpl-double v0, v8, v23

    if-lez v0, :cond_20

    .line 739
    const v0, 0x3d870438

    .end local v27    # "tmp":F
    .restart local v0    # "tmp":F
    goto :goto_5

    .line 741
    .end local v0    # "tmp":F
    .restart local v27    # "tmp":F
    :cond_20
    const v0, 0x3d700780

    .line 742
    .end local v27    # "tmp":F
    .restart local v0    # "tmp":F
    :goto_5
    cmpg-float v8, v5, v0

    if-gez v8, :cond_21

    .line 743
    move v5, v0

    .line 745
    .end local v0    # "tmp":F
    .end local v16    # "deltaStage1":F
    .end local v31    # "deltaFrontEnd":F
    .end local v32    # "platformRate":F
    .end local v33    # "factor":F
    .end local v35    # "deltaDelta":F
    :cond_21
    :goto_6
    goto :goto_7

    .line 746
    .end local v34    # "stage1":F
    .restart local v8    # "stage1":F
    :cond_22
    move/from16 v34, v8

    .end local v8    # "stage1":F
    .restart local v34    # "stage1":F
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v0

    const-wide v31, 0x3fe3333333333333L    # 0.6

    cmpl-double v8, v8, v31

    if-lez v8, :cond_23

    .line 747
    const v5, 0x3db405a0

    goto :goto_7

    .line 748
    :cond_23
    float-to-double v8, v0

    cmpl-double v8, v8, v21

    if-lez v8, :cond_24

    .line 749
    const v5, 0x3da50528

    goto :goto_7

    .line 750
    :cond_24
    float-to-double v8, v0

    const-wide v21, 0x3fd999999999999aL    # 0.4

    cmpl-double v8, v8, v21

    if-lez v8, :cond_25

    .line 751
    const v5, 0x3d9604b0

    goto :goto_7

    .line 752
    :cond_25
    float-to-double v8, v0

    cmpl-double v8, v8, v23

    if-lez v8, :cond_26

    .line 753
    const v5, 0x3d870438

    goto :goto_7

    .line 754
    :cond_26
    float-to-double v8, v0

    cmpl-double v0, v8, v18

    if-lez v0, :cond_27

    .line 755
    const v5, 0x3d700780

    goto :goto_7

    .line 757
    :cond_27
    const v5, 0x3cf00780

    .line 760
    :goto_7
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v0

    const-wide v21, 0x3fd6666666666666L    # 0.35

    cmpg-double v0, v8, v21

    if-gez v0, :cond_28

    cmpl-float v0, v5, v20

    if-lez v0, :cond_28

    .line 761
    const v5, 0x3e1604b0

    .line 763
    :cond_28
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v0

    cmpg-double v0, v8, v23

    if-gez v0, :cond_29

    const v0, 0x3df00780

    cmpl-float v0, v5, v0

    if-lez v0, :cond_29

    .line 764
    const v5, 0x3df00780

    .line 766
    :cond_29
    const v0, 0x3c700780

    cmpg-float v0, v5, v0

    if-ltz v0, :cond_2a

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v0

    const-wide v21, 0x3fb47ae147ae147bL    # 0.08

    cmpg-double v0, v8, v21

    if-gez v0, :cond_2b

    .line 767
    :cond_2a
    const v5, 0x3c700780

    .line 769
    :cond_2b
    const-wide/16 v8, 0xe42

    cmp-long v0, v3, v8

    if-lez v0, :cond_2c

    .line 770
    const v0, 0x358637bd    # 1.0E-6f

    move v5, v0

    .line 771
    .end local v10    # "stage2":F
    .end local v17    # "backend":F
    .end local v25    # "frontend":F
    .end local v26    # "time":F
    .end local v34    # "stage1":F
    :cond_2c
    goto :goto_9

    .line 654
    :cond_2d
    move-object/from16 v30, v10

    goto :goto_9

    .line 772
    .end local v3    # "deltaTime":J
    .local v16, "deltaTime":J
    :cond_2e
    move-object/from16 v30, v10

    const/16 v0, 0x1e

    if-ne v3, v0, :cond_33

    .line 773
    sub-float v0, v7, v6

    div-float/2addr v0, v7

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr v3, v7

    mul-float/2addr v0, v3

    mul-float v3, v7, v27

    add-float/2addr v0, v3

    .line 774
    .end local v5    # "ret":F
    .local v0, "ret":F
    const v3, 0x3fe66666    # 1.8f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2f

    .line 775
    const v0, 0x3fe66666    # 1.8f

    .line 776
    :cond_2f
    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v7

    cmpl-float v3, v0, v3

    if-lez v3, :cond_30

    .line 777
    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v0, v7, v3

    .line 778
    :cond_30
    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr v3, v7

    cmpg-float v3, v6, v3

    if-gez v3, :cond_31

    .line 779
    div-float v3, v7, v26

    mul-float v3, v3, v25

    move v5, v3

    .end local v0    # "ret":F
    .local v3, "ret":F
    goto :goto_8

    .line 778
    .end local v3    # "ret":F
    .restart local v0    # "ret":F
    :cond_31
    move v5, v0

    .line 780
    .end local v0    # "ret":F
    .restart local v5    # "ret":F
    :goto_8
    mul-float v27, v27, v7

    cmpg-float v0, v6, v27

    if-gez v0, :cond_32

    .line 781
    div-float v5, v7, v26

    move-wide/from16 v3, v16

    goto :goto_9

    .line 780
    :cond_32
    move-wide/from16 v3, v16

    goto :goto_9

    .line 772
    :cond_33
    move-wide/from16 v3, v16

    .line 783
    .end local v16    # "deltaTime":J
    .local v3, "deltaTime":J
    :goto_9
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v8, 0x4b

    if-ne v0, v8, :cond_3a

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    if-eqz v0, :cond_3a

    .line 784
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getRateByDelta(F)F

    move-result v0

    .line 785
    .end local v5    # "ret":F
    .restart local v0    # "ret":F
    sget v5, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    const/4 v8, 0x0

    cmpg-float v5, v5, v8

    if-gez v5, :cond_38

    .line 786
    sget v5, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v5

    const-wide v16, 0x3fdae147ae147ae1L    # 0.42

    cmpg-double v5, v8, v16

    if-gez v5, :cond_34

    const v5, 0x3e610708

    cmpl-float v5, v0, v5

    if-lez v5, :cond_34

    .line 787
    const v0, 0x3e610708

    .line 789
    :cond_34
    sget v5, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v5

    const-wide v16, 0x3fd6666666666666L    # 0.35

    cmpg-double v5, v8, v16

    if-gez v5, :cond_35

    const v5, 0x3e480640

    cmpl-float v5, v0, v5

    if-lez v5, :cond_35

    .line 790
    const v0, 0x3e480640

    .line 792
    :cond_35
    sget v5, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v5

    cmpg-double v5, v8, v23

    if-gez v5, :cond_36

    cmpl-float v5, v0, v20

    if-lez v5, :cond_36

    .line 793
    const v0, 0x3e1604b0

    .line 795
    :cond_36
    sget v5, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v5

    cmpg-double v5, v8, v18

    if-gez v5, :cond_37

    const v5, 0x3db405a0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_37

    .line 796
    const v0, 0x3db405a0

    .line 797
    :cond_37
    sget v5, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v5

    const-wide v16, 0x3fbeb851eb851eb8L    # 0.12

    cmpg-double v5, v8, v16

    if-gez v5, :cond_38

    const v5, 0x3d3405a0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_38

    .line 798
    const v0, 0x3d3405a0

    .line 800
    :cond_38
    sget v5, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v5

    const-wide v16, 0x3feccccccccccccdL    # 0.9

    cmpl-double v5, v8, v16

    if-lez v5, :cond_39

    cmpl-float v5, v0, v20

    if-lez v5, :cond_39

    .line 801
    const v0, 0x3e1604b0

    move v5, v0

    goto :goto_a

    .line 803
    :cond_39
    move v5, v0

    .end local v0    # "ret":F
    .restart local v5    # "ret":F
    :goto_a
    float-to-double v8, v6

    const-wide v16, 0x3f789374bc6a7efaL    # 0.006

    cmpg-double v0, v8, v16

    if-gez v0, :cond_3a

    .line 804
    const v5, 0x3c700780

    .line 807
    :cond_3a
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_3b

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v1, 0x46000000    # 8192.0f

    mul-float v15, v5, v1

    float-to-int v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " HZ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->HZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_3b
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCount:I

    .line 814
    const/16 v1, 0x14

    if-lt v0, v1, :cond_3c

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_3c

    .line 815
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCount:I

    .line 816
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    mul-float v1, p1, v28

    float-to-int v1, v1

    const/4 v2, -0x2

    const-string/jumbo v8, "screen_brightness_cur"

    invoke-static {v0, v8, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 819
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    mul-float v1, v5, v28

    float-to-int v1, v1

    const-string/jumbo v8, "screen_brightness_rate"

    invoke-static {v0, v8, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 823
    :cond_3c
    return v5
.end method

.method public static getStatus()I
    .locals 6

    .line 235
    sget-wide v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGeneration:J

    sput-wide v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mRunningGeneration:J

    .line 236
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    const-string v1, "RampAnimator"

    if-nez v0, :cond_1

    .line 237
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 238
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 239
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 244
    :cond_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1e

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPolicyChange:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestPolicy:I

    if-ne v0, v2, :cond_2

    goto/16 :goto_4

    .line 256
    :cond_2
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsPowerRequestLowPowerModeChange:Z

    if-eqz v0, :cond_5

    .line 257
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 258
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestLowPowerMode:Z

    if-eqz v0, :cond_3

    .line 259
    const/16 v0, 0x23

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_0

    .line 261
    :cond_3
    const/16 v0, 0x28

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 262
    :goto_0
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_4

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 3 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_4
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 267
    :cond_5
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v3, 0x0

    const/16 v4, 0x41

    if-nez v0, :cond_6

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_7

    :cond_6
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    if-ne v0, v4, :cond_c

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    .line 270
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 271
    :cond_7
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 272
    if-ne v0, v4, :cond_9

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    .line 273
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_9

    .line 275
    :cond_8
    const/16 v0, 0x46

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_1

    .line 276
    :cond_9
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    .line 277
    sput v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 279
    :cond_a
    :goto_1
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_b

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 4 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_b
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 284
    :cond_c
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsAutoBrightnessStatusChange:Z

    if-eqz v0, :cond_f

    .line 285
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 286
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoBrightnessEnabled:Z

    if-eqz v0, :cond_d

    .line 287
    const/16 v0, 0x2d

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_2

    .line 289
    :cond_d
    const/16 v0, 0x32

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 290
    :goto_2
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_e

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 5 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_e
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 295
    :cond_f
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessNormal:I

    const/16 v3, 0x37

    const/4 v4, 0x1

    if-ne v0, v4, :cond_11

    .line 296
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 297
    sput v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 298
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_10

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 6 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_10
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 301
    :cond_11
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    if-ne v0, v3, :cond_13

    .line 302
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 303
    const/16 v0, 0x3c

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 304
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_12

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_12
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 309
    :cond_13
    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_18

    .line 310
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 311
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessAdjustmentFlags:I

    if-nez v0, :cond_14

    .line 312
    const/16 v0, 0xa

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_3

    .line 313
    :cond_14
    if-ne v0, v4, :cond_15

    .line 314
    const/16 v0, 0xb

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_3

    .line 315
    :cond_15
    if-ne v0, v2, :cond_16

    .line 316
    const/16 v0, 0xc

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 317
    :cond_16
    :goto_3
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_17

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 8 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_17
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 322
    :cond_18
    if-ne v3, v4, :cond_1a

    .line 323
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 324
    const/4 v0, 0x5

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 325
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_19

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 9 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_19
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 330
    :cond_1a
    const/16 v2, 0x8

    if-ne v3, v2, :cond_1c

    .line 331
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 332
    const/16 v0, 0x4b

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 333
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_1b

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 10 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_1b
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 337
    :cond_1c
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_1d

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 20 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1d
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 246
    :cond_1e
    :goto_4
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 247
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    if-ne v0, v2, :cond_1f

    .line 248
    const/16 v0, 0x19

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_5

    .line 250
    :cond_1f
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 251
    :goto_5
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_20

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 2 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_20
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0
.end method

.method static getTarget(FFZ)F
    .locals 11
    .param p0, "target"    # F
    .param p1, "cur"    # F
    .param p2, "animating"    # Z

    .line 370
    sput p1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    .line 371
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    const-string v1, "dim_target:"

    const/4 v2, 0x1

    const-string v3, "RampAnimator"

    if-ne v0, v2, :cond_0

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return p0

    .line 375
    :cond_0
    invoke-static {p1, p0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->EqualsWithMargin(FF)Z

    move-result v0

    const/16 v4, 0xa

    if-eqz v0, :cond_3

    .line 376
    const/high16 p0, -0x40000000    # -2.0f

    .line 377
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_1

    .line 378
    const-string/jumbo v0, "same target."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    if-eq v0, v4, :cond_2

    .line 380
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    .line 381
    :cond_2
    return p0

    .line 382
    :cond_3
    if-eqz p2, :cond_6

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-static {v0, p0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->EqualsWithMargin(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 383
    const/high16 p0, -0x40800000    # -1.0f

    .line 384
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_4

    .line 385
    const-string/jumbo v0, "same target!"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_4
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    if-eq v0, v4, :cond_5

    .line 387
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    .line 388
    :cond_5
    return p0

    .line 389
    :cond_6
    if-eqz p2, :cond_8

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v5, 0x23

    if-eq v0, v5, :cond_7

    const/16 v5, 0x28

    if-eq v0, v5, :cond_7

    const/16 v5, 0x46

    if-eq v0, v5, :cond_7

    const/16 v5, 0x1e

    if-eq v0, v5, :cond_7

    const/16 v5, 0x4b

    if-eq v0, v5, :cond_7

    const/16 v5, 0xc

    if-eq v0, v5, :cond_7

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    if-ne v0, v4, :cond_8

    :cond_7
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    float-to-double v5, v0

    const-wide v7, 0x3fb999999999999aL    # 0.1

    add-double/2addr v5, v7

    float-to-double v9, p0

    cmpl-double v5, v5, v9

    if-lez v5, :cond_8

    float-to-double v5, v0

    float-to-double v9, p0

    add-double/2addr v9, v7

    cmpg-double v0, v5, v9

    if-gez v0, :cond_8

    .line 399
    const/high16 p0, -0x40800000    # -1.0f

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "same target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " CT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return p0

    .line 402
    :cond_8
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v5, 0x19

    if-ne v0, v5, :cond_9

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_9

    .line 403
    const-string v0, "STILL DIM!"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 406
    :cond_9
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_a

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mTargetValueReason:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mReason:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_a
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    if-ne v0, v2, :cond_b

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    .line 410
    sput v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    .line 411
    const-string v0, "REASON_AUTOMATIC_ONING"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :cond_b
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    .line 415
    :goto_0
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getStatus()I

    .line 417
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    if-ne v0, v5, :cond_f

    .line 418
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v0, v2

    .line 419
    .end local p0    # "target":F
    .local v0, "target":F
    const p0, 0x3d4ccccd    # 0.05f

    cmpg-float p0, v0, p0

    if-gez p0, :cond_c

    .line 420
    const v0, 0x3d4ccccd    # 0.05f

    .line 421
    :cond_c
    sget-boolean p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz p0, :cond_e

    .line 422
    sget-object p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, -0x2

    const-string v5, "dim_target"

    invoke-static {p0, v5, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 425
    .local p0, "it":I
    if-lez p0, :cond_d

    .line 426
    int-to-float v2, p0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v0, v2, v4

    .line 427
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    goto :goto_1

    .line 421
    .end local p0    # "it":I
    :cond_e
    move p0, v0

    .line 429
    .end local v0    # "target":F
    .local p0, "target":F
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_f
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    .line 432
    sub-float v0, p0, p1

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    .line 434
    sget-wide v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGeneration:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    sput-wide v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGeneration:J

    .line 435
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_10

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " powerpolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " LOWPOWER:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " OVRI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " isSysui:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_10
    return p0
.end method

.method private handleSettingsChange(Z)V
    .locals 2
    .param p1, "userSwitch"    # Z

    .line 891
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallbacks:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 892
    const-string v0, "RampAnimator"

    const-string/jumbo v1, "updateBrightness!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void
.end method

.method public static onDarkModeChanged()V
    .locals 1

    .line 973
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDarkModeInitiated:Z

    .line 974
    return-void
.end method

.method public static requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 5
    .param p0, "dpr"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 196
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestScreenBrightnessOverride:F

    .line 197
    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    .line 198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsowerRequestScreenBrightnessOverrideChange:Z

    .line 199
    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestScreenBrightnessOverride:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const-string v2, "RampAnimator"

    const/4 v3, 0x1

    if-nez v1, :cond_0

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestScreenBrightnessOverride:F

    .line 200
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    :cond_1
    sput-boolean v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsowerRequestScreenBrightnessOverrideChange:Z

    .line 202
    const-string v1, "OVERRIDE CHANGING!"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    sget-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestLowPowerMode:Z

    sput-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestLowPowerMode:Z

    .line 206
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    sput-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestLowPowerMode:Z

    .line 207
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsPowerRequestLowPowerModeChange:Z

    .line 208
    sget-boolean v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestLowPowerMode:Z

    if-eq v4, v1, :cond_3

    .line 209
    sput-boolean v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsPowerRequestLowPowerModeChange:Z

    .line 212
    :cond_3
    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestPolicy:I

    .line 213
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    .line 214
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPolicyChange:Z

    .line 215
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestPolicy:I

    if-eq v1, v4, :cond_4

    .line 216
    sput-boolean v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPolicyChange:Z

    .line 217
    const-string v1, "POLICY CHANGING!"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_4
    sget-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoBrightnessEnabled:Z

    sput-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreAutoBrightnessEnabled:Z

    .line 221
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    sput-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoBrightnessEnabled:Z

    .line 222
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsAutoBrightnessStatusChange:Z

    .line 223
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreAutoBrightnessEnabled:Z

    if-eq v0, v1, :cond_5

    .line 224
    sput-boolean v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsAutoBrightnessStatusChange:Z

    .line 225
    const-string v0, "AUTO CHANGING!"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_5
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_6

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "override:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " lowPowerMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " useAutoBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_6
    return-void
.end method

.method public static setCallingUid(I)V
    .locals 2
    .param p0, "uid"    # I

    .line 895
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallingUid:I

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCallingUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RampAnimator"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void
.end method

.method public static setReason(II)V
    .locals 2
    .param p0, "reason"    # I
    .param p1, "flag"    # I

    .line 189
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    .line 190
    sput p1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessAdjustmentFlags:I

    .line 191
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " flag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RampAnimator"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    return-void
.end method

.method public static updateTargAndCurValue(F)V
    .locals 0
    .param p0, "target"    # F

    .line 537
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    .line 538
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    .line 539
    return-void
.end method


# virtual methods
.method public clampBrightness(F)F
    .locals 2
    .param p1, "brightness"    # F

    .line 936
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFodMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    return p1

    .line 937
    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    :goto_1
    return v0
.end method

.method public getAppPkg()Z
    .locals 3

    .line 899
    const-string v0, ""

    .line 900
    .local v0, "processName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallingUid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 903
    const-string v1, "android.uid.system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFrontPackageName:Ljava/lang/String;

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 904
    :cond_0
    const-string v1, "android.uid.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsSystemUIOrSetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RampAnimator"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    sget-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    return v1
.end method

.method public setBoostBrightnessNormal(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 885
    sput-boolean p1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCameraInFront:Z

    .line 886
    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCameraRequestBoost:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessNormal:I

    .line 887
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallbacks:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 888
    return-void
.end method

.method public setScreenState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 965
    iput p1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mScreenState:I

    .line 966
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->removeMessages(I)V

    .line 968
    iput-boolean v1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    .line 970
    :cond_0
    return-void
.end method

.method public setSliderDuration(F)V
    .locals 8
    .param p1, "target"    # F

    .line 343
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    sub-float v0, p1, v0

    .line 344
    .local v0, "delta":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 345
    .local v1, "deltaAbs":F
    const/4 v2, 0x0

    .line 346
    .local v2, "durationMs":I
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    float-to-double v4, v1

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 347
    const/16 v2, 0x1388

    goto :goto_0

    .line 348
    :cond_0
    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    .line 349
    const/16 v2, 0xfa0

    goto :goto_0

    .line 350
    :cond_1
    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    .line 351
    const/4 v2, 0x0

    .line 352
    float-to-double v3, p1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    .line 353
    const/16 v2, 0x2710

    goto :goto_0

    .line 354
    :cond_2
    float-to-double v3, p1

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 355
    const/16 v2, 0x1b58

    goto :goto_0

    .line 357
    :cond_3
    const/16 v2, 0x1388

    .line 359
    :cond_4
    :goto_0
    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    .line 360
    const-string v3, "RampAnimator"

    const-string v4, "NOT REASON_AUTOMATIC!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/16 v2, 0x7d0

    .line 363
    :cond_5
    if-lez v2, :cond_6

    .line 364
    sget-object v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const-string/jumbo v5, "screen_brightness_animation_duration"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 367
    :cond_6
    return-void
.end method

.method public updateBrightnessValue(F)V
    .locals 5
    .param p1, "brightness"    # F

    .line 948
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 949
    iget-boolean v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    const-wide/16 v3, 0x9c4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 952
    :cond_0
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->removeMessages(I)V

    .line 954
    iput-boolean v2, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    .line 958
    :cond_1
    :goto_0
    return-void
.end method
