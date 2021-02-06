.class public final Lcom/android/server/display/color/ColorDisplayService;
.super Lcom/android/server/SystemService;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/color/ColorDisplayService$BinderService;,
        Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;,
        Lcom/android/server/display/color/ColorDisplayService$TintHandler;,
        Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;,
        Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;,
        Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;,
        Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;,
        Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;,
        Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;,
        Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;,
        Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;,
        Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;
    }
.end annotation


# static fields
.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_NONE:I = 0x0

.field private static final ARG_DISABLE_SCENE_SCREEN_EFFECT_READ:I = 0x2

.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

.field private static final COLOR_TEMPERATURE_DEFAULT_NATURAL:I = 0x1964

.field private static final COLOR_TEMPERATURE_DEFAULT_VIVID:I = 0x1964

.field private static final COLOR_TEMPERATURE_DELTA_FOR_SLIDER:I = 0x1388

.field private static final COLOR_TEMPERATURE_MODE_AUTO:I = 0x2

.field private static final COLOR_TEMPERATURE_MODE_MANUAL:I = 0x1

.field private static final DURATION_ADVANCE_TEMPERATURE:I = 0x0

.field private static final DURATION_AUTO_CHANGE:I = 0x1f40

.field private static final DURATION_FOD_UNLOCKED:I = 0x7d0

.field private static final DURATION_SWITCH_COLOR_MODE:I = 0x0

.field private static final DURATION_SWITCH_ON_OFF:I = 0xbb8

.field private static final INVERSION_DALTONIZER_DEFEAULT_STATE:I = 0x0

.field private static final LEVEL_COLOR_MATRIX_ONEPLUS_COLOR:I = 0x15e

.field private static final MATRIX_GRAYSCALE:[F

.field static final MATRIX_IDENTITY:[F

.field private static MATRIX_INIT:[F = null

.field private static final MATRIX_INVERT_COLOR:[F

.field private static final MAX_COLOR_TEMPERATURE_FOR_SLIDER:I = 0x2328

.field private static final MIN_COLOR_TEMPERATURE_FOR_SLIDER:I = 0xfa0

.field private static final MSG_APPLY_DISPLAY_WHITE_BALANCE:I = 0x5

.field private static final MSG_APPLY_GLOBAL_SATURATION:I = 0x4

.field private static final MSG_APPLY_NIGHT_DISPLAY_ANIMATED:I = 0x3

.field private static final MSG_APPLY_NIGHT_DISPLAY_IMMEDIATE:I = 0x2

.field private static final MSG_CANCEL_ANIMATOR:I = 0x6

.field private static final MSG_RESET_TEMPERATURE_SPEED:I = 0x64

.field private static final MSG_SET_COLOR_TEMP:I = 0x1

.field private static final MSG_SET_COLOR_TEMP_MODE:I = 0x0

.field private static final MSG_SET_UP:I = 0x1

.field private static final MSG_USER_CHANGED:I = 0x0

.field private static final NOT_SET:I = -0x1

.field static final TAG:Ljava/lang/String; = "ColorDisplayService"

.field private static final TRANSITION_DURATION:J = 0xbb8L


# instance fields
.field private final DEFAULT_MAX_COLOR_TEMEPERATURE:I

.field private final DEFAULT_MIN_COLOR_TEMEPERATURE:I

.field private final KEY_COLOR_CORRECTION:Ljava/lang/String;

.field private final mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

.field private mBootCompleted:Z

.field private mColorDisplayThread:Landroid/os/HandlerThread;

.field private mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentDuration:I

.field private mCurrentUser:I

.field private mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

.field final mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

.field private mForceSwitchOnOffSpeed:Z

.field private final mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

.field private final mHandler:Landroid/os/Handler;

.field private mIrisAutoMode:Z

.field private mIrisCmdHandler:Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

.field private mIsIrisChip:Z

.field private mIsSoftIris:Z

.field private mMaxColorTemperature:I

.field private mMaxColorTemperatureForNative:I

.field private mMaxColorTemperatureForP3:I

.field private mMaxColorTemperatureForSRGB:I

.field private mMinColorTemperature:I

.field private mMinColorTemperatureForNative:I

.field private mMinColorTemperatureForP3:I

.field private mMinColorTemperatureForSRGB:I

.field private mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

.field private final mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

.field private mNightModeState:Z

.field protected mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

.field protected mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field private mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

.field private mTempDisableLocationUpdate:Z

.field private mTempDisableOneplusMatrix:Z

.field private mTimeStamp:J

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 124
    const/16 v0, 0x10

    new-array v1, v0, [F

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 127
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 156
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/color/ColorDisplayService$1;)V

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    .line 171
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    .line 194
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INIT:[F

    .line 208
    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INVERT_COLOR:[F

    return-void

    :array_0
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 298
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 158
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$1;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 161
    new-instance v0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-direct {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 165
    new-instance v0, Lcom/android/server/display/color/GlobalSaturationTintController;

    invoke-direct {v0}, Lcom/android/server/display/color/GlobalSaturationTintController;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    .line 217
    new-instance v0, Lcom/android/server/display/color/AppSaturationController;

    invoke-direct {v0}, Lcom/android/server/display/color/AppSaturationController;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    .line 219
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 232
    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mTempDisableOneplusMatrix:Z

    .line 245
    const-string v2, "fps_color_correction"

    iput-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->KEY_COLOR_CORRECTION:Ljava/lang/String;

    .line 246
    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mTempDisableLocationUpdate:Z

    .line 247
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x125

    aput v4, v3, v0

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    .line 248
    new-array v3, v2, [I

    const/16 v4, 0x124

    aput v4, v3, v0

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    .line 262
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    .line 270
    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mForceSwitchOnOffSpeed:Z

    .line 277
    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisCmdHandler:Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

    .line 282
    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisAutoMode:Z

    .line 285
    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->DEFAULT_MIN_COLOR_TEMEPERATURE:I

    .line 286
    const/16 v4, 0x1f40

    iput v4, p0, Lcom/android/server/display/color/ColorDisplayService;->DEFAULT_MAX_COLOR_TEMEPERATURE:I

    .line 287
    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperature:I

    .line 288
    iput v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperature:I

    .line 289
    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForNative:I

    .line 290
    iput v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForNative:I

    .line 291
    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForSRGB:I

    .line 292
    iput v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForSRGB:I

    .line 293
    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForP3:I

    .line 294
    iput v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForP3:I

    .line 299
    new-instance v3, Lcom/android/server/display/color/ColorDisplayService$TintHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/android/server/display/color/ColorDisplayService$TintHandler;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;Lcom/android/server/display/color/ColorDisplayService$1;)V

    iput-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 302
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 305
    new-instance v1, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    .line 311
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    if-eqz v1, :cond_2

    .line 312
    :cond_0
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_IRIS_SERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/iris/IOneplusIrisManager;

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    .line 315
    const/4 v3, 0x2

    invoke-interface {v1}, Lcom/oneplus/iris/IOneplusIrisManager;->getColorTemperatureMode()I

    move-result v1

    if-ne v3, v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisAutoMode:Z

    .line 318
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ColorDisplayThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    .line 319
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 320
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisCmdHandler:Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

    .line 323
    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/color/ColorDisplayService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayAutoModeChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayCustomStartTimeInternal()Landroid/hardware/display/Time;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Ljava/time/LocalTime;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayCustomStartTimeChanged(Ljava/time/LocalTime;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayCustomEndTimeInternal()Landroid/hardware/display/Time;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Ljava/time/LocalTime;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayCustomEndTimeChanged(Ljava/time/LocalTime;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/color/ColorDisplayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/color/ColorDisplayService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityInversionChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityActivated()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateColorTemperature()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateColorMode()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisAutoMode:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisAutoMode:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/display/color/ColorDisplayService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTemperatureMode(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/color/ColorDisplayService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTemperature(I)V

    return-void
.end method

.method static synthetic access$2602(Lcom/android/server/display/color/ColorDisplayService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    iput p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/color/ColorDisplayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayLastActivatedTimeSetting()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mTempDisableLocationUpdate:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mTempDisableLocationUpdate:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightModeState:Z

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightModeState:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;)Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    .line 117
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/AppSaturationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/ContentResolver;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # I

    .line 117
    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Lcom/android/server/display/color/TintController;
    .param p2, "x2"    # Z

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->applyTint(Lcom/android/server/display/color/TintController;Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Lcom/android/server/display/color/TintController;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/color/ColorDisplayService;->applyTintForTrueTone(Lcom/android/server/display/color/TintController;ZI)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mForceSwitchOnOffSpeed:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/server/display/color/ColorDisplayService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setColorModeInternal(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDeviceColorManagedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/color/ColorDisplayService;->setAppSaturationLevelInternal(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/display/color/ColorDisplayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getTransformCapabilitiesInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/color/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Landroid/database/ContentObserver;

    .line 117
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/server/display/color/ColorDisplayService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayAutoModeInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/display/color/ColorDisplayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeRawInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Landroid/hardware/display/Time;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayCustomStartTimeInternal(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Landroid/hardware/display/Time;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayCustomEndTimeInternal(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setDisplayWhiteBalanceSettingEnabled(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/color/ColorDisplayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v0

    return v0
.end method

.method private applyColorTemperature(I)V
    .locals 4
    .param p1, "value"    # I

    .line 1093
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisCmdHandler:Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

    if-nez v0, :cond_0

    .line 1094
    return-void

    .line 1097
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1098
    return-void
.end method

.method private applyColorTemperatureMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 1101
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisCmdHandler:Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

    if-nez v0, :cond_0

    .line 1102
    return-void

    .line 1105
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1106
    return-void
.end method

.method private applyTint(Lcom/android/server/display/color/TintController;Z)V
    .locals 7
    .param p1, "tintController"    # Lcom/android/server/display/color/TintController;
    .param p2, "immediate"    # Z

    .line 827
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 829
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 830
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v1

    .line 831
    .local v1, "from":[F
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getMatrix()[F

    move-result-object v2

    .line 833
    .local v2, "to":[F
    if-eqz p2, :cond_0

    .line 834
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_1

    .line 836
    :cond_0
    sget-object v3, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 837
    if-nez v1, :cond_1

    sget-object v6, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 836
    invoke-static {v3, v4}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->ofMatrix(Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;[Ljava/lang/Object;)Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    move-result-object v3

    .line 838
    .local v3, "valueAnimator":Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    invoke-virtual {p1, v3}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 839
    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 840
    nop

    .line 841
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000d

    .line 840
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 842
    new-instance v4, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$3e7BuPerYILI5JPZm17hU11tDtY;

    invoke-direct {v4, v0, p1}, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$3e7BuPerYILI5JPZm17hU11tDtY;-><init>(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 847
    new-instance v4, Lcom/android/server/display/color/ColorDisplayService$3;

    invoke-direct {v4, p0, p1, v2, v0}, Lcom/android/server/display/color/ColorDisplayService$3;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;[FLcom/android/server/display/color/DisplayTransformManager;)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 875
    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->start()V

    .line 877
    .end local v3    # "valueAnimator":Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    :goto_1
    return-void
.end method

.method private applyTintForTrueTone(Lcom/android/server/display/color/TintController;ZI)V
    .locals 10
    .param p1, "tintController"    # Lcom/android/server/display/color/TintController;
    .param p2, "immediate"    # Z
    .param p3, "duration"    # I

    .line 887
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 889
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v0

    .line 892
    .local v0, "trueToneActivated":Z
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v1, v1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTemperature:I

    .line 893
    .local v1, "from":I
    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->calculateTargetColorTemperature(Z)I

    move-result v2

    .line 895
    .local v2, "to":I
    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    if-ltz v3, :cond_1

    .line 897
    if-le v3, p3, :cond_0

    move v3, p3

    :cond_0
    move p3, v3

    .line 900
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mForceSwitchOnOffSpeed:Z

    if-eqz v3, :cond_3

    .line 901
    const/16 v3, 0xbb8

    if-le p3, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, p3

    :goto_0
    move p3, v3

    .line 904
    :cond_3
    iput p3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen CCT change from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", immediate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ColorDisplayService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p2, :cond_6

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 917
    :cond_4
    const-string/jumbo v5, "vendor.oem.colormatrix.duration"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 918
    .local v5, "debugDuration":I
    if-eqz v5, :cond_5

    .line 919
    move p3, v5

    .line 921
    :cond_5
    sub-int v7, v1, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int v7, p3, v7

    mul-int/lit8 v7, v7, 0x19

    .line 922
    .local v7, "delay":I
    new-array v3, v3, [I

    aput v1, v3, v6

    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 923
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v8, p3

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 924
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$CD03rpGH_gyJ7kfldJA2G_4W9pE;

    invoke-direct {v4, p0, v7}, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$CD03rpGH_gyJ7kfldJA2G_4W9pE;-><init>(Lcom/android/server/display/color/ColorDisplayService;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 931
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/server/display/color/ColorDisplayService$4;

    invoke-direct {v4, p0, v0, v2, p1}, Lcom/android/server/display/color/ColorDisplayService$4;-><init>(Lcom/android/server/display/color/ColorDisplayService;ZILcom/android/server/display/color/TintController;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mTimeStamp:J

    .line 959
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 909
    .end local v5    # "debugDuration":I
    .end local v7    # "delay":I
    :cond_6
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTemperature(I)V

    .line 911
    iget-boolean v5, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisAutoMode:Z

    if-eq v0, v5, :cond_8

    .line 912
    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTemperatureMode(I)V

    .line 915
    :cond_8
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    .line 961
    :goto_3
    return-void
.end method

.method private calculateTargetColorTemperature(Z)I
    .locals 9
    .param p1, "trueToneEnabled"    # Z

    .line 1000
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1003
    .local v0, "defaultColorTemperatureForWhitePoint":I
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1004
    const/4 v1, 0x0

    .line 1005
    .local v1, "mode":I
    const/4 v4, 0x0

    .line 1006
    .local v4, "fodMode":I
    const/4 v5, 0x0

    .local v5, "advanceSettings":I
    goto :goto_0

    .line 1008
    .end local v1    # "mode":I
    .end local v4    # "fodMode":I
    .end local v5    # "advanceSettings":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v1, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1010
    .restart local v1    # "mode":I
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v6, "fod_mode"

    invoke-static {v4, v6, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1011
    .restart local v4    # "fodMode":I
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v7, "screen_color_mode_advanced_settings_value"

    invoke-static {v5, v7, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 1015
    .restart local v5    # "advanceSettings":I
    :goto_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 1016
    return v0

    .line 1020
    :cond_1
    const/4 v6, 0x3

    if-ne v6, v1, :cond_3

    .line 1021
    const/4 v6, 0x0

    .line 1022
    .local v6, "cursor":I
    iget v7, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-eq v7, v2, :cond_2

    .line 1023
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v7, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v8, "oem_screen_better_value"

    invoke-static {v2, v8, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .end local v6    # "cursor":I
    .local v2, "cursor":I
    goto :goto_1

    .line 1026
    .end local v2    # "cursor":I
    .restart local v6    # "cursor":I
    :cond_2
    const/16 v2, 0x32

    .line 1028
    .end local v6    # "cursor":I
    .restart local v2    # "cursor":I
    :goto_1
    mul-int/lit8 v3, v2, 0x32

    .line 1029
    .local v3, "delta":I
    rsub-int v2, v3, 0x2328

    .line 1030
    .end local v3    # "delta":I
    .local v2, "targetColorTemperature":I
    goto :goto_2

    .line 1031
    .end local v2    # "targetColorTemperature":I
    :cond_3
    move v2, v0

    .line 1035
    .restart local v2    # "targetColorTemperature":I
    :goto_2
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1036
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v3, v3, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 1039
    :cond_4
    invoke-direct {p0, v2, v1, v5}, Lcom/android/server/display/color/ColorDisplayService;->clampColorTemperature(III)I

    move-result v3

    return v3
.end method

.method private clampColorTemperature(III)I
    .locals 3
    .param p1, "colorTemperature"    # I
    .param p2, "colorMode"    # I
    .param p3, "adavanceSettings"    # I

    .line 1064
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperature:I

    .local v0, "maxColorTemperature":I
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperature:I

    .line 1066
    .local v1, "minColorTemperature":I
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 1068
    if-eqz p3, :cond_2

    const/4 v2, 0x1

    if-eq p3, v2, :cond_1

    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    goto :goto_0

    .line 1081
    :cond_0
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForP3:I

    .line 1082
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForP3:I

    .line 1083
    goto :goto_0

    .line 1076
    :cond_1
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForSRGB:I

    .line 1077
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForSRGB:I

    .line 1078
    goto :goto_0

    .line 1071
    :cond_2
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForNative:I

    .line 1072
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForNative:I

    .line 1089
    :cond_3
    :goto_0
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1445
    const-string v0, "COLOR DISPLAY MANAGER dumpsys (color_display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    const-string v0, "Night display:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "    Activated: "

    const-string v2, "    Not available"

    if-eqz v0, :cond_0

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Color temp: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1452
    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    :goto_0
    const-string v0, "Global saturation:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1456
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/color/TintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v3}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1459
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/AppSaturationController;->dump(Ljava/io/PrintWriter;)V

    .line 1464
    const-string v0, "Display white balance:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 1469
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    return-void
.end method

.method private getColorModeInternal()I
    .locals 5

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1331
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1333
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1335
    .local v1, "a11yColorMode":I
    if-ltz v1, :cond_0

    .line 1336
    return v1

    .line 1340
    .end local v1    # "a11yColorMode":I
    :cond_0
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v2, "display_color_mode"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1341
    .local v1, "colorMode":I
    if-ne v1, v3, :cond_1

    .line 1344
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getCurrentColorModeFromSystemProperties()I

    move-result v1

    .line 1349
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1350
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1351
    const/4 v1, 0x0

    goto :goto_0

    .line 1352
    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1353
    invoke-direct {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1354
    const/4 v1, 0x3

    goto :goto_0

    .line 1355
    :cond_3
    if-ne v1, v2, :cond_4

    .line 1356
    invoke-direct {p0, v3}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1357
    const/4 v1, 0x2

    goto :goto_0

    .line 1359
    :cond_4
    const/4 v1, -0x1

    .line 1363
    :cond_5
    :goto_0
    return v1
.end method

.method private getColorTemperatureLimit()V
    .locals 2

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1045
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10e0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperature:I

    .line 1047
    const v1, 0x10e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperature:I

    .line 1049
    const v1, 0x10e0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForNative:I

    .line 1051
    const v1, 0x10e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForNative:I

    .line 1053
    const v1, 0x10e0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForSRGB:I

    .line 1055
    const v1, 0x10e0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForSRGB:I

    .line 1057
    const v1, 0x10e0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForP3:I

    .line 1059
    const v1, 0x10e004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForP3:I

    .line 1061
    return-void
.end method

.method private getCompositionColorSpace(I)I
    .locals 2
    .param p1, "mode"    # I

    .line 731
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 732
    return v1

    .line 735
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getCurrentColorModeFromSystemProperties()I
    .locals 5

    .line 1372
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1373
    .local v0, "displayColorSetting":I
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1374
    const-string/jumbo v3, "persist.sys.sf.color_saturation"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1375
    goto :goto_0

    :cond_0
    move v1, v2

    .line 1374
    :goto_0
    return v1

    .line 1376
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v2, :cond_2

    .line 1377
    return v1

    .line 1378
    :cond_2
    if-ne v0, v1, :cond_3

    .line 1379
    const/4 v1, 0x3

    return v1

    .line 1380
    :cond_3
    const/16 v1, 0x100

    if-lt v0, v1, :cond_4

    const/16 v1, 0x1ff

    if-gt v0, v1, :cond_4

    .line 1382
    return v0

    .line 1384
    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 1134
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 1135
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 1134
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1138
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 1118
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 1119
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 1118
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1122
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private getNightDisplayAutoModeInternal()I
    .locals 3

    .line 1224
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeRawInternal()I

    move-result v0

    .line 1225
    .local v0, "autoMode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1229
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorDisplayService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/4 v0, 0x0

    .line 1235
    :cond_1
    return v0
.end method

.method private getNightDisplayAutoModeRawInternal()I
    .locals 4

    .line 1239
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v1, -0x1

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    .line 1240
    return v1

    .line 1242
    :cond_0
    nop

    .line 1243
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v3, "night_display_auto_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1242
    return v0
.end method

.method private getNightDisplayCustomEndTimeInternal()Landroid/hardware/display/Time;
    .locals 4

    .line 1265
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_custom_end_time"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1267
    .local v0, "endTimeValue":I
    if-ne v0, v3, :cond_0

    .line 1268
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1271
    :cond_0
    new-instance v1, Landroid/hardware/display/Time;

    div-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    return-object v1
.end method

.method private getNightDisplayCustomStartTimeInternal()Landroid/hardware/display/Time;
    .locals 4

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_custom_start_time"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1250
    .local v0, "startTimeValue":I
    if-ne v0, v3, :cond_0

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1254
    :cond_0
    new-instance v1, Landroid/hardware/display/Time;

    div-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    return-object v1
.end method

.method private getNightDisplayLastActivatedTimeSetting()Ljava/time/LocalDateTime;
    .locals 4

    .line 1285
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1293
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_last_activated_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1297
    .local v1, "lastActivatedTime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1299
    :try_start_0
    invoke-static {v1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1300
    :catch_0
    move-exception v2

    .line 1304
    nop

    .line 1305
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 1306
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    .line 1304
    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 1307
    :catch_1
    move-exception v2

    .line 1310
    :cond_0
    sget-object v2, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    return-object v2
.end method

.method private getTransformCapabilitiesInternal()I
    .locals 3

    .line 1198
    const/4 v0, 0x0

    .line 1199
    .local v0, "availabilityFlags":I
    invoke-static {}, Landroid/view/SurfaceControl;->getProtectedContentSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1200
    or-int/lit8 v0, v0, 0x1

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1203
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x11100c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1204
    or-int/lit8 v0, v0, 0x2

    .line 1206
    :cond_1
    const v2, 0x11100c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1207
    or-int/lit8 v0, v0, 0x4

    .line 1209
    :cond_2
    return v0
.end method

.method private isAccessibilityEnabled()Z
    .locals 1

    .line 781
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityDaltonizerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityInversionEnabled()Z

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

.method private isAccessiblityDaltonizerEnabled()Z
    .locals 4

    .line 771
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isAccessiblityInversionEnabled()Z
    .locals 4

    .line 776
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isColorModeAvailable(I)Z
    .locals 5
    .param p1, "colorMode"    # I

    .line 1389
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1391
    .local v0, "availableColorModes":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1392
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 1393
    .local v4, "mode":I
    if-ne v4, p1, :cond_0

    .line 1394
    const/4 v1, 0x1

    return v1

    .line 1392
    .end local v4    # "mode":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1398
    :cond_1
    return v1
.end method

.method private isDeviceColorManagedInternal()Z
    .locals 2

    .line 1193
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 1194
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayTransformManager;->isDeviceColorManaged()Z

    move-result v1

    return v1
.end method

.method private isDisplayWhiteBalanceSettingEnabled()Z
    .locals 6

    .line 1181
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    .line 1182
    return v1

    .line 1184
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1187
    nop

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111005a

    .line 1187
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 1188
    :cond_1
    move v2, v1

    :goto_0
    iget v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1184
    const-string v5, "display_white_balance_enabled"

    invoke-static {v0, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .line 423
    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method static synthetic lambda$applyTint$0(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p0, "dtm"    # Lcom/android/server/display/color/DisplayTransformManager;
    .param p1, "tintController"    # Lcom/android/server/display/color/TintController;
    .param p2, "animator"    # Landroid/animation/ValueAnimator;

    .line 843
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 844
    .local v0, "value":[F
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 845
    move-object v1, p2

    check-cast v1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->updateMinMaxComponents()V

    .line 846
    return-void
.end method

.method private onAccessibilityActivated()V
    .locals 1

    .line 767
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 768
    return-void
.end method

.method private onAccessibilityDaltonizerChanged()V
    .locals 5

    .line 788
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 789
    return-void

    .line 791
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityDaltonizerEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0xc

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v4, "accessibility_display_daltonizer"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    .line 795
    :cond_1
    move v0, v1

    :goto_0
    nop

    .line 797
    .local v0, "daltonizerMode":I
    const-class v2, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/DisplayTransformManager;

    .line 798
    .local v2, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    const/16 v3, 0xc8

    if-nez v0, :cond_2

    .line 800
    sget-object v4, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 802
    invoke-virtual {v2, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    goto :goto_1

    .line 804
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 805
    invoke-virtual {v2, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    .line 807
    :goto_1
    return-void
.end method

.method private onAccessibilityInversionChanged()V
    .locals 3

    .line 813
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 814
    return-void

    .line 816
    :cond_0
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 817
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    const/16 v1, 0x12c

    .line 818
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityInversionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INVERT_COLOR:[F

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 817
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 819
    return-void
.end method

.method private onDisplayColorModeChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 739
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 740
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->cancelAnimator()V

    .line 744
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->cancelAnimator()V

    .line 746
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 748
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 749
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 750
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 757
    :cond_1
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 758
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getMatrix()[F

    move-result-object v1

    .line 759
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getCompositionColorSpace(I)I

    move-result v2

    .line 758
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMode(I[FI)Z

    .line 761
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 762
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 764
    :cond_2
    return-void
.end method

.method private onNightDisplayAutoModeChanged(I)V
    .locals 2
    .param p1, "autoMode"    # I

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayAutoModeChanged: autoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 703
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 704
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    goto :goto_0

    .line 705
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 706
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 709
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_3

    .line 710
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStart()V

    .line 712
    :cond_3
    return-void
.end method

.method private onNightDisplayCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 2
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayCustomEndTimeChanged: endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 728
    :cond_0
    return-void
.end method

.method private onNightDisplayCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 2
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayCustomStartTimeChanged: startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 720
    :cond_0
    return-void
.end method

.method private setAppSaturationLevelInternal(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "affectedPackageName"    # Ljava/lang/String;
    .param p3, "saturationLevel"    # I

    .line 1315
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1316
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/display/color/AppSaturationController;->setSaturationLevel(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    .line 1315
    return v0
.end method

.method private setColorModeInternal(I)V
    .locals 3
    .param p1, "colorMode"    # I

    .line 1321
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1324
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v2, "display_color_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1327
    return-void

    .line 1322
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid colorMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setDisplayWhiteBalanceSettingEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .line 1172
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 1173
    const/4 v0, 0x0

    return v0

    .line 1175
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1177
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1175
    const-string v2, "display_white_balance_enabled"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private setNightDisplayAutoModeInternal(I)Z
    .locals 4
    .param p1, "autoMode"    # I

    .line 1213
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v3, "night_display_last_activated_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_auto_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private setNightDisplayCustomEndTimeInternal(Landroid/hardware/display/Time;)Z
    .locals 4
    .param p1, "endTime"    # Landroid/hardware/display/Time;

    .line 1275
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1276
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1275
    const-string/jumbo v3, "night_display_custom_end_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private setNightDisplayCustomStartTimeInternal(Landroid/hardware/display/Time;)Z
    .locals 4
    .param p1, "startTime"    # Landroid/hardware/display/Time;

    .line 1258
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1260
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1258
    const-string/jumbo v3, "night_display_custom_start_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private setUp()V
    .locals 5

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUp: currentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-interface {v0, v1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->notifySetUp(I)V

    .line 460
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    if-eqz v0, :cond_1

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-interface {v0, v1}, Lcom/oneplus/iris/IOneplusIrisManager;->userSwitch(I)V

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    .line 467
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$2;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/color/ColorDisplayService$2;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    .line 560
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 561
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 563
    const-string/jumbo v1, "night_display_color_temperature"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 565
    const-string/jumbo v1, "night_display_auto_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 567
    const-string/jumbo v1, "night_display_custom_start_time"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 569
    const-string/jumbo v1, "night_display_custom_end_time"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 571
    const-string v1, "display_color_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 573
    nop

    .line 574
    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 573
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 576
    nop

    .line 577
    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 576
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 579
    nop

    .line 580
    const-string v1, "accessibility_display_daltonizer"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 579
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 582
    const-string v1, "display_white_balance_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 586
    const-string/jumbo v1, "oneplus_dc_dimming_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 589
    const-string/jumbo v1, "oem_nightmode_progress_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 591
    const-string/jumbo v1, "oem_nightmode_brightness_progress"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 593
    const-string/jumbo v1, "temp_disable_scene_screen_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 595
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    if-eqz v1, :cond_4

    .line 596
    :cond_3
    const-string/jumbo v1, "oem_screen_better_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 598
    const-string/jumbo v1, "screen_color_mode_settings_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 600
    const-string v1, "fod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 602
    const-string/jumbo v1, "screen_color_mode_advanced_settings_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 607
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityInversionChanged()V

    .line 608
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    .line 609
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateNightStatusForInvAndDalAndGray()V

    .line 611
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->setUpDisplayCompositionColorSpaces(Landroid/content/res/Resources;)V

    .line 615
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 617
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 619
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 622
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 623
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 624
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 625
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 628
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayAutoModeChanged(I)V

    .line 631
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 632
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 633
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 640
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 641
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTemperature:I

    .line 643
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorTemperatureLimit()V

    .line 646
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 648
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setUp(Landroid/content/Context;Z)V

    .line 650
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 655
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->onDCEnable()V

    .line 660
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateColorMode()V

    .line 662
    return-void
.end method

.method private setUpDisplayCompositionColorSpaces(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 429
    const v0, 0x1070032

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 430
    .local v0, "colorModes":[I
    if-nez v0, :cond_0

    .line 431
    return-void

    .line 434
    :cond_0
    const v1, 0x1070033

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 435
    .local v1, "compSpaces":[I
    if-nez v1, :cond_1

    .line 436
    return-void

    .line 439
    :cond_1
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_2

    .line 440
    const-string v2, "ColorDisplayService"

    const-string v3, "Number of composition color spaces doesn\'t match specified color modes"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void

    .line 444
    :cond_2
    new-instance v2, Landroid/util/SparseIntArray;

    array-length v3, v0

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 445
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 446
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    aget v4, v0, v2

    aget v5, v1, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private tearDown()V
    .locals 4

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tearDown: currentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 672
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    .line 674
    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 676
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->endAnimator()V

    .line 679
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 680
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->endAnimator()V

    .line 683
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/TintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 684
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 689
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 690
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "NightMode"

    invoke-virtual {v0, v3, v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    .line 693
    :cond_5
    return-void
.end method

.method private updateColorMode()V
    .locals 3

    .line 1418
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1419
    return-void
.end method

.method private updateColorTemperature()V
    .locals 3

    .line 1415
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1416
    return-void
.end method


# virtual methods
.method public synthetic lambda$applyTintForTrueTone$1$ColorDisplayService(ILandroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "animator"    # Landroid/animation/ValueAnimator;

    .line 925
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 926
    .local v0, "value":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mTimeStamp:J

    sub-long/2addr v1, v3

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 927
    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTemperature(I)V

    .line 928
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mTimeStamp:J

    .line 930
    :cond_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 334
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    .line 340
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    const/16 v2, -0x2710

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_2

    .line 347
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 341
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_2

    .line 342
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 352
    :cond_2
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 327
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$BinderService;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    const-string v1, "color_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/color/ColorDisplayService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 328
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-direct {v1, p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 329
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    new-instance v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-direct {v1}, Lcom/android/server/display/color/DisplayTransformManager;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 356
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 358
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 360
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 361
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 376
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 378
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 380
    .local v0, "message":Landroid/os/Message;
    const/16 v1, -0x2710

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 381
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 383
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 367
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 369
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 370
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 371
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    return-void
.end method

.method onUserChanged(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .line 386
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 388
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 389
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 391
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 392
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 393
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->tearDown()V

    .line 397
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 399
    if-eq p1, v2, :cond_3

    .line 400
    invoke-static {v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 401
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$1;

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/color/ColorDisplayService$1;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 414
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    .line 416
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_3

    .line 417
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    .line 420
    :cond_3
    :goto_1
    return-void
.end method

.method updateDisplayWhiteBalanceStatus()V
    .locals 7

    .line 1143
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v0

    .line 1144
    .local v0, "oldActivated":Z
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 1145
    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1146
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1147
    invoke-static {}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1144
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 1148
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v1

    .line 1150
    .local v1, "activated":Z
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    if-eqz v2, :cond_2

    if-eq v0, v1, :cond_2

    .line 1151
    invoke-interface {v2, v1}, Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;->onDisplayWhiteBalanceStatusChanged(Z)V

    .line 1155
    if-eqz v1, :cond_1

    .line 1156
    iput-boolean v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mForceSwitchOnOffSpeed:Z

    .line 1157
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1159
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    .line 1166
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 1167
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/16 v5, 0xbb8

    invoke-virtual {v2, v3, v5, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1169
    :cond_3
    return-void
.end method

.method updateNightStatusForInvAndDalAndGray()V
    .locals 9

    .line 1424
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1426
    .local v0, "inversionStatus":I
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v4, "accessibility_display_daltonizer_enabled"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1428
    .local v1, "daltonizerStatus":I
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_display_grayscale_enabled"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1430
    .local v2, "grayscaleStatus":I
    const-string v4, "GoogleMatrixMode"

    const-string v6, "ColorDisplayService"

    if-eq v0, v5, :cond_1

    if-eq v1, v5, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1437
    :cond_0
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-ne v2, v5, :cond_4

    .line 1438
    const-string v5, "Exit GoogleMatrix, Recover OneplusMatrix"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v5, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_1

    .line 1431
    :cond_1
    :goto_0
    const-string v7, "Enter GoogleMatrix, Temp Disable OneplusMatrix"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1433
    :cond_2
    const-class v6, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v6}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/color/DisplayTransformManager;

    .line 1434
    .local v6, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    const/16 v7, 0x15e

    sget-object v8, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INIT:[F

    invoke-virtual {v6, v7, v8}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 1436
    .end local v6    # "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    :cond_3
    iget-object v6, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v6, v4, v5, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    .line 1441
    :cond_4
    :goto_1
    return-void
.end method

.method updateReadModeStatusForApp()V
    .locals 4

    .line 1403
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "temp_disable_scene_screen_effect"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1405
    .local v0, "disableStatus":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    .line 1407
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    goto :goto_0

    .line 1408
    :cond_0
    if-nez v0, :cond_1

    .line 1409
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    .line 1410
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    .line 1412
    :cond_1
    :goto_0
    return-void
.end method
