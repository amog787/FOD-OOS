.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$VibratorShellCommand;,
        Lcom/android/server/VibratorService$ExternalVibratorService;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$ScaleLevel;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final ACTION_VIBRATION_CANCEL:Ljava/lang/String; = "com.oem.intent.action.CANCEL_VIBRATION"

.field private static final DEBUG:Z

.field private static final DEBUG_ONEPLUS:Z

.field private static final DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

.field private static final EXTERNAL_VIBRATOR_SERVICE:Ljava/lang/String; = "external_vibrator_service"

.field private static final MAX_HAPTIC_FEEDBACK_DURATION:J = 0x1388L

.field private static final RAMPING_RINGER_ENABLED:Ljava/lang/String; = "ramping_ringer_enabled"

.field private static final SCALE_HIGH:I = 0x1

.field private static final SCALE_HIGH_GAMMA:F = 0.5f

.field private static final SCALE_LOW:I = -0x1

.field private static final SCALE_LOW_GAMMA:F = 1.5f

.field private static final SCALE_LOW_MAX_AMPLITUDE:I = 0xc0

.field private static final SCALE_MUTE:I = -0x64

.field private static final SCALE_NONE:I = 0x0

.field private static final SCALE_NONE_GAMMA:F = 1.0f

.field private static final SCALE_VERY_HIGH:I = 0x2

.field private static final SCALE_VERY_HIGH_GAMMA:F = 0.25f

.field private static final SCALE_VERY_LOW:I = -0x2

.field private static final SCALE_VERY_LOW_GAMMA:F = 2.0f

.field private static final SCALE_VERY_LOW_MAX_AMPLITUDE:I = 0xa8

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentExternalVibration:Landroid/os/ExternalVibration;

.field protected mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mDefaultVibrationAmplitude:I

.field private final mFallbackEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mH:Landroid/os/Handler;

.field private mHapticFeedbackIntensity:I

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLidState:I

.field protected final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mNotificationIntensity:I

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousAlarmVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousExternalVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/ExternalVibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousNotificationVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousRingVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private final mProcStatesCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingIntensity:I

.field private final mScaleLevels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/VibratorService$ScaleLevel;",
            ">;"
        }
    .end annotation
.end field

.field private mSetVibratorEffectPid:I

.field private mSetVibratorEffectUid:I

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mSupportsAmplitudeControl:Z

.field private final mSupportsExternalControl:Z

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorUnderExternalControl:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 91
    const-string/jumbo v0, "persist.debug.vibrator.debugall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    .line 92
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .line 400
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 140
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    .line 141
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    .line 151
    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 179
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 197
    new-instance v2, Lcom/android/server/VibratorService$1;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    .line 592
    new-instance v2, Lcom/android/server/VibratorService$4;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 892
    new-instance v2, Lcom/android/server/VibratorService$5;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    .line 1641
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/VibratorService;->mLidState:I

    .line 1643
    new-instance v3, Lcom/android/server/VibratorService$6;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$6;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 401
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    .line 404
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 408
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initCaliFile()V

    .line 410
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    .line 411
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsExternalControl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    .line 413
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 414
    const-string/jumbo v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 415
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v4, "*vibrator*"

    invoke-virtual {v3, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 416
    iget-object v4, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 418
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    .line 419
    const-string v4, "batterystats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 422
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 425
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 428
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    .line 431
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    .line 432
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    .line 433
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    .line 434
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 435
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    .line 437
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 438
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 441
    const-string v5, "android.intent.action.LID_SWITCH"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 445
    const v5, 0x10700a0

    invoke-direct {p0, v5}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 447
    .local v5, "clickEffect":Landroid/os/VibrationEffect;
    sget-object v6, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    invoke-static {v6, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v6

    .line 449
    .local v6, "doubleClickEffect":Landroid/os/VibrationEffect;
    const v7, 0x107005d

    invoke-direct {p0, v7}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v7

    .line 451
    .local v7, "heavyClickEffect":Landroid/os/VibrationEffect;
    const v8, 0x1070025

    invoke-direct {p0, v8}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v8

    .line 454
    .local v8, "tickEffect":Landroid/os/VibrationEffect;
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 455
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v9, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v9, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v11, 0x5

    invoke-virtual {v9, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 461
    invoke-static {v10, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v11

    .line 460
    const/16 v12, 0x15

    invoke-virtual {v9, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    .line 464
    iget-object v9, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x40000000    # 2.0f

    const/16 v13, 0xa8

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    const/4 v12, -0x2

    invoke-virtual {v9, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    iget-object v9, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x3fc00000    # 1.5f

    const/16 v13, 0xc0

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {v9, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3e800000    # 0.25f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    new-instance v1, Lcom/android/server/VibratorService$ExternalVibratorService;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$ExternalVibratorService;-><init>(Lcom/android/server/VibratorService;)V

    const-string v9, "external_vibrator_service"

    invoke-static {v9, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 476
    new-array v1, v2, [I

    const/16 v2, 0x31

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OpVibratorServiceInjector;->initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;JIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 86
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget v0, p0, Lcom/android/server/VibratorService;->mLidState:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/android/server/VibratorService;->mLidState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Landroid/os/ExternalVibration;

    .line 86
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Z

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 86
    invoke-static {p0}, Lcom/android/server/VibratorService;->isHapticFeedback(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 86
    invoke-static {p0}, Lcom/android/server/VibratorService;->isNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 86
    invoke-static {p0}, Lcom/android/server/VibratorService;->isRingtone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 86
    invoke-static {p0}, Lcom/android/server/VibratorService;->isAlarm(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    return v0
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 837
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    .local v0, "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_0

    .line 839
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_0

    .line 841
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_0

    .line 844
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_2
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 847
    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v1, v2, :cond_3

    .line 848
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 850
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 854
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x31

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 855
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->printVibrationInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_4
    return-void
.end method

.method private applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V
    .locals 6
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .param p2, "intensity"    # I

    .line 1070
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    .line 1074
    .local v0, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    invoke-static {p2}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    .line 1075
    return-void

    .line 1079
    .end local v0    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v0

    .local v0, "defaultIntensity":I
    goto :goto_0

    .line 1081
    .end local v0    # "defaultIntensity":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1082
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v0

    .restart local v0    # "defaultIntensity":I
    goto :goto_0

    .line 1083
    .end local v0    # "defaultIntensity":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1084
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    .restart local v0    # "defaultIntensity":I
    goto :goto_0

    .line 1085
    .end local v0    # "defaultIntensity":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1086
    const/4 v0, 0x3

    .line 1093
    .restart local v0    # "defaultIntensity":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    sub-int v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$ScaleLevel;

    .line 1094
    .local v1, "scale":Lcom/android/server/VibratorService$ScaleLevel;
    const-string v2, "VibratorService"

    if-nez v1, :cond_4

    .line 1097
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No configured scaling level! (current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", default= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return-void

    .line 1102
    :cond_4
    const/4 v3, 0x0

    .line 1103
    .local v3, "scaledEffect":Landroid/os/VibrationEffect;
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$OneShot;

    if-eqz v4, :cond_5

    .line 1104
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 1105
    .local v2, "oneShot":Landroid/os/VibrationEffect$OneShot;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$OneShot;->resolve(I)Landroid/os/VibrationEffect$OneShot;

    move-result-object v2

    .line 1106
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$OneShot;->scale(FI)Landroid/os/VibrationEffect$OneShot;

    move-result-object v3

    .line 1107
    .end local v2    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto :goto_1

    :cond_5
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$Waveform;

    if-eqz v4, :cond_6

    .line 1108
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    .line 1109
    .local v2, "waveform":Landroid/os/VibrationEffect$Waveform;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$Waveform;->resolve(I)Landroid/os/VibrationEffect$Waveform;

    move-result-object v2

    .line 1110
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$Waveform;->scale(FI)Landroid/os/VibrationEffect$Waveform;

    move-result-object v3

    .line 1111
    .end local v2    # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto :goto_1

    .line 1112
    :cond_6
    const-string v4, "Unable to apply intensity scaling, unknown VibrationEffect type"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_1
    if-eqz v3, :cond_7

    .line 1116
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iput-object v2, p1, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    .line 1117
    iput-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 1119
    :cond_7
    return-void

    .line 1090
    .end local v0    # "defaultIntensity":I
    .end local v1    # "scale":Lcom/android/server/VibratorService$ScaleLevel;
    .end local v3    # "scaledEffect":Landroid/os/VibrationEffect;
    :cond_8
    return-void
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .locals 2
    .param p1, "resId"    # I

    .line 482
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 483
    .local v0, "timings":[J
    invoke-static {v0}, Lcom/android/server/VibratorService;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .locals 3
    .param p0, "timings"    # [J

    .line 487
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    .line 490
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 492
    :cond_1
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 488
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private doCancelVibrateLocked()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 901
    const-wide/32 v0, 0x800000

    const/4 v2, 0x0

    const-string/jumbo v3, "vibration"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 902
    const-string v3, "doCancelVibrateLocked"

    invoke-static {v0, v1, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 904
    const/16 v3, 0x31

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 905
    iget-object v5, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 906
    iget-object v5, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v5}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    .line 907
    iput-object v6, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 909
    :cond_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v5, :cond_1

    .line 910
    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5}, Landroid/os/ExternalVibration;->mute()Z

    .line 911
    iput-object v6, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    .line 912
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    .line 914
    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 915
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 919
    new-array v4, v4, [I

    aput v3, v4, v2

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 920
    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 921
    :try_start_1
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    .line 922
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIsEffectChanged(Z)V

    .line 923
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 926
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 927
    nop

    .line 928
    return-void

    .line 919
    :catchall_1
    move-exception v5

    new-array v4, v4, [I

    aput v3, v4, v2

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 920
    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 921
    :try_start_2
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    .line 922
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIsEffectChanged(Z)V

    .line 923
    monitor-exit v3

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 926
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
.end method

.method private doVibratorExists()Z
    .locals 1

    .line 1287
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 6

    .line 1345
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOff"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1347
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1348
    :try_start_1
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1349
    const-string v3, "VibratorService"

    const-string v4, "Turning vibrator off."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    .line 1352
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1353
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_2

    .line 1354
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1355
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    .line 1354
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_1
    goto :goto_1

    .line 1358
    :cond_2
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 1360
    .end local v3    # "vibratorCount":I
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1362
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1363
    nop

    .line 1364
    return-void

    .line 1360
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/VibratorService;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1362
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private doVibratorOn(JIII)V
    .locals 7
    .param p1, "millis"    # J
    .param p3, "amplitude"    # I
    .param p4, "uid"    # I
    .param p5, "usageHint"    # I

    .line 1291
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1293
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1294
    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    .line 1295
    :try_start_1
    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    move p3, v3

    .line 1297
    :cond_0
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1298
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turning vibrator on for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms with amplitude "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_1
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1302
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1303
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_3

    .line 1304
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1305
    invoke-virtual {v4, p5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 1306
    .local v4, "attributes":Landroid/media/AudioAttributes;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 1307
    iget-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6, p1, p2, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1306
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1309
    .end local v4    # "attributes":Landroid/media/AudioAttributes;
    .end local v5    # "i":I
    :cond_2
    goto :goto_2

    .line 1315
    :cond_3
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x7a

    aput v6, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1316
    invoke-static {p1, p2, p3}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorOn(JI)V

    goto :goto_1

    .line 1318
    :cond_4
    const-string v4, "guacamoleb"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 1319
    :cond_5
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 1322
    :goto_1
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 1324
    .end local v3    # "vibratorCount":I
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1326
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1327
    nop

    .line 1328
    return-void

    .line 1324
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "millis":J
    .end local p3    # "amplitude":I
    .end local p4    # "uid":I
    .end local p5    # "usageHint":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1326
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "millis":J
    .restart local p3    # "amplitude":I
    .restart local p4    # "uid":I
    .restart local p5    # "usageHint":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .locals 19
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1368
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-wide/32 v12, 0x800000

    const-string v0, "doVibratorPrebakedEffectLocked"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1370
    :try_start_0
    iget-object v0, v11, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    move-object v14, v0

    .line 1372
    .local v14, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    iget-object v1, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1373
    :try_start_1
    iget-object v0, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1374
    .local v0, "usingInputDeviceVibrators":Z
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1376
    const-wide/16 v15, 0x0

    if-nez v0, :cond_2

    .line 1381
    :try_start_2
    new-array v1, v2, [I

    const/16 v2, 0x31

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1382
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    .line 1383
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v2

    .line 1382
    invoke-static {v1, v2}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorPerformEffect(II)J

    move-result-wide v1

    .local v1, "timeout":J
    goto :goto_1

    .line 1385
    .end local v1    # "timeout":J
    :cond_1
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJ)J

    move-result-wide v1

    .line 1388
    .restart local v1    # "timeout":J
    :goto_1
    cmp-long v3, v1, v15

    if-lez v3, :cond_2

    .line 1389
    iget v3, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {v10, v3, v1, v2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1390
    nop

    .line 1409
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1390
    return-wide v1

    .line 1393
    .end local v1    # "timeout":J
    :cond_2
    :try_start_3
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_3

    .line 1394
    nop

    .line 1409
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1394
    return-wide v15

    .line 1396
    :cond_3
    :try_start_4
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    move-object/from16 v17, v1

    .line 1397
    .local v17, "effect":Landroid/os/VibrationEffect;
    if-nez v17, :cond_4

    .line 1398
    const-string v1, "VibratorService"

    const-string v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1399
    nop

    .line 1409
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1399
    return-wide v15

    .line 1401
    :cond_4
    :try_start_5
    new-instance v18, Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v11, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iget v5, v11, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v6, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, v11, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v11, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (fallback)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v4, v17

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object/from16 v1, v18

    .line 1403
    .local v1, "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    .line 1404
    .local v2, "intensity":I
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1405
    invoke-direct {v10, v1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 1406
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1407
    nop

    .line 1409
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1407
    return-wide v15

    .line 1374
    .end local v0    # "usingInputDeviceVibrators":Z
    .end local v1    # "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "intensity":I
    .end local v17    # "effect":Landroid/os/VibrationEffect;
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1409
    .end local v14    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorSetAmplitude(I)V
    .locals 3
    .param p1, "amplitude"    # I

    .line 1331
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_1

    .line 1335
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x31

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    invoke-static {p1}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorSetAmplitude(I)V

    goto :goto_0

    .line 1338
    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    .line 1342
    :cond_1
    :goto_0
    return-void
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .locals 5
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1139
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 1141
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 1142
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1144
    :cond_0
    return v0
.end method

.method private getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1053
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0

    .line 1055
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1056
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0

    .line 1057
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1058
    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0

    .line 1059
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    const/4 v0, 0x3

    return v0

    .line 1062
    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method private getFallbackEffect(I)Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "effectId"    # I

    .line 1414
    iget-object v0, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .line 668
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 669
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 670
    const/4 v1, 0x0

    return-object v1

    .line 672
    :cond_0
    array-length v1, v0

    new-array v1, v1, [J

    .line 673
    .local v1, "out":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 674
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 673
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static intensityToEffectStrength(I)I
    .locals 3
    .param p0, "intensity"    # I

    .line 1423
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected vibration intensity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    return v1

    .line 1429
    :cond_0
    return v1

    .line 1427
    :cond_1
    return v0

    .line 1425
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isAlarm(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 1457
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z
    .locals 5
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1022
    const-string v0, "VibratorService"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 1023
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 1022
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    .local v2, "packageContext":Landroid/content/Context;
    goto :goto_0

    .line 1024
    .end local v2    # "packageContext":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 1025
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1026
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create package context fail from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1030
    .local v2, "packageContext":Landroid/content/Context;
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-static {v3, v4}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isUsageMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1031
    const-string v3, "Skip vibrating on gaming mode"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return v1

    .line 1035
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1036
    return v3

    .line 1039
    :cond_1
    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    .line 1040
    return v3

    .line 1043
    :cond_2
    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/16 v4, 0xb

    if-eq v0, v4, :cond_4

    iget v0, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_3

    goto :goto_1

    .line 1049
    :cond_3
    return v1

    .line 1046
    :cond_4
    :goto_1
    return v3
.end method

.method private static isHapticFeedback(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 1453
    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isNotification(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 1437
    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    .line 1444
    const/4 v0, 0x0

    return v0

    .line 1442
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .locals 4
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 832
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isRingtone(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 1449
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private linkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1165
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_0

    .line 1167
    :try_start_0
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    goto :goto_0

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 1172
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private noteVibratorOffLocked()V
    .locals 4

    .line 1471
    iget v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    if-ltz v0, :cond_0

    .line 1473
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    .line 1474
    const/16 v0, 0x54

    iget v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1476
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 1477
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 1479
    :cond_0
    return-void
.end method

.method private noteVibratorOnLocked(IJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "millis"    # J

    .line 1462
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1463
    const/16 v1, 0x54

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;IJ)I

    .line 1465
    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    goto :goto_0

    .line 1466
    :catch_0
    move-exception v0

    .line 1468
    :goto_0
    return-void
.end method

.method private reportFinishVibrationLocked()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1149
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "reportFinishVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1151
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_0

    .line 1152
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget v4, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v5, v5, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1154
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1155
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1159
    nop

    .line 1160
    return-void

    .line 1158
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private setVibratorUnderExternalControl(Z)V
    .locals 2
    .param p1, "externalControl"    # Z

    .line 1482
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1483
    const-string v0, "VibratorService"

    if-eqz p1, :cond_0

    .line 1484
    const-string v1, "Vibrator going under external control."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1486
    :cond_0
    const-string v1, "Taking back control of vibrator."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    .line 1490
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetExternalControl(Z)V

    .line 1491
    return-void
.end method

.method private shouldVibrateForRingtone()Z
    .locals 6

    .line 1122
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1123
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 1125
    .local v1, "ringerMode":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1126
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1125
    const/4 v3, 0x0

    const-string/jumbo v4, "vibrate_when_ringing"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1127
    if-eqz v1, :cond_0

    move v3, v4

    :cond_0
    return v3

    .line 1128
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1129
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1128
    const-string v5, "apply_ramping_ringer"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1130
    const-string/jumbo v2, "telephony"

    const-string/jumbo v5, "ramping_ringer_enabled"

    invoke-static {v2, v5, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1132
    if-eqz v1, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 1134
    :cond_3
    if-ne v1, v4, :cond_4

    move v3, v4

    :cond_4
    return v3
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 9
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 988
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationInnerLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 990
    :try_start_0
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 991
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$OneShot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string/jumbo v4, "vibration"

    if-eqz v2, :cond_0

    .line 992
    :try_start_1
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 993
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 994
    .local v2, "oneShot":Landroid/os/VibrationEffect$OneShot;
    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v6

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v8, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    .line 995
    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 996
    nop

    .end local v2    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Waveform;

    if-eqz v2, :cond_1

    .line 999
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1000
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    .line 1001
    .local v2, "waveform":Landroid/os/VibrationEffect$Waveform;
    new-instance v3, Lcom/android/server/VibratorService$VibrateThread;

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v5, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-direct {v3, p0, v2, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1002
    iget-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    .line 1003
    .end local v2    # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v2, :cond_3

    .line 1004
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1005
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    .line 1006
    .local v2, "timeout":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 1007
    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1009
    .end local v2    # "timeout":J
    :cond_2
    goto :goto_0

    .line 1010
    :cond_3
    const-string v2, "VibratorService"

    const-string v3, "Unknown vibration type, ignoring"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1014
    nop

    .line 1015
    return-void

    .line 1013
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 7
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 944
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 948
    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x31

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 949
    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 950
    :try_start_1
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    .line 951
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :try_start_2
    throw v2

    .line 954
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_1

    .line 982
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 955
    return-void

    .line 958
    :cond_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 959
    .local v2, "intensity":I
    if-nez v2, :cond_2

    .line 982
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 960
    return-void

    .line 963
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v3

    if-nez v3, :cond_4

    .line 964
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 965
    const-string v3, "VibratorService"

    const-string v4, "Vibrate ignored, not vibrating for ringtones"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 982
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 967
    return-void

    .line 970
    :cond_4
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    .line 971
    .local v3, "mode":I
    if-eqz v3, :cond_6

    .line 972
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 975
    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Would be an error: vibrate from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 982
    :cond_5
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 977
    return-void

    .line 979
    :cond_6
    :try_start_6
    invoke-direct {p0, p1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 980
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 982
    .end local v2    # "intensity":I
    .end local v3    # "mode":I
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 983
    nop

    .line 984
    return-void

    .line 982
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1175
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1178
    :cond_0
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .locals 8

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 1204
    .local v1, "vibrateInputDevices":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1205
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    const/4 v6, -0x2

    .line 1204
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    move v1, v4

    .line 1208
    goto :goto_1

    .line 1207
    :catch_0
    move-exception v4

    .line 1209
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v1, v4, :cond_1

    .line 1210
    const/4 v0, 0x1

    .line 1211
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    .line 1214
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_2

    .line 1215
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v2, :cond_3

    .line 1216
    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1217
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v2, p0, v4}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_2

    .line 1220
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_3

    .line 1221
    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1222
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 1226
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1227
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v2, :cond_6

    .line 1228
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 1229
    .local v2, "ids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 1230
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 1231
    .local v5, "device":Landroid/view/InputDevice;
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    .line 1232
    .local v6, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1233
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    .end local v5    # "device":Landroid/view/InputDevice;
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1236
    .end local v4    # "i":I
    :cond_5
    return v3

    .line 1238
    .end local v2    # "ids":[I
    :cond_6
    return v0
.end method

.method private updateLowPowerModeLocked()Z
    .locals 2

    .line 1242
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1243
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 1244
    .local v0, "lowPowerMode":Z
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_0

    .line 1245
    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 1246
    const/4 v1, 0x1

    return v1

    .line 1248
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateVibrationIntensityLocked()V
    .locals 4

    .line 1252
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1254
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v1

    .line 1252
    const/4 v2, -0x2

    const-string v3, "haptic_feedback_intensity"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    .line 1255
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1257
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v1

    .line 1255
    const-string/jumbo v3, "notification_vibration_intensity"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    .line 1258
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1260
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v1

    .line 1258
    const-string/jumbo v3, "ring_vibration_intensity"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    .line 1261
    return-void
.end method

.method private updateVibrators()V
    .locals 4

    .line 1181
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1185
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x31

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->updateVibrator()V

    .line 1189
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v1

    .line 1190
    .local v1, "devicesUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v2

    .line 1191
    .local v2, "lowPowerModeUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrationIntensityLocked()V

    .line 1193
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 1195
    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1197
    .end local v1    # "devicesUpdated":Z
    .end local v2    # "lowPowerModeUpdated":Z
    :cond_2
    monitor-exit v0

    .line 1198
    return-void

    .line 1197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private verifyIncomingUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 634
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 635
    return-void

    .line 637
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 638
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 641
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 640
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 642
    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .locals 4
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 653
    const/4 v0, 0x0

    const-string v1, "VibratorService"

    if-nez p0, :cond_0

    .line 655
    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return v0

    .line 659
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    nop

    .line 664
    const/4 v0, 0x1

    return v0

    .line 660
    :catch_0
    move-exception v2

    .line 661
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Encountered issue when verifying VibrationEffect."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    return v0
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method

.method static native vibratorPerformEffect(JJ)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSetExternalControl(Z)V
.end method

.method static native vibratorSupportsAmplitudeControl()Z
.end method

.method static native vibratorSupportsExternalControl()Z
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 862
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    .line 867
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 868
    const-string v1, "VibratorService"

    const-string v3, "Canceling vibration."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 872
    .local v3, "ident":J
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 875
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 876
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setRepeatVibrate(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 879
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 880
    goto :goto_0

    .line 879
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v1

    .line 883
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-nez v1, :cond_2

    .line 884
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v3, 0x31

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 885
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    goto :goto_1

    .line 883
    :cond_2
    :goto_0
    nop

    .line 889
    :cond_3
    :goto_1
    monitor-exit v0

    .line 890
    return-void

    .line 889
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1678
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1680
    :cond_0
    const-string v0, "Vibrator Service:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1682
    :try_start_0
    const-string v1, "  mCurrentVibration="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1683
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_1

    .line 1684
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1686
    :cond_1
    const-string/jumbo v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1688
    :goto_0
    const-string v1, "  mCurrentExternalVibration="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1689
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v1, :cond_2

    .line 1690
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v1}, Landroid/os/ExternalVibration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1692
    :cond_2
    const-string/jumbo v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibratorUnderExternalControl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowPowerMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHapticFeedbackIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNotificationIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRingIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    const-string v1, "  Previous ring vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1702
    .local v2, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1704
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_2

    .line 1706
    :cond_3
    const-string v1, "  Previous notification vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1707
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1708
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1709
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_3

    .line 1712
    :cond_4
    const-string v1, "  Previous alarm vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1714
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1715
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1716
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_4

    .line 1718
    :cond_5
    const-string v1, "  Previous vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1719
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1720
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1721
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_5

    .line 1724
    :cond_6
    const-string v1, "  Previous external vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ExternalVibration;

    .line 1726
    .local v2, "vib":Landroid/os/ExternalVibration;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {v2}, Landroid/os/ExternalVibration;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1728
    .end local v2    # "vib":Landroid/os/ExternalVibration;
    goto :goto_6

    .line 1729
    :cond_7
    monitor-exit v0

    .line 1730
    return-void

    .line 1729
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasAmplitudeControl()Z
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 629
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 630
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasVibrator()Z
    .locals 1

    .line 621
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 1265
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1266
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 1270
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1271
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 1275
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1276
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1736
    new-instance v0, Lcom/android/server/VibratorService$VibratorShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService$VibratorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1737
    return-void
.end method

.method public onVibrationFinished()V
    .locals 2

    .line 932
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 933
    const-string v0, "VibratorService"

    const-string v1, "Vibration finished, cleaning up"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 938
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 939
    monitor-exit v0

    .line 940
    return-void

    .line 939
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVibratorEffect(I)I
    .locals 2
    .param p1, "sceneType"    # I

    .line 686
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    .line 687
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    .line 689
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/server/OpVibratorServiceInjector;->setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 8

    .line 497
    const-wide/32 v0, 0x800000

    const-string v2, "VibratorService#systemReady"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 499
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 500
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 501
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 503
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 504
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/VibratorService$2;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 517
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_input_devices"

    .line 518
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 517
    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 521
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_intensity"

    .line 522
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 521
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 525
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_vibration_intensity"

    .line 526
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 525
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 529
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ring_vibration_intensity"

    .line 530
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 529
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 535
    new-array v2, v6, [I

    const/16 v3, 0x31

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    .line 537
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 536
    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 539
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_on_touch_intensity"

    .line 540
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 539
    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 544
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notice_vibrate_intensity"

    .line 545
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 544
    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 549
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->updateVibrator()V

    .line 554
    :cond_0
    new-array v2, v6, [I

    const/16 v3, 0x7a

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->motorF0Calibration()V

    .line 559
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/VibratorService$3;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 569
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 570
    .local v2, "intentfilter":Landroid/content/IntentFilter;
    const-string v3, "com.oem.intent.action.CANCEL_VIBRATION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v6, 0x3

    invoke-interface {v3, v4, v6, v5, v7}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    goto :goto_0

    .line 578
    :catch_0
    move-exception v3

    .line 582
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    .end local v2    # "intentfilter":Landroid/content/IntentFilter;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 585
    nop

    .line 586
    return-void

    .line 584
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILjava/lang/String;Landroid/os/IBinder;)V
    .locals 21
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "usageHint"    # I
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "token"    # Landroid/os/IBinder;

    .line 696
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v1, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate, reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v8, 0x800000

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 698
    :try_start_0
    iget-object v0, v10, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    .line 702
    if-nez p6, :cond_0

    .line 703
    const-string v0, "VibratorService"

    const-string/jumbo v2, "token must not be null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 827
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 704
    return-void

    .line 706
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 707
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    if-nez v0, :cond_1

    .line 827
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 708
    return-void

    .line 711
    :cond_1
    :try_start_2
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', usageHint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v0, v10, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 716
    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored by ZenMode."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 827
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 717
    return-void

    .line 723
    :cond_2
    :try_start_3
    iget-object v0, v10, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13, v12}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 724
    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored on gaming mode."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 827
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 725
    return-void

    .line 731
    :cond_3
    :try_start_4
    iget-object v15, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 732
    :try_start_5
    instance-of v0, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_5

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_5

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_5

    .line 735
    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 736
    .local v0, "newOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v2, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v2, v2, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 738
    .local v2, "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v3, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/VibratorService$Vibration;->hasTimeoutLongerThan(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 739
    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 740
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 741
    const-string v3, "VibratorService"

    const-string v4, "Ignoring incoming vibration in favor of current vibration"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_4
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 827
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 744
    return-void

    .line 751
    .end local v0    # "newOneShot":Landroid/os/VibrationEffect$OneShot;
    .end local v2    # "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    :cond_5
    :try_start_6
    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v0, :cond_7

    .line 752
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 753
    const-string v0, "VibratorService"

    const-string v2, "Ignoring incoming vibration for current external vibration"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 827
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 755
    return-void

    .line 762
    :cond_7
    :try_start_7
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    const/16 v2, 0x31

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_a

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_a

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 764
    invoke-static {v0}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 765
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 766
    const-string v0, "VibratorService"

    const-string v5, "Ignoring incoming vibration in favor of alarm vibration"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_8
    new-array v0, v3, [I

    aput v2, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 773
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getOldIntensityEffectType()I

    move-result v0

    .line 774
    .local v0, "oldIntensityEffectType":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    .line 775
    invoke-static {v0}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 779
    .end local v0    # "oldIntensityEffectType":I
    :cond_9
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 827
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 779
    return-void

    .line 784
    :cond_a
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v7, v0

    .line 785
    .local v7, "currentVibrationPid":I
    iget v0, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    if-eq v0, v11, :cond_c

    iget v0, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    if-eq v7, v0, :cond_c

    .line 786
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getImPkg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getImPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 787
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_b

    .line 788
    const-string v0, "VibratorService"

    const-string v5, " non-custom effect, reset effect to default "

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_b
    invoke-static {v4}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 792
    :cond_c
    iput v4, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    .line 793
    iput v4, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    .line 798
    new-array v0, v3, [I

    aput v2, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 799
    invoke-static {v11, v1, v12, v14}, Lcom/android/server/OpVibratorServiceInjector;->vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;Ljava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v1, v0

    .line 800
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v1, "effect":Landroid/os/VibrationEffect;
    if-nez v1, :cond_d

    .line 801
    :try_start_9
    const-string v0, "VibratorService"

    const-string v2, "The updated vibrator effect should not be empty"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    monitor-exit v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 827
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 802
    return-void

    .line 825
    .end local v7    # "currentVibrationPid":I
    :catchall_0
    move-exception v0

    move-wide/from16 v19, v8

    goto/16 :goto_2

    .line 800
    .restart local v7    # "currentVibrationPid":I
    :cond_d
    move-object/from16 v16, v1

    goto :goto_0

    .line 798
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :cond_e
    move-object/from16 v16, v1

    .line 807
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v16, "effect":Landroid/os/VibrationEffect;
    :goto_0
    :try_start_a
    new-instance v0, Lcom/android/server/VibratorService$Vibration;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/16 v17, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, v16

    move/from16 v5, p4

    move/from16 v6, p1

    move/from16 v18, v7

    .end local v7    # "currentVibrationPid":I
    .local v18, "currentVibrationPid":I
    move-object/from16 v7, p2

    move-wide/from16 v19, v8

    move-object/from16 v8, p5

    move-object/from16 v9, v17

    :try_start_b
    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object v1, v0

    .line 808
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v0, v10, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_f

    .line 810
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-nez v0, :cond_f

    .line 811
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring incoming vibration as process with uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is background, usage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    .line 813
    invoke-static {v3}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 811
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 827
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 814
    return-void

    .line 816
    :cond_f
    :try_start_c
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 817
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 819
    .local v2, "ident":J
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 820
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 821
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 823
    :try_start_e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 824
    nop

    .line 825
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    .end local v18    # "currentVibrationPid":I
    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 827
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 828
    nop

    .line 829
    return-void

    .line 823
    .restart local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v2    # "ident":J
    .restart local v18    # "currentVibrationPid":I
    :catchall_1
    move-exception v0

    :try_start_f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v16    # "effect":Landroid/os/VibrationEffect;
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p4    # "usageHint":I
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 825
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    .end local v18    # "currentVibrationPid":I
    .restart local v16    # "effect":Landroid/os/VibrationEffect;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p4    # "usageHint":I
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-wide/from16 v19, v8

    :goto_1
    move-object/from16 v1, v16

    goto :goto_2

    .end local v16    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :catchall_4
    move-exception v0

    move-wide/from16 v19, v8

    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v1, "effect":Landroid/os/VibrationEffect;
    :goto_2
    :try_start_10
    monitor-exit v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p4    # "usageHint":I
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 827
    .restart local v1    # "effect":Landroid/os/VibrationEffect;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p4    # "usageHint":I
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_5
    move-exception v0

    goto :goto_3

    .line 825
    :catchall_6
    move-exception v0

    goto :goto_2

    .line 700
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :cond_10
    move-wide/from16 v19, v8

    :try_start_12
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .end local p4    # "usageHint":I
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 827
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    .restart local p4    # "usageHint":I
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_7
    move-exception v0

    goto :goto_3

    :catchall_8
    move-exception v0

    move-wide/from16 v19, v8

    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .restart local v1    # "effect":Landroid/os/VibrationEffect;
    :goto_3
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
