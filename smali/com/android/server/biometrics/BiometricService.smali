.class public Lcom/android/server/biometrics/BiometricService;
.super Lcom/android/server/SystemService;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/BiometricService$Injector;,
        Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;,
        Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;,
        Lcom/android/server/biometrics/BiometricService$SettingObserver;,
        Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;,
        Lcom/android/server/biometrics/BiometricService$AuthSession;,
        Lcom/android/server/biometrics/BiometricService$BiometricStatus;
    }
.end annotation


# static fields
.field private static final BIOMETRIC_DISABLED_BY_DEVICE_POLICY:I = 0x2

.field private static final BIOMETRIC_HARDWARE_NOT_DETECTED:I = 0x5

.field private static final BIOMETRIC_INSUFFICIENT_STRENGTH:I = 0x3

.field private static final BIOMETRIC_INSUFFICIENT_STRENGTH_AFTER_DOWNGRADE:I = 0x4

.field private static final BIOMETRIC_NOT_ENABLED_FOR_APPS:I = 0x7

.field private static final BIOMETRIC_NOT_ENROLLED:I = 0x6

.field private static final BIOMETRIC_NO_HARDWARE:I = 0x0

.field private static final BIOMETRIC_OK:I = 0x1

.field private static final DEBUG:Z = true

.field private static final MSG_AUTHENTICATE:I = 0x9

.field private static final MSG_CANCEL_AUTHENTICATION:I = 0xa

.field private static final MSG_CLIENT_DIED:I = 0xe

.field private static final MSG_ON_ACQUIRED:I = 0x5

.field private static final MSG_ON_AUTHENTICATION_REJECTED:I = 0x3

.field private static final MSG_ON_AUTHENTICATION_SUCCEEDED:I = 0x2

.field private static final MSG_ON_AUTHENTICATION_TIMED_OUT:I = 0xb

.field private static final MSG_ON_DEVICE_CREDENTIAL_PRESSED:I = 0xc

.field private static final MSG_ON_DISMISSED:I = 0x6

.field private static final MSG_ON_ERROR:I = 0x4

.field private static final MSG_ON_READY_FOR_AUTHENTICATION:I = 0x8

.field private static final MSG_ON_SYSTEM_EVENT:I = 0xd

.field private static final MSG_ON_TRY_AGAIN_PRESSED:I = 0x7

.field static final STATE_AUTHENTICATED_PENDING_SYSUI:I = 0x6

.field static final STATE_AUTH_CALLED:I = 0x1

.field static final STATE_AUTH_IDLE:I = 0x0

.field static final STATE_AUTH_PAUSED:I = 0x3

.field static final STATE_AUTH_PENDING_CONFIRM:I = 0x5

.field static final STATE_AUTH_STARTED:I = 0x2

.field static final STATE_CLIENT_DIED_CANCELLING:I = 0x9

.field static final STATE_ERROR_PENDING_SYSUI:I = 0x7

.field static final STATE_SHOWING_DEVICE_CREDENTIAL:I = 0x8

.field static final TAG:Ljava/lang/String; = "BiometricService"


# instance fields
.field final mAuthenticators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

.field mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mEnabledOnKeyguardCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field final mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

.field private final mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

.field final mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field mKeyStore:Landroid/security/KeyStore;

.field mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

.field private final mRandom:Ljava/util/Random;

.field final mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mTrustManager:Landroid/app/trust/ITrustManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 997
    new-instance v0, Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/BiometricService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/BiometricService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;)V

    .line 998
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1002
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 262
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    .line 284
    new-instance v0, Lcom/android/server/biometrics/BiometricService$1;

    .line 285
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$1;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 602
    new-instance v0, Lcom/android/server/biometrics/BiometricService$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$2;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    .line 1004
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1005
    nop

    .line 1006
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1007
    new-instance v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    .line 1009
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getSettingObserver(Landroid/content/Context;Landroid/os/Handler;Ljava/util/List;)Lcom/android/server/biometrics/BiometricService$SettingObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 1013
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/biometrics/BiometricService$Injector;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricService$3;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/BiometricService$3;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    const-class v2, Lcom/android/server/biometrics/BiometricService;

    .line 1020
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1013
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    goto :goto_0

    .line 1022
    :catch_0
    move-exception v0

    .line 1023
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BiometricService"

    const-string v2, "Failed to register user switch observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1025
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/BiometricService;)Ljava/util/Random;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 80
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/biometrics/BiometricService;Z[BZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [B
    .param p3, "x3"    # Z

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(Z[BZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/BiometricService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationTimedOut(III)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 80
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleOnDeviceCredentialPressed()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/BiometricService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleOnSystemEvent(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 80
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleClientDied()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 80
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 80
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->checkInternalPermission()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/BiometricService;ILandroid/os/Bundle;Ljava/lang/String;Z)Landroid/util/Pair;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->checkAndGetAuthenticators(ILandroid/os/Bundle;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricService$Injector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 80
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 80
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationRejected()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/BiometricService;IIII)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->handleOnError(IIII)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnAcquired(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/BiometricService;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(I[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;

    .line 80
    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleOnTryAgainPressed()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/BiometricService;IZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnReadyForAuthentication(IZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Landroid/os/Bundle;
    .param p8, "x7"    # I
    .param p9, "x8"    # I
    .param p10, "x9"    # I

    .line 80
    invoke-direct/range {p0 .. p10}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;III)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 80
    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricService;->handleCancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;III)V

    return-void
.end method

.method private authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIII)V
    .locals 30
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "callingUserId"    # I
    .param p11, "modality"    # I

    .line 1800
    move-object/from16 v15, p0

    move-object/from16 v14, p7

    move/from16 v13, p11

    const-string/jumbo v0, "require_confirmation"

    const/4 v12, 0x1

    invoke-virtual {v14, v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1802
    .local v0, "requireConfirmation":Z
    and-int/lit8 v1, v13, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1804
    if-nez v0, :cond_1

    iget-object v1, v15, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    .line 1805
    move/from16 v11, p4

    invoke-virtual {v1, v11}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceAlwaysRequireConfirmation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 1804
    :cond_1
    move/from16 v11, p4

    .line 1805
    :goto_0
    move v1, v12

    :goto_1
    move v0, v1

    move/from16 v25, v0

    goto :goto_2

    .line 1802
    :cond_2
    move/from16 v11, p4

    move/from16 v25, v0

    .line 1811
    .end local v0    # "requireConfirmation":Z
    .local v25, "requireConfirmation":Z
    :goto_2
    iget-object v0, v15, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v10, v0, 0x1

    .line 1812
    .local v10, "cookie":I
    const-string v0, "authenticators_allowed"

    invoke-virtual {v14, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1814
    .local v9, "authenticators":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating auth session. Modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", authenticators: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "BiometricService"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    .line 1821
    .local v7, "modalities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const v0, -0x8001

    and-int/2addr v0, v9

    if-eqz v0, :cond_3

    .line 1822
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1824
    :cond_3
    new-instance v0, Lcom/android/server/biometrics/BiometricService$AuthSession;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v7

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v26, v7

    .end local v7    # "modalities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v26, "modalities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move/from16 v7, p4

    move-object/from16 v27, v8

    move-object/from16 v8, p5

    move/from16 v28, v9

    .end local v9    # "authenticators":I
    .local v28, "authenticators":I
    move-object/from16 v9, p6

    move/from16 v29, v10

    .end local v10    # "cookie":I
    .local v29, "cookie":I
    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, v25

    invoke-direct/range {v1 .. v15}, Lcom/android/server/biometrics/BiometricService$AuthSession;-><init>(Lcom/android/server/biometrics/BiometricService;Ljava/util/HashMap;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIIZ)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1829
    const v2, 0x8000

    move/from16 v3, v28

    .end local v28    # "authenticators":I
    .local v3, "authenticators":I
    if-ne v3, v2, :cond_4

    .line 1830
    const/16 v2, 0x8

    :try_start_0
    iput v2, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1831
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1832
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1834
    iget-object v4, v1, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v5, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v9, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v10, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v13, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSysUiSessionId:I

    move-wide/from16 v11, p2

    invoke-interface/range {v4 .. v13}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZILjava/lang/String;JI)V

    move/from16 v5, p11

    goto :goto_4

    .line 1844
    :cond_4
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1845
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 1847
    .local v2, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget v4, v2, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v5, p11

    if-ne v4, v5, :cond_5

    .line 1848
    :try_start_1
    iget-object v13, v2, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move/from16 v14, v25

    move-object/from16 v15, p1

    move-wide/from16 v16, p2

    move/from16 v18, p4

    move-object/from16 v19, v0

    move-object/from16 v20, p6

    move/from16 v21, v29

    move/from16 v22, p8

    move/from16 v23, p9

    move/from16 v24, p10

    invoke-interface/range {v13 .. v24}, Landroid/hardware/biometrics/IBiometricAuthenticator;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1851
    goto :goto_4

    .line 1855
    .end local v2    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 1853
    :cond_5
    goto :goto_3

    .line 1845
    :cond_6
    move/from16 v5, p11

    .line 1857
    :goto_4
    goto :goto_6

    .line 1855
    :catch_1
    move-exception v0

    move/from16 v5, p11

    .line 1856
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    const-string v2, "Unable to start authentication"

    move-object/from16 v4, v27

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1858
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6
    return-void
.end method

.method private static biometricStatusToBiometricConstant(I)I
    .locals 3
    .param p0, "status"    # I

    .line 1074
    const/16 v0, 0xc

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    .line 1092
    return v1

    .line 1088
    :cond_0
    const/16 v0, 0xb

    return v0

    .line 1084
    :cond_1
    const/16 v0, 0xf

    return v0

    .line 1082
    :cond_2
    return v0

    .line 1078
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 1076
    :cond_4
    return v0
.end method

.method private checkAndGetAuthenticators(ILandroid/os/Bundle;Ljava/lang/String;Z)Landroid/util/Pair;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "checkDevicePolicyManager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1168
    move-object/from16 v6, p0

    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->isBiometricRequested(Landroid/os/Bundle;)Z

    move-result v7

    .line 1169
    .local v7, "biometricRequested":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(Landroid/os/Bundle;)Z

    move-result v8

    .line 1171
    .local v8, "credentialRequested":Z
    iget-object v0, v6, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    move/from16 v9, p1

    invoke-interface {v0, v9}, Landroid/app/trust/ITrustManager;->isDeviceSecure(I)Z

    move-result v10

    .line 1179
    .local v10, "credentialOk":Z
    const/4 v0, 0x0

    .line 1180
    .local v0, "firstBiometricModality":I
    const/4 v1, 0x0

    .line 1182
    .local v1, "firstBiometricStatus":I
    const/4 v11, 0x0

    .line 1183
    .local v11, "biometricModality":I
    const/4 v2, 0x0

    .line 1185
    .local v2, "biometricStatus":I
    iget-object v3, v6, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v0

    move v14, v1

    move v15, v2

    .end local v0    # "firstBiometricModality":I
    .end local v1    # "firstBiometricStatus":I
    .end local v2    # "biometricStatus":I
    .local v13, "firstBiometricModality":I
    .local v14, "firstBiometricStatus":I
    .local v15, "biometricStatus":I
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v5, "BiometricService"

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 1186
    .local v3, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    invoke-static/range {p2 .. p2}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(Landroid/os/Bundle;)I

    move-result v16

    .line 1187
    .local v16, "requestedStrength":I
    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, p1

    move-object v6, v3

    .end local v3    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .local v6, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    move-object/from16 v3, p3

    move v9, v4

    move/from16 v4, p4

    move-object v9, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService;->getStatusForBiometricAuthenticator(Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;ILjava/lang/String;ZI)Landroid/util/Pair;

    move-result-object v0

    .line 1191
    .local v0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 1193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Authenticator ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Modality: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Reported Modality: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    if-nez v13, :cond_0

    .line 1200
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1201
    .end local v13    # "firstBiometricModality":I
    .local v1, "firstBiometricModality":I
    move v3, v15

    move v13, v1

    move v14, v3

    .line 1204
    .end local v1    # "firstBiometricModality":I
    .restart local v13    # "firstBiometricModality":I
    :cond_0
    const/4 v1, 0x1

    if-ne v15, v1, :cond_1

    .line 1205
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1206
    goto :goto_1

    .line 1208
    .end local v0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .end local v16    # "requestedStrength":I
    :cond_1
    move-object/from16 v6, p0

    move/from16 v9, p1

    goto/16 :goto_0

    .line 1185
    :cond_2
    move-object/from16 v2, p3

    move-object v9, v5

    .line 1210
    :goto_1
    const/4 v0, 0x0

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 1211
    if-nez v10, :cond_4

    const/4 v1, 0x1

    if-ne v15, v1, :cond_3

    goto :goto_2

    .line 1220
    :cond_3
    new-instance v0, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0xb

    .line 1221
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1220
    return-object v0

    .line 1212
    :cond_4
    :goto_2
    const/4 v1, 0x1

    if-eq v15, v1, :cond_5

    .line 1215
    const v1, 0x8000

    const-string v3, "authenticators_allowed"

    move-object/from16 v4, p2

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 1212
    :cond_5
    move-object/from16 v4, p2

    .line 1218
    :goto_3
    new-instance v1, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 1210
    :cond_6
    move-object/from16 v4, p2

    .line 1223
    if-eqz v7, :cond_8

    .line 1224
    const/4 v0, 0x1

    if-ne v15, v0, :cond_7

    .line 1225
    new-instance v0, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1226
    invoke-static {v15}, Lcom/android/server/biometrics/BiometricService;->biometricStatusToBiometricConstant(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1225
    return-object v0

    .line 1228
    :cond_7
    new-instance v0, Landroid/util/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1229
    invoke-static {v14}, Lcom/android/server/biometrics/BiometricService;->biometricStatusToBiometricConstant(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1228
    return-object v0

    .line 1231
    :cond_8
    if-eqz v8, :cond_a

    .line 1232
    if-eqz v10, :cond_9

    .line 1233
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 1235
    :cond_9
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0xe

    .line 1236
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1235
    return-object v1

    .line 1241
    :cond_a
    const-string v1, "No authenticators requested"

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private checkInternalPermission()V
    .locals 3

    .line 910
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method private getStatusForBiometricAuthenticator(Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;ILjava/lang/String;ZI)Landroid/util/Pair;
    .locals 6
    .param p1, "authenticator"    # Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "checkDevicePolicyManager"    # Z
    .param p5, "requestedStrength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;",
            "I",
            "Ljava/lang/String;",
            "ZI)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1109
    const/4 v0, 0x0

    .line 1111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1109
    if-eqz p4, :cond_0

    .line 1110
    iget v1, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/biometrics/BiometricService;->isBiometricDisabledByDevicePolicy(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 1115
    :cond_0
    iget v1, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->OEMStrength:I

    .line 1116
    invoke-static {v1, p5}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v1

    .line 1117
    .local v1, "wasStrongEnough":Z
    nop

    .line 1118
    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->getActualStrength()I

    move-result v2

    invoke-static {v2, p5}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v2

    .line 1120
    .local v2, "isStrongEnough":Z
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 1121
    new-instance v0, Landroid/util/Pair;

    iget v3, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    .line 1122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1121
    return-object v0

    .line 1123
    :cond_1
    if-nez v1, :cond_2

    .line 1124
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 1128
    :cond_2
    const/4 v3, 0x5

    :try_start_0
    iget-object v4, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v4, p3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->isHardwareDetected(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1129
    new-instance v0, Landroid/util/Pair;

    iget v4, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1132
    :cond_3
    iget-object v4, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v4, p2, p3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1133
    new-instance v0, Landroid/util/Pair;

    iget v4, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1137
    :cond_4
    nop

    .line 1139
    iget v3, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-direct {p0, v3, p2}, Lcom/android/server/biometrics/BiometricService;->isEnabledForApp(II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1140
    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 1143
    :cond_5
    new-instance v0, Landroid/util/Pair;

    iget v3, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/util/Pair;

    iget v5, p1, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private handleAuthenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;III)V
    .locals 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sessionId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "callingUserId"    # I

    .line 1767
    move-object v12, p0

    iget-object v13, v12, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p7

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p5

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$IIHhqSKogJZG56VmePRbTOf_5qo;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Bundle;ILjava/lang/String;Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;III)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1786
    return-void
.end method

.method private handleAuthenticationRejected()V
    .locals 4

    .line 1374
    const-string v0, "BiometricService"

    const-string v1, "handleAuthenticationRejected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_0

    .line 1379
    const-string v1, "handleAuthenticationRejected: Auth session is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    return-void

    .line 1383
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 1387
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 1390
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1393
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    goto :goto_0

    .line 1394
    :catch_0
    move-exception v1

    .line 1395
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1397
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handleAuthenticationSucceeded(Z[BZ)V
    .locals 4
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # [B
    .param p3, "isStrongBiometric"    # Z

    .line 1343
    const-string v0, "BiometricService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_0

    .line 1344
    const-string v1, "handleAuthenticationSucceeded: Auth session is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    return-void

    .line 1348
    :cond_0
    if-eqz p3, :cond_1

    .line 1351
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object p2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    goto :goto_0

    .line 1353
    :cond_1
    if-eqz p2, :cond_2

    .line 1354
    const-string v1, "Dropping authToken for non-strong biometric"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 1359
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x6

    iput v2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    goto :goto_1

    .line 1361
    :cond_3
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2002(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J

    .line 1362
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x5

    iput v2, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1367
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    goto :goto_2

    .line 1368
    :catch_0
    move-exception v1

    .line 1369
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1371
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private handleAuthenticationTimedOut(III)V
    .locals 4
    .param p1, "modality"    # I
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I

    .line 1400
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1401
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1400
    const-string v2, "handleAuthenticationTimedOut(%d, %d, %d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_0

    .line 1406
    const-string v0, "handleAuthenticationTimedOut: Auth session is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    return-void

    .line 1410
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 1411
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v0, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    goto :goto_0

    .line 1412
    :catch_0
    move-exception v0

    .line 1413
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Remote exception"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1415
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handleCancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I

    .line 1862
    const-string v0, "BiometricService"

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_2

    .line 1867
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1873
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1878
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1879
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1880
    :catch_0
    move-exception v1

    .line 1881
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1882
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 1884
    :cond_1
    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 1887
    :goto_1
    return-void

    .line 1863
    :cond_2
    :goto_2
    const-string v1, "Unable to cancel, one or more null arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    return-void
.end method

.method private handleClientDied()V
    .locals 9

    .line 1654
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_0

    .line 1655
    const-string v0, "Auth session null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    return-void

    .line 1659
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SysUiSessionId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSysUiSessionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " State: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1666
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/16 v2, 0x9

    iput v2, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1667
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v5, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v7, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    goto :goto_0

    .line 1675
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V

    .line 1676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1680
    :goto_0
    goto :goto_1

    .line 1678
    :catch_0
    move-exception v0

    .line 1679
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private handleOnAcquired(ILjava/lang/String;)V
    .locals 3
    .param p1, "acquiredInfo"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1513
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_0

    .line 1514
    const-string/jumbo v0, "onAcquired(): Auth session is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void

    .line 1518
    :cond_0
    if-nez p2, :cond_1

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring null message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    return-void

    .line 1523
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricHelp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    goto :goto_0

    .line 1524
    :catch_0
    move-exception v0

    .line 1525
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1527
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handleOnDeviceCredentialPressed()V
    .locals 9

    .line 1617
    const-string v0, "BiometricService"

    const-string/jumbo v1, "onDeviceCredentialPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_0

    .line 1619
    const-string v1, "Auth session null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    return-void

    .line 1625
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1626
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    const/4 v8, 0x0

    .line 1625
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 1629
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1630
    return-void
.end method

.method private handleOnDismissed(I[B)V
    .locals 12
    .param p1, "reason"    # I
    .param p2, "credentialAttestation"    # [B

    .line 1530
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_0

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDismissed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", auth session null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    return-void

    .line 1535
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->logDialogDismissed(I)V

    .line 1538
    packed-switch p1, :pswitch_data_0

    .line 1588
    goto/16 :goto_2

    .line 1540
    :pswitch_0
    if-eqz p2, :cond_1

    .line 1541
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->addAuthToken([B)I

    goto :goto_0

    .line 1543
    :cond_1
    const-string v0, "Credential confirmed but attestation is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1580
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mErrorEscrow:I

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mVendorCodeEscrow:I

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1585
    goto/16 :goto_3

    .line 1566
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1573
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1574
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    const/4 v11, 0x0

    .line 1573
    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 1576
    goto :goto_3

    .line 1557
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    .line 1560
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v5, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v7, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    .line 1563
    goto :goto_3

    .line 1547
    :goto_0
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    if-eqz v0, :cond_2

    .line 1548
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStore:Landroid/security/KeyStore;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    invoke-virtual {v0, v2}, Landroid/security/KeyStore;->addAuthToken([B)I

    goto :goto_1

    .line 1550
    :cond_2
    const-string/jumbo v0, "mTokenEscrow is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :goto_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    .line 1553
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getAuthenticationTypeForResult(I)I

    move-result v2

    .line 1552
    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded(I)V

    .line 1554
    goto :goto_3

    .line 1595
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1588
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    goto :goto_5

    .line 1596
    .local v0, "e":Landroid/os/RemoteException;
    :goto_4
    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1598
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOnError(IIII)V
    .locals 22
    .param p1, "cookie"    # I
    .param p2, "modality"    # I
    .param p3, "error"    # I
    .param p4, "vendorCode"    # I

    .line 1419
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    const-string v0, "authenticators_allowed"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleOnError: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cookie: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BiometricService"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :try_start_0
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v6, v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->containsCookie(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1428
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v4, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mErrorEscrow:I

    .line 1429
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v5, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mVendorCodeEscrow:I

    .line 1431
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v6, 0x2

    const/16 v12, 0x9

    if-ne v0, v6, :cond_4

    .line 1432
    const/4 v0, 0x7

    if-eq v4, v0, :cond_0

    if-ne v4, v12, :cond_1

    :cond_0
    move v8, v9

    :cond_1
    move v6, v8

    .line 1434
    .local v6, "errorLockout":Z
    iget-object v8, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v8}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isAllowDeviceCredential()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    .line 1436
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v10, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1437
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    goto :goto_0

    .line 1438
    :cond_2
    const/4 v8, 0x5

    if-ne v4, v8, :cond_3

    .line 1439
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V

    .line 1443
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v3, v4, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1444
    iput-object v11, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_0

    .line 1446
    :cond_3
    iget-object v8, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput v0, v8, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1447
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(III)V

    .line 1449
    .end local v6    # "errorLockout":Z
    :goto_0
    goto/16 :goto_1

    :cond_4
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_5

    .line 1453
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v3, v4, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1454
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V

    .line 1455
    iput-object v11, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto/16 :goto_1

    .line 1456
    :cond_5
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    if-ne v0, v10, :cond_6

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Biometric canceled, ignoring from state: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1459
    :cond_6
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    if-ne v0, v12, :cond_7

    .line 1460
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideAuthenticationDialog()V

    .line 1461
    iput-object v11, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto/16 :goto_1

    .line 1463
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Impossible session error state: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1466
    :cond_8
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v6, :cond_b

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1467
    invoke-virtual {v6, v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->containsCookie(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1468
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    if-ne v6, v9, :cond_a

    .line 1471
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v6}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isAllowDeviceCredential()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1472
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    .line 1473
    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1476
    .local v6, "authenticators":I
    and-int/lit16 v6, v6, -0x100

    .line 1477
    iget-object v8, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v8, v8, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1481
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1482
    iput v10, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1483
    iput-object v11, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1485
    iget-object v12, v1, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget-object v14, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v8, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v8, v8, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-wide v9, v9, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    iget-object v11, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v11, v11, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSysUiSessionId:I

    move/from16 v17, v0

    move-object/from16 v18, v8

    move-wide/from16 v19, v9

    move/from16 v21, v11

    invoke-interface/range {v12 .. v21}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZILjava/lang/String;JI)V

    .line 1494
    .end local v6    # "authenticators":I
    goto :goto_1

    .line 1495
    :cond_9
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, v3, v4, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V

    .line 1496
    iput-object v11, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_1

    .line 1499
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Impossible pending session error state: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1503
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cookie: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    :goto_1
    goto :goto_2

    .line 1505
    :catch_0
    move-exception v0

    .line 1506
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "Remote exception"

    invoke-static {v7, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1508
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private handleOnReadyForAuthentication(IZI)V
    .locals 17
    .param p1, "cookie"    # I
    .param p2, "requireConfirmation"    # Z
    .param p3, "userId"    # I

    .line 1689
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v3, "BiometricService"

    if-nez v0, :cond_0

    .line 1693
    const-string v0, "Pending auth session null"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return-void

    .line 1697
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1698
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1699
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1700
    .local v4, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 1701
    iget-object v5, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v5, v5, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1702
    iget-object v5, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v5, v5, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1703
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Matched cookie: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    .line 1704
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " remaining"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1703
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    goto :goto_1

    .line 1707
    .end local v4    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 1709
    :cond_2
    :goto_1
    iget-object v4, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1710
    iget-object v4, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v4, :cond_3

    iget v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 1713
    .local v4, "continuing":Z
    :goto_2
    iget-object v5, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v5, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2102(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J

    .line 1717
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1719
    iget-object v5, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v6, 0x2

    iput v6, v5, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    .line 1720
    const/4 v5, 0x0

    .line 1721
    .local v5, "modality":I
    iget-object v6, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1722
    .end local v0    # "it":Ljava/util/Iterator;
    .local v6, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v14, "Remote exception"

    if-eqz v0, :cond_7

    .line 1723
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Map$Entry;

    .line 1724
    .local v7, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1725
    .local v0, "foundAuthenticator":Z
    iget-object v8, v1, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 1726
    .local v9, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget v10, v9, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v10, v11, :cond_4

    .line 1727
    const/4 v10, 0x1

    .line 1730
    .end local v0    # "foundAuthenticator":Z
    .local v10, "foundAuthenticator":Z
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget-object v11, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v11, v11, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    const-string/jumbo v12, "key_fingerprint_package_name"

    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string/jumbo v12, "key_cookie"

    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1737
    :try_start_0
    iget-object v0, v9, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v0, v11}, Landroid/hardware/biometrics/IBiometricAuthenticator;->startPreparedClient(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    goto :goto_5

    .line 1738
    :catch_0
    move-exception v0

    .line 1739
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v3, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1742
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :goto_5
    move v0, v10

    .end local v10    # "foundAuthenticator":Z
    .local v0, "foundAuthenticator":Z
    :cond_4
    goto :goto_4

    .line 1743
    :cond_5
    if-nez v0, :cond_6

    .line 1744
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown modality: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :cond_6
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    or-int/2addr v5, v8

    .line 1747
    .end local v0    # "foundAuthenticator":Z
    .end local v7    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto/16 :goto_3

    .line 1749
    :cond_7
    if-nez v4, :cond_8

    .line 1751
    :try_start_1
    iget-object v7, v1, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v8, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget-object v9, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-wide v11, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSysUiSessionId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move v10, v5

    move-wide v15, v11

    move/from16 v11, p2

    move/from16 v12, p3

    move-object v1, v14

    move-wide v14, v15

    move/from16 v16, v0

    :try_start_2
    invoke-interface/range {v7 .. v16}, Lcom/android/internal/statusbar/IStatusBarService;->showAuthenticationDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZILjava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1758
    goto :goto_7

    .line 1756
    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v14

    .line 1757
    .local v0, "e":Landroid/os/RemoteException;
    :goto_6
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1761
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "continuing":Z
    .end local v5    # "modality":I
    :cond_8
    :goto_7
    move-object v0, v6

    .end local v6    # "it":Ljava/util/Iterator;
    .local v0, "it":Ljava/util/Iterator;
    :cond_9
    return-void
.end method

.method private handleOnSystemEvent(I)V
    .locals 4
    .param p1, "event"    # I

    .line 1633
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_0

    .line 1634
    const-string v0, "Auth session null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    return-void

    .line 1638
    :cond_0
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    .line 1639
    const-string/jumbo v3, "receive_system_events"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1640
    .local v0, "shouldReceive":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSystemEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", shouldReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    if-nez v0, :cond_1

    .line 1643
    return-void

    .line 1647
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onSystemEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    goto :goto_0

    .line 1648
    :catch_0
    move-exception v2

    .line 1649
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1651
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handleOnTryAgainPressed()V
    .locals 13

    .line 1601
    const-string v0, "BiometricService"

    const-string/jumbo v1, "onTryAgainPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-wide v3, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v5, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v7, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v8, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v9, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v10, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v11, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v12, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIII)V

    .line 1614
    return-void
.end method

.method private isBiometricDisabledByDevicePolicy(II)Z
    .locals 6
    .param p1, "modality"    # I
    .param p2, "effectiveUserId"    # I

    .line 1059
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->mapModalityToDevicePolicyType(I)I

    move-result v0

    .line 1060
    .local v0, "biometricToCheck":I
    const/4 v1, 0x0

    const-string v2, "BiometricService"

    if-nez v0, :cond_0

    .line 1061
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allowing unknown modality "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to pass Device Policy check"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    return v1

    .line 1064
    :cond_0
    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    .line 1065
    invoke-virtual {v3, v4, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v3

    .line 1066
    .local v3, "devicePolicyDisabledFeatures":I
    and-int v4, v0, v3

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 1068
    .local v1, "isBiometricDisabled":Z
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isBiometricDisabledByDevicePolicy("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return v1
.end method

.method private isEnabledForApp(II)Z
    .locals 2
    .param p1, "modality"    # I
    .param p2, "userId"    # I

    .line 1247
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/4 v0, 0x0

    return v0

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceEnabledForApps(I)Z

    move-result v0

    return v0

    .line 1251
    :cond_1
    return v1

    .line 1249
    :cond_2
    return v1
.end method

.method private logDialogDismissed(I)V
    .locals 17
    .param p1, "reason"    # I

    .line 1261
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1266
    invoke-static {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2000(Lcom/android/server/biometrics/BiometricService$AuthSession;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1279
    .local v2, "latency":J
    const/16 v6, 0x58

    .line 1280
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->statsModality()I

    move-result v7

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v8, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1282
    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isCrypto()Z

    move-result v9

    const/4 v10, 0x2

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-boolean v11, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mRequireConfirmation:Z

    const/4 v12, 0x3

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v13, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v13, v13, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    invoke-virtual {v4, v5, v13}, Lcom/android/server/biometrics/BiometricService$Injector;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v15

    .line 1279
    move-wide v13, v2

    invoke-static/range {v6 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIZIJZ)V

    .line 1288
    .end local v2    # "latency":J
    goto :goto_1

    .line 1290
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2100(Lcom/android/server/biometrics/BiometricService$AuthSession;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1292
    .restart local v2    # "latency":J
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 1293
    const/16 v4, 0xd

    move v12, v4

    goto :goto_0

    .line 1294
    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 1295
    const/16 v4, 0xa

    move v12, v4

    goto :goto_0

    .line 1296
    :cond_2
    const/4 v4, 0x0

    move v12, v4

    :goto_0
    nop

    .line 1307
    .local v12, "error":I
    const/16 v6, 0x59

    .line 1308
    invoke-direct/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->statsModality()I

    move-result v7

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v8, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    .line 1310
    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isCrypto()Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x2

    const/4 v13, 0x0

    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    .line 1315
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v14, v0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v14, v14, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    invoke-virtual {v4, v5, v14}, Lcom/android/server/biometrics/BiometricService$Injector;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v14

    .line 1307
    move-wide v15, v2

    invoke-static/range {v6 .. v16}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZIIIIZJ)V

    .line 1318
    .end local v2    # "latency":J
    .end local v12    # "error":I
    :goto_1
    return-void
.end method

.method private mapModalityToDevicePolicyType(I)I
    .locals 2
    .param p1, "modality"    # I

    .line 1043
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error modality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/4 v0, 0x0

    return v0

    .line 1049
    :cond_0
    const/16 v0, 0x80

    return v0

    .line 1047
    :cond_1
    const/16 v0, 0x100

    return v0

    .line 1045
    :cond_2
    const/16 v0, 0x20

    return v0
.end method

.method private statsModality()I
    .locals 2

    .line 1321
    const/4 v0, 0x0

    .line 1322
    .local v0, "modality":I
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_0

    .line 1323
    const/4 v1, 0x0

    return v1

    .line 1325
    :cond_0
    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1327
    or-int/lit8 v0, v0, 0x1

    .line 1329
    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1330
    or-int/lit8 v0, v0, 0x2

    .line 1332
    :cond_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1333
    or-int/lit8 v0, v0, 0x4

    .line 1335
    :cond_3
    return v0
.end method


# virtual methods
.method cancelInternal(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "callingUserId"    # I
    .param p6, "fromClient"    # Z

    .line 1891
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v2, "BiometricService"

    if-nez v0, :cond_0

    .line 1892
    const-string v0, "Skipping cancelInternal"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return-void

    .line 1894
    :cond_0
    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping cancelInternal, state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    return-void

    .line 1902
    :cond_1
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;

    .line 1903
    .local v4, "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    iget v0, v4, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->modality:I

    iget-object v5, v1, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v5, v5, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_2

    .line 1905
    :try_start_0
    iget-object v5, v4, Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-interface/range {v5 .. v11}, Landroid/hardware/biometrics/IBiometricAuthenticator;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1909
    goto :goto_1

    .line 1907
    :catch_0
    move-exception v0

    .line 1908
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "Unable to cancel authentication"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "authenticator":Lcom/android/server/biometrics/BiometricService$AuthenticatorWrapper;
    :cond_2
    :goto_1
    goto :goto_0

    .line 1912
    :cond_3
    return-void
.end method

.method public synthetic lambda$handleAuthenticate$0$BiometricService(Landroid/os/Bundle;ILjava/lang/String;Landroid/os/IBinder;JLandroid/hardware/biometrics/IBiometricServiceReceiver;III)V
    .locals 19
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "sessionId"    # J
    .param p7, "receiver"    # Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .param p8, "callingUid"    # I
    .param p9, "callingPid"    # I
    .param p10, "callingUserId"    # I

    move-object/from16 v13, p1

    .line 1769
    :try_start_0
    const-string v0, "check_dpm"

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1771
    .local v0, "checkDevicePolicyManager":Z
    move-object/from16 v14, p0

    move/from16 v15, p2

    move-object/from16 v12, p3

    :try_start_1
    invoke-direct {v14, v15, v13, v12, v0}, Lcom/android/server/biometrics/BiometricService;->checkAndGetAuthenticators(ILandroid/os/Bundle;Ljava/lang/String;Z)Landroid/util/Pair;

    move-result-object v2

    move-object v11, v2

    .line 1773
    .local v11, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v10, v2

    .line 1774
    .local v10, "modality":I
    iget-object v2, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v9, v2

    .line 1776
    .local v9, "result":I
    if-nez v9, :cond_0

    .line 1777
    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-wide/from16 v3, p5

    move/from16 v5, p2

    move-object/from16 v6, p7

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move/from16 v16, v0

    move v0, v9

    .end local v9    # "result":I
    .local v0, "result":I
    .local v16, "checkDevicePolicyManager":Z
    move/from16 v9, p8

    move/from16 v17, v10

    .end local v10    # "modality":I
    .local v17, "modality":I
    move/from16 v10, p9

    move-object/from16 v18, v11

    .end local v11    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v18, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move/from16 v11, p10

    move/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v2, p7

    goto :goto_0

    .line 1780
    .end local v16    # "checkDevicePolicyManager":Z
    .end local v17    # "modality":I
    .end local v18    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v0, "checkDevicePolicyManager":Z
    .restart local v9    # "result":I
    .restart local v10    # "modality":I
    .restart local v11    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    move/from16 v16, v0

    move v0, v9

    move/from16 v17, v10

    move-object/from16 v18, v11

    .end local v9    # "result":I
    .end local v10    # "modality":I
    .end local v11    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local v0, "result":I
    .restart local v16    # "checkDevicePolicyManager":Z
    .restart local v17    # "modality":I
    .restart local v18    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v2, p7

    move/from16 v3, v17

    .end local v17    # "modality":I
    .local v3, "modality":I
    :try_start_2
    invoke-interface {v2, v3, v0, v1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1784
    .end local v0    # "result":I
    .end local v3    # "modality":I
    .end local v16    # "checkDevicePolicyManager":Z
    .end local v18    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_0
    goto :goto_3

    .line 1782
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v15, p2

    :goto_1
    move-object/from16 v2, p7

    .line 1783
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    const-string v1, "BiometricService"

    const-string v3, "Remote exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1785
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mKeyStore:Landroid/security/KeyStore;

    .line 1030
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1031
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$Injector;->getTrustManager()Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 1032
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mImpl:Landroid/hardware/biometrics/IBiometricService$Stub;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$Injector;->publishBinderService(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricService$Stub;)V

    .line 1033
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInjector:Lcom/android/server/biometrics/BiometricService$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/BiometricService$Injector;->getBiometricStrengthController(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricStrengthController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    .line 1034
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricStrengthController;->startListening()V

    .line 1035
    return-void
.end method
