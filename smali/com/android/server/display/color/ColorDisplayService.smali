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

.field private static final MSG_APPLY_DISPLAY_COLOR_TONE:I = 0x7

.field private static final MSG_APPLY_DISPLAY_WHITE_BALANCE:I = 0x5

.field private static final MSG_APPLY_GLOBAL_SATURATION:I = 0x4

.field private static final MSG_APPLY_NIGHT_DISPLAY_ANIMATED:I = 0x3

.field private static final MSG_APPLY_NIGHT_DISPLAY_IMMEDIATE:I = 0x2

.field private static final MSG_CANCEL_ANIMATOR:I = 0x6

.field private static final MSG_RESET_TEMPERATURE_SPEED:I = 0x64

.field private static final MSG_SET_COLOR_TEMP:I = 0x1

.field private static final MSG_SET_COLOR_TEMP_MODE:I = 0x0

.field private static final MSG_SET_COLOR_TONE:I = 0x2

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

    .line 160
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/color/ColorDisplayService$1;)V

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    .line 175
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    .line 198
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INIT:[F

    .line 212
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

    .line 306
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 162
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$1;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 165
    new-instance v0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-direct {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 169
    new-instance v0, Lcom/android/server/display/color/GlobalSaturationTintController;

    invoke-direct {v0}, Lcom/android/server/display/color/GlobalSaturationTintController;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    .line 221
    new-instance v0, Lcom/android/server/display/color/AppSaturationController;

    invoke-direct {v0}, Lcom/android/server/display/color/AppSaturationController;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    .line 223
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 236
    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mTempDisableOneplusMatrix:Z

    .line 249
    const-string v2, "fps_color_correction"

    iput-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->KEY_COLOR_CORRECTION:Ljava/lang/String;

    .line 250
    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mTempDisableLocationUpdate:Z

    .line 251
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x125

    aput v4, v3, v0

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    .line 252
    new-array v3, v2, [I

    const/16 v4, 0x124

    aput v4, v3, v0

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    .line 266
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    .line 274
    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mForceSwitchOnOffSpeed:Z

    .line 281
    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisCmdHandler:Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

    .line 290
    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisAutoMode:Z

    .line 293
    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->DEFAULT_MIN_COLOR_TEMEPERATURE:I

    .line 294
    const/16 v4, 0x1f40

    iput v4, p0, Lcom/android/server/display/color/ColorDisplayService;->DEFAULT_MAX_COLOR_TEMEPERATURE:I

    .line 295
    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperature:I

    .line 296
    iput v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperature:I

    .line 297
    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForNative:I

    .line 298
    iput v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForNative:I

    .line 299
    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForSRGB:I

    .line 300
    iput v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForSRGB:I

    .line 301
    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForP3:I

    .line 302
    iput v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForP3:I

    .line 307
    new-instance v3, Lcom/android/server/display/color/ColorDisplayService$TintHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/android/server/display/color/ColorDisplayService$TintHandler;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;Lcom/android/server/display/color/ColorDisplayService$1;)V

    iput-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 310
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    .line 313
    new-instance v1, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    .line 319
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    if-eqz v1, :cond_2

    .line 320
    :cond_0
    sget-object v1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_IRIS_SERVICE:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/iris/IOneplusIrisManager;

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    .line 323
    const/4 v3, 0x2

    invoke-interface {v1}, Lcom/oneplus/iris/IOneplusIrisManager;->getColorTemperatureMode()I

    move-result v1

    if-ne v3, v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisAutoMode:Z

    .line 326
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ColorDisplayThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    .line 327
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 328
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisCmdHandler:Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

    .line 331
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

.method static synthetic access$2300(Lcom/android/server/display/color/ColorDisplayService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateColorTone()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisAutoMode:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisAutoMode:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/display/color/ColorDisplayService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTemperatureMode(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/color/ColorDisplayService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTemperature(I)V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/display/color/ColorDisplayService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    iput p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/display/color/ColorDisplayService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTone(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/oneplus/iris/IOneplusIrisManager;
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

.method static synthetic access$3200(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayLastActivatedTimeSetting()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
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

.method static synthetic access$3400(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mTempDisableLocationUpdate:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mTempDisableLocationUpdate:Z

    return p1
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

.method static synthetic access$3600(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightModeState:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightModeState:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;)Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    .line 117
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    return-object p1
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

.method static synthetic access$4000(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/AppSaturationController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Lcom/android/server/display/color/TintController;
    .param p2, "x2"    # Z

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->applyTint(Lcom/android/server/display/color/TintController;Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Lcom/android/server/display/color/TintController;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/color/ColorDisplayService;->applyTintForTrueTone(Lcom/android/server/display/color/TintController;ZI)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 117
    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mForceSwitchOnOffSpeed:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Lcom/android/server/display/color/TintController;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/color/ColorDisplayService;->applyTintForColorTone(Lcom/android/server/display/color/TintController;ZI)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/display/color/ColorDisplayService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setColorModeInternal(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/display/color/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Landroid/database/ContentObserver;

    .line 117
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/server/display/color/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDeviceColorManagedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;Ljava/lang/String;I)Z
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

.method static synthetic access$5300(Lcom/android/server/display/color/ColorDisplayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getTransformCapabilitiesInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/display/color/ColorDisplayService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # I

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayAutoModeInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/display/color/ColorDisplayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;

    .line 117
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeRawInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Landroid/hardware/display/Time;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayCustomStartTimeInternal(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Landroid/hardware/display/Time;

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayCustomEndTimeInternal(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setDisplayWhiteBalanceSettingEnabled(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
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

    .line 1235
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisCmdHandler:Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

    if-nez v0, :cond_0

    .line 1236
    return-void

    .line 1239
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1240
    return-void
.end method

.method private applyColorTemperatureMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 1243
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisCmdHandler:Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

    if-nez v0, :cond_0

    .line 1244
    return-void

    .line 1247
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1248
    return-void
.end method

.method private applyColorTone(I)V
    .locals 4
    .param p1, "value"    # I

    .line 1251
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisCmdHandler:Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;

    if-nez v0, :cond_0

    .line 1252
    return-void

    .line 1255
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$IrisCmdHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1256
    return-void
.end method

.method private applyTint(Lcom/android/server/display/color/TintController;Z)V
    .locals 7
    .param p1, "tintController"    # Lcom/android/server/display/color/TintController;
    .param p2, "immediate"    # Z

    .line 852
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 854
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 855
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v1

    .line 856
    .local v1, "from":[F
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getMatrix()[F

    move-result-object v2

    .line 858
    .local v2, "to":[F
    if-eqz p2, :cond_0

    .line 859
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_1

    .line 861
    :cond_0
    sget-object v3, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 862
    if-nez v1, :cond_1

    sget-object v6, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 861
    invoke-static {v3, v4}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->ofMatrix(Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;[Ljava/lang/Object;)Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    move-result-object v3

    .line 863
    .local v3, "valueAnimator":Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    invoke-virtual {p1, v3}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 864
    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 865
    nop

    .line 866
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000d

    .line 865
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 867
    new-instance v4, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$3e7BuPerYILI5JPZm17hU11tDtY;

    invoke-direct {v4, v0, p1}, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$3e7BuPerYILI5JPZm17hU11tDtY;-><init>(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 872
    new-instance v4, Lcom/android/server/display/color/ColorDisplayService$3;

    invoke-direct {v4, p0, p1, v2, v0}, Lcom/android/server/display/color/ColorDisplayService$3;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;[FLcom/android/server/display/color/DisplayTransformManager;)V

    invoke-virtual {v3, v4}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 900
    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->start()V

    .line 902
    .end local v3    # "valueAnimator":Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;
    :goto_1
    return-void
.end method

.method private applyTintForColorTone(Lcom/android/server/display/color/TintController;ZI)V
    .locals 8
    .param p1, "tintController"    # Lcom/android/server/display/color/TintController;
    .param p2, "immediate"    # Z
    .param p3, "duration"    # I

    .line 991
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 993
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v0

    .line 996
    .local v0, "trueToneActivated":Z
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v1, v1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTone:I

    .line 997
    .local v1, "from":I
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->calculateTargetColorTone()I

    move-result v2

    .line 999
    .local v2, "to":I
    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    if-ltz v3, :cond_1

    .line 1001
    if-le v3, p3, :cond_0

    move v3, p3

    :cond_0
    move p3, v3

    .line 1004
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mForceSwitchOnOffSpeed:Z

    if-eqz v3, :cond_3

    .line 1005
    const/16 v3, 0xbb8

    if-le p3, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, p3

    :goto_0
    move p3, v3

    .line 1008
    :cond_3
    iput p3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    .line 1010
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen color tone change from "

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

    .line 1012
    if-nez p2, :cond_6

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 1016
    :cond_4
    const-string/jumbo v3, "vendor.oem.colormatrix.duration"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1017
    .local v3, "debugDuration":I
    if-eqz v3, :cond_5

    .line 1018
    move p3, v3

    .line 1020
    :cond_5
    sub-int v5, v1, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int v5, p3, v5

    mul-int/lit8 v5, v5, 0x19

    .line 1021
    .local v5, "delay":I
    const/4 v6, 0x2

    new-array v6, v6, [I

    aput v1, v6, v4

    const/4 v4, 0x1

    aput v2, v6, v4

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 1022
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    int-to-long v6, p3

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1023
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v6, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$RiXU8wCq3d33tikMygKn82dYijI;

    invoke-direct {v6, p0, v5}, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$RiXU8wCq3d33tikMygKn82dYijI;-><init>(Lcom/android/server/display/color/ColorDisplayService;I)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1030
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v6, Lcom/android/server/display/color/ColorDisplayService$5;

    invoke-direct {v6, p0, v2, p1}, Lcom/android/server/display/color/ColorDisplayService$5;-><init>(Lcom/android/server/display/color/ColorDisplayService;ILcom/android/server/display/color/TintController;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/display/color/ColorDisplayService;->mTimeStamp:J

    .line 1050
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 1013
    .end local v3    # "debugDuration":I
    .end local v5    # "delay":I
    :cond_6
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTone(I)V

    .line 1014
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    .line 1052
    :goto_2
    return-void
.end method

.method private applyTintForTrueTone(Lcom/android/server/display/color/TintController;ZI)V
    .locals 10
    .param p1, "tintController"    # Lcom/android/server/display/color/TintController;
    .param p2, "immediate"    # Z
    .param p3, "duration"    # I

    .line 912
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 914
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v0

    .line 917
    .local v0, "trueToneActivated":Z
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v1, v1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTemperature:I

    .line 918
    .local v1, "from":I
    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->calculateTargetColorTemperature(Z)I

    move-result v2

    .line 920
    .local v2, "to":I
    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    if-ltz v3, :cond_1

    .line 922
    if-le v3, p3, :cond_0

    move v3, p3

    :cond_0
    move p3, v3

    .line 925
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mForceSwitchOnOffSpeed:Z

    if-eqz v3, :cond_3

    .line 926
    const/16 v3, 0xbb8

    if-le p3, v3, :cond_2

    goto :goto_0

    :cond_2
    move v3, p3

    :goto_0
    move p3, v3

    .line 929
    :cond_3
    iput p3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    .line 931
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

    .line 933
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez p2, :cond_6

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 942
    :cond_4
    const-string/jumbo v5, "vendor.oem.colormatrix.duration"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 943
    .local v5, "debugDuration":I
    if-eqz v5, :cond_5

    .line 944
    move p3, v5

    .line 946
    :cond_5
    sub-int v7, v1, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int v7, p3, v7

    mul-int/lit8 v7, v7, 0x19

    .line 947
    .local v7, "delay":I
    new-array v3, v3, [I

    aput v1, v3, v6

    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 948
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    int-to-long v8, p3

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 949
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$CD03rpGH_gyJ7kfldJA2G_4W9pE;

    invoke-direct {v4, p0, v7}, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$CD03rpGH_gyJ7kfldJA2G_4W9pE;-><init>(Lcom/android/server/display/color/ColorDisplayService;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 956
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/server/display/color/ColorDisplayService$4;

    invoke-direct {v4, p0, v0, v2, p1}, Lcom/android/server/display/color/ColorDisplayService$4;-><init>(Lcom/android/server/display/color/ColorDisplayService;ZILcom/android/server/display/color/TintController;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 983
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mTimeStamp:J

    .line 984
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 934
    .end local v5    # "debugDuration":I
    .end local v7    # "delay":I
    :cond_6
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTemperature(I)V

    .line 936
    iget-boolean v5, p0, Lcom/android/server/display/color/ColorDisplayService;->mIrisAutoMode:Z

    if-eq v0, v5, :cond_8

    .line 937
    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTemperatureMode(I)V

    .line 940
    :cond_8
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    .line 986
    :goto_3
    return-void
.end method

.method private calculateTargetColorTemperature(Z)I
    .locals 9
    .param p1, "trueToneEnabled"    # Z

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1102
    .local v0, "defaultColorTemperatureForWhitePoint":I
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1103
    const/4 v1, 0x0

    .line 1104
    .local v1, "mode":I
    const/4 v4, 0x0

    .line 1105
    .local v4, "fodMode":I
    const/4 v5, 0x0

    .local v5, "advanceSettings":I
    goto :goto_0

    .line 1107
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

    .line 1109
    .restart local v1    # "mode":I
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v6, "fod_mode"

    invoke-static {v4, v6, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1110
    .restart local v4    # "fodMode":I
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v7, "screen_color_mode_advanced_settings_value"

    invoke-static {v5, v7, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 1114
    .restart local v5    # "advanceSettings":I
    :goto_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 1115
    return v0

    .line 1119
    :cond_1
    const/4 v6, 0x3

    if-ne v6, v1, :cond_3

    .line 1120
    const/4 v6, 0x0

    .line 1121
    .local v6, "cursor":I
    iget v7, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-eq v7, v2, :cond_2

    .line 1122
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

    .line 1125
    .end local v2    # "cursor":I
    .restart local v6    # "cursor":I
    :cond_2
    const/16 v2, 0x32

    .line 1127
    .end local v6    # "cursor":I
    .restart local v2    # "cursor":I
    :goto_1
    mul-int/lit8 v3, v2, 0x32

    .line 1128
    .local v3, "delta":I
    rsub-int v2, v3, 0x2328

    .line 1129
    .end local v3    # "delta":I
    .local v2, "targetColorTemperature":I
    goto :goto_2

    .line 1130
    .end local v2    # "targetColorTemperature":I
    :cond_3
    move v2, v0

    .line 1134
    .restart local v2    # "targetColorTemperature":I
    :goto_2
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1135
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iget v3, v3, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 1138
    :cond_4
    invoke-direct {p0, v2, v1, v5}, Lcom/android/server/display/color/ColorDisplayService;->clampColorTemperature(III)I

    move-result v3

    return v3
.end method

.method private calculateTargetColorTone()I
    .locals 10

    .line 1145
    const/4 v0, 0x0

    .line 1148
    .local v0, "defaultColorTone":I
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1149
    const/4 v1, 0x0

    .line 1150
    .local v1, "mode":I
    const/4 v4, 0x0

    .line 1151
    .local v4, "fodMode":I
    const/4 v5, 0x0

    .local v5, "advanceSettings":I
    goto :goto_0

    .line 1153
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

    .line 1155
    .restart local v1    # "mode":I
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v6, "fod_mode"

    invoke-static {v4, v6, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1156
    .restart local v4    # "fodMode":I
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v7, "screen_color_mode_advanced_settings_value"

    invoke-static {v5, v7, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 1160
    .restart local v5    # "advanceSettings":I
    :goto_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    .line 1161
    return v3

    .line 1165
    :cond_1
    const/4 v6, 0x3

    const-string v7, "ColorDisplayService"

    if-ne v6, v1, :cond_3

    .line 1166
    const/4 v6, 0x0

    .line 1167
    .local v6, "cursor":I
    iget v8, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-eq v8, v2, :cond_2

    .line 1168
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v8, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v9, "oem_screen_chrominance_value"

    invoke-static {v2, v9, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .end local v6    # "cursor":I
    .local v2, "cursor":I
    goto :goto_1

    .line 1171
    .end local v2    # "cursor":I
    .restart local v6    # "cursor":I
    :cond_2
    const/16 v2, 0x32

    .line 1173
    .end local v6    # "cursor":I
    .restart local v2    # "cursor":I
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slider cursor is: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    mul-int/lit8 v3, v2, 0x2

    rsub-int v2, v3, 0xc8

    .line 1175
    .local v2, "targetColorTone":I
    goto :goto_2

    .line 1176
    .end local v2    # "targetColorTone":I
    :cond_3
    const/4 v2, 0x0

    .line 1179
    .restart local v2    # "targetColorTone":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "targetColorTone is: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    return v2
.end method

.method private clampColorTemperature(III)I
    .locals 3
    .param p1, "colorTemperature"    # I
    .param p2, "colorMode"    # I
    .param p3, "adavanceSettings"    # I

    .line 1206
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperature:I

    .local v0, "maxColorTemperature":I
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperature:I

    .line 1208
    .local v1, "minColorTemperature":I
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 1210
    if-eqz p3, :cond_2

    const/4 v2, 0x1

    if-eq p3, v2, :cond_1

    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    goto :goto_0

    .line 1223
    :cond_0
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForP3:I

    .line 1224
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForP3:I

    .line 1225
    goto :goto_0

    .line 1218
    :cond_1
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForSRGB:I

    .line 1219
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForSRGB:I

    .line 1220
    goto :goto_0

    .line 1213
    :cond_2
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForNative:I

    .line 1214
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForNative:I

    .line 1231
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

    .line 1601
    const-string v0, "COLOR DISPLAY MANAGER dumpsys (color_display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    const-string v0, "Night display:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "    Activated: "

    const-string v2, "    Not available"

    if-eqz v0, :cond_0

    .line 1605
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

    .line 1606
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

    .line 1608
    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1611
    :goto_0
    const-string v0, "Global saturation:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1612
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/color/TintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1613
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

    .line 1615
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1618
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/AppSaturationController;->dump(Ljava/io/PrintWriter;)V

    .line 1620
    const-string v0, "Display white balance:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1622
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

    .line 1623
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 1625
    :cond_2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1628
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

    .line 1629
    return-void
.end method

.method private getColorModeInternal()I
    .locals 5

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1481
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1483
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1485
    .local v1, "a11yColorMode":I
    if-ltz v1, :cond_0

    .line 1486
    return v1

    .line 1490
    .end local v1    # "a11yColorMode":I
    :cond_0
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v2, "display_color_mode"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1491
    .local v1, "colorMode":I
    if-ne v1, v3, :cond_1

    .line 1494
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getCurrentColorModeFromSystemProperties()I

    move-result v1

    .line 1499
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1500
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1501
    const/4 v1, 0x0

    goto :goto_0

    .line 1502
    :cond_2
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1503
    invoke-direct {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1504
    const/4 v1, 0x3

    goto :goto_0

    .line 1505
    :cond_3
    if-ne v1, v2, :cond_4

    .line 1506
    invoke-direct {p0, v3}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1507
    const/4 v1, 0x2

    goto :goto_0

    .line 1509
    :cond_4
    const/4 v1, -0x1

    .line 1513
    :cond_5
    :goto_0
    return v1
.end method

.method private getColorTemperatureLimit()V
    .locals 2

    .line 1185
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1187
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10e0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperature:I

    .line 1189
    const v1, 0x10e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperature:I

    .line 1191
    const v1, 0x10e0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForNative:I

    .line 1193
    const v1, 0x10e004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForNative:I

    .line 1195
    const v1, 0x10e0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForSRGB:I

    .line 1197
    const v1, 0x10e0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForSRGB:I

    .line 1199
    const v1, 0x10e0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMinColorTemperatureForP3:I

    .line 1201
    const v1, 0x10e0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mMaxColorTemperatureForP3:I

    .line 1203
    return-void
.end method

.method private getCompositionColorSpace(I)I
    .locals 2
    .param p1, "mode"    # I

    .line 756
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 757
    return v1

    .line 760
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getCurrentColorModeFromSystemProperties()I
    .locals 5

    .line 1522
    const-string/jumbo v0, "persist.sys.sf.native_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1523
    .local v0, "displayColorSetting":I
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1524
    const-string/jumbo v3, "persist.sys.sf.color_saturation"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1525
    goto :goto_0

    :cond_0
    move v1, v2

    .line 1524
    :goto_0
    return v1

    .line 1526
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v2, :cond_2

    .line 1527
    return v1

    .line 1528
    :cond_2
    if-ne v0, v1, :cond_3

    .line 1529
    const/4 v1, 0x3

    return v1

    .line 1530
    :cond_3
    const/16 v1, 0x100

    if-lt v0, v1, :cond_4

    const/16 v1, 0x1ff

    if-gt v0, v1, :cond_4

    .line 1532
    return v0

    .line 1534
    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 1284
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 1285
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 1284
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1288
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

    .line 1268
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 1269
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 1268
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1272
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

    .line 1374
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeRawInternal()I

    move-result v0

    .line 1375
    .local v0, "autoMode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1379
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 1382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorDisplayService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/4 v0, 0x0

    .line 1385
    :cond_1
    return v0
.end method

.method private getNightDisplayAutoModeRawInternal()I
    .locals 4

    .line 1389
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v1, -0x1

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    .line 1390
    return v1

    .line 1392
    :cond_0
    nop

    .line 1393
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v3, "night_display_auto_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1392
    return v0
.end method

.method private getNightDisplayCustomEndTimeInternal()Landroid/hardware/display/Time;
    .locals 4

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_custom_end_time"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1417
    .local v0, "endTimeValue":I
    if-ne v0, v3, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1421
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

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_custom_start_time"

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1400
    .local v0, "startTimeValue":I
    if-ne v0, v3, :cond_0

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1404
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

    .line 1435
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1443
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_last_activated_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "lastActivatedTime":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1449
    :try_start_0
    invoke-static {v1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1450
    :catch_0
    move-exception v2

    .line 1454
    nop

    .line 1455
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 1456
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    .line 1454
    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_1
    .catch Ljava/time/DateTimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 1457
    :catch_1
    move-exception v2

    .line 1460
    :cond_0
    sget-object v2, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    return-object v2
.end method

.method private getTransformCapabilitiesInternal()I
    .locals 3

    .line 1348
    const/4 v0, 0x0

    .line 1349
    .local v0, "availabilityFlags":I
    invoke-static {}, Landroid/view/SurfaceControl;->getProtectedContentSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1350
    or-int/lit8 v0, v0, 0x1

    .line 1352
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1353
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x11100c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1354
    or-int/lit8 v0, v0, 0x2

    .line 1356
    :cond_1
    const v2, 0x11100c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1357
    or-int/lit8 v0, v0, 0x4

    .line 1359
    :cond_2
    return v0
.end method

.method private isAccessibilityEnabled()Z
    .locals 1

    .line 806
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

    .line 796
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

    .line 801
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

    .line 1539
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1541
    .local v0, "availableColorModes":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1542
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 1543
    .local v4, "mode":I
    if-ne v4, p1, :cond_0

    .line 1544
    const/4 v1, 0x1

    return v1

    .line 1542
    .end local v4    # "mode":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1548
    :cond_1
    return v1
.end method

.method private isDeviceColorManagedInternal()Z
    .locals 2

    .line 1343
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 1344
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayTransformManager;->isDeviceColorManaged()Z

    move-result v1

    return v1
.end method

.method private isDisplayWhiteBalanceSettingEnabled()Z
    .locals 6

    .line 1331
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_0

    .line 1332
    return v1

    .line 1334
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1337
    nop

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111005a

    .line 1337
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 1338
    :cond_1
    move v2, v1

    :goto_0
    iget v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1334
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

    .line 431
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

    .line 868
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 869
    .local v0, "value":[F
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 870
    move-object v1, p2

    check-cast v1, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->updateMinMaxComponents()V

    .line 871
    return-void
.end method

.method private onAccessibilityActivated()V
    .locals 1

    .line 792
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 793
    return-void
.end method

.method private onAccessibilityDaltonizerChanged()V
    .locals 5

    .line 813
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 814
    return-void

    .line 816
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityDaltonizerEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 817
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

    .line 820
    :cond_1
    move v0, v1

    :goto_0
    nop

    .line 822
    .local v0, "daltonizerMode":I
    const-class v2, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/DisplayTransformManager;

    .line 823
    .local v2, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    const/16 v3, 0xc8

    if-nez v0, :cond_2

    .line 825
    sget-object v4, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 827
    invoke-virtual {v2, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    goto :goto_1

    .line 829
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 830
    invoke-virtual {v2, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    .line 832
    :goto_1
    return-void
.end method

.method private onAccessibilityInversionChanged()V
    .locals 3

    .line 838
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 839
    return-void

    .line 841
    :cond_0
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 842
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    const/16 v1, 0x12c

    .line 843
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityInversionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INVERT_COLOR:[F

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 842
    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 844
    return-void
.end method

.method private onDisplayColorModeChanged(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 764
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 765
    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->cancelAnimator()V

    .line 769
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->cancelAnimator()V

    .line 771
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 773
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 774
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 775
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 782
    :cond_1
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 783
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getMatrix()[F

    move-result-object v1

    .line 784
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getCompositionColorSpace(I)I

    move-result v2

    .line 783
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMode(I[FI)Z

    .line 786
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 787
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 789
    :cond_2
    return-void
.end method

.method private onNightDisplayAutoModeChanged(I)V
    .locals 2
    .param p1, "autoMode"    # I

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayAutoModeChanged: autoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 728
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 729
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    goto :goto_0

    .line 730
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 731
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 734
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_3

    .line 735
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStart()V

    .line 737
    :cond_3
    return-void
.end method

.method private onNightDisplayCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 2
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayCustomEndTimeChanged: endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 753
    :cond_0
    return-void
.end method

.method private onNightDisplayCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 2
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayCustomStartTimeChanged: startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 745
    :cond_0
    return-void
.end method

.method private setAppSaturationLevelInternal(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "affectedPackageName"    # Ljava/lang/String;
    .param p3, "saturationLevel"    # I

    .line 1465
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1466
    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/server/display/color/AppSaturationController;->setSaturationLevel(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    .line 1465
    return v0
.end method

.method private setColorModeInternal(I)V
    .locals 3
    .param p1, "colorMode"    # I

    .line 1471
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v2, "display_color_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1477
    return-void

    .line 1472
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

    .line 1322
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 1323
    const/4 v0, 0x0

    return v0

    .line 1325
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1327
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1325
    const-string v2, "display_white_balance_enabled"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private setNightDisplayAutoModeInternal(I)Z
    .locals 4
    .param p1, "autoMode"    # I

    .line 1363
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1364
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v3, "night_display_last_activated_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1369
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

    .line 1425
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1426
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1425
    const-string/jumbo v3, "night_display_custom_end_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private setNightDisplayCustomStartTimeInternal(Landroid/hardware/display/Time;)Z
    .locals 4
    .param p1, "startTime"    # Landroid/hardware/display/Time;

    .line 1408
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1410
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 1408
    const-string/jumbo v3, "night_display_custom_start_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private setUp()V
    .locals 5

    .line 459
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

    .line 463
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-interface {v0, v1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->notifySetUp(I)V

    .line 468
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mOneplusIrisManager:Lcom/oneplus/iris/IOneplusIrisManager;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-interface {v0, v1}, Lcom/oneplus/iris/IOneplusIrisManager;->userSwitch(I)V

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    .line 475
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$2;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/color/ColorDisplayService$2;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    .line 574
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 575
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 577
    const-string/jumbo v1, "night_display_color_temperature"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 579
    const-string/jumbo v1, "night_display_auto_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 581
    const-string/jumbo v1, "night_display_custom_start_time"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 583
    const-string/jumbo v1, "night_display_custom_end_time"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 585
    const-string v1, "display_color_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 587
    nop

    .line 588
    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 587
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 590
    nop

    .line 591
    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 590
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 593
    nop

    .line 594
    const-string v1, "accessibility_display_daltonizer"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 593
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 596
    const-string v1, "display_white_balance_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 600
    const-string/jumbo v1, "oneplus_dc_dimming_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 603
    const-string/jumbo v1, "oem_nightmode_progress_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 605
    const-string/jumbo v1, "oem_nightmode_brightness_progress"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 607
    const-string/jumbo v1, "temp_disable_scene_screen_effect"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 609
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    if-eqz v1, :cond_4

    .line 610
    :cond_3
    const-string/jumbo v1, "oem_screen_better_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 612
    const-string/jumbo v1, "screen_color_mode_settings_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 614
    const-string v1, "fod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 616
    const-string/jumbo v1, "screen_color_mode_advanced_settings_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 620
    const-string/jumbo v1, "oem_screen_chrominance_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 626
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityInversionChanged()V

    .line 627
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    .line 628
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateNightStatusForInvAndDalAndGray()V

    .line 630
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->setUpDisplayCompositionColorSpaces(Landroid/content/res/Resources;)V

    .line 634
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 636
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 638
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 641
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 642
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 643
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 644
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 647
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayAutoModeChanged(I)V

    .line 650
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 651
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 652
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 659
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 660
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTemperature:I

    .line 662
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorTemperatureLimit()V

    .line 668
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    iput v4, v1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mScreenColorTone:I

    .line 671
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 673
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setUp(Landroid/content/Context;Z)V

    .line 675
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 680
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->onDCEnable()V

    .line 685
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateColorMode()V

    .line 687
    return-void
.end method

.method private setUpDisplayCompositionColorSpaces(Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 437
    const v0, 0x1070032

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 438
    .local v0, "colorModes":[I
    if-nez v0, :cond_0

    .line 439
    return-void

    .line 442
    :cond_0
    const v1, 0x1070033

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 443
    .local v1, "compSpaces":[I
    if-nez v1, :cond_1

    .line 444
    return-void

    .line 447
    :cond_1
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_2

    .line 448
    const-string v2, "ColorDisplayService"

    const-string v3, "Number of composition color spaces doesn\'t match specified color modes"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void

    .line 452
    :cond_2
    new-instance v2, Landroid/util/SparseIntArray;

    array-length v3, v0

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 453
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 454
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    aget v4, v0, v2

    aget v5, v1, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 456
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private tearDown()V
    .locals 4

    .line 690
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

    .line 692
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    .line 699
    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 701
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->endAnimator()V

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->endAnimator()V

    .line 708
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/TintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 709
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 714
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 715
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "NightMode"

    invoke-virtual {v0, v3, v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    .line 718
    :cond_5
    return-void
.end method

.method private updateColorMode()V
    .locals 3

    .line 1568
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1569
    return-void
.end method

.method private updateColorTemperature()V
    .locals 3

    .line 1565
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1566
    return-void
.end method

.method private updateColorTone()V
    .locals 3

    .line 1574
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1575
    return-void
.end method


# virtual methods
.method public synthetic lambda$applyTintForColorTone$2$ColorDisplayService(ILandroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "animator"    # Landroid/animation/ValueAnimator;

    .line 1024
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1025
    .local v0, "value":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mTimeStamp:J

    sub-long/2addr v1, v3

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 1026
    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTone(I)V

    .line 1027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mTimeStamp:J

    .line 1029
    :cond_0
    return-void
.end method

.method public synthetic lambda$applyTintForTrueTone$1$ColorDisplayService(ILandroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "delay"    # I
    .param p2, "animator"    # Landroid/animation/ValueAnimator;

    .line 950
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 951
    .local v0, "value":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mTimeStamp:J

    sub-long/2addr v1, v3

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 952
    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->applyColorTemperature(I)V

    .line 953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mTimeStamp:J

    .line 955
    :cond_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 342
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    .line 348
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsSoftIris:Z

    const/16 v2, -0x2710

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mIsIrisChip:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 349
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_2

    .line 350
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 360
    :cond_2
    :goto_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 335
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$BinderService;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    const-string v1, "color_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/color/ColorDisplayService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 336
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-direct {v1, p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 337
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    new-instance v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-direct {v1}, Lcom/android/server/display/color/DisplayTransformManager;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 364
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 366
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 368
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 369
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 371
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 384
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 386
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 388
    .local v0, "message":Landroid/os/Message;
    const/16 v1, -0x2710

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 389
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 375
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 377
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 378
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 379
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 380
    return-void
.end method

.method onUserChanged(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .line 394
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 396
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 399
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 400
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->tearDown()V

    .line 405
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 407
    if-eq p1, v2, :cond_3

    .line 408
    invoke-static {v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 409
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$1;

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/color/ColorDisplayService$1;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 422
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    .line 424
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_3

    .line 425
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    .line 428
    :cond_3
    :goto_1
    return-void
.end method

.method updateDisplayWhiteBalanceStatus()V
    .locals 7

    .line 1293
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v0

    .line 1294
    .local v0, "oldActivated":Z
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 1295
    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1296
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1297
    invoke-static {}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 1294
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 1298
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v1

    .line 1300
    .local v1, "activated":Z
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    if-eqz v2, :cond_2

    if-eq v0, v1, :cond_2

    .line 1301
    invoke-interface {v2, v1}, Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;->onDisplayWhiteBalanceStatusChanged(Z)V

    .line 1305
    if-eqz v1, :cond_1

    .line 1306
    iput-boolean v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mForceSwitchOnOffSpeed:Z

    .line 1307
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1309
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentDuration:I

    .line 1316
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 1317
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/16 v5, 0xbb8

    invoke-virtual {v2, v3, v5, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1319
    :cond_3
    return-void
.end method

.method updateNightStatusForInvAndDalAndGray()V
    .locals 9

    .line 1580
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v2, "accessibility_display_inversion_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1582
    .local v0, "inversionStatus":I
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v4, "accessibility_display_daltonizer_enabled"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1584
    .local v1, "daltonizerStatus":I
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_display_grayscale_enabled"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1586
    .local v2, "grayscaleStatus":I
    const-string v4, "GoogleMatrixMode"

    const-string v6, "ColorDisplayService"

    if-eq v0, v5, :cond_1

    if-eq v1, v5, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1593
    :cond_0
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-ne v2, v5, :cond_4

    .line 1594
    const-string v5, "Exit GoogleMatrix, Recover OneplusMatrix"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    iget-object v5, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v4, v6, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_1

    .line 1587
    :cond_1
    :goto_0
    const-string v7, "Enter GoogleMatrix, Temp Disable OneplusMatrix"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 1589
    :cond_2
    const-class v6, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v6}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/color/DisplayTransformManager;

    .line 1590
    .local v6, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    const/16 v7, 0x15e

    sget-object v8, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INIT:[F

    invoke-virtual {v6, v7, v8}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 1592
    .end local v6    # "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    :cond_3
    iget-object v6, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual {v6, v4, v5, v3}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    .line 1597
    :cond_4
    :goto_1
    return-void
.end method

.method updateReadModeStatusForApp()V
    .locals 4

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "temp_disable_scene_screen_effect"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1555
    .local v0, "disableStatus":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1556
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    .line 1557
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    goto :goto_0

    .line 1558
    :cond_0
    if-nez v0, :cond_1

    .line 1559
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_GRAYCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    .line 1560
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    sget-object v2, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_PAPERCOLOR:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    .line 1562
    :cond_1
    :goto_0
    return-void
.end method
