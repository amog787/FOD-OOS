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

.field private resumeIndex:I

.field private rtpFD:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 112
    const-string/jumbo v0, "persist.debug.vibrator.debugall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    .line 113
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    .line 117
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    .line 141
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    .line 142
    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/VibratorService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 141
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

    .line 462
    invoke-direct {p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 166
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    .line 167
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    .line 177
    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 206
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 212
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 218
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    .line 222
    iput v0, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    .line 256
    new-instance v2, Lcom/android/server/VibratorService$1;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    .line 663
    new-instance v2, Lcom/android/server/VibratorService$4;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1232
    new-instance v2, Lcom/android/server/VibratorService$5;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    .line 2533
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/VibratorService;->mLidState:I

    .line 2535
    new-instance v3, Lcom/android/server/VibratorService$6;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$6;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 463
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    .line 466
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 470
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initCaliFile()V

    .line 472
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    .line 473
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsExternalControl()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    .line 474
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorGetSupportedEffects()[I

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VibratorService;->asList([I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    .line 475
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorGetCapabilities()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/VibratorService;->mCapabilities:J

    .line 477
    iput-object p1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 478
    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 479
    .local v3, "pm":Landroid/os/PowerManager;
    const-string v4, "*vibrator*"

    invoke-virtual {v3, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 480
    invoke-virtual {v4, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 482
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    .line 483
    const-string v4, "batterystats"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 485
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 486
    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->mSystemUiPackage:Ljava/lang/String;

    .line 488
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 491
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 494
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    .line 497
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    .line 498
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    .line 499
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    .line 500
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 501
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    .line 503
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 504
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 507
    const-string v5, "android.intent.action.LID_SWITCH"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 511
    const v5, 0x1070086

    invoke-direct {p0, v5}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v5

    .line 513
    .local v5, "clickEffect":Landroid/os/VibrationEffect;
    sget-object v6, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    invoke-static {v6, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v6

    .line 515
    .local v6, "doubleClickEffect":Landroid/os/VibrationEffect;
    const v7, 0x1070055

    invoke-direct {p0, v7}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v7

    .line 517
    .local v7, "heavyClickEffect":Landroid/os/VibrationEffect;
    const v8, 0x1070026

    invoke-direct {p0, v8}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v8

    .line 520
    .local v8, "tickEffect":Landroid/os/VibrationEffect;
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 521
    invoke-virtual {v9, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 522
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v9, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 523
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v10, 0x2

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 524
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v11, 0x5

    invoke-virtual {v9, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 526
    iget-object v9, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 527
    invoke-static {v10, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v11

    .line 526
    const/16 v12, 0x15

    invoke-virtual {v9, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 529
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    iput-object v9, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    .line 530
    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x40000000    # 2.0f

    const/16 v13, 0xa8

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    const/4 v12, -0x2

    invoke-virtual {v9, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 532
    iget-object v9, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x3fc00000    # 1.5f

    const/16 v13, 0xc0

    invoke-direct {v11, v12, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {v9, v1, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 534
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 535
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v9, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3e800000    # 0.25f

    invoke-direct {v9, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v1, v10, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    new-instance v1, Lcom/android/server/VibratorService$ExternalVibratorService;

    invoke-direct {v1, p0}, Lcom/android/server/VibratorService$ExternalVibratorService;-><init>(Lcom/android/server/VibratorService;)V

    const-string v9, "external_vibrator_service"

    invoke-static {v9, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 542
    new-array v1, v2, [I

    const/16 v2, 0x24

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OpVibratorServiceInjector;->initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V

    .line 545
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget-object v0, p0, Lcom/android/server/VibratorService;->mProcStatesCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    return p1
.end method

.method static synthetic access$1100()Z
    .locals 1

    .line 105
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService;JIILandroid/os/VibrationAttributes;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/os/VibrationAttributes;

    .line 105
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIILandroid/os/VibrationAttributes;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/VibratorService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget v0, p0, Lcom/android/server/VibratorService;->mLidState:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/VibratorService;->mLidState:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/VibratorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsExternalControl:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Landroid/os/ExternalVibration;

    .line 105
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/VibratorService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # Z

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/VibratorService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/VibratorService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 105
    iput p1, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/VibratorService;J)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/VibratorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$500(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 105
    invoke-static {p0}, Lcom/android/server/VibratorService;->isHapticFeedback(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 105
    invoke-static {p0}, Lcom/android/server/VibratorService;->isNotification(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 105
    invoke-static {p0}, Lcom/android/server/VibratorService;->isRingtone(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 105
    invoke-static {p0}, Lcom/android/server/VibratorService;->isAlarm(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/VibratorService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 105
    iget-object v0, p0, Lcom/android/server/VibratorService;->mSystemUiPackage:Ljava/lang/String;

    return-object v0
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1125
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousRingVibrations:Ljava/util/LinkedList;

    .local v0, "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_0

    .line 1127
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1128
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousNotificationVibrations:Ljava/util/LinkedList;

    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_0

    .line 1129
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1130
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousAlarmVibrations:Ljava/util/LinkedList;

    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    goto :goto_0

    .line 1132
    .end local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :cond_2
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 1135
    .restart local v0    # "previousVibrations":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/VibratorService$VibrationInfo;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v1, v2, :cond_3

    .line 1136
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1138
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1142
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1143
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->printVibrationInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_4
    return-void
.end method

.method private applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V
    .locals 6
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .param p2, "intensity"    # I

    .line 1438
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    .line 1442
    .local v0, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    invoke-static {p2}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    .line 1443
    return-void

    .line 1447
    .end local v0    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v0

    .local v0, "defaultIntensity":I
    goto :goto_0

    .line 1449
    .end local v0    # "defaultIntensity":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1450
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v0

    .restart local v0    # "defaultIntensity":I
    goto :goto_0

    .line 1451
    .end local v0    # "defaultIntensity":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1452
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    .restart local v0    # "defaultIntensity":I
    goto :goto_0

    .line 1453
    .end local v0    # "defaultIntensity":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1454
    const/4 v0, 0x3

    .line 1461
    .restart local v0    # "defaultIntensity":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    sub-int v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$ScaleLevel;

    .line 1462
    .local v1, "scale":Lcom/android/server/VibratorService$ScaleLevel;
    const-string v2, "VibratorService"

    if-nez v1, :cond_4

    .line 1465
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

    .line 1467
    return-void

    .line 1470
    :cond_4
    const/4 v3, 0x0

    .line 1471
    .local v3, "scaledEffect":Landroid/os/VibrationEffect;
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$OneShot;

    if-eqz v4, :cond_5

    .line 1472
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 1473
    .local v2, "oneShot":Landroid/os/VibrationEffect$OneShot;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$OneShot;->resolve(I)Landroid/os/VibrationEffect$OneShot;

    move-result-object v2

    .line 1474
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$OneShot;->scale(FI)Landroid/os/VibrationEffect$OneShot;

    move-result-object v3

    .line 1475
    .end local v2    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto :goto_1

    :cond_5
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$Waveform;

    if-eqz v4, :cond_6

    .line 1476
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    .line 1477
    .local v2, "waveform":Landroid/os/VibrationEffect$Waveform;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v2, v4}, Landroid/os/VibrationEffect$Waveform;->resolve(I)Landroid/os/VibrationEffect$Waveform;

    move-result-object v2

    .line 1478
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$Waveform;->scale(FI)Landroid/os/VibrationEffect$Waveform;

    move-result-object v3

    .line 1479
    .end local v2    # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto :goto_1

    :cond_6
    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v4, v4, Landroid/os/VibrationEffect$Composed;

    if-eqz v4, :cond_7

    .line 1480
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Composed;

    .line 1481
    .local v2, "composed":Landroid/os/VibrationEffect$Composed;
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v2, v4, v5}, Landroid/os/VibrationEffect$Composed;->scale(FI)Landroid/os/VibrationEffect$Composed;

    move-result-object v3

    .line 1482
    .end local v2    # "composed":Landroid/os/VibrationEffect$Composed;
    goto :goto_1

    .line 1483
    :cond_7
    const-string v4, "Unable to apply intensity scaling, unknown VibrationEffect type"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :goto_1
    if-eqz v3, :cond_8

    .line 1487
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iput-object v2, p1, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    .line 1488
    iput-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 1490
    :cond_8
    return-void

    .line 1458
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

    .line 799
    if-nez p0, :cond_0

    .line 800
    const/4 v0, 0x0

    return-object v0

    .line 802
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 803
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 804
    .local v3, "val":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 803
    .end local v3    # "val":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    :cond_1
    return-object v0
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .locals 2
    .param p1, "resId"    # I

    .line 548
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 549
    .local v0, "timings":[J
    invoke-static {v0}, Lcom/android/server/VibratorService;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .locals 3
    .param p0, "timings"    # [J

    .line 553
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    .line 556
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 558
    :cond_1
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 554
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private doCancelVibrateLocked()V
    .locals 7

    .line 1241
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "vibration"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1242
    const-string v2, "doCancelVibrateLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1244
    const/16 v2, 0x24

    const/4 v4, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1245
    iget-object v5, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 1246
    iget-object v5, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v5}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    .line 1247
    iput-object v6, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1249
    :cond_0
    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v5, :cond_1

    .line 1250
    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v5}, Landroid/os/ExternalVibration;->mute()Z

    .line 1251
    iput-object v6, p0, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    .line 1252
    invoke-direct {p0, v3}, Lcom/android/server/VibratorService;->setVibratorUnderExternalControl(Z)V

    .line 1254
    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 1255
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1259
    new-array v4, v4, [I

    aput v2, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1260
    iget-object v2, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1261
    :try_start_1
    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    .line 1262
    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsEffectChanged(Z)V

    .line 1263
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1266
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1267
    nop

    .line 1268
    return-void

    .line 1259
    :catchall_1
    move-exception v5

    new-array v4, v4, [I

    aput v2, v4, v3

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1260
    iget-object v2, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1261
    :try_start_2
    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    .line 1262
    invoke-static {v3}, Lcom/android/server/OpVibratorServiceInjector;->setIsEffectChanged(Z)V

    .line 1263
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1266
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1267
    throw v5
.end method

.method private doStopVibrateLocked(Z)V
    .locals 2
    .param p1, "updateResumeIndex"    # Z

    .line 1272
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1273
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    .line 1275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1277
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorStop(Z)V

    .line 1278
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V

    .line 1279
    return-void
.end method

.method private doVibratorComposedEffectLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 8
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 2183
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorComposedEffectLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2186
    :try_start_0
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Composed;

    .line 2188
    .local v2, "composed":Landroid/os/VibrationEffect$Composed;
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2189
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

    .line 2190
    .local v4, "usingInputDeviceVibrators":Z
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2192
    if-eqz v4, :cond_1

    .line 2207
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2193
    return-void

    .line 2196
    :cond_1
    const-wide/16 v6, 0x20

    :try_start_2
    invoke-direct {p0, v6, v7}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_2

    .line 2207
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2197
    return-void

    .line 2200
    :cond_2
    nop

    .line 2201
    :try_start_3
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Composed;->getPrimitiveEffects()Ljava/util/List;

    move-result-object v3

    new-array v5, v5, [Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/VibrationEffect$Composition$PrimitiveEffect;

    .line 2202
    .local v3, "primitiveEffects":[Landroid/os/VibrationEffect$Composition$PrimitiveEffect;
    invoke-static {v3, p1}, Lcom/android/server/VibratorService;->vibratorPerformComposedEffect([Landroid/os/VibrationEffect$Composition$PrimitiveEffect;Lcom/android/server/VibratorService$Vibration;)V

    .line 2205
    iget v5, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    array-length v6, v3

    mul-int/lit8 v6, v6, 0xa

    int-to-long v6, v6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2207
    .end local v2    # "composed":Landroid/os/VibrationEffect$Composed;
    .end local v3    # "primitiveEffects":[Landroid/os/VibrationEffect$Composition$PrimitiveEffect;
    .end local v4    # "usingInputDeviceVibrators":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2208
    nop

    .line 2210
    return-void

    .line 2190
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

    .line 2207
    .end local v2    # "composed":Landroid/os/VibrationEffect$Composed;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2208
    throw v2
.end method

.method private doVibratorExists()Z
    .locals 1

    .line 1718
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 6

    .line 2051
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOff"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2053
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2054
    :try_start_1
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 2055
    const-string v3, "VibratorService"

    const-string v4, "Turning vibrator off."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    .line 2058
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2059
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_2

    .line 2060
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 2061
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    .line 2060
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_1
    goto :goto_1

    .line 2064
    :cond_2
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 2068
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->turnOffLinearMotorVibrator()V

    .line 2071
    .end local v3    # "vibratorCount":I
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2073
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2074
    nop

    .line 2075
    return-void

    .line 2071
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

    .line 2073
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2074
    throw v2
.end method

.method private doVibratorOn(JIILandroid/os/VibrationAttributes;)V
    .locals 7
    .param p1, "millis"    # J
    .param p3, "amplitude"    # I
    .param p4, "uid"    # I
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 1722
    const-wide/32 v0, 0x800000

    const-string v2, "doVibratorOn"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1724
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1725
    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    .line 1726
    :try_start_1
    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    move p3, v3

    .line 1728
    :cond_0
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1729
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

    .line 1732
    :cond_1
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1733
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1734
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_3

    .line 1735
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1736
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {p5}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v5, p1, p2, v6}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1735
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_2
    goto :goto_1

    .line 1740
    :cond_3
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 1748
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x61

    aput v6, v4, v5

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1749
    invoke-static {p1, p2, p3}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorOn(JI)V

    goto :goto_1

    .line 1751
    :cond_4
    const-string v4, "guacamoleb"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 1752
    :cond_5
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 1757
    .end local v3    # "vibratorCount":I
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1759
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1760
    nop

    .line 1761
    return-void

    .line 1757
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

    .line 1759
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "millis":J
    .restart local p3    # "amplitude":I
    .restart local p4    # "uid":I
    .restart local p5    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1760
    throw v2
.end method

.method private doVibratorOnEnvelope([I[I[IZIILandroid/os/VibrationAttributes;)V
    .locals 14
    .param p1, "relativeTime"    # [I
    .param p2, "scaleArr"    # [I
    .param p3, "freqArr"    # [I
    .param p4, "steepMode"    # Z
    .param p5, "amplitude"    # I
    .param p6, "uid"    # I
    .param p7, "attrs"    # Landroid/os/VibrationAttributes;

    .line 1797
    move-object v1, p0

    move-object v2, p1

    iget-object v3, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1798
    const/4 v0, 0x3

    :try_start_0
    aget v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    int-to-long v4, v4

    move/from16 v6, p6

    :try_start_1
    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1799
    iget-object v4, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1800
    .local v4, "vibratorCount":I
    if-eqz v4, :cond_1

    .line 1801
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 1802
    iget-object v7, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    aget v8, v2, v0

    int-to-long v8, v8

    invoke-virtual/range {p7 .. p7}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1801
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move/from16 v8, p4

    move/from16 v7, p5

    .end local v5    # "i":I
    goto :goto_2

    .line 1805
    :cond_1
    const/16 v5, 0xc

    new-array v5, v5, [I

    .line 1806
    .local v5, "params":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v2

    if-ge v7, v8, :cond_3

    .line 1807
    mul-int/lit8 v8, v7, 0x3

    aget v9, v2, v7

    aput v9, v5, v8

    .line 1808
    mul-int/lit8 v8, v7, 0x3

    const/4 v9, 0x1

    add-int/2addr v8, v9

    aget v10, p2, v7

    aput v10, v5, v8

    .line 1809
    mul-int/lit8 v8, v7, 0x3

    const/4 v10, 0x2

    add-int/2addr v8, v10

    aget v11, p3, v7

    aput v11, v5, v8

    .line 1810
    const-string/jumbo v8, "relativeTime, scale, freq = { %d, %d, %d }"

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v12, 0x0

    mul-int/lit8 v13, v7, 0x3

    aget v13, v5, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    mul-int/lit8 v12, v7, 0x3

    add-int/2addr v12, v9

    aget v12, v5, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    mul-int/lit8 v9, v7, 0x3

    add-int/2addr v9, v10

    aget v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v10

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1811
    .local v8, "temp":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 1812
    const-string v9, "VibratorService"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    .end local v8    # "temp":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1815
    .end local v7    # "i":I
    :cond_3
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1816
    const-string v0, "VibratorService"

    const-string/jumbo v7, "vibrator perform envelope"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1818
    :cond_4
    move/from16 v7, p5

    :try_start_2
    invoke-direct {p0, v7}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1819
    move/from16 v8, p4

    :try_start_3
    invoke-static {v5, v8}, Lcom/android/server/VibratorService;->vibratorPerformEnvelope([IZ)V

    .line 1821
    .end local v4    # "vibratorCount":I
    .end local v5    # "params":[I
    :goto_2
    monitor-exit v3

    .line 1822
    return-void

    .line 1821
    :catchall_0
    move-exception v0

    move/from16 v8, p4

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v8, p4

    move/from16 v7, p5

    goto :goto_3

    :catchall_2
    move-exception v0

    move/from16 v8, p4

    move/from16 v7, p5

    move/from16 v6, p6

    :goto_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_3
.end method

.method private doVibratorOnExtPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .locals 19
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 2144
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-wide/32 v12, 0x800000

    const-string v0, "doVibratorOnExtPrebakedEffectLocked"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2146
    :try_start_0
    iget-object v0, v11, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$ExtPrebaked;

    move-object v14, v0

    .line 2148
    .local v14, "prebaked":Landroid/os/VibrationEffect$ExtPrebaked;
    iget-object v1, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2149
    :try_start_1
    iget-object v0, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2150
    .local v0, "usingInputDeviceVibrators":Z
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2152
    const-wide/16 v15, 0x0

    if-nez v0, :cond_1

    .line 2153
    const/16 v1, 0xff

    :try_start_2
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 2154
    invoke-virtual {v14}, Landroid/os/VibrationEffect$ExtPrebaked;->getId()I

    move-result v1

    int-to-long v1, v1

    .line 2155
    invoke-virtual {v14}, Landroid/os/VibrationEffect$ExtPrebaked;->getScale()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x2

    invoke-direct {v10, v5, v6}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v6

    .line 2154
    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J

    move-result-wide v1

    .line 2157
    .local v1, "timeout":J
    cmp-long v3, v1, v15

    if-lez v3, :cond_1

    .line 2158
    iget v3, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {v10, v3, v1, v2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2159
    nop

    .line 2176
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2159
    return-wide v1

    .line 2163
    .end local v1    # "timeout":J
    :cond_1
    :try_start_3
    invoke-virtual {v14}, Landroid/os/VibrationEffect$ExtPrebaked;->getId()I

    move-result v1

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    move-object/from16 v17, v1

    .line 2164
    .local v17, "effect":Landroid/os/VibrationEffect;
    if-nez v17, :cond_2

    .line 2165
    const-string v1, "VibratorService"

    const-string v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2166
    nop

    .line 2176
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2166
    return-wide v15

    .line 2168
    :cond_2
    :try_start_4
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

    .line 2170
    .local v1, "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    .line 2171
    .local v2, "intensity":I
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 2172
    invoke-direct {v10, v1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 2173
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2174
    nop

    .line 2176
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2174
    return-wide v15

    .line 2150
    .end local v0    # "usingInputDeviceVibrators":Z
    .end local v1    # "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "intensity":I
    .end local v17    # "effect":Landroid/os/VibrationEffect;
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2176
    .end local v14    # "prebaked":Landroid/os/VibrationEffect$ExtPrebaked;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2177
    throw v0
.end method

.method private doVibratorOnLoopPattern(Landroid/os/VibrationEffect;I)J
    .locals 25
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "uid"    # I

    .line 1890
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1891
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/os/VibrationEffect$LoopPattern;

    .line 1893
    .local v0, "newEffect":Landroid/os/VibrationEffect$LoopPattern;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getSignalType()[I

    move-result-object v3

    .line 1894
    .local v3, "signalTypeArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getStartTime()[I

    move-result-object v4

    .line 1895
    .local v4, "startTimeArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getPatternDuration()[I

    move-result-object v5

    .line 1898
    .local v5, "durationArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getEffectId()[I

    move-result-object v6

    .line 1899
    .local v6, "effectIdArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getStrength()[I

    move-result-object v7

    .line 1901
    .local v7, "strengthArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getEnvelope()[I

    move-result-object v8

    .line 1902
    .local v8, "envelopeArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getEnvelopeAlgo()[I

    move-result-object v9

    .line 1904
    .local v9, "envelopeAlgoArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getEventNumber()I

    move-result v10

    .line 1906
    .local v10, "eventNum":I
    const/16 v11, 0x100

    new-array v11, v11, [I

    .line 1908
    .local v11, "pattern":[I
    const/4 v12, -0x1

    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([II)V

    .line 1909
    const/4 v13, 0x0

    .line 1910
    .local v13, "prebakedIndex":I
    const/4 v14, 0x0

    .line 1913
    .local v14, "envelopeIndex":I
    const-wide/16 v15, 0x0

    .line 1914
    .local v15, "patternDuration":J
    sget-boolean v17, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v17, :cond_0

    .line 1915
    const-string v12, "VibratorService"

    move/from16 v18, v13

    .end local v13    # "prebakedIndex":I
    .local v18, "prebakedIndex":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v14

    .end local v14    # "envelopeIndex":I
    .local v19, "envelopeIndex":I
    const-string v14, "doVibratorOnLoopPattern, resumeIndex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/VibratorService;->resumeIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", eventNum = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1914
    .end local v18    # "prebakedIndex":I
    .end local v19    # "envelopeIndex":I
    .restart local v13    # "prebakedIndex":I
    .restart local v14    # "envelopeIndex":I
    :cond_0
    move/from16 v18, v13

    move/from16 v19, v14

    .line 1917
    .end local v13    # "prebakedIndex":I
    .end local v14    # "envelopeIndex":I
    .restart local v18    # "prebakedIndex":I
    .restart local v19    # "envelopeIndex":I
    :goto_0
    iget v12, v1, Lcom/android/server/VibratorService;->resumeIndex:I

    if-ge v12, v10, :cond_1

    iget v12, v1, Lcom/android/server/VibratorService;->resumeIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 1918
    .local v12, "index":I
    :goto_1
    move v14, v12

    move-wide/from16 v20, v15

    .end local v15    # "patternDuration":J
    .local v14, "i":I
    .local v20, "patternDuration":J
    :goto_2
    const/16 v15, 0x10

    if-ge v14, v10, :cond_4

    .line 1919
    sub-int v22, v14, v12

    mul-int/lit8 v22, v22, 0x10

    .line 1920
    .local v22, "startIndex":I
    :try_start_1
    aget v15, v3, v14

    aput v15, v11, v22

    .line 1921
    add-int/lit8 v15, v22, 0x1

    aget v23, v4, v14

    aput v23, v11, v15

    .line 1922
    aget v15, v4, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v23, v14

    .end local v14    # "i":I
    .local v23, "i":I
    int-to-long v13, v15

    move-object/from16 v24, v2

    move-wide/from16 v1, v20

    .end local v20    # "patternDuration":J
    .local v1, "patternDuration":J
    add-long v20, v1, v13

    .line 1923
    .end local v1    # "patternDuration":J
    .restart local v20    # "patternDuration":J
    add-int/lit8 v1, v22, 0x2

    :try_start_2
    aget v2, v5, v23

    aput v2, v11, v1

    .line 1924
    aget v1, v5, v23

    int-to-long v1, v1

    add-long v20, v20, v1

    .line 1925
    aget v1, v3, v23

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1926
    add-int/lit8 v1, v22, 0x2

    aget v2, v6, v18

    aput v2, v11, v1

    .line 1927
    add-int/lit8 v1, v22, 0x3

    add-int/lit8 v2, v18, 0x1

    .end local v18    # "prebakedIndex":I
    .local v2, "prebakedIndex":I
    aget v13, v7, v18

    aput v13, v11, v1

    move/from16 v18, v2

    goto :goto_3

    .line 1928
    .end local v2    # "prebakedIndex":I
    .restart local v18    # "prebakedIndex":I
    :cond_2
    aget v1, v3, v23

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1929
    add-int/lit8 v1, v22, 0x2

    aget v2, v9, v19

    aput v2, v11, v1

    .line 1930
    mul-int/lit8 v1, v19, 0xc

    add-int/lit8 v2, v22, 0x4

    const/16 v13, 0xc

    invoke-static {v8, v1, v11, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1931
    add-int/lit8 v19, v19, 0x1

    .line 1918
    .end local v22    # "startIndex":I
    :cond_3
    :goto_3
    add-int/lit8 v14, v23, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    .end local v23    # "i":I
    .restart local v14    # "i":I
    goto :goto_2

    .line 1957
    .end local v0    # "newEffect":Landroid/os/VibrationEffect$LoopPattern;
    .end local v3    # "signalTypeArr":[I
    .end local v4    # "startTimeArr":[I
    .end local v5    # "durationArr":[I
    .end local v6    # "effectIdArr":[I
    .end local v7    # "strengthArr":[I
    .end local v8    # "envelopeArr":[I
    .end local v9    # "envelopeAlgoArr":[I
    .end local v10    # "eventNum":I
    .end local v11    # "pattern":[I
    .end local v12    # "index":I
    .end local v14    # "i":I
    .end local v18    # "prebakedIndex":I
    .end local v19    # "envelopeIndex":I
    .end local v20    # "patternDuration":J
    :catchall_0
    move-exception v0

    move-object/from16 v24, v2

    goto/16 :goto_7

    .line 1918
    .restart local v0    # "newEffect":Landroid/os/VibrationEffect$LoopPattern;
    .restart local v3    # "signalTypeArr":[I
    .restart local v4    # "startTimeArr":[I
    .restart local v5    # "durationArr":[I
    .restart local v6    # "effectIdArr":[I
    .restart local v7    # "strengthArr":[I
    .restart local v8    # "envelopeArr":[I
    .restart local v9    # "envelopeAlgoArr":[I
    .restart local v10    # "eventNum":I
    .restart local v11    # "pattern":[I
    .restart local v12    # "index":I
    .restart local v14    # "i":I
    .restart local v18    # "prebakedIndex":I
    .restart local v19    # "envelopeIndex":I
    .restart local v20    # "patternDuration":J
    :cond_4
    move-object/from16 v24, v2

    move/from16 v23, v14

    move-wide/from16 v1, v20

    .line 1935
    .end local v14    # "i":I
    .end local v20    # "patternDuration":J
    .restart local v1    # "patternDuration":J
    sget-boolean v13, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v13, :cond_8

    .line 1936
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_4
    sub-int v14, v10, v12

    if-ge v13, v14, :cond_7

    .line 1937
    const/4 v14, 0x0

    .local v14, "m":I
    :goto_5
    if-ge v14, v15, :cond_5

    .line 1938
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    mul-int/lit8 v21, v13, 0x10

    add-int v21, v21, v14

    move-object/from16 v22, v3

    .end local v3    # "signalTypeArr":[I
    .local v22, "signalTypeArr":[I
    aget v3, v11, v21

    invoke-virtual {v15, v3}, Ljava/io/PrintStream;->print(I)V

    .line 1939
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, ","

    invoke-virtual {v3, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1937
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v22

    const/16 v15, 0x10

    goto :goto_5

    .end local v22    # "signalTypeArr":[I
    .restart local v3    # "signalTypeArr":[I
    :cond_5
    move-object/from16 v22, v3

    .line 1941
    .end local v3    # "signalTypeArr":[I
    .end local v14    # "m":I
    .restart local v22    # "signalTypeArr":[I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 1942
    mul-int/lit8 v3, v13, 0x10

    const/4 v14, 0x1

    add-int/2addr v3, v14

    aget v3, v11, v3

    const/4 v15, -0x1

    if-ne v3, v15, :cond_6

    .line 1943
    goto :goto_6

    .line 1936
    :cond_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v22

    const/16 v15, 0x10

    goto :goto_4

    .end local v22    # "signalTypeArr":[I
    .restart local v3    # "signalTypeArr":[I
    :cond_7
    move-object/from16 v22, v3

    .end local v3    # "signalTypeArr":[I
    .restart local v22    # "signalTypeArr":[I
    goto :goto_6

    .line 1935
    .end local v13    # "n":I
    .end local v22    # "signalTypeArr":[I
    .restart local v3    # "signalTypeArr":[I
    :cond_8
    move-object/from16 v22, v3

    .line 1948
    .end local v3    # "signalTypeArr":[I
    .restart local v22    # "signalTypeArr":[I
    :goto_6
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_9

    .line 1949
    const-string v3, "VibratorService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "vibrator perform loop pattern, duration = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :cond_9
    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopPattern;->getAmplitude()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide v13, v1

    move-object/from16 v1, p0

    .end local v1    # "patternDuration":J
    .local v13, "patternDuration":J
    :try_start_3
    invoke-direct {v1, v3}, Lcom/android/server/VibratorService;->sendLoopParameter(I)V

    .line 1952
    invoke-static {v11}, Lcom/android/server/VibratorService;->vibratorPerformPattern([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1953
    move/from16 v2, p2

    :try_start_4
    invoke-direct {v1, v2, v13, v14}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1955
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/VibratorService;->resumeIndex:I

    .line 1956
    monitor-exit v24

    return-wide v13

    .line 1957
    .end local v0    # "newEffect":Landroid/os/VibrationEffect$LoopPattern;
    .end local v4    # "startTimeArr":[I
    .end local v5    # "durationArr":[I
    .end local v6    # "effectIdArr":[I
    .end local v7    # "strengthArr":[I
    .end local v8    # "envelopeArr":[I
    .end local v9    # "envelopeAlgoArr":[I
    .end local v10    # "eventNum":I
    .end local v11    # "pattern":[I
    .end local v12    # "index":I
    .end local v13    # "patternDuration":J
    .end local v18    # "prebakedIndex":I
    .end local v19    # "envelopeIndex":I
    .end local v22    # "signalTypeArr":[I
    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    :goto_7
    move-object/from16 v1, p0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v24, v2

    :goto_8
    move/from16 v2, p2

    :goto_9
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_9
.end method

.method private doVibratorOnPattern(Landroid/os/VibrationEffect;I)J
    .locals 23
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "uid"    # I

    .line 1825
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1826
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Pattern;

    .line 1828
    .local v0, "newEffect":Landroid/os/VibrationEffect$Pattern;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getSignalType()[I

    move-result-object v3

    .line 1829
    .local v3, "signalTypeArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getStartTime()[I

    move-result-object v4

    .line 1830
    .local v4, "startTimeArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getPatternDuration()[I

    move-result-object v5

    .line 1833
    .local v5, "durationArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getEffectId()[I

    move-result-object v6

    .line 1834
    .local v6, "effectIdArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getStrength()[I

    move-result-object v7

    .line 1836
    .local v7, "strengthArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getEnvelope()[I

    move-result-object v8

    .line 1837
    .local v8, "envelopeArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getEnvelopeAlgo()[I

    move-result-object v9

    .line 1839
    .local v9, "envelopeAlgoArr":[I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getEventNumber()I

    move-result v10

    .line 1841
    .local v10, "eventNum":I
    const/16 v11, 0x100

    new-array v11, v11, [I

    .line 1843
    .local v11, "pattern":[I
    const/4 v12, -0x1

    invoke-static {v11, v12}, Ljava/util/Arrays;->fill([II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1844
    const/4 v13, 0x0

    .line 1845
    .local v13, "prebakedIndex":I
    const/4 v14, 0x0

    .line 1846
    .local v14, "envelopeIndex":I
    const-wide/16 v15, 0x0

    .line 1847
    .local v15, "patternDuration":J
    const/16 v17, 0x0

    move-wide/from16 v21, v15

    move/from16 v16, v13

    move-wide/from16 v12, v21

    move/from16 v15, v17

    .end local v13    # "prebakedIndex":I
    .local v12, "patternDuration":J
    .local v15, "i":I
    .local v16, "prebakedIndex":I
    :goto_0
    const/4 v1, 0x1

    if-ge v15, v10, :cond_3

    .line 1848
    mul-int/lit8 v18, v15, 0x10

    :try_start_1
    aget v19, v3, v15

    aput v19, v11, v18

    .line 1849
    mul-int/lit8 v18, v15, 0x10

    add-int/lit8 v18, v18, 0x1

    aget v19, v4, v15

    aput v19, v11, v18

    .line 1850
    aget v1, v4, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v2

    int-to-long v1, v1

    add-long/2addr v12, v1

    .line 1851
    mul-int/lit8 v1, v15, 0x10

    const/4 v2, 0x2

    add-int/2addr v1, v2

    :try_start_2
    aget v20, v5, v15

    aput v20, v11, v1

    .line 1852
    aget v1, v5, v15

    move-object/from16 v20, v3

    .end local v3    # "signalTypeArr":[I
    .local v20, "signalTypeArr":[I
    int-to-long v2, v1

    add-long/2addr v12, v2

    .line 1853
    aget v1, v20, v15

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1854
    mul-int/lit8 v1, v15, 0x10

    const/4 v2, 0x2

    add-int/2addr v1, v2

    aget v2, v6, v16

    aput v2, v11, v1

    .line 1855
    mul-int/lit8 v1, v15, 0x10

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v16, 0x1

    .end local v16    # "prebakedIndex":I
    .local v2, "prebakedIndex":I
    aget v3, v7, v16

    aput v3, v11, v1

    move/from16 v16, v2

    goto :goto_1

    .line 1856
    .end local v2    # "prebakedIndex":I
    .restart local v16    # "prebakedIndex":I
    :cond_0
    aget v1, v20, v15

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1857
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1858
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "envelopeAlgoArr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget v3, v9, v14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_1
    mul-int/lit8 v1, v15, 0x10

    const/4 v2, 0x2

    add-int/2addr v1, v2

    aget v2, v9, v14

    aput v2, v11, v1

    .line 1861
    mul-int/lit8 v1, v14, 0xc

    mul-int/lit8 v2, v15, 0x10

    add-int/lit8 v2, v2, 0x4

    const/16 v3, 0xc

    invoke-static {v8, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1862
    add-int/lit8 v14, v14, 0x1

    .line 1847
    :cond_2
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 1886
    .end local v0    # "newEffect":Landroid/os/VibrationEffect$Pattern;
    .end local v4    # "startTimeArr":[I
    .end local v5    # "durationArr":[I
    .end local v6    # "effectIdArr":[I
    .end local v7    # "strengthArr":[I
    .end local v8    # "envelopeArr":[I
    .end local v9    # "envelopeAlgoArr":[I
    .end local v10    # "eventNum":I
    .end local v11    # "pattern":[I
    .end local v12    # "patternDuration":J
    .end local v14    # "envelopeIndex":I
    .end local v15    # "i":I
    .end local v16    # "prebakedIndex":I
    .end local v20    # "signalTypeArr":[I
    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_5

    .line 1847
    .restart local v0    # "newEffect":Landroid/os/VibrationEffect$Pattern;
    .restart local v3    # "signalTypeArr":[I
    .restart local v4    # "startTimeArr":[I
    .restart local v5    # "durationArr":[I
    .restart local v6    # "effectIdArr":[I
    .restart local v7    # "strengthArr":[I
    .restart local v8    # "envelopeArr":[I
    .restart local v9    # "envelopeAlgoArr":[I
    .restart local v10    # "eventNum":I
    .restart local v11    # "pattern":[I
    .restart local v12    # "patternDuration":J
    .restart local v14    # "envelopeIndex":I
    .restart local v15    # "i":I
    .restart local v16    # "prebakedIndex":I
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    .line 1866
    .end local v3    # "signalTypeArr":[I
    .end local v15    # "i":I
    .restart local v20    # "signalTypeArr":[I
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 1867
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_2
    if-ge v1, v10, :cond_6

    .line 1868
    const/4 v2, 0x0

    .local v2, "m":I
    :goto_3
    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    .line 1869
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    mul-int/lit8 v15, v1, 0x10

    add-int/2addr v15, v2

    aget v15, v11, v15

    invoke-virtual {v3, v15}, Ljava/io/PrintStream;->print(I)V

    .line 1870
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, ","

    invoke-virtual {v3, v15}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1868
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1872
    .end local v2    # "m":I
    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 1873
    mul-int/lit8 v2, v1, 0x10

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget v2, v11, v2

    const/4 v15, -0x1

    if-ne v2, v15, :cond_5

    .line 1874
    goto :goto_4

    .line 1867
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1879
    .end local v1    # "n":I
    :cond_6
    :goto_4
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_7

    .line 1880
    const-string v1, "VibratorService"

    const-string/jumbo v2, "vibrator perform pattern"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    :cond_7
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Pattern;->getAmplitude()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v2, p0

    :try_start_3
    invoke-direct {v2, v1}, Lcom/android/server/VibratorService;->sendLoopParameter(I)V

    .line 1883
    invoke-static {v11}, Lcom/android/server/VibratorService;->vibratorPerformPattern([I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1884
    move/from16 v1, p2

    :try_start_4
    invoke-direct {v2, v1, v12, v13}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1885
    monitor-exit v19

    return-wide v12

    .line 1886
    .end local v0    # "newEffect":Landroid/os/VibrationEffect$Pattern;
    .end local v4    # "startTimeArr":[I
    .end local v5    # "durationArr":[I
    .end local v6    # "effectIdArr":[I
    .end local v7    # "strengthArr":[I
    .end local v8    # "envelopeArr":[I
    .end local v9    # "envelopeAlgoArr":[I
    .end local v10    # "eventNum":I
    .end local v11    # "pattern":[I
    .end local v12    # "patternDuration":J
    .end local v14    # "envelopeIndex":I
    .end local v16    # "prebakedIndex":I
    .end local v20    # "signalTypeArr":[I
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_5
    move-object/from16 v2, p0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v1

    :goto_6
    move/from16 v1, p2

    :goto_7
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_7
.end method

.method private doVibratorOnPatternHe(Landroid/os/VibrationEffect;I)J
    .locals 12
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "uid"    # I

    .line 1973
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1974
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/os/VibrationEffect$PatternHe;

    .line 1976
    .local v1, "newEffect":Landroid/os/VibrationEffect$PatternHe;
    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHe;->getPatternInfo()[I

    move-result-object v2

    .line 1977
    .local v2, "pattern":[I
    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHe;->getLooper()I

    move-result v3

    .line 1978
    .local v3, "looper":I
    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHe;->getInterval()I

    move-result v4

    .line 1979
    .local v4, "interval":I
    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHe;->getAmplitude()I

    move-result v5

    .line 1980
    .local v5, "amplitude":I
    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHe;->getFreq()I

    move-result v6

    .line 1982
    .local v6, "freq":I
    sget-boolean v7, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 1983
    const-string v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "patternHe="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " looper:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " interval:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " amplitude:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " freq"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    :cond_0
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/VibratorService;->vibratorPerformHe([IIIII)J

    move-result-wide v7

    .line 1987
    .local v7, "patternId":J
    const-string v9, "VibratorService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "patternId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const-wide/16 v9, 0x1f4

    invoke-direct {p0, p2, v9, v10}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1990
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    .line 1991
    monitor-exit v0

    return-wide v7

    .line 1992
    .end local v1    # "newEffect":Landroid/os/VibrationEffect$PatternHe;
    .end local v2    # "pattern":[I
    .end local v3    # "looper":I
    .end local v4    # "interval":I
    .end local v5    # "amplitude":I
    .end local v6    # "freq":I
    .end local v7    # "patternId":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doVibratorOnPatternHed(Landroid/os/VibrationEffect;I)J
    .locals 12
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "uid"    # I

    .line 1996
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1997
    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/os/VibrationEffect$PatternHed;

    .line 1999
    .local v1, "newEffect":Landroid/os/VibrationEffect$PatternHed;
    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHed;->getPatternInfo()[I

    move-result-object v2

    .line 2000
    .local v2, "pattern":[I
    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHed;->getLooper()I

    move-result v3

    .line 2001
    .local v3, "looper":I
    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHed;->getInterval()I

    move-result v4

    .line 2002
    .local v4, "interval":I
    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHed;->getAmplitude()I

    move-result v5

    .line 2003
    .local v5, "amplitude":I
    invoke-virtual {v1}, Landroid/os/VibrationEffect$PatternHed;->getFreq()I

    move-result v6

    .line 2005
    .local v6, "freq":I
    sget-boolean v7, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 2006
    const-string v7, "VibratorService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "patternHed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " looper:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " interval:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " amplitude:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " freq"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_0
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/VibratorService;->vibratorPerformHed([IIIII)J

    move-result-wide v7

    .line 2010
    .local v7, "patternId":J
    const-string v9, "VibratorService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "patternId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    const-wide/16 v9, 0x1f4

    invoke-direct {p0, p2, v9, v10}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 2013
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    .line 2014
    monitor-exit v0

    return-wide v7

    .line 2015
    .end local v1    # "newEffect":Landroid/os/VibrationEffect$PatternHed;
    .end local v2    # "pattern":[I
    .end local v3    # "looper":I
    .end local v4    # "interval":I
    .end local v5    # "amplitude":I
    .end local v6    # "freq":I
    .end local v7    # "patternId":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doVibratorOnRTP(Landroid/os/ParcelFileDescriptor;II)J
    .locals 5
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "amplitude"    # I
    .param p3, "uid"    # I

    .line 1781
    const-wide/16 v0, 0x0

    .line 1782
    .local v0, "timeout":J
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1783
    if-eqz p1, :cond_1

    .line 1784
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 1785
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1786
    const-string v3, "VibratorService"

    const-string/jumbo v4, "vibrator Perform Rtp"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/VibratorService;->vibratorPerformRtp(Ljava/io/FileDescriptor;)J

    move-result-wide v3

    move-wide v0, v3

    .line 1789
    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1791
    :cond_1
    monitor-exit v2

    .line 1792
    return-wide v0

    .line 1791
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .locals 19
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 2079
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-wide/32 v12, 0x800000

    const-string v0, "doVibratorPrebakedEffectLocked"

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2081
    :try_start_0
    iget-object v0, v11, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    move-object v14, v0

    .line 2083
    .local v14, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    iget-object v1, v10, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2084
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

    .line 2085
    .local v0, "usingInputDeviceVibrators":Z
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2098
    const-wide/16 v15, 0x0

    if-nez v0, :cond_3

    :try_start_2
    new-array v1, v2, [I

    const/16 v4, 0x61

    aput v4, v1, v3

    .line 2099
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2102
    new-array v1, v2, [I

    const/16 v2, 0x24

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-wide/16 v7, 0x2

    if-eqz v1, :cond_1

    .line 2103
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    .line 2104
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v2

    .line 2103
    invoke-static {v1, v2, v11}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorPerformEffect(IILcom/android/server/VibratorService$Vibration;)J

    move-result-wide v1

    .line 2105
    .local v1, "duration":J
    move-wide v3, v1

    .local v3, "timeout":J
    goto :goto_1

    .line 2107
    .end local v1    # "duration":J
    .end local v3    # "timeout":J
    :cond_1
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v1, v1

    .line 2108
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v3

    int-to-long v3, v3

    .line 2109
    invoke-direct {v10, v7, v8}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v6

    .line 2107
    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J

    move-result-wide v1

    .line 2110
    .restart local v1    # "duration":J
    move-wide v3, v1

    .line 2113
    .restart local v3    # "timeout":J
    :goto_1
    invoke-direct {v10, v7, v8}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2114
    mul-long/2addr v3, v7

    .line 2116
    :cond_2
    cmp-long v5, v3, v15

    if-lez v5, :cond_3

    .line 2117
    iget v5, v11, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {v10, v5, v1, v2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2118
    nop

    .line 2137
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2118
    return-wide v3

    .line 2121
    .end local v1    # "duration":J
    .end local v3    # "timeout":J
    :cond_3
    :try_start_3
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_4

    .line 2122
    nop

    .line 2137
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2122
    return-wide v15

    .line 2124
    :cond_4
    :try_start_4
    invoke-virtual {v14}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    move-object/from16 v17, v1

    .line 2125
    .local v17, "effect":Landroid/os/VibrationEffect;
    if-nez v17, :cond_5

    .line 2126
    const-string v1, "VibratorService"

    const-string v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2127
    nop

    .line 2137
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2127
    return-wide v15

    .line 2129
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

    .line 2131
    .local v1, "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    .line 2132
    .local v2, "intensity":I
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 2133
    invoke-direct {v10, v1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 2134
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2135
    nop

    .line 2137
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2135
    return-wide v15

    .line 2085
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

    .line 2137
    .end local v14    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :catchall_1
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 2138
    throw v0
.end method

.method private doVibratorSetAmplitude(I)V
    .locals 3
    .param p1, "amplitude"    # I

    .line 1764
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_1

    .line 1770
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x24

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1771
    invoke-static {p1}, Lcom/android/server/OpVibratorServiceInjector;->doVibratorSetAmplitude(I)V

    goto :goto_0

    .line 1773
    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    .line 1777
    :cond_1
    :goto_0
    return-void
.end method

.method private doVibratorStop(Z)V
    .locals 7
    .param p1, "updateResumeIndex"    # Z

    .line 2019
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2020
    :try_start_0
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2021
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Turning vibrator stop. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    .line 2024
    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2025
    .local v1, "vibratorCount":I
    if-eqz v1, :cond_2

    .line 2026
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2027
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    .line 2026
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 2030
    :cond_2
    sget-boolean v2, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 2031
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "time before vibratorStop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_3
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorStop()I

    move-result v2

    .line 2035
    .local v2, "eventIndex":I
    if-eqz p1, :cond_4

    .line 2036
    iput v2, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    .line 2037
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 2038
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loop pattern stopped, current index is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_4
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 2043
    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "time after vibratorStop : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    .end local v1    # "vibratorCount":I
    .end local v2    # "eventIndex":I
    :cond_5
    :goto_1
    monitor-exit v0

    .line 2047
    return-void

    .line 2046
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2297
    const-string v0, "Vibrator Service:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2298
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2299
    :try_start_0
    const-string v1, "  mCurrentVibration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2300
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_0

    .line 2301
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2303
    :cond_0
    const-string/jumbo v1, "null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2305
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

    .line 2306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibratorUnderExternalControl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIsVibrating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mVibratorStateListeners Count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 2309
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2308
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowPowerMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHapticFeedbackIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNotificationIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mRingIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mSupportedEffects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2315
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2316
    const-string v1, "  Previous ring vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2317
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

    .line 2318
    .local v2, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2319
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2320
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_1

    .line 2322
    :cond_1
    const-string v1, "  Previous notification vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2323
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

    .line 2324
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2325
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_2

    .line 2327
    :cond_2
    const-string v1, "  Previous alarm vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2328
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

    .line 2329
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2330
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_3

    .line 2332
    :cond_3
    const-string v1, "  Previous vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2333
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

    .line 2334
    .restart local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2335
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_4

    .line 2337
    :cond_4
    const-string v1, "  Previous external vibrations:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2338
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

    .line 2339
    .local v2, "vib":Landroid/os/ExternalVibration;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2340
    .end local v2    # "vib":Landroid/os/ExternalVibration;
    goto :goto_5

    .line 2341
    :cond_5
    monitor-exit v0

    .line 2342
    return-void

    .line 2341
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

    .line 2345
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 2347
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2348
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_0

    .line 2349
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v2}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v2

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2352
    :cond_0
    const-wide v2, 0x10800000002L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2353
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2355
    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 2356
    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2358
    const-wide v2, 0x10500000007L

    iget v4, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2360
    const-wide v2, 0x10500000008L

    iget v4, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2362
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

    .line 2363
    .local v3, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b00000009L

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2365
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_0

    .line 2367
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

    .line 2368
    .restart local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b0000000aL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2370
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_1

    .line 2372
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

    .line 2373
    .restart local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b0000000bL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2375
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_2

    .line 2377
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

    .line 2378
    .restart local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-wide v4, 0x20b0000000cL

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/VibratorService$VibrationInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2380
    .end local v3    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_3

    .line 2381
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2382
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 2383
    return-void

    .line 2381
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

    .line 877
    if-nez p1, :cond_0

    .line 878
    sget-object p1, Lcom/android/server/VibratorService;->DEFAULT_ATTRIBUTES:Landroid/os/VibrationAttributes;

    .line 880
    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService;->shouldBypassDnd(Landroid/os/VibrationAttributes;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 882
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
    const-string v0, "android.permission.MODIFY_AUDIO_ROUTING"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 884
    invoke-virtual {p1}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    .line 886
    .local v0, "flags":I
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1, p1}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/os/VibrationAttributes;)V

    invoke-virtual {v1, v0}, Landroid/os/VibrationAttributes$Builder;->replaceFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p1

    .line 890
    .end local v0    # "flags":I
    :cond_1
    return-object p1
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .locals 5
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1512
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 1513
    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 1512
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 1514
    .local v0, "mode":I
    if-nez v0, :cond_0

    .line 1515
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 1518
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-static {v1}, Lcom/android/server/VibratorService;->shouldBypassDnd(Landroid/os/VibrationAttributes;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bypassing DND for vibration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VibratorService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const/4 v0, 0x0

    .line 1525
    :cond_1
    return v0
.end method

.method private getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1421
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    iget v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    return v0

    .line 1423
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1424
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0

    .line 1425
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1426
    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0

    .line 1427
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1428
    const/4 v0, 0x3

    return v0

    .line 1430
    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method private getFallbackEffect(I)Landroid/os/VibrationEffect;
    .locals 1
    .param p1, "effectId"    # I

    .line 2217
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

    .line 894
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 895
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 896
    const/4 v1, 0x0

    return-object v1

    .line 898
    :cond_0
    array-length v1, v0

    new-array v1, v1, [J

    .line 899
    .local v1, "out":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 900
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 899
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 902
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private hasCapability(J)Z
    .locals 2
    .param p1, "capability"    # J

    .line 2213
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

    .line 1115
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

    .line 2226
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected vibration intensity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    return v1

    .line 2232
    :cond_0
    return v1

    .line 2230
    :cond_1
    return v0

    .line 2228
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isAlarm(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 2252
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
    .locals 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1405
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isUsageMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1406
    const-string v0, "VibratorService"

    const-string v2, "Skip vibrating on gaming mode"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    return v1

    .line 1410
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1411
    return v2

    .line 1414
    :cond_1
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 1415
    .local v0, "usage":I
    const/16 v3, 0x21

    if-eq v0, v3, :cond_2

    const/16 v3, 0x11

    if-eq v0, v3, :cond_2

    const/16 v3, 0x41

    if-ne v0, v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private static isHapticFeedback(I)Z
    .locals 1
    .param p0, "usageHint"    # I

    .line 2248
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

    .line 2240
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

    .line 1120
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

    .line 2244
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

    .line 1575
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_0

    .line 1577
    :try_start_0
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1580
    goto :goto_0

    .line 1578
    :catch_0
    move-exception v0

    .line 1579
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 1582
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private noteVibratorOffLocked()V
    .locals 4

    .line 2270
    iget v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 2272
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    .line 2273
    const/16 v0, 0x54

    iget v2, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2275
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 2276
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 2278
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    if-eqz v0, :cond_1

    .line 2279
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    .line 2280
    invoke-direct {p0}, Lcom/android/server/VibratorService;->notifyStateListenersLocked()V

    .line 2282
    :cond_1
    return-void
.end method

.method private noteVibratorOnLocked(IJ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "millis"    # J

    .line 2257
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 2258
    const/16 v1, 0x54

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;IJ)V

    .line 2260
    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 2261
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    if-nez v0, :cond_0

    .line 2262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    .line 2263
    invoke-direct {p0}, Lcom/android/server/VibratorService;->notifyStateListenersLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2266
    :cond_0
    goto :goto_0

    .line 2265
    :catch_0
    move-exception v0

    .line 2267
    :goto_0
    return-void
.end method

.method private notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 708
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    invoke-interface {p1, v0}, Landroid/os/IVibratorStateListener;->onVibrating(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    goto :goto_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VibratorService"

    const-string v2, "Vibrator callback failed to call"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private notifyStateListenersLocked()V
    .locals 3

    .line 716
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 718
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 719
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    .line 720
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IVibratorStateListener;

    .line 721
    .local v2, "listener":Landroid/os/IVibratorStateListener;
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    .end local v2    # "listener":Landroid/os/IVibratorStateListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 725
    throw v1

    .line 724
    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 725
    nop

    .line 726
    return-void
.end method

.method private reportFinishVibrationLocked()V
    .locals 6

    .line 1559
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "reportFinishVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1561
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v2, :cond_0

    .line 1562
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget v4, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v5, v5, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1564
    iget-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1565
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1568
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1569
    nop

    .line 1570
    return-void

    .line 1568
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1569
    throw v2
.end method

.method private sendLoopParameter(I)V
    .locals 4
    .param p1, "amplitude"    # I

    .line 1962
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1963
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v1, :cond_1

    .line 1964
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1965
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendLoopParameter : amplitude  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    :cond_0
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetDynamicCoef(I)V

    .line 1969
    :cond_1
    monitor-exit v0

    .line 1970
    return-void

    .line 1969
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setVibratorUnderExternalControl(Z)V
    .locals 2
    .param p1, "externalControl"    # Z

    .line 2285
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2286
    const-string v0, "VibratorService"

    if-eqz p1, :cond_0

    .line 2287
    const-string v1, "Vibrator going under external control."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2289
    :cond_0
    const-string v1, "Taking back control of vibrator."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/VibratorService;->mVibratorUnderExternalControl:Z

    .line 2293
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetExternalControl(Z)V

    .line 2294
    return-void
.end method

.method private static shouldBypassDnd(Landroid/os/VibrationAttributes;)Z
    .locals 1
    .param p0, "attrs"    # Landroid/os/VibrationAttributes;

    .line 1508
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method private shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z
    .locals 5
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .param p2, "intensity"    # I

    .line 1529
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1530
    return v1

    .line 1533
    :cond_0
    if-nez p2, :cond_1

    .line 1534
    return v1

    .line 1537
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    const-string v2, "VibratorService"

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1538
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1539
    const-string v0, "Vibrate ignored, not vibrating for ringtones"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_2
    return v1

    .line 1544
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    .line 1545
    .local v0, "mode":I
    if-eqz v0, :cond_5

    .line 1546
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 1549
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Would be an error: vibrate from uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    :cond_4
    return v1

    .line 1554
    :cond_5
    const/4 v1, 0x1

    return v1
.end method

.method private shouldVibrateForRingtone()Z
    .locals 6

    .line 1493
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1494
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 1496
    .local v1, "ringerMode":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1497
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1496
    const-string/jumbo v3, "vibrate_when_ringing"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1498
    if-eqz v1, :cond_0

    move v4, v3

    :cond_0
    return v4

    .line 1499
    :cond_1
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1500
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1499
    const-string v5, "apply_ramping_ringer"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 1501
    if-eqz v1, :cond_2

    move v4, v3

    :cond_2
    return v4

    .line 1503
    :cond_3
    if-ne v1, v3, :cond_4

    move v4, v3

    :cond_4
    return v4
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 11
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1319
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationInnerLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1321
    :try_start_0
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 1322
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$OneShot;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const-string/jumbo v4, "vibration"

    if-eqz v2, :cond_0

    .line 1323
    :try_start_1
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1324
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 1325
    .local v2, "oneShot":Landroid/os/VibrationEffect$OneShot;
    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v6

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v8, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/VibratorService;->doVibratorOn(JIILandroid/os/VibrationAttributes;)V

    .line 1326
    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1327
    nop

    .end local v2    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto/16 :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Waveform;

    if-eqz v2, :cond_1

    .line 1330
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1331
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    .line 1332
    .local v2, "waveform":Landroid/os/VibrationEffect$Waveform;
    new-instance v3, Lcom/android/server/VibratorService$VibrateThread;

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-direct {v3, p0, v2, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;ILandroid/os/VibrationAttributes;)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 1333
    iget-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    .line 1334
    .end local v2    # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto/16 :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Prebaked;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_3

    .line 1335
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1336
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    .line 1337
    .local v2, "timeout":J
    cmp-long v4, v2, v5

    if-lez v4, :cond_2

    .line 1338
    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1340
    .end local v2    # "timeout":J
    :cond_2
    goto/16 :goto_0

    :cond_3
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Composed;

    if-eqz v2, :cond_4

    .line 1341
    invoke-static {v0, v1, v4, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1342
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorComposedEffectLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1347
    iget-object v2, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1349
    :cond_4
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$ExtPrebaked;

    if-eqz v2, :cond_6

    .line 1350
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorOnExtPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v2

    .line 1351
    .restart local v2    # "timeout":J
    cmp-long v4, v2, v5

    if-lez v4, :cond_5

    .line 1352
    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1354
    .end local v2    # "timeout":J
    :cond_5
    goto/16 :goto_0

    :cond_6
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$RTPStream;

    if-eqz v2, :cond_8

    .line 1355
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$RTPStream;

    .line 1356
    .local v2, "stream":Landroid/os/VibrationEffect$RTPStream;
    invoke-virtual {v2}, Landroid/os/VibrationEffect$RTPStream;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/VibratorService;->rtpFD:Landroid/os/ParcelFileDescriptor;

    .line 1357
    invoke-virtual {v2}, Landroid/os/VibrationEffect$RTPStream;->getAmplitude()I

    move-result v4

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {p0, v3, v4, v7}, Lcom/android/server/VibratorService;->doVibratorOnRTP(Landroid/os/ParcelFileDescriptor;II)J

    move-result-wide v3

    .line 1358
    .local v3, "timeout":J
    cmp-long v5, v3, v5

    if-lez v5, :cond_7

    .line 1359
    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1361
    .end local v2    # "stream":Landroid/os/VibrationEffect$RTPStream;
    .end local v3    # "timeout":J
    :cond_7
    goto/16 :goto_0

    :cond_8
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Envelope;

    if-eqz v2, :cond_9

    .line 1362
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Envelope;

    .line 1363
    .local v2, "envelope":Landroid/os/VibrationEffect$Envelope;
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->getRelativeTimeArr()[I

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->getScaleArr()[I

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->getFreqArr()[I

    move-result-object v6

    .line 1364
    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->isSteepMode()Z

    move-result v7

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->getAmplitude()I

    move-result v8

    iget v9, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v10, p1, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/os/VibrationAttributes;

    .line 1363
    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/server/VibratorService;->doVibratorOnEnvelope([I[I[IZIILandroid/os/VibrationAttributes;)V

    .line 1365
    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/os/VibrationEffect$Envelope;->getRelativeTimeArr()[I

    move-result-object v5

    const/4 v6, 0x3

    aget v5, v5, v6

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1366
    nop

    .end local v2    # "envelope":Landroid/os/VibrationEffect$Envelope;
    goto :goto_0

    :cond_9
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$Pattern;

    if-eqz v2, :cond_b

    .line 1367
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$Pattern;

    .line 1368
    .local v2, "pattern":Landroid/os/VibrationEffect$Pattern;
    iget v3, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/VibratorService;->doVibratorOnPattern(Landroid/os/VibrationEffect;I)J

    move-result-wide v3

    .line 1369
    .restart local v3    # "timeout":J
    cmp-long v5, v3, v5

    if-lez v5, :cond_a

    .line 1370
    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1372
    .end local v2    # "pattern":Landroid/os/VibrationEffect$Pattern;
    .end local v3    # "timeout":J
    :cond_a
    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$LoopPattern;

    if-eqz v2, :cond_d

    .line 1373
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$LoopPattern;

    .line 1374
    .local v2, "loopPattern":Landroid/os/VibrationEffect$LoopPattern;
    iget v3, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/VibratorService;->doVibratorOnLoopPattern(Landroid/os/VibrationEffect;I)J

    move-result-wide v3

    .line 1375
    .restart local v3    # "timeout":J
    cmp-long v5, v3, v5

    if-lez v5, :cond_c

    .line 1376
    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1378
    .end local v2    # "loopPattern":Landroid/os/VibrationEffect$LoopPattern;
    .end local v3    # "timeout":J
    :cond_c
    goto :goto_0

    :cond_d
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$PatternHe;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "VibratorService"

    if-eqz v2, :cond_e

    .line 1379
    :try_start_2
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$PatternHe;

    .line 1380
    .local v2, "patternHe":Landroid/os/VibrationEffect$PatternHe;
    const-string/jumbo v4, "vibratorservice play he"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget v3, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/VibratorService;->doVibratorOnPatternHe(Landroid/os/VibrationEffect;I)J

    .line 1385
    .end local v2    # "patternHe":Landroid/os/VibrationEffect$PatternHe;
    goto :goto_0

    :cond_e
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$PatternHed;

    if-eqz v2, :cond_f

    .line 1386
    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$PatternHed;

    .line 1387
    .local v2, "patternHed":Landroid/os/VibrationEffect$PatternHed;
    const-string/jumbo v4, "vibratorservice play hed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget v3, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/VibratorService;->doVibratorOnPatternHed(Landroid/os/VibrationEffect;I)J

    .line 1392
    .end local v2    # "patternHed":Landroid/os/VibrationEffect$PatternHed;
    goto :goto_0

    .line 1393
    :cond_f
    const-string v2, "Unknown vibration type, ignoring"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1396
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1397
    nop

    .line 1398
    return-void

    .line 1396
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1397
    throw v2
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 6
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1296
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "startVibrationLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1300
    const/4 v2, 0x1

    :try_start_0
    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x24

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1301
    iget-object v3, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1302
    :try_start_1
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIsVibrating(Z)V

    .line 1303
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

    .line 1306
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "vib":Lcom/android/server/VibratorService$Vibration;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    .line 1307
    .local v2, "intensity":I
    invoke-direct {p0, p1, v2}, Lcom/android/server/VibratorService;->shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_1

    .line 1313
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1308
    return-void

    .line 1310
    :cond_1
    :try_start_3
    invoke-direct {p0, p1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 1311
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1313
    .end local v2    # "intensity":I
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1314
    nop

    .line 1315
    return-void

    .line 1313
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1314
    throw v2
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1585
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1588
    :cond_0
    return-void
.end method

.method private updateAlwaysOnLocked()V
    .locals 3

    .line 1687
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1688
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1689
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$Vibration;

    .line 1690
    .local v2, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {p0, v1, v2}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V

    .line 1687
    .end local v1    # "id":I
    .end local v2    # "vib":Lcom/android/server/VibratorService$Vibration;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1692
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 1676
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0

    .line 1677
    .local v0, "intensity":I
    invoke-direct {p0, p2, v0}, Lcom/android/server/VibratorService;->shouldVibrate(Lcom/android/server/VibratorService$Vibration;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1678
    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->vibratorAlwaysOnDisable(J)V

    goto :goto_0

    .line 1680
    :cond_0
    iget-object v1, p2, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v1, Landroid/os/VibrationEffect$Prebaked;

    .line 1681
    .local v1, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    invoke-static {v0}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v2

    .line 1682
    .local v2, "strength":I
    int-to-long v3, p1

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v5

    int-to-long v5, v5

    int-to-long v7, v2

    invoke-static/range {v3 .. v8}, Lcom/android/server/VibratorService;->vibratorAlwaysOnEnable(JJJ)V

    .line 1684
    .end local v1    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    .end local v2    # "strength":I
    :goto_0
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .locals 8

    .line 1613
    const/4 v0, 0x0

    .line 1614
    .local v0, "changed":Z
    const/4 v1, 0x0

    .line 1616
    .local v1, "vibrateInputDevices":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 1617
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    const/4 v6, -0x2

    .line 1616
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

    .line 1620
    goto :goto_1

    .line 1619
    :catch_0
    move-exception v4

    .line 1621
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v1, v4, :cond_1

    .line 1622
    const/4 v0, 0x1

    .line 1623
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    .line 1626
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_2

    .line 1627
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v2, :cond_3

    .line 1628
    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1629
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v2, p0, v4}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_2

    .line 1632
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_3

    .line 1633
    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 1634
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 1638
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1639
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v2, :cond_6

    .line 1640
    iget-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v2}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v2

    .line 1641
    .local v2, "ids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v5, v2

    if-ge v4, v5, :cond_5

    .line 1642
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v6, v2, v4

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 1643
    .local v5, "device":Landroid/view/InputDevice;
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    .line 1644
    .local v6, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1645
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    .end local v5    # "device":Landroid/view/InputDevice;
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1648
    .end local v4    # "i":I
    :cond_5
    return v3

    .line 1650
    .end local v2    # "ids":[I
    :cond_6
    return v0
.end method

.method private updateLowPowerModeLocked()Z
    .locals 2

    .line 1654
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1655
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 1656
    .local v0, "lowPowerMode":Z
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_0

    .line 1657
    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 1658
    const/4 v1, 0x1

    return v1

    .line 1660
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateVibrationIntensityLocked()V
    .locals 4

    .line 1664
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1666
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v1

    .line 1664
    const-string v2, "haptic_feedback_intensity"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    .line 1667
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1669
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v1

    .line 1667
    const-string/jumbo v2, "notification_vibration_intensity"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    .line 1670
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1672
    invoke-virtual {v1}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v1

    .line 1670
    const-string/jumbo v2, "ring_vibration_intensity"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mRingIntensity:I

    .line 1673
    return-void
.end method

.method private updateVibrators()V
    .locals 4

    .line 1591
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1595
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1596
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->updateVibrator()V

    .line 1599
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v1

    .line 1600
    .local v1, "devicesUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v2

    .line 1601
    .local v2, "lowPowerModeUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrationIntensityLocked()V

    .line 1603
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 1605
    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1608
    :cond_2
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked()V

    .line 1609
    .end local v1    # "devicesUpdated":Z
    .end local v2    # "lowPowerModeUpdated":Z
    monitor-exit v0

    .line 1610
    return-void

    .line 1609
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

    .line 843
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 844
    return-void

    .line 846
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 847
    return-void

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 850
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 849
    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 851
    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .locals 4
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 862
    const/4 v0, 0x0

    const-string v1, "VibratorService"

    if-nez p0, :cond_0

    .line 864
    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return v0

    .line 868
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    nop

    .line 873
    const/4 v0, 0x1

    return v0

    .line 869
    :catch_0
    move-exception v2

    .line 870
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Encountered issue when verifying VibrationEffect."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
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

.method static native vibratorPerformEnvelope([IZ)V
.end method

.method static native vibratorPerformHe([IIIII)J
.end method

.method static native vibratorPerformHeParam(III)V
.end method

.method static native vibratorPerformHed([IIIII)J
.end method

.method static native vibratorPerformHedParam(III)V
.end method

.method static native vibratorPerformPattern([I)V
.end method

.method static native vibratorPerformRtp(Ljava/io/FileDescriptor;)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSetDynamicCoef(I)V
.end method

.method static native vibratorSetExternalControl(Z)V
.end method

.method static native vibratorSetF0(I)V
.end method

.method static native vibratorStop()I
.end method

.method static native vibratorSupportsAmplitudeControl()Z
.end method

.method static native vibratorSupportsExternalControl()Z
.end method


# virtual methods
.method public areEffectsSupported([I)[I
    .locals 4
    .param p1, "effectIds"    # [I

    .line 775
    array-length v0, p1

    new-array v0, v0, [I

    .line 776
    .local v0, "supported":[I
    iget-object v1, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    if-nez v1, :cond_0

    .line 777
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    goto :goto_2

    .line 779
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 780
    iget-object v2, p0, Lcom/android/server/VibratorService;->mSupportedEffects:Ljava/util/List;

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 781
    const/4 v2, 0x1

    goto :goto_1

    .line 782
    :cond_1
    const/4 v2, 0x2

    :goto_1
    aput v2, v0, v1

    .line 779
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

.method public arePrimitivesSupported([I)[Z
    .locals 3
    .param p1, "primitiveIds"    # [I

    .line 790
    array-length v0, p1

    new-array v0, v0, [Z

    .line 791
    .local v0, "supported":[Z
    const-wide/16 v1, 0x20

    invoke-direct {p0, v1, v2}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 794
    :cond_0
    return-object v0
.end method

.method public cancelNonSelfVibrate()V
    .locals 6

    .line 1208
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelNonSelfVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1212
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1214
    .local v3, "ident":J
    :try_start_1
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    .line 1215
    const-string v1, "VibratorService"

    const-string v5, "cancel non-self-initiated vibrate"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1218
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 1219
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setRepeatVibrate(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1221
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1222
    nop

    .line 1223
    .end local v3    # "ident":J
    goto :goto_0

    .line 1221
    .restart local v3    # "ident":J
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1222
    nop

    .end local p0    # "this":Lcom/android/server/VibratorService;
    throw v1

    .line 1224
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

    .line 1225
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 1228
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1229
    return-void

    .line 1228
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

    .line 1150
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 1156
    const-string v0, "VibratorService"

    const-string v1, "--cancelVibrate--"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1162
    :try_start_0
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    .line 1163
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentVibration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", callingPid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1163
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-eq v1, p1, :cond_1

    .line 1166
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

    .line 1171
    :cond_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_4

    .line 1172
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 1173
    const-string v1, "VibratorService"

    const-string v3, "Canceling vibration."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1178
    .local v3, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v1, v1, Landroid/os/VibrationEffect$LoopPattern;

    if-eqz v1, :cond_3

    .line 1179
    iput v2, p0, Lcom/android/server/VibratorService;->resumeIndex:I

    .line 1183
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService;->doStopVibrateLocked(Z)V

    .line 1185
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1188
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 1189
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setRepeatVibrate(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1192
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1193
    goto :goto_0

    .line 1192
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1193
    nop

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "token":Landroid/os/IBinder;
    throw v1

    .line 1196
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "token":Landroid/os/IBinder;
    :cond_4
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-nez v1, :cond_5

    .line 1197
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1198
    invoke-static {v2}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    goto :goto_1

    .line 1196
    :cond_5
    :goto_0
    nop

    .line 1202
    :cond_6
    :goto_1
    monitor-exit v0

    .line 1203
    return-void

    .line 1202
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

    .line 2576
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2578
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2580
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 2581
    .local v2, "isDumpProto":Z
    array-length v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p3, v4

    .line 2582
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2583
    const/4 v2, 0x1

    .line 2581
    .end local v5    # "arg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2587
    :cond_2
    if-eqz v2, :cond_3

    .line 2588
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_1

    .line 2590
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/VibratorService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2593
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2594
    nop

    .line 2595
    return-void

    .line 2593
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2594
    throw v3
.end method

.method public hasAmplitudeControl()Z
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 769
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

    .line 770
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasVibrator()Z
    .locals 1

    .line 692
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public isVibrating()Z
    .locals 2

    .line 697
    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mIsVibrating:Z

    monitor-exit v0

    return v1

    .line 702
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_VIBRATOR_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 1696
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1697
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 1701
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1702
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 1706
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1707
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

    .line 2600
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

    .line 2601
    return-void
.end method

.method public onVibrationFinished()V
    .locals 2

    .line 1284
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1285
    const-string v0, "VibratorService"

    const-string v1, "Vibration finished, cleaning up"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1290
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1291
    monitor-exit v0

    .line 1292
    return-void

    .line 1291
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

    .line 730
    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 734
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 736
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 737
    const/4 v3, 0x0

    .line 743
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 737
    return v3

    .line 740
    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->notifyStateListenerLocked(Landroid/os/IVibratorStateListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 741
    const/4 v3, 0x1

    .line 743
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 741
    return v3

    .line 743
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    nop

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "listener":Landroid/os/IVibratorStateListener;
    throw v3

    .line 745
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 731
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

    .line 812
    move-object v10, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    const-string v0, "android.permission.VIBRATE_ALWAYS_ON"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 815
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService;->hasCapability(J)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 816
    const-string v0, "VibratorService"

    const-string v2, "Always-on effects not supported."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return v1

    .line 819
    :cond_0
    if-nez v12, :cond_1

    .line 820
    iget-object v2, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 821
    :try_start_0
    iget-object v0, v10, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 822
    int-to-long v0, v11

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorAlwaysOnDisable(J)V

    .line 823
    monitor-exit v2

    move-object/from16 v13, p5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 825
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 826
    return v1

    .line 828
    :cond_2
    instance-of v0, v12, Landroid/os/VibrationEffect$Prebaked;

    if-nez v0, :cond_3

    .line 829
    const-string v0, "VibratorService"

    const-string v2, "Only prebaked effects supported for always-on."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return v1

    .line 832
    :cond_3
    move-object/from16 v1, p5

    invoke-direct {p0, v1}, Lcom/android/server/VibratorService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;

    move-result-object v13

    .line 833
    .end local p5    # "attrs":Landroid/os/VibrationAttributes;
    .local v13, "attrs":Landroid/os/VibrationAttributes;
    iget-object v14, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 834
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

    .line 835
    .local v0, "vib":Lcom/android/server/VibratorService$Vibration;
    iget-object v1, v10, Lcom/android/server/VibratorService;->mAlwaysOnEffects:Landroid/util/SparseArray;

    invoke-virtual {v1, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 836
    invoke-direct {p0, v11, v0}, Lcom/android/server/VibratorService;->updateAlwaysOnLocked(ILcom/android/server/VibratorService$Vibration;)V

    .line 837
    .end local v0    # "vib":Lcom/android/server/VibratorService$Vibration;
    monitor-exit v14

    .line 839
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 837
    :catchall_1
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 813
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

    .line 912
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    .line 913
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    .line 915
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/android/server/OpVibratorServiceInjector;->setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public systemReady()V
    .locals 8

    .line 563
    const-wide/32 v0, 0x800000

    const-string v2, "VibratorService#systemReady"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 565
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 566
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 567
    new-instance v2, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 569
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 570
    new-instance v3, Lcom/android/server/VibratorService$2;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 583
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_input_devices"

    .line 584
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 583
    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 587
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_intensity"

    .line 588
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 587
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 591
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_vibration_intensity"

    .line 592
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 591
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 595
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "ring_vibration_intensity"

    .line 596
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 595
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 599
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "zen_mode"

    .line 600
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 599
    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 605
    new-array v2, v6, [I

    const/16 v3, 0x24

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    .line 607
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 606
    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 609
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_on_touch_intensity"

    .line 610
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 609
    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 614
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notice_vibrate_intensity"

    .line 615
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 614
    invoke-virtual {v2, v3, v6, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 619
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->updateVibrator()V

    .line 625
    :cond_0
    new-array v2, v6, [I

    const/16 v3, 0x61

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 626
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->motorF0Calibration()V

    .line 630
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

    .line 640
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 641
    .local v2, "intentfilter":Landroid/content/IntentFilter;
    const-string v3, "com.oem.intent.action.CANCEL_VIBRATION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v6, 0x3

    invoke-interface {v3, v4, v6, v5, v7}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 651
    goto :goto_0

    .line 649
    :catch_0
    move-exception v3

    .line 653
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 655
    .end local v2    # "intentfilter":Landroid/content/IntentFilter;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 656
    nop

    .line 657
    return-void

    .line 655
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 656
    throw v2
.end method

.method public unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/os/IVibratorStateListener;

    .line 751
    const-string v0, "android.permission.ACCESS_VIBRATOR_STATE"

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 755
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 757
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibratorStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 757
    return v3

    .line 759
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    nop

    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "listener":Landroid/os/IVibratorStateListener;
    throw v3

    .line 761
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "listener":Landroid/os/IVibratorStateListener;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 752
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_VIBRATOR_STATE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 20
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "token"    # Landroid/os/IBinder;

    .line 922
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

    .line 924
    :try_start_0
    const-string v0, "android.permission.VIBRATE"

    invoke-direct {v10, v0}, Lcom/android/server/VibratorService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 927
    if-nez v14, :cond_0

    .line 928
    const-string v0, "VibratorService"

    const-string/jumbo v2, "token must not be null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 929
    return-void

    .line 932
    :cond_0
    :try_start_1
    instance-of v0, v1, Landroid/os/VibrationEffect$LoopParameter;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$LoopPattern;

    if-nez v0, :cond_1

    .line 934
    const-string v0, "VibratorService"

    const-string v2, "Sending loop parameter needs current vibration is instanceof VibrationEffect.Pattern"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 935
    return-void

    .line 939
    :cond_1
    :try_start_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 940
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    if-nez v0, :cond_2

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 941
    return-void

    .line 944
    :cond_2
    :try_start_3
    instance-of v0, v1, Landroid/os/VibrationEffect$LoopParameter;

    if-eqz v0, :cond_3

    .line 945
    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect$LoopParameter;

    .line 946
    .local v0, "loopParameter":Landroid/os/VibrationEffect$LoopParameter;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$LoopParameter;->getAmplitude()I

    move-result v2

    invoke-direct {v10, v2}, Lcom/android/server/VibratorService;->sendLoopParameter(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 947
    return-void

    .line 948
    .end local v0    # "loopParameter":Landroid/os/VibrationEffect$LoopParameter;
    :cond_3
    :try_start_4
    instance-of v0, v1, Landroid/os/VibrationEffect$PatternHeParameter;

    if-eqz v0, :cond_5

    .line 949
    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect$PatternHeParameter;

    .line 950
    .local v0, "param":Landroid/os/VibrationEffect$PatternHeParameter;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHeParameter;->getInterval()I

    move-result v2

    .line 951
    .local v2, "interval":I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHeParameter;->getAmplitude()I

    move-result v3

    .line 952
    .local v3, "amplitude":I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHeParameter;->getFreq()I

    move-result v4

    .line 953
    .local v4, "freq":I
    sget-boolean v5, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recive data  interval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " amplitude:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_4
    invoke-static {v2, v3, v4}, Lcom/android/server/VibratorService;->vibratorPerformHeParam(III)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 955
    return-void

    .line 956
    .end local v0    # "param":Landroid/os/VibrationEffect$PatternHeParameter;
    .end local v2    # "interval":I
    .end local v3    # "amplitude":I
    .end local v4    # "freq":I
    :cond_5
    :try_start_5
    instance-of v0, v1, Landroid/os/VibrationEffect$PatternHedParameter;

    if-eqz v0, :cond_7

    .line 957
    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect$PatternHedParameter;

    .line 958
    .local v0, "param":Landroid/os/VibrationEffect$PatternHedParameter;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHedParameter;->getInterval()I

    move-result v2

    .line 959
    .restart local v2    # "interval":I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHedParameter;->getAmplitude()I

    move-result v3

    .line 960
    .restart local v3    # "amplitude":I
    invoke-virtual {v0}, Landroid/os/VibrationEffect$PatternHedParameter;->getFreq()I

    move-result v4

    .line 961
    .restart local v4    # "freq":I
    sget-boolean v5, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "VibratorService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "recive data  interval:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " amplitude:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " freq:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_6
    invoke-static {v2, v3, v4}, Lcom/android/server/VibratorService;->vibratorPerformHedParam(III)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 963
    return-void

    .line 969
    .end local v0    # "param":Landroid/os/VibrationEffect$PatternHedParameter;
    .end local v2    # "interval":I
    .end local v3    # "amplitude":I
    .end local v4    # "freq":I
    :cond_7
    :try_start_6
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

    .line 970
    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationAttributes;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 969
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v0, v10, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {v0, v12}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 976
    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored by ZenMode."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 977
    return-void

    .line 983
    :cond_8
    :try_start_7
    iget-object v0, v10, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    invoke-static {v0, v2, v12}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 984
    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored on gaming mode."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 985
    return-void

    .line 989
    :cond_9
    move-object/from16 v2, p4

    :try_start_8
    invoke-direct {v10, v2}, Lcom/android/server/VibratorService;->fixupVibrationAttributes(Landroid/os/VibrationAttributes;)Landroid/os/VibrationAttributes;

    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 994
    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .local v5, "attrs":Landroid/os/VibrationAttributes;
    :try_start_9
    iget-object v15, v10, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 995
    :try_start_a
    instance-of v0, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_b

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_b

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_b

    .line 998
    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 999
    .local v0, "newOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v2, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v2, v2, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    .line 1001
    .local v2, "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v3, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/android/server/VibratorService$Vibration;->hasTimeoutLongerThan(J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1002
    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v4

    if-ne v3, v4, :cond_b

    .line 1003
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_a

    .line 1004
    const-string v3, "VibratorService"

    const-string v4, "Ignoring incoming vibration in favor of current vibration"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_a
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1007
    return-void

    .line 1014
    .end local v0    # "newOneShot":Landroid/os/VibrationEffect$OneShot;
    .end local v2    # "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    :cond_b
    :try_start_b
    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentExternalVibration:Landroid/os/ExternalVibration;

    if-eqz v0, :cond_d

    .line 1015
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 1016
    const-string v0, "VibratorService"

    const-string v2, "Ignoring incoming vibration for current external vibration"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_c
    monitor-exit v15
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1018
    return-void

    .line 1025
    :cond_d
    :try_start_c
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    const/16 v2, 0x24

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_10

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_10

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 1027
    invoke-static {v0}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1028
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 1029
    const-string v0, "VibratorService"

    const-string v3, "Ignoring incoming vibration in favor of alarm vibration"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_e
    new-array v0, v7, [I

    aput v2, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1036
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getOldIntensityEffectType()I

    move-result v0

    .line 1037
    .local v0, "oldIntensityEffectType":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_f

    .line 1038
    invoke-static {v0}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 1042
    .end local v0    # "oldIntensityEffectType":I
    :cond_f
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1042
    return-void

    .line 1047
    :cond_10
    :try_start_d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v4, v0

    .line 1048
    .local v4, "currentVibrationPid":I
    iget v0, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    if-eq v0, v11, :cond_12

    iget v0, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    if-eq v4, v0, :cond_12

    .line 1049
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getImPkg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->getImPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1050
    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_11

    .line 1051
    const-string v0, "VibratorService"

    const-string v3, " non-custom effect, reset effect to default "

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_11
    invoke-static {v6}, Lcom/android/server/OpVibratorServiceInjector;->setIntensityEffectType(I)V

    .line 1055
    :cond_12
    iput v6, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectUid:I

    .line 1056
    iput v6, v10, Lcom/android/server/VibratorService;->mSetVibratorEffectPid:I

    .line 1061
    invoke-static {v5}, Lcom/android/server/OpVibratorServiceInjector;->markWeakenFlagForDarkMode(Landroid/os/VibrationAttributes;)V

    .line 1066
    new-array v0, v7, [I

    aput v2, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1067
    invoke-static {v11, v1, v12, v13}, Lcom/android/server/OpVibratorServiceInjector;->vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;Ljava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object v1, v0

    .line 1068
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v1, "effect":Landroid/os/VibrationEffect;
    if-nez v1, :cond_13

    .line 1069
    :try_start_e
    const-string v0, "VibratorService"

    const-string v2, "The updated vibrator effect should not be empty"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1110
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1070
    return-void

    .line 1108
    .end local v4    # "currentVibrationPid":I
    :catchall_0
    move-exception v0

    move-wide/from16 v18, v8

    goto/16 :goto_3

    .line 1068
    .restart local v4    # "currentVibrationPid":I
    :cond_13
    move-object v3, v1

    goto :goto_0

    .line 1066
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :cond_14
    move-object v3, v1

    .line 1075
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v3, "effect":Landroid/os/VibrationEffect;
    :goto_0
    :try_start_f
    new-instance v0, Lcom/android/server/VibratorService$Vibration;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    const/16 v16, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 p3, v3

    .end local v3    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    move-object/from16 v3, p6

    move/from16 v17, v4

    .end local v4    # "currentVibrationPid":I
    .local v17, "currentVibrationPid":I
    move-object/from16 v4, p3

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-wide/from16 v18, v8

    move-object/from16 v8, p5

    move-object/from16 v9, v16

    :try_start_10
    invoke-direct/range {v1 .. v9}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object v1, v0

    .line 1076
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
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-le v0, v2, :cond_17

    .line 1078
    :try_start_11
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isAlarm()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "com.tencent.mm"

    .line 1082
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_17

    :cond_15
    const-string v0, "com.tencent.mobileqq"

    .line 1083
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    if-eqz v0, :cond_17

    .line 1085
    :cond_16
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

    .line 1088
    monitor-exit v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1110
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1088
    return-void

    .line 1108
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v17    # "currentVibrationPid":I
    :catchall_1
    move-exception v0

    move-object/from16 v1, p3

    goto :goto_3

    .line 1090
    .restart local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v17    # "currentVibrationPid":I
    :cond_17
    :try_start_12
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1091
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 1094
    .local v2, "ident":J
    :try_start_13
    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_18

    iget-object v0, v10, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$LoopPattern;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    if-eqz v0, :cond_18

    move-object/from16 v4, p3

    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v4, "effect":Landroid/os/VibrationEffect;
    :try_start_14
    instance-of v0, v4, Landroid/os/VibrationEffect$LoopPattern;

    if-nez v0, :cond_19

    .line 1097
    const/4 v0, 0x1

    invoke-direct {v10, v0}, Lcom/android/server/VibratorService;->doStopVibrateLocked(Z)V

    goto :goto_1

    .line 1094
    .end local v4    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :cond_18
    move-object/from16 v4, p3

    .line 1099
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .restart local v4    # "effect":Landroid/os/VibrationEffect;
    :cond_19
    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/android/server/VibratorService;->doStopVibrateLocked(Z)V

    .line 1102
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 1103
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 1104
    invoke-direct {v10, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1106
    :try_start_15
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1107
    nop

    .line 1108
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    .end local v17    # "currentVibrationPid":I
    monitor-exit v15
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 1110
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1111
    nop

    .line 1112
    return-void

    .line 1106
    .restart local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v2    # "ident":J
    .restart local v17    # "currentVibrationPid":I
    :catchall_2
    move-exception v0

    goto :goto_2

    .end local v4    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :catchall_3
    move-exception v0

    move-object/from16 v4, p3

    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .restart local v4    # "effect":Landroid/os/VibrationEffect;
    :goto_2
    :try_start_16
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1107
    nop

    .end local v4    # "effect":Landroid/os/VibrationEffect;
    .end local v5    # "attrs":Landroid/os/VibrationAttributes;
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 1108
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    .end local v17    # "currentVibrationPid":I
    .restart local v4    # "effect":Landroid/os/VibrationEffect;
    .restart local v5    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_4
    move-exception v0

    move-object v1, v4

    goto :goto_3

    .end local v4    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :catchall_5
    move-exception v0

    move-object/from16 v4, p3

    move-object v1, v4

    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .restart local v4    # "effect":Landroid/os/VibrationEffect;
    goto :goto_3

    .end local v4    # "effect":Landroid/os/VibrationEffect;
    .restart local v3    # "effect":Landroid/os/VibrationEffect;
    :catchall_6
    move-exception v0

    move-object v4, v3

    move-wide/from16 v18, v8

    move-object v1, v4

    .end local v3    # "effect":Landroid/os/VibrationEffect;
    .restart local v4    # "effect":Landroid/os/VibrationEffect;
    goto :goto_3

    .end local v4    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :catchall_7
    move-exception v0

    move-wide/from16 v18, v8

    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v1, "effect":Landroid/os/VibrationEffect;
    :goto_3
    :try_start_17
    monitor-exit v15
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .end local v5    # "attrs":Landroid/os/VibrationAttributes;
    .end local p0    # "this":Lcom/android/server/VibratorService;
    .end local p1    # "uid":I
    .end local p2    # "opPkg":Ljava/lang/String;
    .end local p5    # "reason":Ljava/lang/String;
    .end local p6    # "token":Landroid/os/IBinder;
    :try_start_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 1110
    .restart local v1    # "effect":Landroid/os/VibrationEffect;
    .restart local v5    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_8
    move-exception v0

    move-object v2, v5

    goto :goto_5

    .line 1108
    :catchall_9
    move-exception v0

    goto :goto_3

    .line 1110
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :catchall_a
    move-exception v0

    move-wide/from16 v18, v8

    move-object v2, v5

    goto :goto_5

    .end local v5    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p4    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_b
    move-exception v0

    goto :goto_4

    .line 925
    :cond_1a
    move-object/from16 v2, p4

    move-wide/from16 v18, v8

    :try_start_19
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
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 1110
    .restart local p0    # "this":Lcom/android/server/VibratorService;
    .restart local p1    # "uid":I
    .restart local p2    # "opPkg":Ljava/lang/String;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    .restart local p4    # "attrs":Landroid/os/VibrationAttributes;
    .restart local p5    # "reason":Ljava/lang/String;
    .restart local p6    # "token":Landroid/os/IBinder;
    :catchall_c
    move-exception v0

    goto :goto_5

    :catchall_d
    move-exception v0

    move-object/from16 v2, p4

    :goto_4
    move-wide/from16 v18, v8

    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .end local p4    # "attrs":Landroid/os/VibrationAttributes;
    .restart local v1    # "effect":Landroid/os/VibrationEffect;
    .local v2, "attrs":Landroid/os/VibrationAttributes;
    :goto_5
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1111
    throw v0
.end method
