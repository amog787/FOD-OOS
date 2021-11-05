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

.field private static final BOARD_PLATFORM:Ljava/lang/String;

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

.field private static final STATUS_GALLERY_OFF:I = 0x3d

.field private static final STATUS_GALLERY_ON:I = 0x38

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

.field private static mAutoFirstOn:Z

.field private static mAutoRate:I

.field private static mAutoStep:I

.field public static mBoostBrightnessCamera:I

.field public static mBoostBrightnessCamera2Gallery:I

.field public static mBoostBrightnessGallery:I

.field private static mBrightnessAdjustmentFlags:I

.field private static mCallingUid:I

.field public static mCamera2GalleryRequestBoost:Z

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

.field public static mGalleryInFront:Z

.field public static mGalleryRequestBoost:Z

.field private static mGeneration:J

.field private static mIsAutoBrightnessStatusChange:Z

.field private static mIsBoostBrightnessNormalChange:I

.field private static mIsPowerRequestLowPowerModeChange:Z

.field private static mIsSystemUIOrSetting:Z

.field private static mIsowerRequestScreenBrightnessOverrideChange:Z

.field private static mMinFromConfig:F

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
.field private final MILLS_TO_UNBLOCK_HBM:J

.field private mBlockHbm:Z

.field private mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

.field private mCallbacks:Lcom/android/server/display/DisplayPowerController;

.field private mHandler:Landroid/os/Handler;

.field private mScreenState:I

.field private final mSettingsObserver:Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 25
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->BOARD_PLATFORM:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    .line 46
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    .line 47
    const/4 v1, -0x1

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    .line 48
    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestPolicy:I

    .line 49
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPolicyChange:Z

    .line 51
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestLowPowerMode:Z

    .line 52
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestLowPowerMode:Z

    .line 53
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsPowerRequestLowPowerModeChange:Z

    .line 55
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoBrightnessEnabled:Z

    .line 56
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreAutoBrightnessEnabled:Z

    .line 57
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsAutoBrightnessStatusChange:Z

    .line 58
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoFirstOn:Z

    .line 60
    const/4 v2, 0x0

    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    .line 61
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestScreenBrightnessOverride:F

    .line 62
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsowerRequestScreenBrightnessOverrideChange:Z

    .line 63
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    .line 64
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    .line 66
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessCamera:I

    .line 67
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessGallery:I

    .line 68
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessCamera2Gallery:I

    .line 69
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCameraInFront:Z

    .line 70
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGalleryInFront:Z

    .line 71
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCameraRequestBoost:Z

    .line 72
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGalleryRequestBoost:Z

    .line 73
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCamera2GalleryRequestBoost:Z

    .line 74
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreBoostBrightnessNormal:I

    .line 75
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsBoostBrightnessNormalChange:I

    .line 76
    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 77
    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 103
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessAdjustmentFlags:I

    .line 108
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCount:I

    .line 109
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStepCount:I

    .line 110
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallingUid:I

    .line 111
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGeneration:J

    .line 112
    sput-wide v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mRunningGeneration:J

    .line 114
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    .line 115
    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    .line 116
    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    .line 117
    sput v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    .line 118
    const/16 v1, 0x50

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoRate:I

    .line 119
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mRateVariable:Z

    .line 120
    const/16 v1, 0x3c

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->HZ:I

    .line 122
    sput-wide v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimStartTimeMs:J

    .line 125
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStage1:F

    .line 126
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mbke:F

    .line 127
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mfe:F

    .line 128
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTime:F

    .line 132
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFodMode:I

    .line 133
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    .line 135
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDarkModeInitiated:Z

    .line 137
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mMinFromConfig:F

    .line 138
    const/16 v0, 0xb

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimRate:[F

    .line 152
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimRate2:[F

    .line 166
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

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mScreenState:I

    .line 131
    const-wide/16 v1, 0x9c4

    iput-wide v1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->MILLS_TO_UNBLOCK_HBM:J

    .line 134
    iput-boolean v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    .line 186
    sput-object p2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    .line 187
    iput-object p1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallbacks:Lcom/android/server/display/DisplayPowerController;

    .line 188
    iput-object p3, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mHandler:Landroid/os/Handler;

    .line 189
    new-instance v0, Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;-><init>(Lcom/android/server/display/OpBrightnessReasonAndRate;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mSettingsObserver:Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;

    .line 191
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mMinFromConfig:F

    .line 193
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    const-string v1, "fod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mSettingsObserver:Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;

    .line 193
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 196
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 197
    const-string v1, "dim_debug"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mSettingsObserver:Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;

    .line 196
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 199
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 200
    const-string v1, "boost_brightness_normal"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mSettingsObserver:Lcom/android/server/display/OpBrightnessReasonAndRate$SettingsObserver;

    .line 199
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 202
    new-instance v0, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    iget-object v1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;-><init>(Lcom/android/server/display/OpBrightnessReasonAndRate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    .line 203
    return-void
.end method

.method public static EqualsWithMargin(FF)Z
    .locals 3
    .param p0, "A"    # F
    .param p1, "B"    # F

    .line 181
    const v0, 0x358637bd    # 1.0E-6f

    .line 182
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

    .line 1059
    const/4 v0, 0x1

    .line 1060
    .local v0, "ret":Z
    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1061
    return v0

    .line 1062
    :cond_0
    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStepCount:I

    add-int/2addr v3, v2

    sput v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStepCount:I

    .line 1063
    rem-int/2addr v3, v1

    if-nez v3, :cond_1

    .line 1064
    const/4 v0, 0x1

    goto :goto_0

    .line 1066
    :cond_1
    const/4 v0, 0x0

    .line 1068
    :goto_0
    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStepCount:I

    const/16 v2, 0x2710

    if-le v1, v2, :cond_2

    .line 1069
    const/4 v1, 0x0

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStepCount:I

    .line 1070
    :cond_2
    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 23
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFodMode:I

    return p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .line 23
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 23
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 23
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 23
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoRate:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 23
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoRate:I

    return p0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 23
    sput-boolean p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mRateVariable:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/server/display/OpBrightnessReasonAndRate;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OpBrightnessReasonAndRate;
    .param p1, "x1"    # Z

    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/display/OpBrightnessReasonAndRate;->handleSettingsChange(Z)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/display/OpBrightnessReasonAndRate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/OpBrightnessReasonAndRate;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/display/OpBrightnessReasonAndRate;)Lcom/android/server/display/DisplayPowerController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/OpBrightnessReasonAndRate;

    .line 23
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallbacks:Lcom/android/server/display/DisplayPowerController;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 23
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 23
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 23
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    return p0
.end method

.method static synthetic access$400()F
    .locals 1

    .line 23
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStage1:F

    return v0
.end method

.method static synthetic access$402(F)F
    .locals 0
    .param p0, "x0"    # F

    .line 23
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStage1:F

    return p0
.end method

.method static synthetic access$500()F
    .locals 1

    .line 23
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mbke:F

    return v0
.end method

.method static synthetic access$502(F)F
    .locals 0
    .param p0, "x0"    # F

    .line 23
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mbke:F

    return p0
.end method

.method static synthetic access$600()F
    .locals 1

    .line 23
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mfe:F

    return v0
.end method

.method static synthetic access$602(F)F
    .locals 0
    .param p0, "x0"    # F

    .line 23
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mfe:F

    return p0
.end method

.method static synthetic access$700()F
    .locals 1

    .line 23
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTime:F

    return v0
.end method

.method static synthetic access$702(F)F
    .locals 0
    .param p0, "x0"    # F

    .line 23
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTime:F

    return p0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[F
    .locals 1

    .line 23
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimRate:[F

    return-object v0
.end method

.method public static enableDebug(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 1056
    sput-boolean p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    .line 1057
    return-void
.end method

.method public static frontPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1073
    sput-object p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFrontPackageName:Ljava/lang/String;

    .line 1074
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_0

    .line 1075
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

    .line 1076
    :cond_0
    return-void
.end method

.method static getRate(F)F
    .locals 11
    .param p0, "rate"    # F

    .line 512
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    const/high16 v1, 0x447a0000    # 1000.0f

    const-string v2, "dim_rate:"

    const/4 v3, -0x2

    const-string v4, "dim_rate"

    const/4 v5, 0x0

    const-string v6, "RampAnimator"

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    .line 513
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 516
    .local v0, "ir":I
    if-lez v0, :cond_0

    .line 517
    int-to-float v3, v0

    div-float p0, v3, v1

    .line 518
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return p0

    .line 521
    .end local v0    # "ir":I
    :cond_1
    sput-boolean v5, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDarkModeInitiated:Z

    .line 523
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v7, 0x4b

    if-eq v0, v7, :cond_2

    const/16 v8, 0xc

    if-ne v0, v8, :cond_3

    :cond_2
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    if-eqz v0, :cond_3

    .line 526
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getRateByBrightness(F)F

    move-result p0

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADJ RATE:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_3
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const-string v8, " rate:"

    if-ne v0, v7, :cond_4

    .line 530
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

    .line 532
    :cond_4
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->EqualsWithMargin(FF)Z

    move-result v0

    const/16 v7, 0x19

    if-eqz v0, :cond_5

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    if-eq v0, v7, :cond_5

    .line 533
    return p0

    .line 534
    :cond_5
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v9, 0x46

    if-eq v0, v9, :cond_10

    const/16 v9, 0x41

    if-ne v0, v9, :cond_6

    goto/16 :goto_3

    .line 537
    :cond_6
    if-ne v0, v7, :cond_9

    .line 539
    const/16 v0, 0x1770

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeServiceInjector;->pokeDynamicVsyncAnimation(I)V

    .line 540
    const-string/jumbo v0, "pokeDynamicVsyncAnimation 6000"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    sput-wide v9, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimStartTimeMs:J

    .line 543
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v0, v7

    .line 545
    .end local p0    # "rate":F
    .local v0, "rate":F
    sget p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    const/4 v7, 0x4

    if-ne p0, v7, :cond_8

    .line 546
    sget-object p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    .line 549
    .local p0, "ir":I
    if-lez p0, :cond_7

    .line 550
    int-to-float v3, p0

    div-float v0, v3, v1

    .line 551
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

    .line 545
    .end local p0    # "ir":I
    :cond_8
    move p0, v0

    .line 553
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

    .line 554
    :cond_9
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_b

    .line 555
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    .line 556
    .end local p0    # "rate":F
    .restart local v0    # "rate":F
    const/high16 p0, 0x40400000    # 3.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_a

    .line 557
    const/high16 p0, 0x40400000    # 3.0f

    .end local v0    # "rate":F
    .restart local p0    # "rate":F
    goto :goto_1

    .line 556
    .end local p0    # "rate":F
    .restart local v0    # "rate":F
    :cond_a
    move p0, v0

    .line 558
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

    goto/16 :goto_4

    .line 559
    :cond_b
    const-string v1, "LP ON RATE:"

    const/high16 v2, 0x40c00000    # 6.0f

    const/16 v3, 0x28

    const/16 v4, 0x23

    if-eq v0, v4, :cond_c

    if-ne v0, v3, :cond_d

    :cond_c
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->BOARD_PLATFORM:Ljava/lang/String;

    .line 560
    const-string/jumbo v5, "msmnile"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 561
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float p0, v0, v2

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 563
    :cond_d
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    if-eq v0, v4, :cond_f

    if-ne v0, v3, :cond_e

    goto :goto_2

    .line 567
    :cond_e
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_11

    .line 568
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getRateByBrightness(F)F

    move-result p0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REASON_AUTOMATIC_ONING:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 565
    :cond_f
    :goto_2
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float p0, v0, v2

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 535
    :cond_10
    :goto_3
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getRateByBrightness(F)F

    move-result p0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OR OFF RATE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_11
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

    .line 575
    return p0
.end method

.method static getRateByBrightness(F)F
    .locals 9
    .param p0, "brightness"    # F

    .line 483
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    .line 484
    .local v0, "curb":F
    sub-float v1, p0, v0

    .line 485
    .local v1, "delta":F
    const/4 v2, 0x0

    .line 486
    .local v2, "rate":F
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v7, 0x3e000000    # 0.125f

    const/high16 v8, 0x40000000    # 2.0f

    if-ltz v3, :cond_3

    .line 487
    cmpg-float v3, v1, v7

    if-gez v3, :cond_0

    .line 488
    mul-float/2addr v8, v1

    .end local v2    # "rate":F
    .local v8, "rate":F
    goto :goto_0

    .line 489
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_0
    cmpg-float v3, v1, v6

    if-gez v3, :cond_1

    .line 490
    move v8, v1

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 491
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_1
    cmpg-float v3, v1, v5

    if-gez v3, :cond_2

    .line 492
    div-float v3, v1, v4

    mul-float/2addr v8, v3

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 494
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_2
    div-float v8, v1, v8

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 496
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_3
    neg-float v1, v1

    .line 497
    cmpg-float v3, v1, v7

    if-gez v3, :cond_4

    .line 498
    mul-float/2addr v8, v1

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 499
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_4
    cmpg-float v3, v1, v6

    if-gez v3, :cond_5

    .line 500
    move v8, v1

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 501
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_5
    cmpg-float v3, v1, v5

    if-gez v3, :cond_6

    .line 502
    div-float v3, v1, v4

    mul-float/2addr v8, v3

    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    goto :goto_0

    .line 504
    .end local v8    # "rate":F
    .restart local v2    # "rate":F
    :cond_6
    div-float v8, v1, v8

    .line 506
    .end local v2    # "rate":F
    .restart local v8    # "rate":F
    :goto_0
    const v2, 0x3c700780

    cmpg-float v2, v8, v2

    if-gez v2, :cond_7

    .line 507
    const v8, 0x3c700780

    .line 508
    :cond_7
    return v8
.end method

.method static getRateByDelta(F)F
    .locals 8
    .param p0, "delta"    # F

    .line 583
    const/4 v0, 0x0

    .line 584
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

    .line 585
    cmpg-float v1, p0, v6

    if-gez v1, :cond_0

    .line 586
    mul-float/2addr v7, p0

    .end local v0    # "rate":F
    .local v7, "rate":F
    goto :goto_0

    .line 587
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_0
    cmpg-float v1, p0, v5

    if-gez v1, :cond_1

    .line 588
    move v7, p0

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 589
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_1
    cmpg-float v1, p0, v4

    if-gez v1, :cond_2

    .line 590
    div-float v1, p0, v2

    mul-float/2addr v7, v1

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 592
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_2
    div-float v7, p0, v3

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 594
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_3
    neg-float p0, p0

    .line 595
    cmpg-float v1, p0, v6

    if-gez v1, :cond_4

    .line 596
    mul-float/2addr v7, p0

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 597
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_4
    cmpg-float v1, p0, v5

    if-gez v1, :cond_5

    .line 598
    move v7, p0

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 599
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_5
    cmpg-float v1, p0, v4

    if-gez v1, :cond_6

    .line 600
    div-float v1, p0, v2

    mul-float/2addr v7, v1

    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    goto :goto_0

    .line 602
    .end local v7    # "rate":F
    .restart local v0    # "rate":F
    :cond_6
    div-float v7, p0, v3

    .line 604
    .end local v0    # "rate":F
    .restart local v7    # "rate":F
    :goto_0
    const v0, 0x3c700780

    cmpg-float v0, v7, v0

    if-gez v0, :cond_7

    .line 605
    const v7, 0x3c700780

    .line 606
    :cond_7
    return v7
.end method

.method static getRunningRate(FFFI)F
    .locals 35
    .param p0, "targ"    # F
    .param p1, "cur"    # F
    .param p2, "rate"    # F
    .param p3, "hz"    # I

    .line 610
    move/from16 v0, p0

    move/from16 v1, p3

    const-wide/16 v2, 0x0

    .line 611
    .local v2, "deltaTime":J
    const/4 v4, 0x1

    sput v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    .line 612
    const/16 v5, 0x37

    if-le v1, v5, :cond_0

    const/16 v5, 0x7a

    if-ge v1, v5, :cond_0

    .line 613
    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->HZ:I

    .line 615
    :cond_0
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    .line 616
    sput p1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    .line 617
    move/from16 v5, p2

    .line 618
    .local v5, "ret":F
    sub-float v6, v0, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 619
    .local v6, "runningTimeDelta":F
    sget v7, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 620
    .local v7, "deltaAbs":F
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    const/high16 v9, 0x46000000    # 8192.0f

    const-string v10, " level:"

    const-string v11, "getRunningRate:"

    const-string v12, "RampAnimator"

    if-ne v8, v4, :cond_1

    .line 621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float/2addr v9, v5

    float-to-int v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mDelta:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " runningTimeDelta:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " S:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " preS:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mTargetValue:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " mCurrentValue:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return v5

    .line 629
    :cond_1
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/4 v9, 0x3

    const v16, 0x3e99999a    # 0.3f

    const-wide v17, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v19, 0x3fd0000000000000L    # 0.25

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    const v23, 0x3e4ccccd    # 0.2f

    const/16 v24, 0x0

    const/16 v15, 0xa

    const-wide v25, 0x3fd3333333333333L    # 0.3

    const v27, 0x45fff800    # 8191.0f

    const-wide v28, 0x3fc999999999999aL    # 0.2

    const/high16 v30, 0x40400000    # 3.0f

    const v31, 0x3dcccccd    # 0.1f

    const/high16 v32, 0x40000000    # 2.0f

    if-ne v8, v15, :cond_11

    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    if-ne v8, v15, :cond_11

    sget-object v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->BOARD_PLATFORM:Ljava/lang/String;

    .line 630
    const-string/jumbo v13, "msmnile"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 631
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    cmpg-float v8, v8, v24

    if-gez v8, :cond_8

    .line 632
    mul-float v30, v30, v7

    const/high16 v8, 0x40800000    # 4.0f

    div-float v30, v30, v8

    cmpl-float v8, v6, v30

    if-lez v8, :cond_2

    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v13, v8

    cmpl-double v8, v13, v21

    if-lez v8, :cond_2

    .line 633
    const/high16 v8, 0x40c00000    # 6.0f

    div-float v5, v7, v8

    goto :goto_0

    .line 645
    :cond_2
    const/high16 v8, 0x41000000    # 8.0f

    div-float v8, v7, v8

    div-float v13, v6, v7

    mul-float v5, v8, v13

    .line 647
    :goto_0
    const v8, 0x3df5c28f    # 0.12f

    cmpg-float v8, v6, v8

    if-gez v8, :cond_3

    const v8, 0x3d703c0f

    cmpl-float v8, v5, v8

    if-lez v8, :cond_3

    .line 648
    const v5, 0x3d703c0f

    .line 651
    :cond_3
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v13, v8

    const-wide v21, 0x3fd851eb851eb852L    # 0.38

    cmpg-double v13, v13, v21

    if-gez v13, :cond_4

    float-to-double v13, v8

    cmpl-double v8, v13, v19

    if-lez v8, :cond_4

    .line 652
    const v8, 0x3dc8320d

    cmpl-float v8, v5, v8

    if-lez v8, :cond_4

    .line 653
    const v5, 0x3db42d0b

    .line 660
    :cond_4
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoRate:I

    int-to-float v8, v8

    .line 661
    .local v8, "r":F
    sget v13, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v14, v13

    cmpg-double v14, v14, v19

    if-gez v14, :cond_5

    float-to-double v13, v13

    const-wide v19, 0x3fc47ae147ae147bL    # 0.16

    cmpl-double v13, v13, v19

    if-lez v13, :cond_5

    .line 662
    sput v9, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    .line 663
    const v5, 0x3da0280a

    .line 665
    :cond_5
    sget v9, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v13, v9

    const-wide v19, 0x3fc47ae147ae147bL    # 0.16

    cmpg-double v13, v13, v19

    if-gez v13, :cond_6

    float-to-double v13, v9

    cmpl-double v9, v13, v17

    if-lez v9, :cond_6

    .line 666
    const v5, 0x3d703c0f

    .line 668
    :cond_6
    sget v9, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v13, v9

    cmpg-double v9, v13, v17

    if-gez v9, :cond_7

    .line 669
    const v5, 0x3cf03c0f

    .line 670
    .end local v8    # "r":F
    :cond_7
    goto :goto_2

    .line 671
    :cond_8
    cmpl-float v8, v7, v16

    if-lez v8, :cond_a

    .line 672
    mul-float v5, v7, v32

    .line 673
    mul-float v23, v23, v7

    cmpg-float v8, v6, v23

    if-gez v8, :cond_9

    .line 674
    move v5, v7

    .line 675
    :cond_9
    mul-float v8, v7, v31

    cmpg-float v8, v6, v8

    if-gez v8, :cond_e

    .line 676
    div-float v5, v7, v32

    goto :goto_1

    .line 677
    :cond_a
    const/high16 v8, 0x3e800000    # 0.25f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_b

    .line 678
    const v8, 0x3fcccccd    # 1.6f

    mul-float v5, v7, v8

    goto :goto_1

    .line 679
    :cond_b
    cmpl-float v8, v7, v23

    if-lez v8, :cond_c

    .line 680
    const v8, 0x3f99999a    # 1.2f

    mul-float v5, v7, v8

    goto :goto_1

    .line 681
    :cond_c
    const v8, 0x3e19999a    # 0.15f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_d

    .line 682
    const/high16 v8, 0x3fc00000    # 1.5f

    div-float v5, v7, v8

    goto :goto_1

    .line 684
    :cond_d
    div-float v5, v7, v30

    .line 685
    :cond_e
    :goto_1
    cmpg-float v8, v6, v31

    if-gez v8, :cond_10

    .line 686
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v8

    cmpl-double v8, v8, v28

    if-lez v8, :cond_f

    .line 687
    const v5, 0x3e20280a

    goto :goto_2

    .line 689
    :cond_f
    const v5, 0x3d20280a

    .line 692
    :cond_10
    :goto_2
    float-to-double v8, v0

    const-wide v13, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v8, v8, v13

    if-lez v8, :cond_42

    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    float-to-double v8, v8

    cmpl-double v8, v8, v17

    if-lez v8, :cond_42

    .line 693
    div-float v5, v7, v32

    goto/16 :goto_d

    .line 697
    :cond_11
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    if-ne v8, v15, :cond_20

    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    if-ne v8, v15, :cond_20

    .line 698
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    cmpg-float v8, v8, v24

    if-gez v8, :cond_17

    .line 699
    mul-float v30, v30, v7

    const/high16 v8, 0x40800000    # 4.0f

    div-float v30, v30, v8

    cmpl-float v8, v6, v30

    if-lez v8, :cond_12

    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v13, v8

    cmpl-double v8, v13, v21

    if-lez v8, :cond_12

    .line 700
    const/high16 v8, 0x40c00000    # 6.0f

    div-float v5, v7, v8

    goto :goto_3

    .line 712
    :cond_12
    const/high16 v8, 0x41000000    # 8.0f

    div-float v8, v7, v8

    div-float v13, v6, v7

    mul-float v5, v8, v13

    .line 714
    :goto_3
    const v8, 0x3df5c28f    # 0.12f

    cmpg-float v8, v6, v8

    if-gez v8, :cond_13

    const v8, 0x3bf00780

    cmpl-float v8, v5, v8

    if-lez v8, :cond_13

    .line 715
    const v5, 0x3bf00780

    .line 718
    :cond_13
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v13, v8

    const-wide v21, 0x3fd851eb851eb852L    # 0.38

    cmpg-double v13, v13, v21

    if-gez v13, :cond_14

    float-to-double v13, v8

    cmpl-double v8, v13, v19

    if-lez v8, :cond_14

    .line 719
    const v8, 0x3c700780

    cmpl-float v8, v5, v8

    if-lez v8, :cond_14

    .line 720
    const v5, 0x3c700780

    .line 727
    :cond_14
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoRate:I

    int-to-float v8, v8

    .line 728
    .restart local v8    # "r":F
    sget v13, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    const v14, 0x3ea5a52d

    cmpg-float v13, v13, v14

    if-gez v13, :cond_15

    .line 729
    sput v9, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoStep:I

    .line 730
    div-float v5, v8, v27

    .line 732
    :cond_15
    div-float v9, v8, v27

    cmpg-float v9, v5, v9

    if-gez v9, :cond_16

    .line 733
    div-float v5, v8, v27

    .line 734
    .end local v8    # "r":F
    :cond_16
    goto :goto_5

    .line 735
    :cond_17
    cmpl-float v8, v7, v16

    if-lez v8, :cond_19

    .line 736
    mul-float v5, v7, v32

    .line 737
    mul-float v23, v23, v7

    cmpg-float v8, v6, v23

    if-gez v8, :cond_18

    .line 738
    move v5, v7

    .line 739
    :cond_18
    mul-float v8, v7, v31

    cmpg-float v8, v6, v8

    if-gez v8, :cond_1d

    .line 740
    div-float v5, v7, v32

    goto :goto_4

    .line 741
    :cond_19
    const/high16 v8, 0x3e800000    # 0.25f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_1a

    .line 742
    const v8, 0x3fcccccd    # 1.6f

    mul-float v5, v7, v8

    goto :goto_4

    .line 743
    :cond_1a
    cmpl-float v8, v7, v23

    if-lez v8, :cond_1b

    .line 744
    const v8, 0x3f99999a    # 1.2f

    mul-float v5, v7, v8

    goto :goto_4

    .line 745
    :cond_1b
    const v8, 0x3e19999a    # 0.15f

    cmpl-float v8, v7, v8

    if-lez v8, :cond_1c

    .line 746
    const/high16 v8, 0x3fc00000    # 1.5f

    div-float v5, v7, v8

    goto :goto_4

    .line 748
    :cond_1c
    div-float v5, v7, v30

    .line 749
    :cond_1d
    :goto_4
    cmpg-float v8, v6, v31

    if-gez v8, :cond_1f

    .line 750
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v8, v8

    cmpl-double v8, v8, v28

    if-lez v8, :cond_1e

    .line 751
    const v5, 0x3cf00780

    goto :goto_5

    .line 753
    :cond_1e
    const v5, 0x3c700780

    .line 756
    :cond_1f
    :goto_5
    float-to-double v8, v0

    const-wide v13, 0x3fefae147ae147aeL    # 0.99

    cmpl-double v8, v8, v13

    if-lez v8, :cond_42

    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    float-to-double v8, v8

    cmpl-double v8, v8, v17

    if-lez v8, :cond_42

    .line 757
    div-float v5, v7, v32

    goto/16 :goto_d

    .line 761
    :cond_20
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v13, 0x19

    if-ne v8, v13, :cond_3d

    .line 762
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sget-wide v16, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimStartTimeMs:J

    sub-long v2, v13, v16

    .line 763
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFodMode:I

    if-eq v8, v4, :cond_3c

    .line 773
    const v8, 0x3f666666    # 0.9f

    .line 774
    .local v8, "stage1":F
    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v14, v13, v8

    .line 775
    .local v14, "stage2":F
    const v15, 0x3eb33333    # 0.35f

    .line 776
    .local v15, "backend":F
    const v16, 0x3dcccccd    # 0.1f

    .line 777
    .local v16, "frontend":F
    const/high16 v17, 0x3f000000    # 0.5f

    .line 778
    .local v17, "time":F
    const v18, 0x3f59999a    # 0.85f

    cmpl-float v18, v7, v18

    if-lez v18, :cond_21

    .line 779
    const v8, 0x3f666666    # 0.9f

    .line 780
    const v15, 0x3eb33333    # 0.35f

    .line 781
    const v16, 0x3dcccccd    # 0.1f

    .line 782
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v23, v5

    goto/16 :goto_6

    .line 783
    :cond_21
    const/high16 v18, 0x3f400000    # 0.75f

    cmpl-float v18, v7, v18

    if-lez v18, :cond_22

    .line 784
    const v8, 0x3f666666    # 0.9f

    .line 785
    const v15, 0x3eb33333    # 0.35f

    .line 786
    const v16, 0x3dcccccd    # 0.1f

    .line 787
    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 v23, v5

    goto/16 :goto_6

    .line 788
    :cond_22
    const v18, 0x3f266666    # 0.65f

    cmpl-float v18, v7, v18

    if-lez v18, :cond_23

    .line 789
    const v8, 0x3f666666    # 0.9f

    .line 790
    const v15, 0x3eb33333    # 0.35f

    .line 791
    const v16, 0x3dcccccd    # 0.1f

    .line 792
    const v17, 0x3f99999a    # 1.2f

    move/from16 v23, v5

    goto :goto_6

    .line 793
    :cond_23
    const v18, 0x3f0ccccd    # 0.55f

    cmpl-float v18, v7, v18

    if-lez v18, :cond_24

    .line 794
    const v8, 0x3f666666    # 0.9f

    .line 795
    const v15, 0x3eb33333    # 0.35f

    .line 796
    const v16, 0x3dcccccd    # 0.1f

    .line 797
    const v17, 0x3f4ccccd    # 0.8f

    move/from16 v23, v5

    goto :goto_6

    .line 798
    :cond_24
    const v18, 0x3ee66666    # 0.45f

    cmpl-float v18, v7, v18

    if-lez v18, :cond_25

    .line 799
    const v8, 0x3f4ccccd    # 0.8f

    .line 800
    const v15, 0x3eb33333    # 0.35f

    .line 801
    const v16, 0x3dcccccd    # 0.1f

    .line 802
    const v17, 0x3f4ccccd    # 0.8f

    move/from16 v23, v5

    goto :goto_6

    .line 803
    :cond_25
    const v18, 0x3eb33333    # 0.35f

    cmpl-float v18, v7, v18

    if-lez v18, :cond_26

    .line 804
    const v8, 0x3f4ccccd    # 0.8f

    .line 805
    const v15, 0x3eb33333    # 0.35f

    .line 806
    const v16, 0x3dcccccd    # 0.1f

    .line 807
    const v17, 0x3f4ccccd    # 0.8f

    move/from16 v23, v5

    goto :goto_6

    .line 808
    :cond_26
    move/from16 v23, v5

    .end local v5    # "ret":F
    .local v23, "ret":F
    float-to-double v4, v7

    cmpl-double v4, v4, v19

    if-lez v4, :cond_27

    .line 809
    const v8, 0x3f4ccccd    # 0.8f

    .line 810
    const v15, 0x3eb33333    # 0.35f

    .line 811
    const v16, 0x3dcccccd    # 0.1f

    .line 812
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_6

    .line 814
    :cond_27
    const v8, 0x3f4ccccd    # 0.8f

    .line 815
    const v15, 0x3eb33333    # 0.35f

    .line 816
    const v16, 0x3dcccccd    # 0.1f

    .line 817
    const v17, 0x3f99999a    # 1.2f

    .line 819
    :goto_6
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    if-ne v4, v9, :cond_28

    .line 820
    sget v8, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStage1:F

    .line 821
    sget v15, Lcom/android/server/display/OpBrightnessReasonAndRate;->mbke:F

    .line 822
    sget v16, Lcom/android/server/display/OpBrightnessReasonAndRate;->mfe:F

    .line 823
    sget v17, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTime:F

    .line 825
    :cond_28
    sub-float v4, v13, v8

    .line 826
    .end local v14    # "stage2":F
    .local v4, "stage2":F
    mul-float v5, v4, v7

    cmpl-float v5, v6, v5

    if-lez v5, :cond_31

    .line 827
    mul-float v5, v8, v7

    .line 828
    .local v5, "deltaStage1":F
    mul-float v9, v5, v16

    .line 829
    .local v9, "deltaFrontEnd":F
    sub-float v14, v13, v16

    sub-float/2addr v14, v15

    mul-float/2addr v14, v5

    div-float v14, v14, v17

    .line 830
    .local v14, "platformRate":F
    sub-float v19, v7, v6

    const v20, 0x3cf00780

    div-float v20, v20, v14

    mul-float v20, v20, v9

    add-float v19, v19, v20

    .line 831
    .local v19, "deltaDelta":F
    div-float v20, v19, v9

    .line 832
    .local v20, "factor":F
    cmpl-float v30, v20, v13

    if-lez v30, :cond_29

    move/from16 v30, v13

    goto :goto_7

    :cond_29
    move/from16 v30, v20

    :goto_7
    move/from16 v20, v30

    .line 834
    mul-float v30, v5, v16

    sub-float v30, v7, v30

    cmpl-float v30, v6, v30

    if-lez v30, :cond_2a

    .line 835
    mul-float v13, v14, v20

    move/from16 v30, v4

    .end local v23    # "ret":F
    .local v13, "ret":F
    goto :goto_9

    .line 836
    .end local v13    # "ret":F
    .restart local v23    # "ret":F
    :cond_2a
    sub-float/2addr v13, v15

    mul-float/2addr v13, v5

    sub-float v13, v7, v13

    cmpl-float v13, v6, v13

    if-lez v13, :cond_2b

    .line 837
    move v13, v14

    move/from16 v30, v4

    .end local v23    # "ret":F
    .restart local v13    # "ret":F
    goto :goto_9

    .line 839
    .end local v13    # "ret":F
    .restart local v23    # "ret":F
    :cond_2b
    mul-float v13, v7, v4

    sub-float v13, v6, v13

    mul-float v30, v7, v8

    mul-float v30, v30, v15

    div-float v13, v13, v30

    mul-float/2addr v13, v14

    .line 840
    .end local v23    # "ret":F
    .restart local v13    # "ret":F
    const/16 v23, 0x0

    .line 841
    .local v23, "tmp":F
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    move/from16 v30, v4

    move/from16 v31, v5

    .end local v4    # "stage2":F
    .end local v5    # "deltaStage1":F
    .local v30, "stage2":F
    .local v31, "deltaStage1":F
    float-to-double v4, v0

    const-wide v33, 0x3fe3333333333333L    # 0.6

    cmpl-double v4, v4, v33

    if-lez v4, :cond_2c

    .line 842
    const v0, 0x3e1604b0

    .end local v23    # "tmp":F
    .local v0, "tmp":F
    goto :goto_8

    .line 843
    .end local v0    # "tmp":F
    .restart local v23    # "tmp":F
    :cond_2c
    float-to-double v4, v0

    cmpl-double v4, v4, v21

    if-lez v4, :cond_2d

    .line 844
    const v0, 0x3f83441a

    .end local v23    # "tmp":F
    .restart local v0    # "tmp":F
    goto :goto_8

    .line 845
    .end local v0    # "tmp":F
    .restart local v23    # "tmp":F
    :cond_2d
    float-to-double v4, v0

    const-wide v21, 0x3fd999999999999aL    # 0.4

    cmpl-double v4, v4, v21

    if-lez v4, :cond_2e

    .line 846
    const v0, 0x3db405a0

    .end local v23    # "tmp":F
    .restart local v0    # "tmp":F
    goto :goto_8

    .line 847
    .end local v0    # "tmp":F
    .restart local v23    # "tmp":F
    :cond_2e
    float-to-double v4, v0

    cmpl-double v0, v4, v25

    if-lez v0, :cond_2f

    .line 848
    const v0, 0x3d870438

    .end local v23    # "tmp":F
    .restart local v0    # "tmp":F
    goto :goto_8

    .line 850
    .end local v0    # "tmp":F
    .restart local v23    # "tmp":F
    :cond_2f
    const v0, 0x3d700780

    .line 851
    .end local v23    # "tmp":F
    .restart local v0    # "tmp":F
    :goto_8
    cmpg-float v4, v13, v0

    if-gez v4, :cond_30

    .line 852
    move v13, v0

    .line 854
    .end local v0    # "tmp":F
    .end local v9    # "deltaFrontEnd":F
    .end local v14    # "platformRate":F
    .end local v19    # "deltaDelta":F
    .end local v20    # "factor":F
    .end local v31    # "deltaStage1":F
    :cond_30
    :goto_9
    goto :goto_a

    .line 855
    .end local v13    # "ret":F
    .end local v30    # "stage2":F
    .restart local v4    # "stage2":F
    .local v23, "ret":F
    :cond_31
    move/from16 v30, v4

    .end local v4    # "stage2":F
    .restart local v30    # "stage2":F
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v0

    const-wide v13, 0x3fe3333333333333L    # 0.6

    cmpl-double v4, v4, v13

    if-lez v4, :cond_32

    .line 856
    const v13, 0x3db405a0

    .end local v23    # "ret":F
    .restart local v13    # "ret":F
    goto :goto_a

    .line 857
    .end local v13    # "ret":F
    .restart local v23    # "ret":F
    :cond_32
    float-to-double v4, v0

    cmpl-double v4, v4, v21

    if-lez v4, :cond_33

    .line 858
    const v13, 0x3da50528

    .end local v23    # "ret":F
    .restart local v13    # "ret":F
    goto :goto_a

    .line 859
    .end local v13    # "ret":F
    .restart local v23    # "ret":F
    :cond_33
    float-to-double v4, v0

    const-wide v13, 0x3fd999999999999aL    # 0.4

    cmpl-double v4, v4, v13

    if-lez v4, :cond_34

    .line 860
    const v13, 0x3d9604b0

    .end local v23    # "ret":F
    .restart local v13    # "ret":F
    goto :goto_a

    .line 861
    .end local v13    # "ret":F
    .restart local v23    # "ret":F
    :cond_34
    float-to-double v4, v0

    cmpl-double v4, v4, v25

    if-lez v4, :cond_35

    .line 862
    const v13, 0x3d870438

    .end local v23    # "ret":F
    .restart local v13    # "ret":F
    goto :goto_a

    .line 863
    .end local v13    # "ret":F
    .restart local v23    # "ret":F
    :cond_35
    float-to-double v4, v0

    cmpl-double v0, v4, v28

    if-lez v0, :cond_36

    .line 864
    const v13, 0x3d700780

    .end local v23    # "ret":F
    .restart local v13    # "ret":F
    goto :goto_a

    .line 866
    .end local v13    # "ret":F
    .restart local v23    # "ret":F
    :cond_36
    const v13, 0x3cf00780

    .line 869
    .end local v23    # "ret":F
    .restart local v13    # "ret":F
    :goto_a
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v0

    const-wide v19, 0x3fd6666666666666L    # 0.35

    cmpg-double v0, v4, v19

    if-gez v0, :cond_37

    const v0, 0x3e1604b0

    cmpl-float v4, v13, v0

    if-lez v4, :cond_37

    .line 870
    const v13, 0x3e1604b0

    .line 872
    :cond_37
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v0

    cmpg-double v0, v4, v25

    if-gez v0, :cond_38

    const v0, 0x3df00780

    cmpl-float v0, v13, v0

    if-lez v0, :cond_38

    .line 873
    const v13, 0x3df00780

    .line 875
    :cond_38
    const v0, 0x3c700780

    cmpg-float v0, v13, v0

    if-ltz v0, :cond_39

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v0

    const-wide v19, 0x3fb47ae147ae147bL    # 0.08

    cmpg-double v0, v4, v19

    if-gez v0, :cond_3a

    .line 876
    :cond_39
    const v13, 0x3c700780

    .line 878
    :cond_3a
    const-wide/16 v4, 0xe42

    cmp-long v0, v2, v4

    if-lez v0, :cond_3b

    .line 879
    const v0, 0x358637bd    # 1.0E-6f

    move v5, v0

    .end local v13    # "ret":F
    .local v0, "ret":F
    goto :goto_b

    .line 878
    .end local v0    # "ret":F
    .restart local v13    # "ret":F
    :cond_3b
    move v5, v13

    .line 880
    .end local v8    # "stage1":F
    .end local v13    # "ret":F
    .end local v15    # "backend":F
    .end local v16    # "frontend":F
    .end local v17    # "time":F
    .end local v30    # "stage2":F
    .local v5, "ret":F
    :goto_b
    goto :goto_d

    .line 763
    :cond_3c
    move/from16 v23, v5

    .end local v5    # "ret":F
    .restart local v23    # "ret":F
    goto :goto_d

    .line 881
    .end local v23    # "ret":F
    .restart local v5    # "ret":F
    :cond_3d
    move/from16 v23, v5

    .end local v5    # "ret":F
    .restart local v23    # "ret":F
    const/16 v0, 0x1e

    if-ne v8, v0, :cond_41

    .line 882
    sub-float v0, v7, v6

    div-float/2addr v0, v7

    const/high16 v4, 0x41700000    # 15.0f

    mul-float/2addr v4, v7

    mul-float/2addr v0, v4

    mul-float v4, v7, v31

    add-float/2addr v0, v4

    .line 883
    .end local v23    # "ret":F
    .restart local v0    # "ret":F
    const v4, 0x3fe66666    # 1.8f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_3e

    .line 884
    const v0, 0x3fe66666    # 1.8f

    .line 885
    :cond_3e
    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v4, v7

    cmpl-float v4, v0, v4

    if-lez v4, :cond_3f

    .line 886
    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v0, v7, v4

    .line 887
    :cond_3f
    mul-float v16, v16, v7

    cmpg-float v4, v6, v16

    if-gez v4, :cond_40

    .line 888
    div-float v4, v7, v30

    mul-float v4, v4, v32

    move v5, v4

    .end local v0    # "ret":F
    .local v4, "ret":F
    goto :goto_c

    .line 887
    .end local v4    # "ret":F
    .restart local v0    # "ret":F
    :cond_40
    move v5, v0

    .line 889
    .end local v0    # "ret":F
    .restart local v5    # "ret":F
    :goto_c
    mul-float v31, v31, v7

    cmpg-float v0, v6, v31

    if-gez v0, :cond_42

    .line 890
    div-float v5, v7, v30

    goto :goto_d

    .line 881
    .end local v5    # "ret":F
    .restart local v23    # "ret":F
    :cond_41
    move/from16 v5, v23

    .line 892
    .end local v23    # "ret":F
    .restart local v5    # "ret":F
    :cond_42
    :goto_d
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v4, 0x4b

    if-ne v0, v4, :cond_49

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    if-eqz v0, :cond_49

    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->BOARD_PLATFORM:Ljava/lang/String;

    .line 893
    const-string/jumbo v4, "msmnile"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 894
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getRateByDelta(F)F

    move-result v0

    .line 895
    .end local v5    # "ret":F
    .restart local v0    # "ret":F
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    cmpg-float v4, v4, v24

    if-gez v4, :cond_47

    .line 896
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    const-wide v8, 0x3fdae147ae147ae1L    # 0.42

    cmpg-double v4, v4, v8

    if-gez v4, :cond_43

    .line 897
    const v0, 0x3f1604b0

    .line 899
    :cond_43
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    const-wide v8, 0x3fd6666666666666L    # 0.35

    cmpg-double v4, v4, v8

    if-gez v4, :cond_44

    .line 900
    const v0, 0x3eed876c

    .line 902
    :cond_44
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    cmpg-double v4, v4, v25

    if-gez v4, :cond_45

    .line 903
    const v0, 0x3eaf0578

    .line 905
    :cond_45
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    cmpg-double v4, v4, v28

    if-gez v4, :cond_46

    .line 906
    const v0, 0x3e610708

    .line 907
    :cond_46
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    const-wide v8, 0x3fbeb851eb851eb8L    # 0.12

    cmpg-double v4, v4, v8

    if-gez v4, :cond_47

    .line 908
    const v0, 0x3db405a0

    .line 910
    :cond_47
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    const-wide v8, 0x3fe6666666666666L    # 0.7

    cmpl-double v4, v4, v8

    if-lez v4, :cond_48

    .line 911
    const v0, 0x3f2f0578

    move v5, v0

    goto :goto_e

    .line 910
    :cond_48
    move v5, v0

    .line 913
    .end local v0    # "ret":F
    .restart local v5    # "ret":F
    :goto_e
    float-to-double v8, v6

    const-wide v13, 0x3f789374bc6a7efaL    # 0.006

    cmpg-double v0, v8, v13

    if-gez v0, :cond_50

    .line 914
    const v5, 0x3db405a0

    goto/16 :goto_10

    .line 916
    :cond_49
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v4, 0x4b

    if-ne v0, v4, :cond_50

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    if-eqz v0, :cond_50

    .line 917
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-static {v0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getRateByDelta(F)F

    move-result v0

    .line 918
    .end local v5    # "ret":F
    .restart local v0    # "ret":F
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    cmpg-float v4, v4, v24

    if-gez v4, :cond_4e

    .line 919
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    const-wide v8, 0x3fdae147ae147ae1L    # 0.42

    cmpg-double v4, v4, v8

    if-gez v4, :cond_4a

    const v4, 0x3e610708

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4a

    .line 920
    const v0, 0x3e610708

    .line 922
    :cond_4a
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    const-wide v8, 0x3fd6666666666666L    # 0.35

    cmpg-double v4, v4, v8

    if-gez v4, :cond_4b

    const v4, 0x3e480640

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4b

    .line 923
    const v0, 0x3e480640

    .line 925
    :cond_4b
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    cmpg-double v4, v4, v25

    if-gez v4, :cond_4c

    const v4, 0x3e1604b0

    cmpl-float v5, v0, v4

    if-lez v5, :cond_4c

    .line 926
    const v0, 0x3e1604b0

    .line 928
    :cond_4c
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    cmpg-double v4, v4, v28

    if-gez v4, :cond_4d

    const v4, 0x3db405a0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4d

    .line 929
    const v0, 0x3db405a0

    .line 930
    :cond_4d
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    const-wide v8, 0x3fbeb851eb851eb8L    # 0.12

    cmpg-double v4, v4, v8

    if-gez v4, :cond_4e

    const v4, 0x3d3405a0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4e

    .line 931
    const v0, 0x3d3405a0

    .line 933
    :cond_4e
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    float-to-double v4, v4

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    cmpl-double v4, v4, v8

    if-lez v4, :cond_4f

    const v4, 0x3e1604b0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_4f

    .line 934
    const v0, 0x3e1604b0

    move v5, v0

    goto :goto_f

    .line 936
    :cond_4f
    move v5, v0

    .end local v0    # "ret":F
    .restart local v5    # "ret":F
    :goto_f
    float-to-double v8, v6

    const-wide v13, 0x3f789374bc6a7efaL    # 0.006

    cmpg-double v0, v8, v13

    if-gez v0, :cond_50

    .line 937
    const v5, 0x3d3405a0

    .line 941
    :cond_50
    :goto_10
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_51

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x46000000    # 8192.0f

    mul-float v9, v5, v4

    float-to-int v4, v9

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mDelta:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " runningTimeDelta:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " S:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " preS:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mTargetValue:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mCurrentValue:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " HZ:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->HZ:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ms:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_51
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCount:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCount:I

    .line 948
    const/16 v4, 0x14

    if-lt v0, v4, :cond_52

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_52

    .line 949
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCount:I

    .line 950
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    mul-float v4, p1, v27

    float-to-int v4, v4

    const/4 v8, -0x2

    const-string/jumbo v9, "screen_brightness_cur"

    invoke-static {v0, v9, v4, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 953
    sget-object v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    mul-float v4, v5, v27

    float-to-int v4, v4

    const-string/jumbo v9, "screen_brightness_rate"

    invoke-static {v0, v9, v4, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 957
    :cond_52
    return v5
.end method

.method public static getStatus()I
    .locals 6

    .line 254
    sget-wide v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGeneration:J

    sput-wide v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mRunningGeneration:J

    .line 255
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    const-string v1, "RampAnimator"

    if-nez v0, :cond_1

    .line 256
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 257
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 258
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 263
    :cond_1
    const/4 v2, 0x2

    if-eq v0, v2, :cond_22

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPolicyChange:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestPolicy:I

    if-ne v0, v2, :cond_2

    goto/16 :goto_4

    .line 275
    :cond_2
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsPowerRequestLowPowerModeChange:Z

    if-eqz v0, :cond_5

    .line 276
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 277
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestLowPowerMode:Z

    if-eqz v0, :cond_3

    .line 278
    const/16 v0, 0x23

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_0

    .line 280
    :cond_3
    const/16 v0, 0x28

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 281
    :goto_0
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_4

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 3 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_4
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 286
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

    .line 289
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 290
    :cond_7
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 291
    if-ne v0, v4, :cond_9

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    .line 292
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_9

    .line 294
    :cond_8
    const/16 v0, 0x46

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_1

    .line 295
    :cond_9
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    .line 296
    sput v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 298
    :cond_a
    :goto_1
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_b

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 4 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_b
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 303
    :cond_c
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsAutoBrightnessStatusChange:Z

    if-eqz v0, :cond_f

    .line 304
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 305
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoBrightnessEnabled:Z

    if-eqz v0, :cond_d

    .line 306
    const/16 v0, 0x2d

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_2

    .line 308
    :cond_d
    const/16 v0, 0x32

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 309
    :goto_2
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_e

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 5 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_e
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 314
    :cond_f
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessCamera:I

    const/16 v3, 0x37

    const/4 v4, 0x1

    if-ne v0, v4, :cond_11

    .line 315
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 316
    sput v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 317
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_10

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 6 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_10
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 320
    :cond_11
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    if-ne v0, v3, :cond_13

    .line 321
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 322
    const/16 v0, 0x3c

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 323
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_12

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_12
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 328
    :cond_13
    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_18

    .line 329
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 330
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessAdjustmentFlags:I

    if-nez v0, :cond_14

    .line 331
    const/16 v0, 0xa

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_3

    .line 332
    :cond_14
    if-ne v0, v4, :cond_15

    .line 333
    const/16 v0, 0xb

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_3

    .line 334
    :cond_15
    if-ne v0, v2, :cond_16

    .line 335
    const/16 v0, 0xc

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 336
    :cond_16
    :goto_3
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_17

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 8 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_17
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 341
    :cond_18
    if-ne v3, v4, :cond_1a

    .line 342
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 343
    const/4 v0, 0x5

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 344
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_19

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 9 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_19
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 349
    :cond_1a
    const/16 v2, 0x8

    if-ne v3, v2, :cond_1c

    .line 350
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 351
    const/16 v0, 0x4b

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 352
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_1b

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 10 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_1b
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 357
    :cond_1c
    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessGallery:I

    const/16 v3, 0x38

    if-ne v2, v4, :cond_1e

    .line 358
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 359
    sput v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 360
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_1d

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 11 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1d
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 363
    :cond_1e
    if-ne v0, v3, :cond_20

    .line 364
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 365
    const/16 v0, 0x3d

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 366
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_1f

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 12 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1f
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 371
    :cond_20
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_21

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 20 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_21
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0

    .line 265
    :cond_22
    :goto_4
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreStatus:I

    .line 266
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    if-ne v0, v2, :cond_23

    .line 267
    const/16 v0, 0x19

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    goto :goto_5

    .line 269
    :cond_23
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    .line 270
    :goto_5
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_24

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### 2 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_24
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    return v0
.end method

.method static getTarget(FFZ)F
    .locals 11
    .param p0, "target"    # F
    .param p1, "cur"    # F
    .param p2, "animating"    # Z

    .line 404
    sput p1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    .line 405
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDimDebug:I

    const-string v1, "dim_target:"

    const/4 v2, 0x1

    const-string v3, "RampAnimator"

    if-ne v0, v2, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return p0

    .line 409
    :cond_0
    invoke-static {p1, p0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->EqualsWithMargin(FF)Z

    move-result v0

    const/16 v4, 0xa

    if-eqz v0, :cond_3

    .line 410
    const/high16 p0, -0x40000000    # -2.0f

    .line 411
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_1

    .line 412
    const-string/jumbo v0, "same target."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    if-eq v0, v4, :cond_2

    .line 414
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    .line 415
    :cond_2
    return p0

    .line 416
    :cond_3
    if-eqz p2, :cond_6

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    invoke-static {v0, p0}, Lcom/android/server/display/OpBrightnessReasonAndRate;->EqualsWithMargin(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 417
    const/high16 p0, -0x40800000    # -1.0f

    .line 418
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_4

    .line 419
    const-string/jumbo v0, "same target!"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_4
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    if-eq v0, v4, :cond_5

    .line 421
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    .line 422
    :cond_5
    return p0

    .line 423
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

    .line 433
    const/high16 p0, -0x40800000    # -1.0f

    .line 434
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

    .line 435
    return p0

    .line 436
    :cond_8
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    const/16 v5, 0x19

    if-ne v0, v5, :cond_9

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_9

    .line 437
    const-string v0, "STILL DIM!"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 440
    :cond_9
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_a

    .line 441
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

    const-string v6, " mAutoFirstOn "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoFirstOn:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_a
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoFirstOn:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_b

    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    const/4 v7, 0x4

    if-ne v0, v7, :cond_b

    .line 443
    sput v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    .line 444
    const-string v0, "REASON_AUTOMATIC_ONING"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    sput-boolean v6, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoFirstOn:Z

    goto :goto_0

    .line 447
    :cond_b
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValueReason:I

    .line 449
    :goto_0
    invoke-static {}, Lcom/android/server/display/OpBrightnessReasonAndRate;->getStatus()I

    .line 451
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mStatus:I

    if-ne v0, v5, :cond_10

    .line 452
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    const/high16 v4, 0x41000000    # 8.0f

    div-float/2addr v0, v4

    .line 454
    .end local p0    # "target":F
    .local v0, "target":F
    const-string/jumbo p0, "ro.boot.project_name"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v4, "20801"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-ne v2, p0, :cond_c

    .line 455
    sget p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mMinFromConfig:F

    goto :goto_1

    :cond_c
    const p0, 0x3d4ccccd    # 0.05f

    .line 456
    .local p0, "dim_lim":F
    :goto_1
    cmpg-float v2, v0, p0

    if-gez v2, :cond_d

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    cmpl-float v2, v2, p0

    if-lez v2, :cond_d

    .line 457
    move v0, p0

    .line 458
    :cond_d
    sget-boolean v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v2, :cond_f

    .line 459
    sget-object v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, -0x2

    const-string v5, "dim_target"

    invoke-static {v2, v5, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 462
    .local v2, "it":I
    if-lez v2, :cond_e

    .line 463
    int-to-float v4, v2

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v0, v4, v5

    .line 464
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v2    # "it":I
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DIM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    .line 468
    .end local v0    # "target":F
    .local p0, "target":F
    :cond_10
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    .line 469
    sub-float v0, p0, p1

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDelta:F

    .line 471
    sget-wide v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGeneration:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    sput-wide v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGeneration:J

    .line 472
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_11

    .line 473
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

    .line 479
    :cond_11
    return p0
.end method

.method private handleSettingsChange(Z)V
    .locals 2
    .param p1, "userSwitch"    # Z

    .line 1038
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallbacks:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1039
    const-string v0, "RampAnimator"

    const-string/jumbo v1, "updateBrightness!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    return-void
.end method

.method public static onDarkModeChanged()V
    .locals 1

    .line 1127
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDarkModeInitiated:Z

    .line 1128
    return-void
.end method

.method public static requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 5
    .param p0, "dpr"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 213
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestScreenBrightnessOverride:F

    .line 214
    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    .line 215
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsowerRequestScreenBrightnessOverrideChange:Z

    .line 216
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

    .line 217
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestScreenBrightnessOverride:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    :cond_1
    sput-boolean v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsowerRequestScreenBrightnessOverrideChange:Z

    .line 219
    const-string v1, "OVERRIDE CHANGING!"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_2
    sget-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestLowPowerMode:Z

    sput-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestLowPowerMode:Z

    .line 223
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    sput-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestLowPowerMode:Z

    .line 224
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsPowerRequestLowPowerModeChange:Z

    .line 225
    sget-boolean v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestLowPowerMode:Z

    if-eq v4, v1, :cond_3

    .line 226
    sput-boolean v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsPowerRequestLowPowerModeChange:Z

    .line 229
    :cond_3
    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestPolicy:I

    .line 230
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    sput v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPowerRequestPolicy:I

    .line 231
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPolicyChange:Z

    .line 232
    sget v4, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPrePowerRequestPolicy:I

    if-eq v1, v4, :cond_4

    .line 233
    sput-boolean v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPolicyChange:Z

    .line 234
    const-string v1, "POLICY CHANGING!"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_4
    sget-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoBrightnessEnabled:Z

    sput-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreAutoBrightnessEnabled:Z

    .line 238
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    sput-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoBrightnessEnabled:Z

    .line 239
    sput-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsAutoBrightnessStatusChange:Z

    .line 240
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mPreAutoBrightnessEnabled:Z

    if-eq v0, v1, :cond_6

    .line 241
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 242
    sput-boolean v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mAutoFirstOn:Z

    .line 243
    :cond_5
    sput-boolean v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsAutoBrightnessStatusChange:Z

    .line 244
    const-string v0, "AUTO CHANGING!"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_6
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_7

    .line 247
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

    .line 251
    :cond_7
    return-void
.end method

.method public static setCallingUid(I)V
    .locals 2
    .param p0, "uid"    # I

    .line 1042
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallingUid:I

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCallingUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RampAnimator"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void
.end method

.method public static setReason(II)V
    .locals 2
    .param p0, "reason"    # I
    .param p1, "flag"    # I

    .line 206
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    .line 207
    sput p1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessAdjustmentFlags:I

    .line 208
    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mDebug:Z

    if-eqz v0, :cond_0

    .line 209
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

    .line 210
    :cond_0
    return-void
.end method

.method public static updateTargAndCurValue(F)V
    .locals 0
    .param p0, "target"    # F

    .line 578
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    .line 579
    sput p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    .line 580
    return-void
.end method


# virtual methods
.method public clampBrightness(F)F
    .locals 2
    .param p1, "brightness"    # F

    .line 1083
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFodMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1086
    :cond_0
    return p1

    .line 1084
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

    .line 1046
    const-string v0, ""

    .line 1047
    .local v0, "processName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallingUid:I

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1050
    const-string v1, "android.uid.system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mFrontPackageName:Ljava/lang/String;

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1051
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

    .line 1052
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

    .line 1053
    sget-boolean v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mIsSystemUIOrSetting:Z

    return v1
.end method

.method public setBoostBrightnessCamera(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 1026
    sput-boolean p1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCameraInFront:Z

    .line 1027
    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCameraRequestBoost:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessCamera:I

    .line 1028
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallbacks:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1029
    return-void
.end method

.method public setBoostBrightnessGallery(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 1031
    sput-boolean p1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGalleryInFront:Z

    .line 1032
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGalleryRequestBoost:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessGallery:I

    .line 1033
    sget-boolean v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mGalleryInFront:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCamera2GalleryRequestBoost:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBoostBrightnessCamera2Gallery:I

    .line 1034
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCallbacks:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->updateBrightness()V

    .line 1035
    return-void
.end method

.method public setScreenState(I)V
    .locals 4
    .param p1, "state"    # I

    .line 1113
    iput p1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mScreenState:I

    .line 1114
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->removeMessages(I)V

    .line 1116
    iput-boolean v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    goto :goto_0

    .line 1119
    :cond_0
    sget v1, Lcom/android/server/display/OpBrightnessReasonAndRate;->mCurrentValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1120
    iget-object v1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->removeMessages(I)V

    .line 1121
    iget-object v1, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1124
    :cond_1
    :goto_0
    return-void
.end method

.method public setSliderDuration(F)V
    .locals 8
    .param p1, "target"    # F

    .line 377
    sget v0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mTargetValue:F

    sub-float v0, p1, v0

    .line 378
    .local v0, "delta":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 379
    .local v1, "deltaAbs":F
    const/4 v2, 0x0

    .line 380
    .local v2, "durationMs":I
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    float-to-double v4, v1

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 381
    const/16 v2, 0x1388

    goto :goto_0

    .line 382
    :cond_0
    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    .line 383
    const/16 v2, 0xfa0

    goto :goto_0

    .line 384
    :cond_1
    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    .line 385
    const/4 v2, 0x0

    .line 386
    float-to-double v3, p1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    .line 387
    const/16 v2, 0x2710

    goto :goto_0

    .line 388
    :cond_2
    float-to-double v3, p1

    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 389
    const/16 v2, 0x1b58

    goto :goto_0

    .line 391
    :cond_3
    const/16 v2, 0x1388

    .line 393
    :cond_4
    :goto_0
    sget v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mReason:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    .line 394
    const-string v3, "RampAnimator"

    const-string v4, "NOT REASON_AUTOMATIC!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/16 v2, 0x7d0

    .line 397
    :cond_5
    if-lez v2, :cond_6

    .line 398
    sget-object v3, Lcom/android/server/display/OpBrightnessReasonAndRate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const-string/jumbo v5, "screen_brightness_animation_duration"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 401
    :cond_6
    return-void
.end method

.method public updateBrightnessValue(F)V
    .locals 5
    .param p1, "brightness"    # F

    .line 1095
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1096
    iget-boolean v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    if-eqz v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->removeMessages(I)V

    .line 1098
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    const-wide/16 v3, 0x9c4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1100
    :cond_0
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBrightnessReasonHandler:Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/display/OpBrightnessReasonAndRate$OpBrightnessReasonHandler;->removeMessages(I)V

    .line 1102
    iput-boolean v2, p0, Lcom/android/server/display/OpBrightnessReasonAndRate;->mBlockHbm:Z

    .line 1106
    :cond_1
    :goto_0
    return-void
.end method
