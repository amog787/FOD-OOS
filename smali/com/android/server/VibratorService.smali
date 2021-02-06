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

.field private static final ASYNC_TIMEOUT_MULTIPLIER:J = 0x2L

.field private static final DEBUG:Z

.field private static final DEBUG_ONEPLUS:Z

.field private static final DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

.field private static final DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

.field private static final EXTERNAL_VIBRATOR_SERVICE:Ljava/lang/String; = "external_vibrator_service"

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

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private mAlwaysOnEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/VibratorService$Vibration;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCapabilities:J

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentExternalVibration:Landroid/os/ExternalVibration;

.field protected mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

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

.field private mIsVibrating:Z

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

.field private final mSupportedEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportsAmplitudeControl:Z

.field private final mSupportsExternalControl:Z

.field private final mSystemUiPackage:Ljava/lang/String;

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mVibratorStateListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/IVibratorStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVibratorUnderExternalControl:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 101
    const-string/jumbo v0, "persist.debug.vibrator.debugall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    .line 102
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    .line 130
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 131
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/VibratorService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 130
    return-void

    nop

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

    .line 427
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    .line 156
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    .line 166
    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 195
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 201
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 207
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 226
    new-instance v2, Lcom/android/server/VibratorService$1;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    .line 628
    new-instance v2, Lcom/android/server/VibratorService$4;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1144
    new-instance v2, Lcom/android/server/VibratorService$5;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    .line 2084
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/VibratorService;->mLidState:I

    .line 2086
    new-instance v3, Lcom/android/server/VibratorService$6;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$6;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 428
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    .line 431
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 435
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initCaliFile()V

    .line 437
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    .line 438
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsExternalControl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    .line 439
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorGetSupportedEffects()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VibratorService;->asList([I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    .line 440
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorGetCapabilities()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/VibratorService;->mCapabilities:J

    .line 442
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 443
    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 444
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v4, "*vibrator*"

    invoke-virtual {v3, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 445
    invoke-virtual {v4, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 447
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    .line 448
    const-string v4, "batterystats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 450
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 451
    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mSystemUiPackage:Ljava/lang/String;

    .line 453
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 456
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0046

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 459
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    .line 462
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    .line 463
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    .line 464
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    .line 465
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 466
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    .line 468
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 469
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    const-string v5, "android.intent.action.LID_SWITCH"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    const v5, 0x1070086

    invoke-direct {p0, v5}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 478
    .local v5, "clickEffect":Landroid/os/VibrationEffect;
    sget-object v6, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    invoke-static {v6, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v6

    .line 480
    .local v6, "doubleClickEffect":Landroid/os/VibrationEffect;
    const v7, 0x1070055

    invoke-direct {p0, v7}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v7

    .line 482
    .local v7, "heavyClickEffect":Landroid/os/VibrationEffect;
    const v8, 0x1070026

    invoke-direct {p0, v8}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v8

    .line 485
    .local v8, "tickEffect":Landroid/os/VibrationEffect;
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 486
    invoke-virtual {v9, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v9, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v11, 0x5

    invoke-virtual {v9, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 492
    invoke-static {v10, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v11

    .line 491
    const/16 v12, 0x15

    invoke-virtual {v9, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    .line 495
    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x40000000    # 2.0f

    const/16 v13, 0xa8

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    const/4 v12, -0x2

    invoke-virtual {v9, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    iget-object v9, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x3fc00000    # 1.5f

    const/16 v13, 0xc0

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {v9, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3e800000    # 0.25f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 502
    new-instance v1, Lcom/android/server/VibratorService$ExternalVibratorService;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$ExternalVibratorService;-><init>(Lcom/android/server/VibratorService;)V

    const-string v9, "external_vibrator_service"

    invoke-static {v9, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 507
    new-array v1, v2, [I

    const/16 v2, 0x24

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OpVibratorServiceInjector;->initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 510
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 94
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 94
    iput p1, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService;JIILandroid/os/VibrationAttributes;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/os/VibrationAttributes;

    .line 94
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIILandroid/os/VibrationAttributes;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget v0, p0, Lcom/android/server/VibratorService;->mLidState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 94
    iput p1, p0, Lcom/android/server/VibratorService;->mLidState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/VibratorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Landroid/os/ExternalVibration;

    .line 94
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 94
    iput p1, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/VibratorService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Z

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/VibratorService;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/VibratorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    return v0
.end method

.method static synthetic access$400(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 94
    invoke-static {p0}, Lcom/android/server/VibratorService;->isHapticFeedback(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 94
    invoke-static {p0}, Lcom/android/server/VibratorService;->isNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 94
    invoke-static {p0}, Lcom/android/server/VibratorService;->isRingtone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 94
    invoke-static {p0}, Lcom/android/server/VibratorService;->isAlarm(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/VibratorService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    iget-object v0, p0, Lcom/android/server/VibratorService;->mSystemUiPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 94
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1045
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    .local v0, "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_0

    .line 1047
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_0

    .line 1049
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1050
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_0

    .line 1052
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_2
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 1055
    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v1, v2, :cond_3

    .line 1056
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1058
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1062
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1063
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->printVibrationInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_4
    return-void
.end method

.method private applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V
    .locals 6
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .param p2, "intensity"    # I

    .line 1302
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    .line 1306
    .local v0, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    invoke-static {p2}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    .line 1307
    return-void

    .line 1311
    .end local v0    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v0

    .local v0, "defaultIntensity":I
    goto :goto_0

    .line 1313
    .end local v0    # "defaultIntensity":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1314
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v0

    .restart local v0    # "defaultIntensity":I
    goto :goto_0

    .line 1315
    .end local v0    # "defaultIntensity":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1316
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    .restart local v0    # "defaultIntensity":I
    goto :goto_0

    .line 1317
    .end local v0    # "defaultIntensity":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1318
    const/4 v0, 0x3

    .line 1325
    .restart local v0    # "defaultIntensity":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    sub-int v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$ScaleLevel;

    .line 1326
    .local v1, "scale":Lcom/android/server/VibratorService$ScaleLevel;
    const-string v2, "VibratorService"

    if-nez v1, :cond_4

    .line 1329
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

    .line 1331
    return-void

    .line 1334
    :cond_4
    const/4 v3, 0x0

    .line 1335
    .local v3, "scaledEffect":Landroid/os/VibrationEffect;
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$OneShot;

    if-eqz v4, :cond_5

    .line 1336
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 1337
    .local v2, "oneShot":Landroid/os/VibrationEffect$OneShot;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$OneShot;->resolve(I)Landroid/os/VibrationEffect$OneShot;

    move-result-object v2

    .line 1338
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$OneShot;->scale(FI)Landroid/os/VibrationEffect$OneShot;

    move-result-object v3

    .line 1339
    .end local v2    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto :goto_1

    :cond_5
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$Waveform;

    if-eqz v4, :cond_6

    .line 1340
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    .line 1341
    .local v2, "waveform":Landroid/os/VibrationEffect$Waveform;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$Waveform;->resolve(I)Landroid/os/VibrationEffect$Waveform;

    move-result-object v2

    .line 1342
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$Waveform;->scale(FI)Landroid/os/VibrationEffect$Waveform;

    move-result-object v3

    .line 1343
    .end local v2    # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto :goto_1

    :cond_6
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v4, :cond_7

    .line 1344
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Composed;

    .line 1345
    .local v2, "composed":Landroid/os/VibrationEffect$Composed;
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$Composed;->scale(FI)Landroid/os/VibrationEffect$Composed;

    move-result-object v3

    .line 1346
    .end local v2    # "composed":Landroid/os/VibrationEffect$Composed;
    goto :goto_1

    .line 1347
    :cond_7
    const-string v4, "Unable to apply intensity scaling, unknown VibrationEffect type"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :goto_1
    if-eqz v3, :cond_8

    .line 1351
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iput-object v2, p1, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    .line 1352
    iput-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 1354
    :cond_8
    return-void

    .line 1322
    .end local v0    # "defaultIntensity":I
    .end local v1    # "scale":Lcom/android/server/VibratorService$ScaleLevel;
    .end local v3    # "scaledEffect":Landroid/os/VibrationEffect;
    :cond_9
    return-void
.end method

.method private static varargs asList([I)Ljava/util/List;
    .locals 5
    .param p0, "vals"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 764
    if-nez p0, :cond_0

    .line 765
    const/4 v0, 0x0

    return-object v0

    .line 767
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 768
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 769
    .local v3, "val":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    .end local v3    # "val":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    :cond_1
    return-object v0
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .locals 2
    .param p1, "resId"    # I

    .line 513
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 514
    .local v0, "timings":[J
    invoke-static {v0}, Lcom/android/server/VibratorService;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .locals 3
    .param p0, "timings"    # [J

    .line 518
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    .line 521
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 523
    :cond_1
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 519
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private doCancelVibrateLocked()V
    .locals 7

    .line 1153
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "vibration"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1154
    const-string v2, "doCancelVibrateLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1156
    const/16 v2, 0x24

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1157
    iget-object v5, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 1158
    iget-object v5, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v5}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    .line 1159
    iput-object v6, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1161
    :cond_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v5, :cond_1

    .line 1162
    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5}, Landroid/os/ExternalVibration;->mute()Z

    .line 1163
    iput-object v6, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    .line 1164
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    .line 1166
    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 1167
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1171
    new-array v4, v4, [I

    aput v2, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1172
    iget-object v2, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1173
    :try_start_1
    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    .line 1174
    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsEffectChanged(Z)V

    .line 1175
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1178
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1179
    nop

    .line 1180
    return-void

    .line 1171
    :catchall_1
    move-exception v5

    new-array v4, v4, [I

    aput v2, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1172
    iget-object v2, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1173
    :try_start_2
    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    .line 1174
    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsEffectChanged(Z)V

    .line 1175
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1178
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1179
    throw v5
.end method

.method private doVibratorComposedEffectLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 8
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1734
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorComposedEffectLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1737
    :try_start_0
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Composed;

    .line 1739
    .local v2, "composed":Landroid/os/VibrationEffect$Composed;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1740
    :try_start_1
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 1741
    .local v4, "usingInputDeviceVibrators":Z
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1743
    if-eqz v4, :cond_1

    .line 1758
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1744
    return-void

    .line 1747
    :cond_1
    const-wide/16 v6, 0x20

    :try_start_2
    invoke-direct {p0, v6, v7}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_2

    .line 1758
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1748
    return-void

    .line 1751
    :cond_2
    nop

    .line 1752
    :try_start_3
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getPrimitiveEffects()Ljava/util/List;

    move-result-object v3

    new-array v5, v5, [Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    .line 1753
    .local v3, "primitiveEffects":[Landroid/os/VibrationEffect$Composition$PrimitiveEffect;
    invoke-static {v3, p1}, Lcom/android/server/VibratorService;->vibratorPerformComposedEffect([Landroid/os/VibrationEffect$Composition$PrimitiveEffect;Lcom/android/server/VibratorService$Vibration;)V

    .line 1756
    iget v5, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    array-length v6, v3

    mul-int/lit8 v6, v6, 0xa

    int-to-long v6, v6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1758
    .end local v2    # "composed":Landroid/os/VibrationEffect$Composed;
    .end local v3    # "primitiveEffects":[Landroid/os/VibrationEffect$Composition$PrimitiveEffect;
    .end local v4    # "usingInputDeviceVibrators":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1759
    nop

    .line 1761
    return-void

    .line 1741
    .restart local v2    # "composed":Landroid/os/VibrationEffect$Composed;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1758
    .end local v2    # "composed":Landroid/os/VibrationEffect$Composed;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1759
    throw v2
.end method

.method private doVibratorExists()Z
    .locals 1

    .line 1582
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 6

    .line 1642
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOff"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1644
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1645
    :try_start_1
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1646
    const-string v3, "VibratorService"

    const-string v4, "Turning vibrator off."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    .line 1649
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1650
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_2

    .line 1651
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1652
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    .line 1651
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_1
    goto :goto_1

    .line 1655
    :cond_2
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 1659
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->turnOffLinearMotorVibrator()V

    .line 1662
    .end local v3    # "vibratorCount":I
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1664
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1665
    nop

    .line 1666
    return-void

    .line 1662
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

    .line 1664
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1665
    throw v2
.end method

.method private doVibratorOn(JIILandroid/os/VibrationAttributes;)V
    .locals 7
    .param p1, "millis"    # J
    .param p3, "amplitude"    # I
    .param p4, "uid"    # I
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 1586
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1588
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1589
    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    .line 1590
    :try_start_1
    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    move p3, v3

    .line 1592
    :cond_0
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1593
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

    .line 1596
    :cond_1
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1597
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1598
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_3

    .line 1599
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1600
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {p5}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v5, p1, p2, v6}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1599
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_2
    goto :goto_2

    .line 1610
    :cond_3
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x61

    aput v6, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1611
    invoke-static {p1, p2, p3}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorOn(JI)V

    goto :goto_1

    .line 1613
    :cond_4
    const-string v4, "guacamoleb"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 1614
    :cond_5
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 1617
    :goto_1
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 1619
    .end local v3    # "vibratorCount":I
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1621
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1622
    nop

    .line 1623
    return-void

    .line 1619
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
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1621
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "millis":J
    .restart local p3    # "amplitude":I
    .restart local p4    # "uid":I
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1622
    throw v2
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .locals 19
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1670
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-wide/32 v12, 0x800000

    const-string v0, "doVibratorPrebakedEffectLocked"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1672
    :try_start_0
    iget-object v0, v11, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    move-object v14, v0

    .line 1674
    .local v14, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    iget-object v1, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1675
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

    .line 1676
    .local v0, "usingInputDeviceVibrators":Z
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1689
    const-wide/16 v15, 0x0

    if-nez v0, :cond_3

    :try_start_2
    new-array v1, v2, [I

    const/16 v4, 0x61

    aput v4, v1, v3

    .line 1690
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1693
    new-array v1, v2, [I

    const/16 v2, 0x24

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-wide/16 v7, 0x2

    if-eqz v1, :cond_1

    .line 1694
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    .line 1695
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v2

    .line 1694
    invoke-static {v1, v2, v11}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorPerformEffect(IILcom/android/server/VibratorService$Vibration;)J

    move-result-wide v1

    .line 1696
    .local v1, "duration":J
    move-wide v3, v1

    .local v3, "timeout":J
    goto :goto_1

    .line 1698
    .end local v1    # "duration":J
    .end local v3    # "timeout":J
    :cond_1
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v1, v1

    .line 1699
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v3

    int-to-long v3, v3

    .line 1700
    invoke-direct {v10, v7, v8}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v6

    .line 1698
    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J

    move-result-wide v1

    .line 1701
    .restart local v1    # "duration":J
    move-wide v3, v1

    .line 1704
    .restart local v3    # "timeout":J
    :goto_1
    invoke-direct {v10, v7, v8}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1705
    mul-long/2addr v3, v7

    .line 1707
    :cond_2
    cmp-long v5, v3, v15

    if-lez v5, :cond_3

    .line 1708
    iget v5, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {v10, v5, v1, v2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1709
    nop

    .line 1728
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1709
    return-wide v3

    .line 1712
    .end local v1    # "duration":J
    .end local v3    # "timeout":J
    :cond_3
    :try_start_3
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_4

    .line 1713
    nop

    .line 1728
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1713
    return-wide v15

    .line 1715
    :cond_4
    :try_start_4
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    move-object/from16 v17, v1

    .line 1716
    .local v17, "effect":Landroid/os/VibrationEffect;
    if-nez v17, :cond_5

    .line 1717
    const-string v1, "VibratorService"

    const-string v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1718
    nop

    .line 1728
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1718
    return-wide v15

    .line 1720
    :cond_5
    :try_start_5
    new-instance v18, Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v11, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iget-object v5, v11, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

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

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object/from16 v1, v18

    .line 1722
    .local v1, "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    .line 1723
    .local v2, "intensity":I
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1724
    invoke-direct {v10, v1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 1725
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1726
    nop

    .line 1728
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1726
    return-wide v15

    .line 1676
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

    .line 1728
    .end local v14    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 1729
    throw v0
.end method

.method private doVibratorSetAmplitude(I)V
    .locals 3
    .param p1, "amplitude"    # I

    .line 1626
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_1

    .line 1632
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x24

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    invoke-static {p1}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorSetAmplitude(I)V

    goto :goto_0

    .line 1635
    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    .line 1639
    :cond_1
    :goto_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1848
    const-string v0, "Vibrator Service:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1850
    :try_start_0
    const-string v1, "  mCurrentVibration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1851
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_0

    .line 1852
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 1854
    :cond_0
    const-string/jumbo v1, "null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1856
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentExternalVibration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibratorUnderExternalControl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsVibrating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibratorStateListeners Count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 1860
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1859
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowPowerMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHapticFeedbackIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNotificationIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRingIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSupportedEffects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1867
    const-string v1, "  Previous ring vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1868
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1869
    .local v2, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1870
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1871
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_1

    .line 1873
    :cond_1
    const-string v1, "  Previous notification vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1874
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1875
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_2

    .line 1878
    :cond_2
    const-string v1, "  Previous alarm vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1879
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1880
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1881
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_3

    .line 1883
    :cond_3
    const-string v1, "  Previous vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1885
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1886
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_4

    .line 1888
    :cond_4
    const-string v1, "  Previous external vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1889
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ExternalVibration;

    .line 1890
    .local v2, "vib":Landroid/os/ExternalVibration;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1891
    .end local v2    # "vib":Landroid/os/ExternalVibration;
    goto :goto_5

    .line 1892
    :cond_5
    monitor-exit v0

    .line 1893
    return-void

    .line 1892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1896
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1898
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1899
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_0

    .line 1900
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v2}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v2

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1903
    :cond_0
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1904
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1906
    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1907
    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1909
    const-wide v2, 0x10500000007L

    iget v4, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1911
    const-wide v2, 0x10500000008L

    iget v4, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1913
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1914
    .local v3, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b00000009L

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1916
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_0

    .line 1918
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1919
    .restart local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b0000000aL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1921
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_1

    .line 1923
    :cond_2
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1924
    .restart local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b0000000bL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1926
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_2

    .line 1928
    :cond_3
    iget-object v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1929
    .restart local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b0000000cL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1931
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_3

    .line 1932
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1933
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1934
    return-void

    .line 1932
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;
    .locals 2
    .param p1, "attrs"    # Landroid/os/VibrationAttributes;

    .line 842
    if-nez p1, :cond_0

    .line 843
    sget-object p1, Lcom/android/server/VibratorService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 845
    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService;->shouldBypassDnd(Landroid/os/VibrationAttributes;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 846
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 847
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 848
    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 849
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    .line 851
    .local v0, "flags":I
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {v1, v0}, Landroid/os/VibrationAttributes$Builder;->replaceFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p1

    .line 855
    .end local v0    # "flags":I
    :cond_1
    return-object p1
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .locals 5
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1376
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 1377
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 1376
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 1378
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 1379
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1382
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-static {v1}, Lcom/android/server/VibratorService;->shouldBypassDnd(Landroid/os/VibrationAttributes;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bypassing DND for vibration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    const/4 v0, 0x0

    .line 1389
    :cond_1
    return v0
.end method

.method private getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1285
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0

    .line 1287
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0

    .line 1289
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1290
    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0

    .line 1291
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1292
    const/4 v0, 0x3

    return v0

    .line 1294
    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method private getFallbackEffect(I)Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "effectId"    # I

    .line 1768
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

    .line 859
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 860
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 861
    const/4 v1, 0x0

    return-object v1

    .line 863
    :cond_0
    array-length v1, v0

    new-array v1, v1, [J

    .line 864
    .local v1, "out":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 865
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 864
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private hasCapability(J)Z
    .locals 2
    .param p1, "capability"    # J

    .line 1764
    iget-wide v0, p0, Lcom/android/server/VibratorService;->mCapabilities:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 1035
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static intensityToEffectStrength(I)I
    .locals 3
    .param p0, "intensity"    # I

    .line 1777
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected vibration intensity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    return v1

    .line 1783
    :cond_0
    return v1

    .line 1781
    :cond_1
    return v0

    .line 1779
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isAlarm(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 1803
    const/16 v0, 0x11

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

    .line 1261
    const-string v0, "VibratorService"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 1262
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 1261
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    .local v2, "packageContext":Landroid/content/Context;
    goto :goto_0

    .line 1263
    .end local v2    # "packageContext":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 1264
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create package context fail from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    move-object v2, v3

    .line 1269
    .local v2, "packageContext":Landroid/content/Context;
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    invoke-static {v3, v4}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isUsageMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1270
    const-string v3, "Skip vibrating on gaming mode"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    return v1

    .line 1274
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1275
    return v3

    .line 1278
    :cond_1
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 1279
    .local v0, "usage":I
    const/16 v4, 0x21

    if-eq v0, v4, :cond_2

    const/16 v4, 0x11

    if-eq v0, v4, :cond_2

    const/16 v4, 0x41

    if-ne v0, v4, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    return v1
.end method

.method private static isHapticFeedback(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 1799
    const/16 v0, 0x12

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

    .line 1791
    const/16 v0, 0x31

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .locals 4
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 1040
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

    .line 1795
    const/16 v0, 0x21

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

    .line 1439
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_0

    .line 1441
    :try_start_0
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1444
    goto :goto_0

    .line 1442
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 1446
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private noteVibratorOffLocked()V
    .locals 4

    .line 1821
    iget v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 1823
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    .line 1824
    const/16 v0, 0x54

    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1826
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 1827
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 1829
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    if-eqz v0, :cond_1

    .line 1830
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    .line 1831
    invoke-direct {p0}, Lcom/android/server/VibratorService;->notifyStateListenersLocked()V

    .line 1833
    :cond_1
    return-void
.end method

.method private noteVibratorOnLocked(IJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "millis"    # J

    .line 1808
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1809
    const/16 v1, 0x54

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V

    .line 1811
    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 1812
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    if-nez v0, :cond_0

    .line 1813
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    .line 1814
    invoke-direct {p0}, Lcom/android/server/VibratorService;->notifyStateListenersLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    :cond_0
    goto :goto_0

    .line 1816
    :catch_0
    move-exception v0

    .line 1818
    :goto_0
    return-void
.end method

.method private notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 673
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-interface {p1, v0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VibratorService"

    const-string v2, "Vibrator callback failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private notifyStateListenersLocked()V
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 683
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 684
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 685
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IVibratorStateListener;

    .line 686
    .local v2, "listener":Landroid/os/IVibratorStateListener;
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    .end local v2    # "listener":Landroid/os/IVibratorStateListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 689
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 690
    throw v1

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 690
    nop

    .line 691
    return-void
.end method

.method private reportFinishVibrationLocked()V
    .locals 6

    .line 1423
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "reportFinishVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1425
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_0

    .line 1426
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget v4, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v5, v5, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1428
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1429
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1433
    nop

    .line 1434
    return-void

    .line 1432
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1433
    throw v2
.end method

.method private setVibratorUnderExternalControl(Z)V
    .locals 2
    .param p1, "externalControl"    # Z

    .line 1836
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1837
    const-string v0, "VibratorService"

    if-eqz p1, :cond_0

    .line 1838
    const-string v1, "Vibrator going under external control."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1840
    :cond_0
    const-string v1, "Taking back control of vibrator."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    .line 1844
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetExternalControl(Z)V

    .line 1845
    return-void
.end method

.method private static shouldBypassDnd(Landroid/os/VibrationAttributes;)Z
    .locals 1
    .param p0, "attrs"    # Landroid/os/VibrationAttributes;

    .line 1372
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z
    .locals 5
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .param p2, "intensity"    # I

    .line 1393
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1394
    return v1

    .line 1397
    :cond_0
    if-nez p2, :cond_1

    .line 1398
    return v1

    .line 1401
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    const-string v2, "VibratorService"

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1402
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1403
    const-string v0, "Vibrate ignored, not vibrating for ringtones"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_2
    return v1

    .line 1408
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    .line 1409
    .local v0, "mode":I
    if-eqz v0, :cond_5

    .line 1410
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 1413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Would be an error: vibrate from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_4
    return v1

    .line 1418
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private shouldVibrateForRingtone()Z
    .locals 6

    .line 1357
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1358
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 1360
    .local v1, "ringerMode":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1361
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1360
    const-string/jumbo v3, "vibrate_when_ringing"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1362
    if-eqz v1, :cond_0

    move v4, v3

    :cond_0
    return v4

    .line 1363
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1364
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1363
    const-string v5, "apply_ramping_ringer"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1365
    if-eqz v1, :cond_2

    move v4, v3

    :cond_2
    return v4

    .line 1367
    :cond_3
    if-ne v1, v3, :cond_4

    move v4, v3

    :cond_4
    return v4
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 9
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1219
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationInnerLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1221
    :try_start_0
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1222
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$OneShot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string/jumbo v4, "vibration"

    if-eqz v2, :cond_0

    .line 1223
    :try_start_1
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1224
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 1225
    .local v2, "oneShot":Landroid/os/VibrationEffect$OneShot;
    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v6

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v8, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/VibratorService;->doVibratorOn(JIILandroid/os/VibrationAttributes;)V

    .line 1226
    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1227
    nop

    .end local v2    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Waveform;

    if-eqz v2, :cond_1

    .line 1230
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1231
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    .line 1232
    .local v2, "waveform":Landroid/os/VibrationEffect$Waveform;
    new-instance v3, Lcom/android/server/VibratorService$VibrateThread;

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {v3, p0, v2, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;ILandroid/os/VibrationAttributes;)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1233
    iget-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    .line 1234
    .end local v2    # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v2, :cond_3

    .line 1235
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1236
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    .line 1237
    .local v2, "timeout":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 1238
    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1240
    .end local v2    # "timeout":J
    :cond_2
    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Composed;

    if-eqz v2, :cond_4

    .line 1241
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1242
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorComposedEffectLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1247
    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1249
    :cond_4
    const-string v2, "VibratorService"

    const-string v3, "Unknown vibration type, ignoring"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1252
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1253
    nop

    .line 1254
    return-void

    .line 1252
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1253
    throw v2
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 6
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1196
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1200
    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x24

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1201
    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1202
    :try_start_1
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    .line 1203
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

    .line 1206
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    .line 1207
    .local v2, "intensity":I
    invoke-direct {p0, p1, v2}, Lcom/android/server/VibratorService;->shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_1

    .line 1213
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1208
    return-void

    .line 1210
    :cond_1
    :try_start_3
    invoke-direct {p0, p1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 1211
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1213
    .end local v2    # "intensity":I
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1214
    nop

    .line 1215
    return-void

    .line 1213
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1214
    throw v2
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1449
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1452
    :cond_0
    return-void
.end method

.method private updateAlwaysOnLocked()V
    .locals 3

    .line 1551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1552
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1553
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$Vibration;

    .line 1554
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {p0, v1, v2}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V

    .line 1551
    .end local v1    # "id":I
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1556
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1540
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    .line 1541
    .local v0, "intensity":I
    invoke-direct {p0, p2, v0}, Lcom/android/server/VibratorService;->shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1542
    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->vibratorAlwaysOnDisable(J)V

    goto :goto_0

    .line 1544
    :cond_0
    iget-object v1, p2, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v1, Landroid/os/VibrationEffect$Prebaked;

    .line 1545
    .local v1, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    invoke-static {v0}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v2

    .line 1546
    .local v2, "strength":I
    int-to-long v3, p1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v5

    int-to-long v5, v5

    int-to-long v7, v2

    invoke-static/range {v3 .. v8}, Lcom/android/server/VibratorService;->vibratorAlwaysOnEnable(JJJ)V

    .line 1548
    .end local v1    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    .end local v2    # "strength":I
    :goto_0
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .locals 8

    .line 1477
    const/4 v0, 0x0

    .line 1478
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 1480
    .local v1, "vibrateInputDevices":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1481
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    const/4 v6, -0x2

    .line 1480
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

    .line 1484
    goto :goto_1

    .line 1483
    :catch_0
    move-exception v4

    .line 1485
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v1, v4, :cond_1

    .line 1486
    const/4 v0, 0x1

    .line 1487
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    .line 1490
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_2

    .line 1491
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v2, :cond_3

    .line 1492
    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1493
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v2, p0, v4}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_2

    .line 1496
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_3

    .line 1497
    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1498
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 1502
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1503
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v2, :cond_6

    .line 1504
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 1505
    .local v2, "ids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 1506
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 1507
    .local v5, "device":Landroid/view/InputDevice;
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    .line 1508
    .local v6, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1509
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    .end local v5    # "device":Landroid/view/InputDevice;
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1512
    .end local v4    # "i":I
    :cond_5
    return v3

    .line 1514
    .end local v2    # "ids":[I
    :cond_6
    return v0
.end method

.method private updateLowPowerModeLocked()Z
    .locals 2

    .line 1518
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1519
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 1520
    .local v0, "lowPowerMode":Z
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_0

    .line 1521
    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 1522
    const/4 v1, 0x1

    return v1

    .line 1524
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateVibrationIntensityLocked()V
    .locals 4

    .line 1528
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1530
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v1

    .line 1528
    const-string v2, "haptic_feedback_intensity"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    .line 1531
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1533
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v1

    .line 1531
    const-string/jumbo v2, "notification_vibration_intensity"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    .line 1534
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1536
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v1

    .line 1534
    const-string/jumbo v2, "ring_vibration_intensity"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    .line 1537
    return-void
.end method

.method private updateVibrators()V
    .locals 4

    .line 1455
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1459
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1460
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->updateVibrator()V

    .line 1463
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v1

    .line 1464
    .local v1, "devicesUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v2

    .line 1465
    .local v2, "lowPowerModeUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrationIntensityLocked()V

    .line 1467
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 1469
    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1472
    :cond_2
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked()V

    .line 1473
    .end local v1    # "devicesUpdated":Z
    .end local v2    # "lowPowerModeUpdated":Z
    monitor-exit v0

    .line 1474
    return-void

    .line 1473
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

    .line 808
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 809
    return-void

    .line 811
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 812
    return-void

    .line 814
    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 815
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 814
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 816
    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .locals 4
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 827
    const/4 v0, 0x0

    const-string v1, "VibratorService"

    if-nez p0, :cond_0

    .line 829
    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return v0

    .line 833
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    nop

    .line 838
    const/4 v0, 0x1

    return v0

    .line 834
    :catch_0
    move-exception v2

    .line 835
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Encountered issue when verifying VibrationEffect."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 836
    return v0
.end method

.method static native vibratorAlwaysOnDisable(J)V
.end method

.method static native vibratorAlwaysOnEnable(JJJ)V
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorGetCapabilities()J
.end method

.method static native vibratorGetSupportedEffects()[I
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method

.method static native vibratorPerformComposedEffect([Landroid/os/VibrationEffect$Composition$PrimitiveEffect;Lcom/android/server/VibratorService$Vibration;)V
.end method

.method static native vibratorPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J
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
.method public areEffectsSupported([I)[I
    .locals 4
    .param p1, "effectIds"    # [I

    .line 740
    array-length v0, p1

    new-array v0, v0, [I

    .line 741
    .local v0, "supported":[I
    iget-object v1, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    if-nez v1, :cond_0

    .line 742
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_2

    .line 744
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 745
    iget-object v2, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 746
    const/4 v2, 0x1

    goto :goto_1

    .line 747
    :cond_1
    const/4 v2, 0x2

    :goto_1
    aput v2, v0, v1

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 750
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method public arePrimitivesSupported([I)[Z
    .locals 3
    .param p1, "primitiveIds"    # [I

    .line 755
    array-length v0, p1

    new-array v0, v0, [Z

    .line 756
    .local v0, "supported":[Z
    const-wide/16 v1, 0x20

    invoke-direct {p0, v1, v2}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 759
    :cond_0
    return-object v0
.end method

.method public cancelNonSelfVibrate()V
    .locals 6

    .line 1120
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelNonSelfVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1123
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1126
    .local v3, "ident":J
    :try_start_1
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 1127
    const-string v1, "VibratorService"

    const-string v5, "cancel non-self-initiated vibrate"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1130
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 1131
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setRepeatVibrate(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1133
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1134
    nop

    .line 1135
    .end local v3    # "ident":J
    goto :goto_0

    .line 1133
    .restart local v3    # "ident":J
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1134
    nop

    .end local p0    # "this":Lcom/android/server/VibratorService;
    throw v1

    .line 1136
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1137
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 1140
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1141
    return-void

    .line 1140
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1070
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1076
    const-string v0, "VibratorService"

    const-string v1, "--cancelVibrate--"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1082
    :try_start_0
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 1083
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentVibration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callingPid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1083
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-eq v1, p1, :cond_1

    .line 1086
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel vibration does not work, vibration token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v3, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cancel token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :cond_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_3

    .line 1092
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1093
    const-string v1, "VibratorService"

    const-string v3, "Canceling vibration."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1097
    .local v3, "ident":J
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1100
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 1101
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setRepeatVibrate(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1104
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1105
    goto :goto_0

    .line 1104
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1105
    nop

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v1

    .line 1108
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_3
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-nez v1, :cond_4

    .line 1109
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1110
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    goto :goto_1

    .line 1108
    :cond_4
    :goto_0
    nop

    .line 1114
    :cond_5
    :goto_1
    monitor-exit v0

    .line 1115
    return-void

    .line 1114
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2121
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2123
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2125
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 2126
    .local v2, "isDumpProto":Z
    array-length v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p3, v4

    .line 2127
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2128
    const/4 v2, 0x1

    .line 2126
    .end local v5    # "arg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2132
    :cond_2
    if-eqz v2, :cond_3

    .line 2133
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 2135
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2138
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2139
    nop

    .line 2140
    return-void

    .line 2138
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2139
    throw v3
.end method

.method public hasAmplitudeControl()Z
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 734
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

    .line 735
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasVibrator()Z
    .locals 1

    .line 657
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public isVibrating()Z
    .locals 2

    .line 662
    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 666
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    monitor-exit v0

    return v1

    .line 667
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_VIBRATOR_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 1560
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1561
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 1565
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1566
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 1570
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1571
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

    .line 2145
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

    .line 2146
    return-void
.end method

.method public onVibrationFinished()V
    .locals 2

    .line 1184
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1185
    const-string v0, "VibratorService"

    const-string v1, "Vibration finished, cleaning up"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1191
    monitor-exit v0

    .line 1192
    return-void

    .line 1191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 695
    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 699
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 701
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 702
    const/4 v3, 0x0

    .line 708
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 702
    return v3

    .line 705
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 706
    const/4 v3, 0x1

    .line 708
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 706
    return v3

    .line 708
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    nop

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "listener":Landroid/os/IVibratorStateListener;
    throw v3

    .line 710
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 696
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_VIBRATOR_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .locals 15
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/VibrationEffect;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 777
    move-object v10, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    const-string v0, "android.permission.VIBRATE_ALWAYS_ON"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 780
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 781
    const-string v0, "VibratorService"

    const-string v2, "Always-on effects not supported."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    return v1

    .line 784
    :cond_0
    if-nez v12, :cond_1

    .line 785
    iget-object v2, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 786
    :try_start_0
    iget-object v0, v10, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 787
    int-to-long v0, v11

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorAlwaysOnDisable(J)V

    .line 788
    monitor-exit v2

    move-object/from16 v13, p5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 790
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 791
    return v1

    .line 793
    :cond_2
    instance-of v0, v12, Landroid/os/VibrationEffect$Prebaked;

    if-nez v0, :cond_3

    .line 794
    const-string v0, "VibratorService"

    const-string v2, "Only prebaked effects supported for always-on."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return v1

    .line 797
    :cond_3
    move-object/from16 v1, p5

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;

    move-result-object v13

    .line 798
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v13, "attrs":Landroid/os/VibrationAttributes;
    iget-object v14, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 799
    :try_start_1
    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v4, p4

    move-object v5, v13

    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    .line 800
    .local v0, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v1, v10, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 801
    invoke-direct {p0, v11, v0}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V

    .line 802
    .end local v0    # "vib":Lcom/android/server/VibratorService$Vibration;
    monitor-exit v14

    .line 804
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 802
    :catchall_1
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 778
    .end local v13    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    :cond_4
    move-object/from16 v1, p5

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE_ALWAYS_ON permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVibratorEffect(I)I
    .locals 2
    .param p1, "sceneType"    # I

    .line 877
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    .line 878
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    .line 880
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/server/OpVibratorServiceInjector;->setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 8

    .line 528
    const-wide/32 v0, 0x800000

    const-string v2, "VibratorService#systemReady"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 530
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 531
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 532
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 534
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 535
    new-instance v3, Lcom/android/server/VibratorService$2;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 548
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_input_devices"

    .line 549
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 548
    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 552
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_intensity"

    .line 553
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 552
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 556
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_vibration_intensity"

    .line 557
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 556
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 560
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ring_vibration_intensity"

    .line 561
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 560
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 564
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    .line 565
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 564
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 570
    new-array v2, v6, [I

    const/16 v3, 0x24

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    .line 572
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 571
    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 574
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_on_touch_intensity"

    .line 575
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 574
    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 579
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notice_vibrate_intensity"

    .line 580
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 579
    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 584
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->updateVibrator()V

    .line 590
    :cond_0
    new-array v2, v6, [I

    const/16 v3, 0x61

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->motorF0Calibration()V

    .line 595
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

    .line 605
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 606
    .local v2, "intentfilter":Landroid/content/IntentFilter;
    const-string v3, "com.oem.intent.action.CANCEL_VIBRATION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v6, 0x3

    invoke-interface {v3, v4, v6, v5, v7}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    goto :goto_0

    .line 614
    :catch_0
    move-exception v3

    .line 618
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    .end local v2    # "intentfilter":Landroid/content/IntentFilter;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 621
    nop

    .line 622
    return-void

    .line 620
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 621
    throw v2
.end method

.method public unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 716
    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 722
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 724
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 722
    return v3

    .line 724
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 725
    nop

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "listener":Landroid/os/IVibratorStateListener;
    throw v3

    .line 726
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 717
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_VIBRATOR_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 21
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "token"    # Landroid/os/IBinder;

    .line 887
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v1, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vibrate, reason = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v8, 0x800000

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 889
    :try_start_0
    const-string v0, "android.permission.VIBRATE"

    invoke-direct {v10, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 892
    if-nez v14, :cond_0

    .line 893
    const-string v0, "VibratorService"

    const-string/jumbo v2, "token must not be null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 1030
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 894
    return-void

    .line 896
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 897
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-nez v0, :cond_1

    .line 1030
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 898
    return-void

    .line 903
    :cond_1
    :try_start_2
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", attrs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationAttributes;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 903
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, v10, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 910
    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored by ZenMode."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    .line 1030
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 911
    return-void

    .line 917
    :cond_2
    :try_start_3
    iget-object v0, v10, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-static {v0, v2, v12}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 918
    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored on gaming mode."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    .line 1030
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 919
    return-void

    .line 923
    :cond_3
    move-object/from16 v2, p4

    :try_start_4
    invoke-direct {v10, v2}, Lcom/android/server/VibratorService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 928
    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .local v5, "attrs":Landroid/os/VibrationAttributes;
    :try_start_5
    iget-object v15, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 929
    :try_start_6
    instance-of v0, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_5

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_5

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_5

    .line 932
    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 933
    .local v0, "newOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v2, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v2, v2, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 935
    .local v2, "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v3, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/VibratorService$Vibration;->hasTimeoutLongerThan(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 936
    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 937
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 938
    const-string v3, "VibratorService"

    const-string v4, "Ignoring incoming vibration in favor of current vibration"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_4
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1030
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 941
    return-void

    .line 948
    .end local v0    # "newOneShot":Landroid/os/VibrationEffect$OneShot;
    .end local v2    # "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    :cond_5
    :try_start_7
    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v0, :cond_7

    .line 949
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 950
    const-string v0, "VibratorService"

    const-string v2, "Ignoring incoming vibration for current external vibration"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_6
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1030
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 952
    return-void

    .line 959
    :cond_7
    :try_start_8
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    const/16 v2, 0x24

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_a

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_a

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 961
    invoke-static {v0}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 962
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 963
    const-string v0, "VibratorService"

    const-string v6, "Ignoring incoming vibration in favor of alarm vibration"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_8
    new-array v0, v3, [I

    aput v2, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 970
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getOldIntensityEffectType()I

    move-result v0

    .line 971
    .local v0, "oldIntensityEffectType":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    .line 972
    invoke-static {v0}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 976
    .end local v0    # "oldIntensityEffectType":I
    :cond_9
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1030
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 976
    return-void

    .line 981
    :cond_a
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v7, v0

    .line 982
    .local v7, "currentVibrationPid":I
    iget v0, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    if-eq v0, v11, :cond_c

    iget v0, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    if-eq v7, v0, :cond_c

    .line 983
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getImPkg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getImPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 984
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_b

    .line 985
    const-string v0, "VibratorService"

    const-string v6, " non-custom effect, reset effect to default "

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_b
    invoke-static {v4}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 989
    :cond_c
    iput v4, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    .line 990
    iput v4, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    .line 995
    new-array v0, v3, [I

    aput v2, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 996
    invoke-static {v11, v1, v12, v13}, Lcom/android/server/OpVibratorServiceInjector;->vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;Ljava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v1, v0

    .line 997
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v1, "effect":Landroid/os/VibrationEffect;
    if-nez v1, :cond_d

    .line 998
    :try_start_a
    const-string v0, "VibratorService"

    const-string v2, "The updated vibrator effect should not be empty"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1030
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 999
    return-void

    .line 1028
    .end local v7    # "currentVibrationPid":I
    :catchall_0
    move-exception v0

    move-wide/from16 v19, v8

    goto/16 :goto_2

    .line 997
    .restart local v7    # "currentVibrationPid":I
    :cond_d
    move-object/from16 v16, v1

    goto :goto_0

    .line 995
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :cond_e
    move-object/from16 v16, v1

    .line 1004
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v16, "effect":Landroid/os/VibrationEffect;
    :goto_0
    :try_start_b
    new-instance v0, Lcom/android/server/VibratorService$Vibration;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/16 v17, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, v16

    move/from16 v6, p1

    move/from16 v18, v7

    .end local v7    # "currentVibrationPid":I
    .local v18, "currentVibrationPid":I
    move-object/from16 v7, p2

    move-wide/from16 v19, v8

    move-object/from16 v8, p5

    move-object/from16 v9, v17

    :try_start_c
    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object v1, v0

    .line 1005
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v0, v10, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_11

    .line 1007
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "com.tencent.mm"

    .line 1011
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_11

    :cond_f
    const-string v0, "com.tencent.mobileqq"

    .line 1012
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    if-eqz v0, :cond_11

    .line 1014
    :cond_10
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring incoming vibration as process with uid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is background, attrs= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1030
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 1017
    return-void

    .line 1019
    :cond_11
    :try_start_d
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1020
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1022
    .local v2, "ident":J
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1023
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1024
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1026
    :try_start_f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1027
    nop

    .line 1028
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    .end local v18    # "currentVibrationPid":I
    monitor-exit v15
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1030
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 1031
    nop

    .line 1032
    return-void

    .line 1026
    .restart local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v2    # "ident":J
    .restart local v18    # "currentVibrationPid":I
    :catchall_1
    move-exception v0

    :try_start_10
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1027
    nop

    .end local v5    # "attrs":Landroid/os/VibrationAttributes;
    .end local v16    # "effect":Landroid/os/VibrationEffect;
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1028
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    .end local v18    # "currentVibrationPid":I
    .restart local v5    # "attrs":Landroid/os/VibrationAttributes;
    .restart local v16    # "effect":Landroid/os/VibrationEffect;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
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
    :try_start_11
    monitor-exit v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .end local v5    # "attrs":Landroid/os/VibrationAttributes;
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 1030
    .restart local v1    # "effect":Landroid/os/VibrationEffect;
    .restart local v5    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_5
    move-exception v0

    move-object v2, v5

    goto :goto_4

    .line 1028
    :catchall_6
    move-exception v0

    goto :goto_2

    .line 1030
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :catchall_7
    move-exception v0

    move-wide/from16 v19, v8

    move-object v2, v5

    goto :goto_4

    .end local v5    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p4    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_8
    move-exception v0

    goto :goto_3

    .line 890
    :cond_12
    move-object/from16 v2, p4

    move-wide/from16 v19, v8

    :try_start_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Requires VIBRATE permission"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 1030
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    .restart local p4    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_9
    move-exception v0

    goto :goto_4

    :catchall_a
    move-exception v0

    move-object/from16 v2, p4

    :goto_3
    move-wide/from16 v19, v8

    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .restart local v1    # "effect":Landroid/os/VibrationEffect;
    .local v2, "attrs":Landroid/os/VibrationAttributes;
    :goto_4
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 1031
    throw v0
.end method
