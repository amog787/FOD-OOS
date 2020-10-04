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
        Lcom/android/server/biometrics/BiometricServiceBase$H;,
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

.field protected final mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

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
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    .line 101
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    .line 108
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$H;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricServiceBase$H;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    .line 110
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 117
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceMap:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 910
    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->DOUBLE_ACCOUNT_UID:I

    .line 680
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    .line 681
    nop

    .line 682
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 681
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 683
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mKeyguardPackage:Ljava/lang/String;

    .line 685
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAppOps:Landroid/app/AppOpsManager;

    .line 686
    const-string v0, "activity_task"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager;

    .line 687
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 688
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    .line 689
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUserManager:Landroid/os/UserManager;

    .line 690
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 693
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 694
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mStrongAuthTracker:Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;

    .line 696
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeLockoutResetCallback(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/BiometricServiceBase;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mTaskStackListener:Lcom/android/server/biometrics/BiometricServiceBase$BiometricTaskStackListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/BiometricServiceBase;)Landroid/app/IActivityTaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/BiometricServiceBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 84
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->userActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"    # Lcom/android/server/biometrics/ClientMonitor;

    .line 84
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/BiometricServiceBase;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;

    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/ClientMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricServiceBase;
    .param p1, "x1"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "x2"    # Z

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    return-void
.end method

.method private clearEnumerateState()V
    .locals 2

    .line 1372
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearEnumerateState()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1374
    return-void
.end method

.method private enumerateUser(I)V
    .locals 18
    .param p1, "userId"    # I

    .line 1403
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

    .line 1405
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v10, v0, 0x1

    .line 1406
    .local v10, "restricted":Z
    nop

    .line 1407
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/biometrics/BiometricServiceBase;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v16

    .line 1409
    .local v16, "enrolledList":Ljava/util/List;, "Ljava/util/List<+Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    new-instance v17, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1410
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v3

    iget-wide v4, v14, Lcom/android/server/biometrics/BiometricServiceBase;->mHalDeviceId:J

    iget-object v6, v14, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    const/4 v7, 0x0

    .line 1411
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1412
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v13

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p1

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v13}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIZLjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/BiometricUtils;)V

    .line 1413
    .local v0, "client":Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;
    invoke-virtual {v14, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    .line 1414
    return-void
.end method

.method private getEffectiveUserId(I)I
    .locals 3
    .param p1, "userId"    # I

    .line 1457
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1458
    .local v0, "um":Landroid/os/UserManager;
    if-eqz v0, :cond_0

    .line 1459
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1460
    .local v1, "callingIdentity":J
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 1461
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1462
    .end local v1    # "callingIdentity":J
    goto :goto_0

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to acquire UserManager"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :goto_0
    return p1
.end method

.method private isCurrentClient(Ljava/lang/String;)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1138
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
    .locals 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 1151
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1152
    .local v0, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1153
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1154
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1155
    .local v3, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p2, :cond_0

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, p1, :cond_0

    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x7d

    if-gt v4, v5, :cond_0

    .line 1157
    const/4 v4, 0x1

    return v4

    .line 1153
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1162
    .end local v0    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 1160
    :catch_0
    move-exception v0

    .line 1161
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "am.getRunningAppProcesses() failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientPackage"    # Ljava/lang/String;

    .line 1145
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorkProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1445
    const/4 v0, 0x0

    .line 1446
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1448
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 1450
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1451
    nop

    .line 1452
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

    .line 1450
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private listenForUserSwitches()V
    .locals 3

    .line 1471
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricServiceBase$1;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricServiceBase$1;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    .line 1478
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 1471
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    goto :goto_0

    .line 1479
    :catch_0
    move-exception v0

    .line 1480
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1482
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private removeLockoutResetCallback(Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    .line 1486
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1487
    return-void
.end method

.method private startAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V
    .locals 5
    .param p1, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 1026
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

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result v0

    .line 1029
    .local v0, "lockoutMode":I
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1030
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

    .line 1031
    if-ne v0, v1, :cond_0

    .line 1032
    const/4 v1, 0x7

    goto :goto_0

    .line 1033
    :cond_0
    const/16 v1, 0x9

    :goto_0
    nop

    .line 1034
    .local v1, "errorCode":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v1, v4}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onError(JII)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot send permanent lockout message to client"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_1
    return-void

    .line 1039
    .end local v1    # "errorCode":I
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->opCheckCanStartAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1040
    return-void

    .line 1043
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1044
    return-void
.end method

.method private startCleanupUnknownHALTemplates()V
    .locals 15

    .line 1380
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;

    .line 1382
    .local v0, "template":Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1383
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v13, v1, 0x1

    .line 1384
    .local v13, "restricted":Z
    new-instance v1, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1385
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHalDeviceId:J

    iget-object v8, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mToken:Landroid/os/IBinder;

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 1386
    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v10

    const/4 v11, 0x0

    iget v12, v0, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;->mUserId:I

    .line 1387
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIIZLjava/lang/String;)V

    .line 1388
    .local v1, "client":Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    .line 1389
    const/16 v2, 0x94

    .line 1390
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v3

    const/4 v4, 0x3

    .line 1389
    invoke-static {v2, v3, v4}, Landroid/util/StatsLog;->write(III)I

    .line 1392
    .end local v0    # "template":Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;
    .end local v1    # "client":Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;
    .end local v13    # "restricted":Z
    goto :goto_0

    .line 1393
    :cond_0
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 1394
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_1

    .line 1395
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Enumerate finished, starting pending client"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1400
    :cond_1
    :goto_0
    return-void
.end method

.method private startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V
    .locals 6
    .param p1, "newClient"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "initiatedByClient"    # Z

    .line 1175
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1176
    .local v0, "currentClient":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_3

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request stop current client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1177
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1193
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 1199
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1200
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1186
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 1187
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal cleanup in progress but trying to start client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), initiatedByClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1187
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    goto/16 :goto_3

    .line 1203
    :cond_3
    if-eqz p1, :cond_6

    .line 1207
    instance-of v1, p1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_5

    .line 1208
    move-object v1, p1

    check-cast v1, Lcom/android/server/biometrics/AuthenticationClient;

    .line 1209
    .local v1, "client":Lcom/android/server/biometrics/AuthenticationClient;
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->isBiometricPrompt()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1210
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

    .line 1211
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1212
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    if-nez v2, :cond_4

    .line 1213
    nop

    .line 1214
    const-string v2, "biometric"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1213
    invoke-static {v2}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 1217
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getCookie()I

    move-result v3

    .line 1218
    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getRequireConfirmation()Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/biometrics/AuthenticationClient;->getTargetUserId()I

    move-result v5

    .line 1217
    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/biometrics/IBiometricService;->onReadyForAuthentication(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    goto :goto_2

    .line 1219
    :catch_0
    move-exception v2

    .line 1220
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Remote exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1222
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 1227
    .end local v1    # "client":Lcom/android/server/biometrics/AuthenticationClient;
    :cond_5
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1228
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->startCurrentClient(I)V

    .line 1231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->opStartClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1232
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

    .line 1233
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

    .line 1234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1238
    :cond_6
    :goto_3
    return-void
.end method

.method private userActivity()V
    .locals 5

    .line 1436
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1437
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 1438
    return-void
.end method


# virtual methods
.method protected addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 1048
    if-nez p1, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "add lock reset callback fail, because callback is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-void

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$XAcKFVHrxFAE_DeiO9UcSMHwbi4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$XAcKFVHrxFAE_DeiO9UcSMHwbi4;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1059
    return-void
.end method

.method protected authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .locals 11
    .param p1, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "opId"    # J
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 902
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 903
    .local v8, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 904
    .local v9, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 905
    .local v10, "callingUserId":I
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, v8

    move v6, v9

    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/biometrics/BiometricServiceBase;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    .line 906
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

    .line 917
    const/16 v0, 0x3e7

    move/from16 v8, p7

    if-ne v8, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 918
    .local v0, "isDoubleAccount":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 919
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authenticateInternal double"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_1
    const/4 v3, 0x1

    .line 924
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->getCookie()I

    move-result v7

    .line 923
    move-object v1, p0

    move-object/from16 v2, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIIII)Z

    move-result v1

    if-nez v1, :cond_2

    .line 925
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authenticate(): reject "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return-void

    .line 929
    :cond_2
    move-object/from16 v3, p4

    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v4, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$HtA60PD2POS70xjo2Wkv9Ds3iIM;

    move-object v9, v4

    move-object v10, p0

    move-wide/from16 v11, p2

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$HtA60PD2POS70xjo2Wkv9Ds3iIM;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 945
    return-void
.end method

.method protected canUseBiometric(Ljava/lang/String;ZIII)Z
    .locals 7
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "requireForeground"    # Z
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "userId"    # I

    .line 1073
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

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->checkUseBiometricPermission()V

    .line 1083
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Rejecting "

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_2

    .line 1085
    if-eqz p6, :cond_1

    .line 1087
    if-eqz p2, :cond_1

    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->isForegroundActivity(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->opCheckForeground(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1090
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

    .line 1091
    return v3

    .line 1094
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

    .line 1095
    return v1

    .line 1099
    :cond_1
    return v3

    .line 1101
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1102
    return v3

    .line 1104
    :cond_3
    invoke-virtual {p0, p5}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentUserOrProfile(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1105
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

    .line 1106
    return v1

    .line 1108
    :cond_4
    invoke-virtual {p0, p3, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->checkAppOps(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1109
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

    .line 1110
    return v1

    .line 1113
    :cond_5
    if-eqz p2, :cond_7

    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->isForegroundActivity(II)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1122
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->opCheckForeground(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1123
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

    .line 1124
    return v3

    .line 1127
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

    .line 1128
    return v1

    .line 1130
    :cond_7
    return v3
.end method

.method protected cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 948
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 949
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 950
    .local v8, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 951
    .local v9, "callingUserId":I
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v4, v8

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricServiceBase;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 953
    return-void
.end method

.method protected cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I
    .param p6, "fromClient"    # Z

    .line 957
    if-eqz p6, :cond_0

    .line 960
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricServiceBase;->canUseBiometric(Ljava/lang/String;ZIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
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

    .line 963
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;

    invoke-direct {v1, p0, p1, p6}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$aivpKkOumO0Y5eW-DasbcdjcN4o;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1005
    return-void
.end method

.method protected cancelEnrollmentInternal(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 891
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$9h-u9AqPquTEJ3xQKI_ONPZaSfE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$9h-u9AqPquTEJ3xQKI_ONPZaSfE;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 898
    return-void
.end method

.method protected abstract checkAppOps(ILjava/lang/String;)Z
.end method

.method protected checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 1318
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

    .line 1320
    return-void
.end method

.method protected abstract checkUseBiometricPermission()V
.end method

.method protected doTemplateCleanupForUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 1367
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->enumerateUser(I)V

    .line 1369
    return-void
.end method

.method protected enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    .param p2, "userId"    # I

    .line 875
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->hasReachedEnrollmentLimit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    return-void

    .line 881
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->isCurrentUserOrProfile(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 882
    return-void

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$fmXvpYbcyw65Q8mBLfnQvCCMoK4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$fmXvpYbcyw65Q8mBLfnQvCCMoK4;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 888
    return-void
.end method

.method protected enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/biometrics/EnumerateClient;

    .line 1019
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$YYfr_b-4RQIPNHGbIvwrGKgGEsY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$YYfr_b-4RQIPNHGbIvwrGKgGEsY;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/EnumerateClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1022
    return-void
.end method

.method protected getAuthenticatorId(Ljava/lang/String;)J
    .locals 5
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1349
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v0

    .line 1358
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

.method protected abstract getConstants()Lcom/android/server/biometrics/Constants;
.end method

.method protected getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;
    .locals 1

    .line 720
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

    .line 724
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    return-object v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected getUserOrWorkProfileId(Ljava/lang/String;I)I
    .locals 1
    .param p1, "clientPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/biometrics/BiometricServiceBase;->isWorkProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    return p2

    .line 1303
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

    .line 732
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 733
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onAcquired(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getLockoutMode()I

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v1, :cond_1

    .line 739
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    iget v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    .line 741
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

    .line 745
    .local p2, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 746
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 749
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

    .line 752
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 753
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 755
    :cond_1
    if-eqz v1, :cond_2

    .line 756
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    iget v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_1

    .line 758
    :cond_2
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    iget v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    .line 760
    :goto_1
    return-void
.end method

.method protected handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 764
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 765
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 769
    instance-of v1, p1, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 770
    move-object v1, p1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    goto :goto_0

    .line 772
    :cond_0
    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 775
    :cond_1
    :goto_0
    return-void
.end method

.method protected handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 842
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 844
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-nez v0, :cond_0

    return-void

    .line 846
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    .line 849
    if-nez p2, :cond_4

    .line 850
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v1, :cond_3

    .line 851
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    .line 852
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;->getUnknownHALTemplates()Ljava/util/List;

    move-result-object v1

    .line 854
    .local v1, "unknownHALTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 855
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

    .line 858
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 859
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 860
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-direct {v4, p0, v5, v6}, Lcom/android/server/biometrics/BiometricServiceBase$UserTemplate;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 859
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 862
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 863
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->startCleanupUnknownHALTemplates()V

    .line 864
    .end local v1    # "unknownHALTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    goto :goto_1

    .line 865
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 868
    :cond_4
    :goto_1
    return-void
.end method

.method protected handleError(JII)V
    .locals 4
    .param p1, "deviceId"    # J
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 778
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 780
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleError(client="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
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

    .line 780
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v1, :cond_2

    .line 785
    :cond_1
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 788
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 789
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 792
    :cond_3
    const/4 v1, 0x5

    if-ne p3, v1, :cond_4

    .line 793
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mResetClientState:Lcom/android/server/biometrics/BiometricServiceBase$ResetClientStateRunnable;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 794
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v1, :cond_4

    .line 795
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start pending client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 796
    invoke-virtual {v3}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 795
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 798
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 801
    :cond_4
    return-void
.end method

.method protected handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 7
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 805
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

    .line 806
    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getDeviceId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", rem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 805
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 810
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/biometrics/ClientMonitor;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->removeClient(Lcom/android/server/biometrics/ClientMonitor;)V

    .line 813
    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 814
    .local v1, "userId":I
    instance-of v2, p1, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v2, :cond_0

    .line 815
    move-object v2, p1

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v1

    .line 817
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/BiometricServiceBase;->hasEnrolledBiometrics(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 818
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 821
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "aod_clock_style"

    invoke-static {v2, v4, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 823
    .local v2, "currentAodStyle":I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 824
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "force reset aod clock type as default due to no remained fingerprint"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v3, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 834
    .end local v1    # "userId":I
    .end local v2    # "currentAodStyle":I
    :cond_1
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mUnknownHALTemplates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 835
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->startCleanupUnknownHALTemplates()V

    goto :goto_0

    .line 836
    :cond_2
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_3

    .line 837
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->clearEnumerateState()V

    .line 839
    :cond_3
    :goto_0
    return-void
.end method

.method protected handleUserSwitching(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-nez v0, :cond_0

    .line 1422
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-eqz v0, :cond_1

    .line 1423
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User switched while performing cleanup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 1426
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase;->doTemplateCleanupForUser(I)V

    .line 1427
    return-void
.end method

.method protected abstract hasEnrolledBiometrics(I)Z
.end method

.method protected hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .line 1313
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

.method protected isCurrentUserOrProfile(I)Z
    .locals 8
    .param p1, "userId"    # I

    .line 1323
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 1324
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1325
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to acquire UserManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return v1

    .line 1329
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1332
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

    .line 1333
    .local v7, "profileId":I
    if-ne v7, p1, :cond_1

    .line 1334
    nop

    .line 1338
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1334
    const/4 v1, 0x1

    return v1

    .line 1332
    .end local v7    # "profileId":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1338
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    nop

    .line 1341
    return v1

    .line 1338
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method protected isRestricted()Z
    .locals 1

    .line 1308
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getManageBiometricPermission()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1309
    .local v0, "restricted":Z
    return v0
.end method

.method public synthetic lambda$addLockoutResetCallback$6$BiometricServiceBase(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 1054
    new-instance v0, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    .line 1055
    .local v0, "monitor":Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1056
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    :cond_0
    return-void
.end method

.method public synthetic lambda$authenticateInternal$2$BiometricServiceBase(JLcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V
    .locals 7
    .param p1, "opId"    # J
    .param p3, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 930
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

    .line 934
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceMap:Ljava/util/HashMap;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCryptoPerformanceMap:Ljava/util/HashMap;

    .line 935
    .local v0, "pmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;>;"
    :goto_1
    iget v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 936
    .local v1, "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    if-nez v1, :cond_2

    .line 937
    new-instance v4, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    invoke-direct {v4, p0}, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;)V

    move-object v1, v4

    .line 938
    iget v4, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    :cond_2
    iput-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPerformanceStats:Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 941
    cmp-long v2, p1, v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mIsCrypto:Z

    .line 943
    invoke-direct {p0, p3, p4}, Lcom/android/server/biometrics/BiometricServiceBase;->startAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)V

    .line 944
    return-void
.end method

.method public synthetic lambda$cancelAuthenticationInternal$3$BiometricServiceBase(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromClient"    # Z

    .line 968
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 969
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/AuthenticationClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 970
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v1, p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 989
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t stop client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " since tokens don\'t match. fromClient: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 971
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", fromClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 978
    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v1, :cond_5

    instance-of v3, v1, Lcom/android/server/biometrics/AuthenticationClient;

    if-eqz v3, :cond_5

    .line 982
    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 983
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove pending client ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v4}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") becuase previos client has not been cancelled done yet but user called cancel manually."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iput-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    goto :goto_1

    .line 992
    :cond_3
    if-eqz v0, :cond_5

    .line 993
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t cancel non-authenticating client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 993
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalEnumerateClient;

    if-nez v1, :cond_4

    instance-of v1, v0, Lcom/android/server/biometrics/BiometricServiceBase$InternalRemovalClient;

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v1, :cond_5

    .line 997
    invoke-virtual {v1}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 998
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

    .line 1000
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v4

    const/4 v6, 0x5

    invoke-virtual {v1, v4, v5, v6, v3}, Lcom/android/server/biometrics/ClientMonitor;->onError(JII)Z

    .line 1001
    iput-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1004
    :cond_5
    :goto_1
    return-void
.end method

.method public synthetic lambda$cancelEnrollmentInternal$1$BiometricServiceBase(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 892
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 893
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    instance-of v1, v0, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 894
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cancelling enrollment"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 897
    :cond_1
    return-void
.end method

.method public synthetic lambda$enrollInternal$0$BiometricServiceBase(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;)V
    .locals 1
    .param p1, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;

    .line 886
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 887
    return-void
.end method

.method public synthetic lambda$enumerateInternal$5$BiometricServiceBase(Lcom/android/server/biometrics/EnumerateClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/server/biometrics/EnumerateClient;

    .line 1020
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1021
    return-void
.end method

.method public synthetic lambda$removeInternal$4$BiometricServiceBase(Lcom/android/server/biometrics/RemovalClient;)V
    .locals 1
    .param p1, "client"    # Lcom/android/server/biometrics/RemovalClient;

    .line 1014
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->startClient(Lcom/android/server/biometrics/ClientMonitor;Z)V

    .line 1015
    return-void
.end method

.method protected loadAuthenticatorIds()V
    .locals 8

    .line 1280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1281
    .local v0, "t":J
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1282
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

    .line 1283
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Lcom/android/server/biometrics/BiometricServiceBase;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v4

    .line 1284
    .local v4, "userId":I
    iget-object v6, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1285
    invoke-virtual {p0, v4, v5}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 1287
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    :cond_0
    goto :goto_0

    .line 1289
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1290
    .end local v0    # "t":J
    .local v2, "t":J
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 1291
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

    .line 1293
    :cond_2
    return-void
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .line 227
    return-void
.end method

.method protected notifyLockoutResetMonitors()V
    .locals 2

    .line 1430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1431
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricServiceBase$LockoutResetMonitor;->sendLockoutReset()V

    .line 1430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1433
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 700
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->listenForUserSwitches()V

    .line 702
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mStrongAuthTracker:Lcom/android/server/biometrics/BiometricServiceBase$StrongAuthTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 704
    return-void
.end method

.method protected onStrongAuthChanged(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1510
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/android/server/biometrics/AuthenticationClient;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1515
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1516
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onStrongAuthChanged: not allow for biometric, start current authentication client"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/ClientMonitor;->stop(Z)I

    .line 1520
    :cond_1
    return-void

    .line 1512
    .end local v0    # "currentUserId":I
    :cond_2
    :goto_0
    return-void
.end method

.method protected opCheckCanStartAuthentication(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;Ljava/lang/String;)Z
    .locals 5
    .param p1, "client"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 1497
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1498
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricAllowedForUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1499
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v1

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onError(JII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1500
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

    .line 1504
    :cond_0
    return v4

    .line 1506
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected opCheckForeground(Ljava/lang/String;)Z
    .locals 6
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 1538
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->getTopRunningPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, "topActivity":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->isKeyguardGoingAway()Z

    move-result v1

    .line 1540
    .local v1, "isKeyguardGoingAway":Z
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->sIsKeyguardDone:Z

    .line 1541
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

    .line 1545
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1546
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 1547
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 1550
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method protected opStartClient(Lcom/android/server/biometrics/ClientMonitor;Z)V
    .locals 0
    .param p1, "newClient"    # Lcom/android/server/biometrics/ClientMonitor;
    .param p2, "initiatedByClient"    # Z

    .line 1492
    return-void
.end method

.method protected removeClient(Lcom/android/server/biometrics/ClientMonitor;)V
    .locals 3
    .param p1, "client"    # Lcom/android/server/biometrics/ClientMonitor;

    .line 1258
    if-eqz p1, :cond_0

    .line 1259
    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->destroy()V

    .line 1260
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eq p1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 1261
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

    .line 1262
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1261
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-eqz v0, :cond_1

    .line 1266
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mPendingClient:Lcom/android/server/biometrics/ClientMonitor;

    if-nez v0, :cond_2

    .line 1270
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->notifyClientActiveCallbacks(Z)V

    .line 1272
    :cond_2
    return-void
.end method

.method protected removeInternal(Lcom/android/server/biometrics/RemovalClient;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/biometrics/RemovalClient;

    .line 1013
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHandler:Lcom/android/server/biometrics/BiometricServiceBase$H;

    new-instance v1, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Ryp20xWMQfJ1Uis2FSiepWAsEHg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/-$$Lambda$BiometricServiceBase$Ryp20xWMQfJ1Uis2FSiepWAsEHg;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Lcom/android/server/biometrics/RemovalClient;)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/BiometricServiceBase$H;->post(Ljava/lang/Runnable;)Z

    .line 1016
    return-void
.end method

.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 708
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getConstants()Lcom/android/server/biometrics/Constants;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/biometrics/Constants;->tagHalDied()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 710
    iget v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHALDeathCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mHALDeathCount:I

    .line 711
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentUserId:I

    .line 712
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getHalDeviceId()J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/biometrics/BiometricServiceBase;->handleError(JII)V

    .line 715
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->statsModality()I

    move-result v0

    const/16 v1, 0x94

    invoke-static {v1, v0, v2}, Landroid/util/StatsLog;->write(III)I

    .line 717
    return-void
.end method

.method protected setActiveUserInternal(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1009
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->updateActiveGroup(ILjava/lang/String;)V

    .line 1010
    return-void
.end method

.method protected startCurrentClient(I)V
    .locals 3
    .param p1, "cookie"    # I

    .line 1241
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    if-nez v0, :cond_0

    .line 1242
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Trying to start null client!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void

    .line 1245
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1246
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

    .line 1247
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    .line 1248
    invoke-virtual {v2}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1245
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getCookie()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1250
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mismatched cookie"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    return-void

    .line 1253
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/BiometricServiceBase;->notifyClientActiveCallbacks(Z)V

    .line 1254
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase;->mCurrentClient:Lcom/android/server/biometrics/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->start()I

    .line 1255
    return-void
.end method

.method protected abstract statsModality()I
.end method

.method protected abstract updateActiveGroup(ILjava/lang/String;)V
.end method
