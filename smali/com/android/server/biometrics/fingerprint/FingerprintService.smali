.class public Lcom/android/server/biometrics/fingerprint/FingerprintService;
.super Lcom/android/server/biometrics/fingerprint/OpFingerprintService;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/fingerprint/FingerprintService$ServiceListenerImpl;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$BiometricPromptServiceListenerImpl;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintAuthClient;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;,
        Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.biometrics.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final DEBUG:Z = true

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final KEY_LOCKOUT_RESET_USER:Ljava/lang/String; = "lockout_reset_user"

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field protected static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

.field private mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

.field private final mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

.field mDiagnoseManager:Landroid/os/OPDiagnoseManager;

.field private final mFailedAttempts:Landroid/util/SparseIntArray;

.field private final mFingerprintConstants:Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

.field private final mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

.field protected final mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

.field private final mTimedLockoutCleared:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 845
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;-><init>(Landroid/content/Context;)V

    .line 662
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    invoke-direct {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintConstants;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintConstants:Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    .line 663
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 671
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    .line 672
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mResetFailedAttemptsForCurrentUserRunnable:Lcom/android/server/biometrics/fingerprint/FingerprintService$ResetFailedAttemptsForUserRunnable;

    .line 678
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

    .line 780
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    .line 846
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 847
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    .line 848
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 849
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mLockoutReceiver:Lcom/android/server/biometrics/fingerprint/FingerprintService$LockoutReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutBroadcastPermission()Ljava/lang/String;

    move-result-object v3

    .line 849
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 854
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "opdiagnose"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/OPDiagnoseManager;

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    .line 856
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/fingerprint/FingerprintService;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->resetFailedAttemptsForUser(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isStrongBiometric()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;
    .param p2, "x2"    # I

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->enrollInternal(Lcom/android/server/biometrics/BiometricServiceBase$EnrollClientImpl;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelEnrollmentInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .line 101
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->authenticateInternal(Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;JLjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startCurrentClient(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .line 101
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelAuthenticationInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->setActiveUserInternal(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/RemovalClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/RemovalClient;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->removeInternal(Lcom/android/server/biometrics/RemovalClient;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isRestricted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/EnumerateClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/biometrics/EnumerateClient;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->enumerateInternal(Lcom/android/server/biometrics/EnumerateClient;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->scheduleLockoutResetForUser(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4101(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;

    .line 101
    invoke-super {p0, p1}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$4600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getPendingClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startPreEnroll(Landroid/os/IBinder;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$6000(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->initConfiguredStrengthInternal(I)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->isStrongBiometric()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7001(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->handleEnumerate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Lcom/android/server/biometrics/ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7201(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->handleRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$7301(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->handleError(JII)V

    return-void
.end method

.method static synthetic access$7402(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 101
    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/android/server/biometrics/fingerprint/FingerprintService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # J

    .line 101
    iput-wide p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide p1
.end method

.method static synthetic access$7602(Lcom/android/server/biometrics/fingerprint/FingerprintService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # I

    .line 101
    iput p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$7701(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->handleAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$7801(Lcom/android/server/biometrics/fingerprint/FingerprintService;JII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->handleAcquired(JII)V

    return-void
.end method

.method static synthetic access$7901(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "x2"    # I

    .line 101
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->handleEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/fingerprint/FingerprintService;Landroid/os/IBinder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/fingerprint/FingerprintService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method private cancelLockoutResetForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1198
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1199
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1225
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1227
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v1, "service"

    const-string v2, "Fingerprint Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1229
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1230
    .local v1, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1231
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 1232
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 1233
    .local v5, "N":I
    iget-object v6, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1234
    .local v6, "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    iget-object v7, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1235
    .local v7, "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1236
    .local v8, "set":Lorg/json/JSONObject;
    const-string v9, "id"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1237
    const-string v9, "count"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1238
    const-string v9, "accept"

    const/4 v10, 0x0

    if-eqz v6, :cond_0

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_1

    :cond_0
    move v11, v10

    :goto_1
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1239
    const-string/jumbo v9, "reject"

    if-eqz v6, :cond_1

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_2

    :cond_1
    move v11, v10

    :goto_2
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1240
    const-string v9, "acquire"

    if-eqz v6, :cond_2

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_3

    :cond_2
    move v11, v10

    :goto_3
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1241
    const-string/jumbo v9, "lockout"

    if-eqz v6, :cond_3

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_4

    :cond_3
    move v11, v10

    :goto_4
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1242
    const-string/jumbo v9, "permanentLockout"

    if-eqz v6, :cond_4

    iget v11, v6, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_5

    :cond_4
    move v11, v10

    :goto_5
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1245
    const-string v9, "acceptCrypto"

    if-eqz v7, :cond_5

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    goto :goto_6

    :cond_5
    move v11, v10

    :goto_6
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1246
    const-string/jumbo v9, "rejectCrypto"

    if-eqz v7, :cond_6

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    goto :goto_7

    :cond_6
    move v11, v10

    :goto_7
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1247
    const-string v9, "acquireCrypto"

    if-eqz v7, :cond_7

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    goto :goto_8

    :cond_7
    move v11, v10

    :goto_8
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1248
    const-string/jumbo v9, "lockoutCrypto"

    if-eqz v7, :cond_8

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    goto :goto_9

    :cond_8
    move v11, v10

    :goto_9
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1249
    const-string/jumbo v9, "permanentLockoutCrypto"

    .line 1250
    if-eqz v7, :cond_9

    iget v11, v7, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    goto :goto_a

    :cond_9
    move v11, v10

    .line 1249
    :goto_a
    invoke-virtual {v8, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1253
    sget-boolean v9, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_a

    const-string/jumbo v9, "mFailedAttempts"

    iget-object v11, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v4, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1255
    :cond_a
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1256
    nop

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userId":I
    .end local v5    # "N":I
    .end local v6    # "stats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v7    # "cryptoStats":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v8    # "set":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 1258
    :cond_b
    const-string/jumbo v2, "prints"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    nop

    .end local v1    # "sets":Lorg/json/JSONArray;
    goto :goto_b

    .line 1259
    :catch_0
    move-exception v1

    .line 1260
    .local v1, "e":Lorg/json/JSONException;
    const-string v2, "FingerprintService"

    const-string v3, "dump formatting failure"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1263
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_b
    invoke-super {p0, p1}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->dump(Ljava/io/PrintWriter;)V

    .line 1265
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAL deaths since last reboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHALDeathCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1267
    return-void
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1270
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1271
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1272
    .local v4, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 1274
    .local v5, "userId":I
    const-wide v6, 0x20b00000001L

    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1276
    .local v6, "userToken":J
    const-wide v8, 0x10500000001L

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1277
    nop

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-interface {v10, v11, v5}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 1277
    const-wide v11, 0x10500000002L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1281
    iget-object v10, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1282
    .local v10, "normal":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    if-eqz v10, :cond_0

    .line 1283
    const-wide v13, 0x10b00000003L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1284
    .local v13, "countsToken":J
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    invoke-virtual {v1, v8, v9, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1285
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1286
    iget v15, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    const-wide v11, 0x10500000003L

    invoke-virtual {v1, v11, v12, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1287
    iget v11, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v8, 0x10500000004L

    invoke-virtual {v1, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1288
    iget v8, v10, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    const-wide v11, 0x10500000005L

    invoke-virtual {v1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1289
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1294
    .end local v13    # "countsToken":J
    :cond_0
    iget-object v8, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;

    .line 1295
    .local v8, "crypto":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    if-eqz v8, :cond_1

    .line 1296
    const-wide v11, 0x10b00000004L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1297
    .local v11, "countsToken":J
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->accept:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1298
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->reject:I

    const-wide v13, 0x10500000002L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1299
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->acquire:I

    const-wide v13, 0x10500000003L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1300
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->lockout:I

    const-wide v13, 0x10500000004L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1301
    iget v9, v8, Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;->permanentLockout:I

    const-wide v13, 0x10500000005L

    invoke-virtual {v1, v13, v14, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1302
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1305
    .end local v11    # "countsToken":J
    :cond_1
    invoke-virtual {v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1306
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    .end local v6    # "userToken":J
    .end local v8    # "crypto":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    .end local v10    # "normal":Lcom/android/server/biometrics/BiometricServiceBase$PerformanceStats;
    goto/16 :goto_0

    .line 1307
    :cond_2
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1308
    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1309
    iget-object v3, v0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1310
    return-void
.end method

.method private getCurrentAuthClient()Ljava/lang/String;
    .locals 2

    .line 1072
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentClient()Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    .line 1073
    .local v0, "client":Lcom/android/server/biometrics/ClientMonitor;
    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {v0}, Lcom/android/server/biometrics/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1077
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private declared-synchronized getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 7

    monitor-enter p0

    .line 1107
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez v0, :cond_2

    .line 1108
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "mDaemon was null, reconnect to fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    :try_start_1
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    goto :goto_0

    .line 1113
    .end local p0    # "this":Lcom/android/server/biometrics/fingerprint/FingerprintService;
    :catch_0
    move-exception v0

    .line 1114
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "FingerprintService"

    const-string v2, "Failed to get biometric interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1111
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1115
    nop

    .line 1116
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1117
    const-string v0, "FingerprintService"

    const-string v2, "fingerprint HIDL not available"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1118
    monitor-exit p0

    return-object v1

    .line 1121
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-interface {v0, p0, v2, v3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1124
    :try_start_4
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_2/IBiometricsFingerprintClientCallback;

    invoke-interface {v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1128
    goto :goto_1

    .line 1125
    :catch_2
    move-exception v0

    .line 1126
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "FingerprintService"

    const-string v5, "Failed to open fingerprint HAL"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1127
    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 1130
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const-string v0, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fingerprint HAL id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    iget-wide v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 1132
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->loadAuthenticatorIds()V

    .line 1133
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    .line 1134
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->doTemplateCleanupForUser(I)V

    goto :goto_2

    .line 1136
    :cond_1
    const-string v0, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fingerprintd_openhal_error"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1138
    iput-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 1141
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_2

    .line 1142
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_FP_HW_ERROR:I

    invoke-virtual {v0, v1, v3}, Landroid/os/OPDiagnoseManager;->addIssueCount(II)Z

    .line 1143
    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_FP_HW_ERROR:I

    const-string v1, "FP_HW_ERROR"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->recordOPDiagnoseEvent(ILjava/lang/String;Z)V

    .line 1148
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "userId"    # I

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "lockout_reset_user"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1219
    const/high16 v2, 0x8000000

    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$YOMIOLvco2SvXVeJIulOSVKdX7A(Lcom/android/server/biometrics/fingerprint/FingerprintService;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object p0

    return-object p0
.end method

.method private recordOPDiagnoseEvent(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "savediaglog"    # Z

    .line 1314
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {v0, p1, p2}, Landroid/os/OPDiagnoseManager;->writeDiagData(ILjava/lang/String;)Z

    .line 1316
    if-eqz p3, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    invoke-virtual {v0, p1}, Landroid/os/OPDiagnoseManager;->saveDiagLog(I)Z

    goto :goto_0

    .line 1320
    :cond_0
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "mDiagnoseManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_1
    :goto_0
    return-void
.end method

.method private resetFailedAttemptsForUser(ZI)V
    .locals 3
    .param p1, "clearAttemptCounter"    # Z
    .param p2, "userId"    # I

    .line 1183
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset biometric lockout, clearAttemptCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_0
    if-eqz p1, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1192
    invoke-direct {p0, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->cancelLockoutResetForUser(I)V

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    .line 1194
    return-void
.end method

.method private scheduleLockoutResetForUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 1208
    iget-boolean v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "schedule lockout reset not supported!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 1212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    .line 1213
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getLockoutResetIntentForUser(I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1211
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1216
    :goto_0
    return-void
.end method

.method private startPostEnroll(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1166
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1167
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v1, 0x0

    const-string v2, "FingerprintService"

    if-nez v0, :cond_0

    .line 1168
    const-string/jumbo v3, "startPostEnroll: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    return v1

    .line 1172
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1173
    :catch_0
    move-exception v3

    .line 1174
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "startPostEnroll failed"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1176
    .end local v3    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method private startPreEnroll(Landroid/os/IBinder;)J
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1152
    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 1153
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const-wide/16 v1, 0x0

    const-string v3, "FingerprintService"

    if-nez v0, :cond_0

    .line 1154
    const-string/jumbo v4, "startPreEnroll: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-wide v1

    .line 1158
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 1159
    :catch_0
    move-exception v4

    .line 1160
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "startPreEnroll failed"

    invoke-static {v3, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1162
    .end local v4    # "e":Landroid/os/RemoteException;
    return-wide v1
.end method


# virtual methods
.method protected checkAppOps(ILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 1019
    const/4 v0, 0x0

    .line 1020
    .local v0, "appOpsOk":Z
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x4e

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1022
    const/4 v0, 0x1

    goto :goto_0

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x37

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1025
    const/4 v0, 0x1

    .line 1027
    :cond_1
    :goto_0
    return v0
.end method

.method protected checkUseBiometricPermission()V
    .locals 2

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    const-string v0, "android.permission.USE_BIOMETRIC"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1015
    :cond_0
    return-void
.end method

.method protected getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;
    .locals 1

    .line 877
    invoke-static {}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    move-result-object v0

    return-object v0
.end method

.method protected getConstants()Lcom/android/server/biometrics/Constants;
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFingerprintConstants:Lcom/android/server/biometrics/fingerprint/FingerprintConstants;

    return-object v0
.end method

.method protected getDaemonWrapper()Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;
    .locals 1

    .line 872
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemonWrapper:Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;

    return-object v0
.end method

.method protected getEnrolledTemplates(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 1032
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1033
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getHalDeviceId()J
    .locals 2

    .line 986
    iget-wide v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method protected getLockoutBroadcastPermission()Ljava/lang/String;
    .locals 1

    .line 981
    const-string v0, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    return-object v0
.end method

.method protected getLockoutMode()I
    .locals 4

    .line 1088
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1089
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1094
    .local v1, "failedAttempts":I
    iget-boolean v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->IS_SUPPORT_CUSTOM_FINGERPRINT:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    const/16 v3, 0x14

    :goto_0
    if-lt v1, v3, :cond_1

    .line 1096
    const/4 v2, 0x2

    return v2

    .line 1097
    :cond_1
    if-lez v1, :cond_2

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mTimedLockoutCleared:Landroid/util/SparseBooleanArray;

    .line 1098
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_2

    rem-int/lit8 v3, v1, 0x5

    if-nez v3, :cond_2

    .line 1100
    const/4 v2, 0x1

    return v2

    .line 1102
    :cond_2
    return v2
.end method

.method protected getLockoutResetIntent()Ljava/lang/String;
    .locals 1

    .line 976
    const-string v0, "com.android.server.biometrics.fingerprint.ACTION_LOCKOUT_RESET"

    return-object v0
.end method

.method protected getManageBiometricPermission()Ljava/lang/String;
    .locals 1

    .line 1006
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 867
    const-string v0, "FingerprintService"

    return-object v0
.end method

.method protected hasEnrolledBiometrics(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 995
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 996
    .local v0, "callingUserId":I
    if-eq p1, v0, :cond_0

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_0

    .line 999
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 1001
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getBiometricUtils()Lcom/android/server/biometrics/BiometricUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/server/biometrics/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected hasReachedEnrollmentLimit(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 887
    invoke-virtual {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 889
    .local v0, "limit":I
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getEnrolledTemplates(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 890
    .local v1, "enrolled":I
    if-lt v1, v0, :cond_0

    .line 891
    const-string v2, "FingerprintService"

    const-string v3, "Too many fingerprints registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v2, 0x1

    return v2

    .line 894
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method protected notifyClientActiveCallbacks(Z)V
    .locals 6
    .param p1, "isActive"    # Z

    .line 1040
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1046
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1047
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1050
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v3, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V

    .line 1052
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getCurrentAuthClient()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChangedWithPkg(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1066
    goto :goto_1

    .line 1054
    :catch_0
    move-exception v3

    .line 1056
    .local v3, "re":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1059
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyClient remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FingerprintService"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v1, :cond_0

    .line 1061
    const-string/jumbo v4, "notify next client"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    add-int/lit8 v1, v1, -0x1

    .line 1063
    add-int/lit8 v2, v2, -0x1

    .line 1047
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1068
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 860
    invoke-super {p0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->onStart()V

    .line 861
    new-instance v0, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;Lcom/android/server/biometrics/fingerprint/FingerprintService$1;)V

    const-string v1, "fingerprint"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 862
    new-instance v0, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$YOMIOLvco2SvXVeJIulOSVKdX7A;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/fingerprint/-$$Lambda$FingerprintService$YOMIOLvco2SvXVeJIulOSVKdX7A;-><init>(Lcom/android/server/biometrics/fingerprint/FingerprintService;)V

    const-string v1, "FingerprintService.onStart"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 863
    return-void
.end method

.method public serviceDied(J)V
    .locals 3
    .param p1, "cookie"    # J

    .line 899
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->serviceDied(J)V

    .line 900
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    .line 903
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mDiagnoseManager:Landroid/os/OPDiagnoseManager;

    if-eqz v0, :cond_0

    .line 904
    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_FP_DIE:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/OPDiagnoseManager;->addIssueCount(II)Z

    .line 905
    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_FP_DIE:I

    const-string v1, "FP_DIE"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->recordOPDiagnoseEvent(ILjava/lang/String;Z)V

    .line 908
    :cond_0
    return-void
.end method

.method protected statsModality()I
    .locals 1

    .line 1083
    const/4 v0, 0x1

    return v0
.end method

.method protected updateActiveGroup(ILjava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 912
    const-string v0, "FingerprintService"

    invoke-direct {p0}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v1

    .line 914
    .local v1, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    if-eqz v1, :cond_7

    .line 916
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v2

    move p1, v2

    .line 919
    const/16 v2, 0x3e7

    if-ne p1, v2, :cond_0

    .line 921
    const-string/jumbo v2, "updateActiveGroup: parallel apps uid 999, force set to 0"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 p1, 0x0

    .line 926
    :cond_0
    iget v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v2, :cond_5

    .line 927
    sget v2, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    .line 928
    .local v2, "firstSdkInt":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 929
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "First SDK version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is invalid; must be at least VERSION_CODES.BASE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_1
    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x3a

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 938
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    .local v3, "baseDir":Ljava/io/File;
    goto :goto_0

    .line 940
    .end local v3    # "baseDir":Ljava/io/File;
    :cond_2
    invoke-static {p1}, Landroid/os/Environment;->getDataVendorDeDirectory(I)Ljava/io/File;

    move-result-object v3

    .line 943
    .restart local v3    # "baseDir":Ljava/io/File;
    :goto_0
    new-instance v4, Ljava/io/File;

    const-string v5, "fpdata"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 944
    .local v4, "fpDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 945
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_3

    .line 946
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot make directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    return-void

    .line 952
    :cond_3
    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 953
    const-string v5, "Restorecons failed. Directory will have wrong label."

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    return-void

    .line 957
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setActiveGroup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, p1, v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    .line 959
    iput p1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 961
    .end local v2    # "firstSdkInt":I
    .end local v3    # "baseDir":Ljava/io/File;
    .end local v4    # "fpDir":Ljava/io/File;
    :cond_5
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 962
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/fingerprint/FingerprintService;->hasEnrolledBiometrics(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v4

    goto :goto_1

    :cond_6
    const-wide/16 v4, 0x0

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 961
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    goto :goto_2

    .line 967
    :catch_0
    move-exception v2

    .line 969
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to setActiveGroup():"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_2
    return-void
.end method
