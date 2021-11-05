.class public abstract Lcom/android/server/biometrics/BiometricServiceBase;
.super Lcom/android/server/SystemService;
.source "BiometricServiceBase.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;,
        Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;,
        Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;,
        Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;,
        Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;,
        Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;,
        Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;,
        Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;,
        Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;,
        Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;,
        Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;,
        Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;,
        Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    }
.end annotation


# static fields
.field private static final AOD_CLOCK_DEFAULT:I = 0x0

.field private static final AOD_CLOCK_NONE:I = 0x1

.field private static final AOD_CLOCK_STYLE:Ljava/lang/String; = "aod_clock_style"

.field private static final CANCEL_TIMEOUT_LIMIT:J = 0xbb8L

.field private static final CLEANUP_UNKNOWN_TEMPLATES:Z = true

.field protected static final DEBUG:Z = true

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MSG_USER_SWITCHING:I = 0xa


# instance fields
.field protected final DOUBLE_ACCOUNT_UID:I

.field private final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field protected final mAppOps:Landroid/app/AppOpsManager;

.field protected final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field private final mContext:Landroid/content/Context;

.field protected mCryptoPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

.field protected mCurrentUserId:I

.field protected mHALDeathCount:I

.field protected mHalDeviceId:J

.field protected final mHandler:Landroid/os/Handler;

.field protected mIsCrypto:Z

.field private final mKeyguardPackage:Ljava/lang/String;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOEMStrength:I

.field private final mOnTaskStackChangedRunnable:Ljava/lang/Runnable;

.field private mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

.field protected mPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

.field protected final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mStrongAuthTracker:Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;

.field private final mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

.field private final mToken:Landroid/os/IBinder;

.field private final mUnknownHALTemplates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 699
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    .line 106
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    .line 117
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/biometrics/BiometricServiceBase$1;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    .line 130
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 137
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceMap:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 541
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricServiceBase$2;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mOnTaskStackChangedRunnable:Ljava/lang/Runnable;

    .line 973
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->DOUBLE_ACCOUNT_UID:I

    .line 700
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    .line 701
    nop

    .line 702
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 701
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 703
    nop

    .line 704
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040231

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 703
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 705
    .local v0, "keyguardComponent":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mKeyguardPackage:Ljava/lang/String;

    .line 706
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAppOps:Landroid/app/AppOpsManager;

    .line 707
    const-string v1, "activity_task"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityTaskManager;

    .line 708
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 709
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    .line 710
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUserManager:Landroid/os/UserManager;

    .line 711
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 714
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 715
    new-instance v1, Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mStrongAuthTracker:Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;

    .line 717
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeLockoutResetCallback(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/BiometricServiceBase;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 89
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->userActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"    # Lcom/android/server/biometrics/ClientMonitor;

    .line 89
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/BiometricServiceBase;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mOnTaskStackChangedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"    # Lcom/android/server/biometrics/ClientMonitor;

    .line 89
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object p1
.end method

.method private clearEnumerateState()V
    .locals 2

    .line 1477
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearEnumerateState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1479
    return-void
.end method

.method private enumerateUser(I)V
    .locals 18
    .param p1, "userId"    # I

    .line 1526
    move-object/from16 v14, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerating user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    .line 1529
    .local v10, "restricted":Z
    nop

    .line 1530
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v16

    .line 1532
    .local v16, "enrolledList":Ljava/util/List;, "Ljava/util/List<+Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    new-instance v17, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1533
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-wide v4, v14, Lcom/android/server/biometrics/BiometricServiceBase;->mHalDeviceId:J

    iget-object v6, v14, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    .line 1534
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1535
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v13

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p1

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/BiometricUtils;)V

    .line 1536
    .local v0, "client":Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;
    invoke-virtual {v14, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    .line 1537
    return-void
.end method

.method private getEffectiveUserId(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 1580
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1581
    .local v0, "um":Landroid/os/UserManager;
    if-eqz v0, :cond_0

    .line 1582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1583
    .local v1, "callingIdentity":J
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 1584
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1585
    .end local v1    # "callingIdentity":J
    goto :goto_0

    .line 1586
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to acquire UserManager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :goto_0
    return p1
.end method

.method private isCurrentClient(Ljava/lang/String;)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1235
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isForegroundActivity(II)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 1248
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1249
    .local v0, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Processes null, defaulting to true"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return v1

    .line 1254
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1255
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1256
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1257
    .local v4, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_1

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_1

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x7d

    if-gt v5, v6, :cond_1

    .line 1259
    return v1

    .line 1255
    .end local v4    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1264
    .end local v0    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_2
    goto :goto_1

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "am.getRunningAppProcesses() failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 1242
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorkProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1571
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 1573
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1574
    nop

    .line 1575
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 1573
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1574
    throw v3
.end method

.method private listenForUserSwitches()V
    .locals 3

    .line 1594
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricServiceBase$3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricServiceBase$3;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    .line 1601
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 1594
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1604
    goto :goto_0

    .line 1602
    :catch_0
    move-exception v0

    .line 1603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1605
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private removeLockoutResetCallback(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    .line 1609
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1610
    return-void
.end method

.method private startAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V
    .locals 5
    .param p1, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAuthentication("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result v0

    .line 1126
    .local v0, "lockoutMode":I
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In lockout mode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") ; disallowing authentication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    if-ne v0, v1, :cond_0

    .line 1129
    const/4 v1, 0x7

    goto :goto_0

    .line 1130
    :cond_0
    const/16 v1, 0x9

    :goto_0
    nop

    .line 1131
    .local v1, "errorCode":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v1, v4}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onError(JII)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1132
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot send permanent lockout message to client"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_1
    return-void

    .line 1137
    .end local v1    # "errorCode":I
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->opCheckCanStartAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1138
    return-void

    .line 1141
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1142
    return-void
.end method

.method private startCleanupUnknownHALTemplates()V
    .locals 25

    .line 1485
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1486
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;

    .line 1487
    .local v14, "template":Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v11, v0, 0x1

    .line 1497
    .local v11, "restricted":Z
    iget-object v0, v14, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    instance-of v0, v0, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_0

    .line 1498
    new-instance v13, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1499
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-wide v4, v15, Lcom/android/server/biometrics/BiometricServiceBase;->mHalDeviceId:J

    iget-object v6, v15, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    iget-object v0, v14, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 1500
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v8

    iget-object v0, v14, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 1501
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v9

    iget v10, v14, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mUserId:I

    .line 1503
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;)V

    move-object v7, v14

    move-object v8, v15

    .local v0, "client":Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;
    goto :goto_0

    .line 1505
    .end local v0    # "client":Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;
    :cond_0
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1506
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v2

    iget-wide v3, v15, Lcom/android/server/biometrics/BiometricServiceBase;->mHalDeviceId:J

    iget-object v5, v15, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    const/16 v19, 0x0

    iget-object v6, v14, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 1507
    invoke-virtual {v6}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v20

    const/16 v21, 0x0

    iget v6, v14, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mUserId:I

    .line 1508
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object v12, v0

    move-object/from16 v13, p0

    move-object v7, v14

    .end local v14    # "template":Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;
    .local v7, "template":Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;
    move-object v14, v1

    move-object v8, v15

    move-object v15, v2

    move-wide/from16 v16, v3

    move-object/from16 v18, v5

    move/from16 v22, v6

    move/from16 v23, v11

    invoke-direct/range {v12 .. v24}, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;)V

    .line 1511
    .restart local v0    # "client":Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;
    :goto_0
    invoke-virtual {v8, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    .line 1512
    const/16 v1, 0x94

    .line 1513
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v2

    const/4 v3, 0x3

    .line 1512
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 1515
    .end local v0    # "client":Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;
    .end local v7    # "template":Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;
    .end local v11    # "restricted":Z
    goto :goto_1

    .line 1516
    :cond_1
    move-object v8, v15

    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 1517
    iget-object v0, v8, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_2

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Enumerate finished, starting pending client"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v0, v8, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v8, v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1520
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1523
    :cond_2
    :goto_1
    return-void
.end method

.method private userActivity()V
    .locals 5

    .line 1559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1560
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1561
    return-void
.end method


# virtual methods
.method protected addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 1145
    if-nez p1, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Null LockoutResetCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    return-void

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$5zE_f-JKSpUWsfwvdtw36YktZZ0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$5zE_f-JKSpUWsfwvdtw36YktZZ0;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1155
    return-void
.end method

.method protected authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .locals 11
    .param p1, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "opId"    # J
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 965
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 966
    .local v8, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 967
    .local v9, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 968
    .local v10, "callingUserId":I
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, v8

    move v6, v9

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/biometrics/BiometricServiceBase;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 969
    return-void
.end method

.method protected authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .locals 15
    .param p1, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "opId"    # J
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "callingUid"    # I
    .param p6, "callingPid"    # I
    .param p7, "callingUserId"    # I

    .line 980
    move/from16 v7, p7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authenticateInternal: callingUserId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FP_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/16 v0, 0x3e7

    if-ne v7, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 982
    .local v8, "isDoubleAccount":Z
    if-eqz v8, :cond_1

    .line 983
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authenticateInternal double"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_1
    const/4 v2, 0x1

    .line 990
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->getCookie()I

    move-result v6

    .line 987
    move-object v0, p0

    move-object/from16 v1, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIIII)Z

    move-result v0

    if-nez v0, :cond_2

    .line 992
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate(): reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return-void

    .line 996
    :cond_2
    move-object/from16 v2, p4

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;

    move-object v9, v3

    move-object v10, p0

    move-wide/from16 v11, p2

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$VFT8WmkESkAnonaxJDq_GS_vB4E;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1012
    return-void
.end method

.method protected canUseBiometric(Ljava/lang/String;ZIII)Z
    .locals 7
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "requireForeground"    # Z
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "userId"    # I

    .line 1169
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIIII)Z

    move-result v0

    return v0
.end method

.method protected canUseBiometric(Ljava/lang/String;ZIIII)Z
    .locals 5
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "requireForeground"    # Z
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "userId"    # I
    .param p6, "cookie"    # I

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->checkUseBiometricPermission()V

    .line 1180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Rejecting "

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_2

    .line 1182
    if-eqz p6, :cond_1

    .line 1184
    if-eqz p2, :cond_1

    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->isForegroundActivity(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1186
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->opCheckForeground(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from BiometricPrompt; is actually in foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return v3

    .line 1191
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from BiometricPrompt ; not in foreground"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    return v1

    .line 1196
    :cond_1
    return v3

    .line 1198
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1199
    return v3

    .line 1201
    :cond_3
    invoke-virtual {p0, p5}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentUserOrProfile(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1202
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; not a current user or profile"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return v1

    .line 1205
    :cond_4
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->checkAppOps(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1206
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; permission denied"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    return v1

    .line 1210
    :cond_5
    if-eqz p2, :cond_7

    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->isForegroundActivity(II)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1219
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->opCheckForeground(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is actually in foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return v3

    .line 1224
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; not in foreground"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    return v1

    .line 1227
    :cond_7
    return v3
.end method

.method protected cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 1015
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1016
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1017
    .local v8, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 1018
    .local v9, "callingUserId":I
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v4, v8

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 1020
    return-void
.end method

.method protected cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I
    .param p6, "fromClient"    # Z

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthentication("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    if-eqz p6, :cond_0

    .line 1029
    const/4 v4, 0x1

    move-object v2, p0

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAuthentication(): reject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Riq0E2w6hcQ7OaMsaOJLSJJlAas;

    invoke-direct {v1, p0, p1, p6, p2}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Riq0E2w6hcQ7OaMsaOJLSJJlAas;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1098
    return-void
.end method

.method protected cancelEnrollmentInternal(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 954
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$yj0NG4umGnnyUerNM_EKxeka05A;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$yj0NG4umGnnyUerNM_EKxeka05A;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 961
    return-void
.end method

.method protected abstract checkAppOps(ILjava/lang/String;)Z
.end method

.method protected checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 1432
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    return-void
.end method

.method protected abstract checkUseBiometricPermission()V
.end method

.method protected doTemplateCleanupForUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 1472
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->enumerateUser(I)V

    .line 1474
    return-void
.end method

.method protected enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    .param p2, "userId"    # I

    .line 938
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->hasReachedEnrollmentLimit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    return-void

    .line 944
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentUserOrProfile(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 945
    return-void

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Zy4OXo3HMpNNxU1x5VMDe_5Q3vI;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Zy4OXo3HMpNNxU1x5VMDe_5Q3vI;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 951
    return-void
.end method

.method protected enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/biometrics/EnumerateClient;

    .line 1116
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$lM-Gght_XjLuQG2iY0xHchO8Xgk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$lM-Gght_XjLuQG2iY0xHchO8Xgk;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/EnumerateClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1119
    return-void
.end method

.method protected getAuthenticatorId(I)J
    .locals 5
    .param p1, "callingUserId"    # I

    .line 1462
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    .line 1463
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method protected abstract getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
.end method

.method protected getCancelErrorCode()I
    .locals 1

    .line 1683
    const/4 v0, 0x5

    return v0
.end method

.method protected getCancelResetErrorCode()I
    .locals 1

    .line 1679
    const/4 v0, 0x5

    return v0
.end method

.method protected abstract getConstants()Lcom/android/server/biometrics/Constants;
.end method

.method protected getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method protected abstract getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
.end method

.method protected abstract getEnrolledTemplates(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getHalDeviceId()J
.end method

.method protected abstract getLockoutBroadcastPermission()Ljava/lang/String;
.end method

.method protected abstract getLockoutMode()I
.end method

.method protected abstract getLockoutResetIntent()Ljava/lang/String;
.end method

.method protected abstract getManageBiometricPermission()Ljava/lang/String;
.end method

.method protected getPendingClient()Lcom/android/server/biometrics/ClientMonitor;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected getUserOrWorkProfileId(Ljava/lang/String;I)I
    .locals 1
    .param p1, "clientPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1414
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->isWorkProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1415
    return p2

    .line 1417
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->getEffectiveUserId(I)I

    move-result v0

    return v0
.end method

.method protected handleAcquired(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I
    .param p4, "vendorCode"    # I

    .line 772
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 773
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onAcquired(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 774
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_1

    .line 779
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    iget v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    .line 781
    :cond_1
    return-void
.end method

.method protected handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 785
    .local p2, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 786
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 789
    .local v1, "authenticated":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAuthenticated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 793
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 797
    :cond_1
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    if-eqz v3, :cond_3

    .line 798
    if-eqz v1, :cond_2

    .line 799
    iget v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_1

    .line 801
    :cond_2
    iget v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    .line 805
    :cond_3
    :goto_1
    return-void
.end method

.method protected handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 4
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 809
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 810
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 811
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 814
    instance-of v1, p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v1, :cond_0

    .line 815
    move-object v1, p1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 818
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 819
    .local v1, "currentUserId":I
    iget v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    if-ne v2, v1, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "handleEnrollResult: updateFingerprintEnabled."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->updateFingerprintEnabled()V

    .line 826
    .end local v1    # "currentUserId":I
    :cond_0
    return-void
.end method

.method protected handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 903
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 905
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-nez v0, :cond_0

    return-void

    .line 907
    :cond_0
    if-eqz v0, :cond_1

    .line 908
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    .line 912
    :cond_1
    if-nez p2, :cond_5

    .line 913
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v1, :cond_4

    .line 914
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    .line 915
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->getUnknownHALTemplates()Ljava/util/List;

    move-result-object v1

    .line 917
    .local v1, "unknownHALTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 918
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " templates for deletion"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 922
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 923
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 922
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 925
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 926
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->startCleanupUnknownHALTemplates()V

    .end local v1    # "unknownHALTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    goto :goto_1

    .line 927
    :cond_4
    if-eqz v0, :cond_5

    .line 928
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    nop

    .line 931
    :cond_5
    :goto_1
    return-void
.end method

.method protected handleError(JII)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 829
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 831
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleError(client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 831
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v1, :cond_2

    .line 836
    :cond_1
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 839
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 840
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 843
    :cond_3
    const/4 v1, 0x5

    if-ne p3, v1, :cond_4

    .line 844
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 845
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v1, :cond_4

    .line 846
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start pending client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 847
    invoke-virtual {v3}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 846
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 849
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 852
    :cond_4
    return-void
.end method

.method protected handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 856
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed: fid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 856
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 861
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 864
    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 865
    .local v1, "userId":I
    instance-of v2, p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v2, :cond_0

    .line 866
    move-object v2, p1

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v1

    .line 868
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->hasEnrolledBiometrics(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 869
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 872
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "aod_clock_style"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 874
    .local v2, "currentAodStyle":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 875
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "force reset aod clock type as default due to no remained fingerprint"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v4, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 884
    :cond_1
    instance-of v3, p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v3, :cond_2

    .line 885
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 886
    .local v3, "currentUserId":I
    if-ne v1, v3, :cond_2

    .line 887
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "handleRemoved: updateFingerprintEnabled."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->updateFingerprintEnabled()V

    .line 895
    .end local v1    # "userId":I
    .end local v2    # "currentAodStyle":I
    .end local v3    # "currentUserId":I
    :cond_2
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 896
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->startCleanupUnknownHALTemplates()V

    goto :goto_0

    .line 897
    :cond_3
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_4

    .line 898
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 900
    :cond_4
    :goto_0
    return-void
.end method

.method protected handleUserSwitching(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1544
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-nez v0, :cond_0

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v0, :cond_1

    .line 1546
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User switched while performing cleanup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 1549
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->doTemplateCleanupForUser(I)V

    .line 1550
    return-void
.end method

.method protected abstract hasEnrolledBiometrics(I)Z
.end method

.method protected hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 1427
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

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

.method protected abstract hasReachedEnrollmentLimit(I)Z
.end method

.method protected initConfiguredStrengthInternal(I)V
    .locals 3
    .param p1, "strength"    # I

    .line 747
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initConfiguredStrengthInternal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iput p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mOEMStrength:I

    .line 750
    return-void
.end method

.method protected isCurrentUserOrProfile(I)Z
    .locals 8
    .param p1, "userId"    # I

    .line 1437
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1438
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to acquire UserManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return v1

    .line 1443
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1446
    .local v2, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_2

    aget v7, v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    .local v7, "profileId":I
    if-ne v7, p1, :cond_1

    .line 1448
    nop

    .line 1452
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1448
    const/4 v1, 0x1

    return v1

    .line 1446
    .end local v7    # "profileId":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1452
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1453
    nop

    .line 1455
    return v1

    .line 1452
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1453
    throw v1
.end method

.method protected isRestricted()Z
    .locals 1

    .line 1422
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1423
    .local v0, "restricted":Z
    return v0
.end method

.method protected isStrongBiometric()Z
    .locals 2

    .line 754
    iget v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mOEMStrength:I

    and-int/lit16 v0, v0, 0x7fff

    .line 756
    .local v0, "biometricBits":I
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic lambda$addLockoutResetCallback$8$BiometricServiceBase(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 1150
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    .line 1151
    .local v0, "monitor":Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1152
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    :cond_0
    return-void
.end method

.method public synthetic lambda$authenticateInternal$3$BiometricServiceBase(JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V
    .locals 7
    .param p1, "opId"    # J
    .param p3, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 997
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->tagAuthToken()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v0, v1, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 1001
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceMap:Ljava/util/HashMap;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 1002
    .local v0, "pmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;>;"
    :goto_1
    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1003
    .local v1, "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    if-nez v1, :cond_2

    .line 1004
    new-instance v4, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    invoke-direct {v4, p0}, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    move-object v1, v4

    .line 1005
    iget v4, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    :cond_2
    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1008
    cmp-long v2, p1, v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mIsCrypto:Z

    .line 1010
    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->startAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V

    .line 1011
    return-void
.end method

.method public synthetic lambda$cancelAuthenticationInternal$4$BiometricServiceBase(Landroid/os/IBinder;ZLjava/lang/String;)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 1039
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1040
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 1041
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const-string/jumbo v4, "remove pending client ("

    if-eq v1, p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1074
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t stop client "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " since tokens don\'t match. fromClient: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_6

    if-eqz p2, :cond_6

    .line 1078
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v4}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") because pending client has cancelled"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    iput-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    goto/16 :goto_1

    .line 1042
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stopping client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", fromClient: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 1049
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v1

    if-nez v1, :cond_2

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not successfully, becuase we are cancelling from BiometricService."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    return-void

    .line 1061
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 1063
    if-eqz p2, :cond_6

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v1, :cond_6

    instance-of v2, v1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v2, :cond_6

    .line 1067
    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 1068
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v4}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") becuase previos client has not been cancelled done yet but user called cancel manually."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iput-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    goto :goto_1

    .line 1083
    :cond_4
    if-eqz v0, :cond_6

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t cancel non-authenticating client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1084
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-nez v1, :cond_5

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v1, :cond_6

    .line 1089
    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 1090
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pending client ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v5}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") calling cancelAuthentication but current client is doing enumerate."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCancelErrorCode()I

    move-result v6

    invoke-virtual {v1, v4, v5, v6, v2}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    .line 1093
    iput-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1097
    :cond_6
    :goto_1
    return-void
.end method

.method public synthetic lambda$cancelEnrollmentInternal$2$BiometricServiceBase(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 955
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 956
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 957
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cancelling enrollment"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 960
    :cond_1
    return-void
.end method

.method public synthetic lambda$enrollInternal$1$BiometricServiceBase(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V
    .locals 1
    .param p1, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;

    .line 949
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 950
    return-void
.end method

.method public synthetic lambda$enumerateInternal$7$BiometricServiceBase(Lcom/android/server/biometrics/EnumerateClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/server/biometrics/EnumerateClient;

    .line 1117
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1118
    return-void
.end method

.method public synthetic lambda$removeInternal$6$BiometricServiceBase(Lcom/android/server/biometrics/RemovalClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/server/biometrics/RemovalClient;

    .line 1111
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1112
    return-void
.end method

.method public synthetic lambda$serviceDied$0$BiometricServiceBase()V
    .locals 4

    .line 737
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sending BIOMETRIC_ERROR_HW_UNAVAILABLE after HAL crash"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    .line 739
    return-void
.end method

.method public synthetic lambda$setActiveUserInternal$5$BiometricServiceBase(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 1106
    return-void
.end method

.method protected loadAuthenticatorIds()V
    .locals 8

    .line 1394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1395
    .local v0, "t":J
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1397
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/android/server/biometrics/BiometricServiceBase;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v4

    .line 1398
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1399
    invoke-virtual {p0, v4, v5}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 1401
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    :cond_0
    goto :goto_0

    .line 1403
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1404
    .end local v0    # "t":J
    .local v2, "t":J
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 1405
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadAuthenticatorIds() taking too long: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_2
    return-void
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .line 248
    return-void
.end method

.method protected notifyLockoutResetMonitors()V
    .locals 2

    .line 1553
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1554
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->sendLockoutReset()V

    .line 1553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1556
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 721
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->listenForUserSwitches()V

    .line 724
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mStrongAuthTracker:Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 726
    return-void
.end method

.method protected onStrongAuthChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1633
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1638
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1639
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1640
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onStrongAuthChanged: not allow for biometric, start current authentication client"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 1643
    :cond_1
    return-void

    .line 1635
    .end local v0    # "currentUserId":I
    :cond_2
    :goto_0
    return-void
.end method

.method protected opCheckCanStartAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)Z
    .locals 5
    .param p1, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 1620
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1621
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1622
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v1

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onError(JII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1623
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "strong auth not allow for ( pkg= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", userId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") ; disallowing authentication"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_0
    return v4

    .line 1629
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected opCheckForeground(Ljava/lang/String;)Z
    .locals 6
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1661
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->getTopRunningPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1662
    .local v0, "topActivity":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->isKeyguardGoingAway()Z

    move-result v1

    .line 1663
    .local v1, "isKeyguardGoingAway":Z
    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->isKeyguardDone()Z

    move-result v2

    .line 1664
    .local v2, "isKeyguardDone":Z
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!isForegroundActivity. topActivity= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isKeyguardGoingAway= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isKeyguardDone= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1669
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 1670
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 1673
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method protected opStartClient(Lcom/android/server/biometrics/ClientMonitor;Z)V
    .locals 0
    .param p1, "newClient"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "initiatedByClient"    # Z

    .line 1615
    return-void
.end method

.method protected removeClient(Lcom/android/server/biometrics/ClientMonitor;)V
    .locals 3
    .param p1, "client"    # Lcom/android/server/biometrics/ClientMonitor;

    .line 1372
    if-eqz p1, :cond_0

    .line 1373
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->destroy()V

    .line 1374
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eq p1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 1375
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1376
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1375
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_1

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1383
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-nez v0, :cond_2

    .line 1384
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->notifyClientActiveCallbacks(Z)V

    .line 1386
    :cond_2
    return-void
.end method

.method protected removeInternal(Lcom/android/server/biometrics/RemovalClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/biometrics/RemovalClient;

    .line 1110
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$8-hCNL3jMZVMKItY0KyN7TBk6u8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$8-hCNL3jMZVMKItY0KyN7TBk6u8;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/RemovalClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1113
    return-void
.end method

.method public serviceDied(J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 730
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->tagHalDied()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 732
    iget v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHALDeathCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHALDeathCount:I

    .line 733
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 736
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$iRNlDOJhMpMFOTQxuHjuZ0z5dlY;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$iRNlDOJhMpMFOTQxuHjuZ0z5dlY;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 741
    nop

    .line 742
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v0

    .line 741
    const/16 v1, 0x94

    invoke-static {v1, v0, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 743
    return-void
.end method

.method protected setActiveUserInternal(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1101
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$rf3hjPI_nf4EvVsQV7gFCF1-HpI;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$rf3hjPI_nf4EvVsQV7gFCF1-HpI;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1107
    return-void
.end method

.method startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V
    .locals 6
    .param p1, "newClient"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "initiatedByClient"    # Z

    .line 1278
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1279
    .local v0, "currentClient":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_3

    .line 1280
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request stop current client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1280
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1296
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 1302
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1303
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1289
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal cleanup in progress but trying to start client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), initiatedByClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1290
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    goto/16 :goto_3

    .line 1306
    :cond_3
    if-eqz p1, :cond_6

    .line 1310
    instance-of v1, p1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_5

    .line 1311
    move-object v1, p1

    check-cast v1, Lcom/android/server/biometrics/AuthenticationClient;

    .line 1312
    .local v1, "client":Lcom/android/server/biometrics/AuthenticationClient;
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1313
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1315
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    if-nez v2, :cond_4

    .line 1316
    nop

    .line 1317
    const-string v2, "biometric"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1316
    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 1320
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v3

    .line 1321
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getRequireConfirmation()Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v5

    .line 1320
    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/biometrics/IBiometricService;->onReadyForAuthentication(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    goto :goto_2

    .line 1322
    :catch_0
    move-exception v2

    .line 1323
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Remote exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1325
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 1330
    .end local v1    # "client":Lcom/android/server/biometrics/AuthenticationClient;
    :cond_5
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1331
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startCurrentClient(I)V

    .line 1334
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->opStartClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1336
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove pending client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1341
    :cond_6
    :goto_3
    return-void
.end method

.method protected startCurrentClient(I)V
    .locals 6
    .param p1, "cookie"    # I

    .line 1344
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-nez v0, :cond_0

    .line 1345
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to start null client!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-void

    .line 1349
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1350
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1351
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") targetUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1352
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1354
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1349
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1357
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mismatched cookie"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    return-void

    .line 1361
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->start()I

    move-result v0

    .line 1362
    .local v0, "status":I
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1363
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->notifyClientActiveCallbacks(Z)V

    goto :goto_0

    .line 1365
    :cond_2
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    .line 1367
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 1369
    :goto_0
    return-void
.end method

.method protected abstract statsModality()I
.end method

.method protected abstract updateActiveGroup(ILjava/lang/String;)V
.end method
