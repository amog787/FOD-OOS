.class public Lcom/android/server/power/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/Notifier$NotifierHandler;
    }
.end annotation


# static fields
.field private static final CHARGING_PILLAR_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.chargingpilar"

.field private static final CHARGING_PILLAR_SCREEN_OFF_EVENT:Ljava/lang/String; = "com.oneplus.chargingpilar.SCREEN_OFF"

.field private static final CHARGING_PILLAR_SCREEN_ON_EVENT:Ljava/lang/String; = "com.oneplus.chargingpilar.SCREEN_ON"

.field private static final CHARGING_VIBRATION_AMPLITUDE:[I

.field private static final CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field private static final CHARGING_VIBRATION_TIME:[J

.field static DEBUG:Z = false

.field private static final INTERACTIVE_STATE_ASLEEP:I = 0x2

.field private static final INTERACTIVE_STATE_AWAKE:I = 0x1

.field private static final INTERACTIVE_STATE_UNKNOWN:I = 0x0

.field private static final MSG_BROADCAST:I = 0x2

.field private static final MSG_PROFILE_TIMED_OUT:I = 0x5

.field private static final MSG_USER_ACTIVITY:I = 0x1

.field private static final MSG_WIRED_CHARGING_STARTED:I = 0x6

.field private static final MSG_WIRELESS_CHARGING_STARTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PowerManagerNotifier"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBroadcastInProgress:Z

.field private mBroadcastStartTime:J

.field private mBroadcastedInteractiveState:I

.field private final mContext:Landroid/content/Context;

.field private final mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

.field private final mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field private final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private mInteractive:Z

.field private mInteractiveChangeReason:I

.field private mInteractiveChangeStartTime:J

.field private mInteractiveChanging:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingGoToSleepBroadcast:Z

.field private mPendingInteractiveState:I

.field private mPendingWakeUpBroadcast:Z

.field private final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private final mScreenOffIntent:Landroid/content/Intent;

.field private final mScreenOnIntent:Landroid/content/Intent;

.field private final mShowWirelessChargingAnimationConfig:Z

.field private final mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

.field private final mSuspendWhenScreenOffDueToProximityConfig:Z

.field private final mTrustManager:Landroid/app/trust/TrustManager;

.field private mUserActivityPending:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mWakeLockLog:Lcom/android/server/power/WakeLockLog;

.field private final mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 108
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    .line 137
    const/4 v0, 0x2

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_TIME:[J

    .line 139
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_AMPLITUDE:[I

    .line 141
    nop

    .line 142
    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 145
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 146
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Notifier;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 145
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0xa
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/power/SuspendBlocker;Lcom/android/server/policy/WindowManagerPolicy;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "suspendBlocker"    # Lcom/android/server/power/SuspendBlocker;
    .param p5, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 825
    new-instance v1, Lcom/android/server/power/Notifier$6;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$6;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 858
    new-instance v1, Lcom/android/server/power/Notifier$7;

    invoke-direct {v1, p0}, Lcom/android/server/power/Notifier$7;-><init>(Lcom/android/server/power/Notifier;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    .line 203
    iput-object p2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    .line 204
    iput-object p3, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 205
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    .line 206
    iput-object p4, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    .line 207
    iput-object p5, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 208
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 209
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    .line 210
    const-class v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 211
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 212
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/trust/TrustManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/TrustManager;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 213
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    .line 215
    new-instance v1, Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/Notifier$NotifierHandler;-><init>(Lcom/android/server/power/Notifier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    .line 216
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    .line 217
    const/high16 v2, 0x50200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 221
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    .line 227
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    .line 230
    new-instance v1, Lcom/android/server/power/WakeLockLog;

    invoke-direct {v1}, Lcom/android/server/power/WakeLockLog;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 236
    const/16 v1, 0x21

    invoke-static {v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/Notifier;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 96
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/Notifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 96
    iget v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    return v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 96
    invoke-static {p0}, Lcom/android/server/power/Notifier;->translateOnReason(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/power/Notifier;)Lcom/android/server/policy/WindowManagerPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 96
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/Notifier;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 96
    iget-wide v0, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 96
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/Notifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;

    .line 96
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendUserActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/Notifier;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/Notifier;->showWirelessChargingStarted(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/power/Notifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->lockProfile(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/power/Notifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/Notifier;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->showWiredChargingStarted(I)V

    return-void
.end method

.method private finishPendingBroadcastLocked()V
    .locals 1

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 728
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 729
    return-void
.end method

.method private getBatteryStatsWakeLockMonitorType(I)I
    .locals 4
    .param p1, "flags"    # I

    .line 390
    const v0, 0xffff

    and-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v2, 0x20

    const/4 v3, -0x1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 414
    return v3

    .line 405
    :cond_0
    const/16 v0, 0x12

    return v0

    .line 399
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mSuspendWhenScreenOffDueToProximityConfig:Z

    if-eqz v0, :cond_2

    .line 400
    return v3

    .line 402
    :cond_2
    return v1

    .line 396
    :cond_3
    return v2

    .line 392
    :cond_4
    return v1
.end method

.method private handleEarlyInteractiveChange()V
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 489
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$2;

    invoke-direct {v2, p0}, Lcom/android/server/power/Notifier$2;-><init>(Lcom/android/server/power/Notifier;)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 500
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 501
    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 502
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    goto :goto_0

    .line 506
    :cond_0
    iget v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v1}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v1

    .line 507
    .local v1, "why":I
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v3, Lcom/android/server/power/Notifier$3;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/Notifier$3;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 514
    .end local v1    # "why":I
    :goto_0
    monitor-exit v0

    .line 515
    return-void

    .line 514
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleLateInteractiveChange()V
    .locals 6

    .line 523
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 526
    .local v1, "interactiveChangeLatency":I
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eqz v2, :cond_0

    .line 528
    iget v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v2}, Lcom/android/server/power/Notifier;->translateOnReason(I)I

    move-result v2

    .line 529
    .local v2, "why":I
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v4, Lcom/android/server/power/Notifier$4;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/server/power/Notifier$4;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 543
    nop

    .end local v2    # "why":I
    goto :goto_0

    .line 551
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 552
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 553
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v3}, Lcom/android/server/power/Notifier$NotifierHandler;->removeMessages(I)V

    .line 557
    :cond_1
    iget v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    invoke-static {v2}, Lcom/android/server/power/Notifier;->translateOffReason(I)I

    move-result v2

    .line 558
    .restart local v2    # "why":I
    iget-object v4, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v5, Lcom/android/server/power/Notifier$5;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/power/Notifier$5;-><init>(Lcom/android/server/power/Notifier;II)V

    invoke-virtual {v4, v5}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 574
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    .line 575
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 576
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->updatePendingBroadcastLocked()V

    .line 578
    .end local v1    # "interactiveChangeLatency":I
    .end local v2    # "why":I
    :goto_0
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isChargingFeedbackEnabled(I)Z
    .locals 5
    .param p1, "userId"    # I

    .line 936
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 938
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 941
    .local v3, "dndOff":Z
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    return v2
.end method

.method private lockProfile(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 932
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mTrustManager:Landroid/app/trust/TrustManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 933
    return-void
.end method

.method private playChargingStartedFeedback(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "wireless"    # Z

    .line 868
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->isChargingFeedbackEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "charging_vibration_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 875
    .local v0, "vibrate":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 882
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    const/16 v5, 0x15

    invoke-static {v3, v4, v5}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 883
    new-array v2, v2, [I

    const/16 v3, 0xc0

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 884
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    .line 885
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/16 v3, 0xb

    .line 886
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 887
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 888
    .local v2, "VIBRATION_ATTRIBUTES":Landroid/media/AudioAttributes;
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 889
    .local v1, "effect":Landroid/os/VibrationEffect;
    iget-object v3, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 890
    .end local v1    # "effect":Landroid/os/VibrationEffect;
    .end local v2    # "VIBRATION_ATTRIBUTES":Landroid/media/AudioAttributes;
    goto :goto_1

    .line 891
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mVibrator:Landroid/os/Vibrator;

    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object v3, Lcom/android/server/power/Notifier;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 913
    :cond_3
    :goto_1
    return-void
.end method

.method private sendGoToSleepBroadcast()V
    .locals 11

    .line 835
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 836
    const-string v0, "PowerManagerNotifier"

    const-string v1, "Sending go to sleep broadcast."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 842
    invoke-static {v1}, Lcom/android/server/power/NotifierInjector;->notifyScreenState(I)V

    .line 844
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/power/Notifier;->mGoToSleepBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 848
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.chargingpilar.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    .local v0, "screenOffIntent":Landroid/content/Intent;
    const-string v1, "com.oneplus.chargingpilar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 850
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 852
    .end local v0    # "screenOffIntent":Landroid/content/Intent;
    goto :goto_0

    .line 853
    :cond_1
    const/16 v0, 0xaa7

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 854
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 856
    :goto_0
    return-void
.end method

.method private sendNextBroadcast()V
    .locals 5

    .line 745
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_0
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 749
    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eq v1, v2, :cond_0

    .line 757
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 758
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 759
    goto :goto_2

    .line 751
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 752
    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 753
    goto :goto_2

    .line 761
    :cond_1
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-ne v1, v4, :cond_4

    .line 763
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 768
    :cond_2
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 769
    monitor-exit v0

    return-void

    .line 765
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    .line 766
    iput v2, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    goto :goto_2

    .line 773
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-ne v1, v4, :cond_5

    goto :goto_1

    .line 778
    :cond_5
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->finishPendingBroadcastLocked()V

    .line 779
    monitor-exit v0

    return-void

    .line 775
    :cond_6
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    .line 776
    iput v4, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 783
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 784
    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    .line 785
    .local v1, "powerState":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    const/16 v0, 0xaa5

    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 791
    if-ne v1, v4, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyScreenEvent(Ljava/lang/Boolean;)V

    .line 794
    if-ne v1, v4, :cond_8

    .line 795
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendWakeUpBroadcast()V

    goto :goto_3

    .line 797
    :cond_8
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendGoToSleepBroadcast()V

    .line 799
    :goto_3
    return-void

    .line 785
    .end local v1    # "powerState":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendUserActivity()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 733
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_0

    .line 734
    monitor-exit v0

    return-void

    .line 736
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 737
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 739
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->notifyUserActivity()V

    .line 740
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userActivity()V

    .line 741
    return-void

    .line 737
    .end local v0    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendWakeUpBroadcast()V
    .locals 11

    .line 802
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 803
    const-string v0, "PowerManagerNotifier"

    const-string v1, "Sending wake up broadcast."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 809
    invoke-static {v1}, Lcom/android/server/power/NotifierInjector;->notifyScreenState(I)V

    .line 811
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/power/Notifier;->mScreenOnIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/power/Notifier;->mWakeUpBroadcastDone:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 815
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.chargingpilar.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    .local v0, "screenOnIntent":Landroid/content/Intent;
    const-string v1, "com.oneplus.chargingpilar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 819
    .end local v0    # "screenOnIntent":Landroid/content/Intent;
    goto :goto_0

    .line 820
    :cond_1
    const/16 v0, 0xaa7

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 821
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 823
    :goto_0
    return-void
.end method

.method private showWiredChargingStarted(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 927
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 928
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 929
    return-void
.end method

.method private showWirelessChargingStarted(II)V
    .locals 1
    .param p1, "batteryLevel"    # I
    .param p2, "userId"    # I

    .line 917
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/android/server/power/Notifier;->playChargingStartedFeedback(IZ)V

    .line 920
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mShowWirelessChargingAnimationConfig:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/Notifier;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_0

    .line 921
    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showChargingAnimation(I)V

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    .line 924
    return-void
.end method

.method private static translateOffReason(I)I
    .locals 2
    .param p0, "reason"    # I

    .line 582
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    .line 594
    return v0

    .line 591
    :cond_0
    const/16 v0, 0xa

    return v0

    .line 587
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 584
    :cond_2
    return v0
.end method

.method private static translateOnReason(I)I
    .locals 1
    .param p0, "reason"    # I

    .line 599
    packed-switch p0, :pswitch_data_0

    .line 611
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 609
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 607
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updatePendingBroadcastLocked()V
    .locals 3

    .line 714
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/power/Notifier;->mPendingInteractiveState:I

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingWakeUpBroadcast:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mPendingGoToSleepBroadcast:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/power/Notifier;->mBroadcastedInteractiveState:I

    if-eq v0, v1, :cond_1

    .line 718
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mBroadcastInProgress:Z

    .line 719
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 720
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 721
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 722
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 724
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 708
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {v0, p1}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;)V

    .line 711
    :cond_0
    return-void
.end method

.method public onLongPartialWakeLockFinish(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "historyTag"    # Ljava/lang/String;

    .line 301
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongPartialWakeLockFinish: ownerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", workSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerNotifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    if-eqz p3, :cond_1

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 309
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-static {v0, p3, p1, p4, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    const/16 v1, 0xb

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    .line 322
    :goto_1
    return-void
.end method

.method public onLongPartialWakeLockStart(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "historyTag"    # Ljava/lang/String;

    .line 276
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongPartialWakeLockStart: ownerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", workSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerNotifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    if-eqz p3, :cond_1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p3}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 284
    const/16 v0, 0xb

    const/4 v1, 0x1

    invoke-static {v0, p3, p1, p4, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p4, p2}, Lcom/android/internal/app/IBatteryStats;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    const/16 v1, 0xb

    const/4 v3, 0x0

    const/4 v6, 0x1

    move v2, p2

    move-object v4, p1

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    goto :goto_1

    .line 294
    :catch_0
    move-exception v0

    .line 297
    :goto_1
    return-void
.end method

.method public onProfileTimeout(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 665
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 666
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 667
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 668
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 669
    return-void
.end method

.method public onUserActivity(II)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "uid"    # I

    .line 619
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserActivity: event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerNotifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2, p1}, Lcom/android/internal/app/IBatteryStats;->noteUserActivity(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    goto :goto_0

    .line 625
    :catch_0
    move-exception v0

    .line 629
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 630
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    if-nez v1, :cond_1

    .line 631
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/Notifier;->mUserActivityPending:Z

    .line 632
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 633
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 634
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 636
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit v0

    .line 637
    return-void

    .line 636
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 18
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    .line 245
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v13, p4

    move-object/from16 v12, p6

    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWakeLockAcquired: flags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tag=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", packageName="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ownerUid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ownerPid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", workSource="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PowerManagerNotifier"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_0
    move/from16 v11, p5

    .line 252
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v17

    .line 253
    .local v17, "monitorType":I
    if-ltz v17, :cond_3

    .line 255
    const/16 v0, 0x3e8

    if-ne v13, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v9, v0

    .line 257
    .local v9, "unimportantForLogging":Z
    if-eqz v12, :cond_2

    .line 258
    :try_start_0
    iget-object v3, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p7

    move/from16 v8, v17

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    goto :goto_2

    .line 261
    :cond_2
    iget-object v10, v1, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v11, p4

    move/from16 v12, p5

    move v3, v13

    move-object/from16 v13, p2

    move-object v4, v14

    move-object/from16 v14, p7

    move-object v5, v15

    move/from16 v15, v17

    move/from16 v16, v9

    :try_start_1
    invoke-interface/range {v10 .. v16}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 264
    iget-object v0, v1, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x28

    invoke-virtual {v0, v6, v3, v4}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 268
    .end local v9    # "unimportantForLogging":Z
    :goto_2
    goto :goto_3

    .line 266
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    goto :goto_3

    .line 253
    :cond_3
    move v3, v13

    move-object v4, v14

    move-object v5, v15

    .line 271
    :goto_3
    iget-object v0, v1, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    invoke-virtual {v0, v5, v3, v2}, Lcom/android/server/power/WakeLockLog;->onWakeLockAcquired(Ljava/lang/String;II)V

    .line 272
    return-void
.end method

.method public onWakeLockChanging(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 26
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;
    .param p8, "newFlags"    # I
    .param p9, "newTag"    # Ljava/lang/String;
    .param p10, "newPackageName"    # Ljava/lang/String;
    .param p11, "newOwnerUid"    # I
    .param p12, "newOwnerPid"    # I
    .param p13, "newWorkSource"    # Landroid/os/WorkSource;
    .param p14, "newHistoryTag"    # Ljava/lang/String;

    .line 332
    move-object/from16 v9, p0

    move/from16 v10, p8

    move/from16 v11, p11

    move-object/from16 v8, p13

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v24

    .line 333
    .local v24, "monitorType":I
    invoke-direct {v9, v10}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v25

    .line 334
    .local v25, "newMonitorType":I
    if-eqz p6, :cond_2

    if-eqz v8, :cond_2

    if-ltz v24, :cond_2

    if-ltz v25, :cond_2

    .line 336
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWakeLockChanging: flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p10

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ownerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ownerPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p12

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", workSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerNotifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_0
    move-object/from16 v7, p9

    move-object/from16 v6, p10

    move/from16 v5, p12

    .line 343
    :goto_0
    const/16 v0, 0x3e8

    if-ne v11, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, v10

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move/from16 v23, v0

    .line 346
    .local v23, "unimportantForLogging":Z
    :try_start_0
    iget-object v12, v9, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v13, p6

    move/from16 v14, p5

    move-object/from16 v15, p2

    move-object/from16 v16, p7

    move/from16 v17, v24

    move-object/from16 v18, p13

    move/from16 v19, p12

    move-object/from16 v20, p9

    move-object/from16 v21, p14

    move/from16 v22, v25

    invoke-interface/range {v12 .. v23}, Lcom/android/internal/app/IBatteryStats;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    goto :goto_2

    .line 349
    :catch_0
    move-exception v0

    .line 352
    .end local v23    # "unimportantForLogging":Z
    :goto_2
    goto :goto_3

    .line 334
    :cond_2
    move-object/from16 v7, p9

    move-object/from16 v6, p10

    move/from16 v5, p12

    .line 353
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/power/Notifier;->onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 354
    move-object/from16 v1, p0

    move/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move/from16 v5, p11

    move/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/Notifier;->onWakeLockAcquired(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 357
    :goto_3
    return-void
.end method

.method public onWakeLockReleased(ILjava/lang/String;Ljava/lang/String;IILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 8
    .param p1, "flags"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerUid"    # I
    .param p5, "ownerPid"    # I
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "historyTag"    # Ljava/lang/String;

    .line 364
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWakeLockReleased: flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ownerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ownerPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", workSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerNotifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/power/Notifier;->getBatteryStatsWakeLockMonitorType(I)I

    move-result v0

    .line 372
    .local v0, "monitorType":I
    if-ltz v0, :cond_2

    .line 374
    if-eqz p6, :cond_1

    .line 375
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object v3, p6

    move v4, p5

    move-object v5, p2

    move-object v6, p7

    move v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v2, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move v3, p4

    move v4, p5

    move-object v5, p2

    move-object v6, p7

    move v7, v0

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 380
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p4, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    goto :goto_1

    .line 382
    :catch_0
    move-exception v1

    .line 386
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mWakeLockLog:Lcom/android/server/power/WakeLockLog;

    invoke-virtual {v1, p2, p4}, Lcom/android/server/power/WakeLockLog;->onWakeLockReleased(Ljava/lang/String;I)V

    .line 387
    return-void
.end method

.method public onWakeUp(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # I
    .param p2, "details"    # Ljava/lang/String;
    .param p3, "reasonUid"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "opUid"    # I

    .line 644
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWakeUp: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/PowerManager;->wakeReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reasonUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " opPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " opUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerNotifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteWakeUp(Ljava/lang/String;I)V

    .line 652
    if-eqz p4, :cond_1

    .line 653
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1, p5, p4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :cond_1
    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    .line 658
    :goto_0
    const/16 v0, 0x11a

    invoke-static {v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 659
    return-void
.end method

.method public onWakefulnessChangeFinished()V
    .locals 2

    .line 473
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "PowerManagerNotifier"

    const-string v1, "onWakefulnessChangeFinished"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v0, :cond_1

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 479
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 481
    :cond_1
    return-void
.end method

.method public onWakefulnessChangeStarted(IIJ)V
    .locals 4
    .param p1, "wakefulness"    # I
    .param p2, "reason"    # I
    .param p3, "eventTime"    # J

    .line 425
    invoke-static {p1}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    move-result v0

    .line 426
    .local v0, "interactive":Z
    sget-boolean v1, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWakefulnessChangeStarted: wakefulness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", interactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerNotifier"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    new-instance v2, Lcom/android/server/power/Notifier$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/Notifier$1;-><init>(Lcom/android/server/power/Notifier;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/Notifier$NotifierHandler;->post(Ljava/lang/Runnable;)Z

    .line 442
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    if-eq v1, v0, :cond_3

    .line 444
    iget-boolean v1, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    if-eqz v1, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V

    .line 449
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManagerInternal;->setInteractive(Z)V

    .line 450
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setInteractive(Z)V

    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteInteractive(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 456
    const/16 v1, 0x21

    .line 457
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v3, v2

    goto :goto_1

    .line 458
    :cond_2
    const/4 v3, 0x0

    .line 456
    :goto_1
    invoke-static {v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 461
    iput-boolean v0, p0, Lcom/android/server/power/Notifier;->mInteractive:Z

    .line 462
    iput p2, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeReason:I

    .line 463
    iput-wide p3, p0, Lcom/android/server/power/Notifier;->mInteractiveChangeStartTime:J

    .line 464
    iput-boolean v2, p0, Lcom/android/server/power/Notifier;->mInteractiveChanging:Z

    .line 465
    invoke-direct {p0}, Lcom/android/server/power/Notifier;->handleEarlyInteractiveChange()V

    .line 467
    :cond_3
    return-void
.end method

.method public onWiredChargingStarted(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 691
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 692
    const-string v0, "PowerManagerNotifier"

    const-string v1, "onWiredChargingStarted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 696
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 697
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 698
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 699
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 700
    return-void
.end method

.method public onWirelessChargingStarted(II)V
    .locals 2
    .param p1, "batteryLevel"    # I
    .param p2, "userId"    # I

    .line 675
    sget-boolean v0, Lcom/android/server/power/Notifier;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 676
    const-string v0, "PowerManagerNotifier"

    const-string v1, "onWirelessChargingStarted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mSuspendBlocker:Lcom/android/server/power/SuspendBlocker;

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 680
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/power/Notifier$NotifierHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 681
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 682
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 683
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 684
    iget-object v1, p0, Lcom/android/server/power/Notifier;->mHandler:Lcom/android/server/power/Notifier$NotifierHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/power/Notifier$NotifierHandler;->sendMessage(Landroid/os/Message;)Z

    .line 685
    return-void
.end method
