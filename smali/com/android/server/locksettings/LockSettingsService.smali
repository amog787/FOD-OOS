.class public Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;,
        Lcom/android/server/locksettings/LockSettingsService$LocalService;,
        Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;,
        Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/locksettings/LockSettingsService$Injector;,
        Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;,
        Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;,
        Lcom/android/server/locksettings/LockSettingsService$Lifecycle;,
        Lcom/android/server/locksettings/LockSettingsService$ChallengeType;
    }
.end annotation


# static fields
.field private static final BIOMETRIC_PERMISSION:Ljava/lang/String; = "android.permission.MANAGE_BIOMETRIC"

.field private static final CHALLENGE_FROM_CALLER:I = 0x1

.field private static final CHALLENGE_INTERNAL:I = 0x2

.field private static final CHALLENGE_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default_password"

.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PREV_SYNTHETIC_PASSWORD_HANDLE_KEY:Ljava/lang/String; = "prev-sp-handle"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SYNTHETIC_PASSWORD_UPDATE_TIME_KEY:Ljava/lang/String; = "sp-handle-ts"

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final USER_SERIAL_NUMBER_KEY:Ljava/lang/String; = "serial-number"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static mSavePassword:Ljava/lang/String;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field protected mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field private mFirstCallToVold:Z

.field protected mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHasSecureLockScreen:Z

.field private final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

.field private final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field private final mStorageManager:Landroid/os/storage/IStorageManager;

.field private final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field private final mUserManager:Landroid/os/UserManager;

.field final mUserPasswordMetrics:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 234
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 258
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 2626
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    const-string/jumbo v2, "lockscreen.patterneverchosen"

    const-string/jumbo v3, "lockscreen.password_type"

    const-string/jumbo v4, "lockscreen.password_type_alternate"

    const-string/jumbo v5, "lockscreen.password_salt"

    const-string/jumbo v6, "lockscreen.disabled"

    const-string/jumbo v7, "lockscreen.options"

    const-string/jumbo v8, "lockscreen.biometric_weak_fallback"

    const-string/jumbo v9, "lockscreen.biometricweakeverchosen"

    const-string/jumbo v10, "lockscreen.power_button_instantly_locks"

    const-string/jumbo v11, "lockscreen.passwordhistory"

    const-string/jumbo v12, "lock_pattern_autolock"

    const-string/jumbo v13, "lock_biometric_weak_flags"

    const-string/jumbo v14, "lock_pattern_visible_pattern"

    const-string/jumbo v15, "lock_pattern_tactile_feedback_enabled"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 2645
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const-string/jumbo v1, "lock_screen_owner_info"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2651
    const-string/jumbo v0, "lockscreen.password_salt"

    const-string/jumbo v1, "lockscreen.passwordhistory"

    const-string/jumbo v2, "lockscreen.password_type"

    const-string/jumbo v3, "lockscreen.profilechallenge"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3f2
        0x3f8
        0x0
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 570
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    .line 571
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .locals 8
    .param p1, "injector"    # Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 574
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 215
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 245
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 823
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 854
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 575
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 576
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 577
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getKeyStore()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    .line 578
    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRecoverableKeyStoreManager(Landroid/security/KeyStore;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 579
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler(Lcom/android/server/ServiceThread;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 580
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 581
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    .line 585
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 586
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    const-string v1, "android.intent.action.USER_STARTING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 588
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 591
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v1

    .line 592
    .local v7, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 593
    const-string/jumbo v1, "package"

    invoke-virtual {v7, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 597
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 600
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorage()Lcom/android/server/locksettings/LockSettingsStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 601
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 602
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 603
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 604
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 605
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V

    .line 607
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 608
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getManagedProfilePasswordCache()Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    .line 610
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$RebootEscrowCallbacks;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p1, v1, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getRebootEscrowManager(Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/RebootEscrowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 613
    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    invoke-direct {v3, p0, v2}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    invoke-static {v1, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 614
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 185
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/locksettings/LockSettingsService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/locksettings/LockSettingsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 185
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/locksettings/LockSettingsService;[BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/locksettings/LockSettingsService;JI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "x2"    # J
    .param p4, "x3"    # [B
    .param p5, "x4"    # I

    .line 185
    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/locksettings/LockSettingsService;J[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # I

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserWithToken(J[BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/RebootEscrowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 185
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/locksettings/LockSettingsService;)Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 185
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "x2"    # I

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/util/ArrayList;
    .param p6, "x5"    # Landroid/app/admin/PasswordMetrics;
    .param p7, "x6"    # I

    .line 185
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->cleanupDataForReusedUserIdIfNecessary(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->ensureProfileKeystoreUnlocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/locksettings/LockSettingsService;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 185
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/locksettings/LockSettingsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/locksettings/LockSettingsService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsService;
    .param p1, "x1"    # I

    .line 185
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    return v0
.end method

.method private activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .locals 9
    .param p1, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userId"    # I

    .line 3217
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3218
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 3219
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 3220
    .local v2, "handle":J
    const-string v4, "LockSettingsService"

    const-string v5, "activateEscrowTokens: %x %d "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 3222
    nop

    .end local v2    # "handle":J
    goto :goto_0

    .line 3223
    :cond_0
    monitor-exit v0

    .line 3224
    return-void

    .line 3223
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 9
    .param p1, "token"    # [B
    .param p2, "userId"    # I
    .param p3, "callback"    # Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    .line 3187
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3190
    const/4 v1, 0x0

    .line 3191
    .local v1, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3192
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3193
    const/4 v2, 0x0

    .line 3194
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v3

    .line 3193
    invoke-virtual {p0, v2, v3, p2}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 3196
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 3197
    .local v4, "pwdHandle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    .line 3198
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    .line 3197
    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object v1, v2

    .line 3201
    .end local v4    # "pwdHandle":J
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3202
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 3203
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 3204
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Escrow token is disabled on the current user"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "token":[B
    .end local p2    # "userId":I
    .end local p3    # "callback":Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    throw v2

    .line 3207
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "token":[B
    .restart local p2    # "userId":I
    .restart local p3    # "callback":Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide v2

    .line 3208
    .local v2, "handle":J
    if-eqz v1, :cond_4

    .line 3209
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v4, v2, v3, v1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    .line 3211
    :cond_4
    monitor-exit v0

    return-wide v2

    .line 3212
    .end local v1    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .end local v2    # "handle":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addUserKeyAuth(I[B[B)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    .line 2018
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2019
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2021
    .local v1, "callingId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v3, p1, v4, p2, p3}, Landroid/os/storage/IStorageManager;->addUserKeyAuth(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2025
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2026
    nop

    .line 2027
    return-void

    .line 2025
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 2022
    :catch_0
    move-exception v3

    .line 2023
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add new key to vold "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "callingId":J
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "token":[B
    .end local p3    # "secret":[B
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2025
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v1    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "token":[B
    .restart local p3    # "secret":[B
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2026
    throw v3
.end method

.method private callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2709
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2711
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveVendorAuthSecret()[B

    move-result-object v0

    .line 2712
    .local v0, "rawSecret":[B
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2713
    .local v1, "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 2714
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2713
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2716
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;

    invoke-interface {v2, v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->primaryUserCredential(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2719
    .end local v0    # "rawSecret":[B
    .end local v1    # "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto :goto_1

    .line 2717
    :catch_0
    move-exception v0

    .line 2718
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to pass primary user secret to AuthSecret HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2721
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void
.end method

.method private final checkBiometricPermission()V
    .locals 3

    .line 1143
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    const-string v2, "LockSettingsBiometric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    return-void
.end method

.method private checkCryptKeeperPermissions()Z
    .locals 4

    .line 1341
    const/4 v0, 0x0

    .line 1343
    .local v0, "permission_err":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CRYPT_KEEPER"

    const-string/jumbo v3, "no permission to get the password"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    goto :goto_0

    .line 1346
    :catch_0
    move-exception v1

    .line 1347
    .local v1, "e":Ljava/lang/SecurityException;
    const/4 v0, 0x1

    .line 1349
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_0
    return v0
.end method

.method private final checkPasswordHavePermission(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1112
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "28251513"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v2, "LockSettingsHave"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1108
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 10
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1121
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    const-string v4, " for user "

    const-string v5, " to read "

    const-string v6, " needs permission "

    const-string/jumbo v7, "uid="

    if-ge v1, v3, :cond_2

    .line 1122
    aget-object v2, v2, v1

    .line 1123
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1125
    :cond_0
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1121
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1131
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget-object v2, Lcom/android/server/locksettings/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 1132
    aget-object v2, v2, v1

    .line 1133
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 1135
    :cond_3
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1131
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1140
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1104
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method private cleanupDataForReusedUserIdIfNecessary(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 736
    if-nez p1, :cond_0

    .line 738
    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    .line 743
    .local v0, "serialNumber":I
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "serial-number"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(Ljava/lang/String;II)I

    move-result v1

    .line 744
    .local v1, "storedSerialNumber":I
    if-eq v1, v0, :cond_2

    .line 749
    if-eq v1, v3, :cond_1

    .line 750
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/locksettings/LockSettingsService;->removeUser(IZ)V

    .line 752
    :cond_1
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v3, v2, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->setInt(Ljava/lang/String;II)V

    .line 754
    :cond_2
    return-void
.end method

.method private clearUserKeyProtection(I[B)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "secret"    # [B

    .line 1971
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1972
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1974
    .local v1, "callingId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v4, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    const/4 v5, 0x0

    invoke-interface {v3, p1, v4, v5, p2}, Landroid/os/storage/IStorageManager;->clearUserKeyAuth(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1978
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1979
    nop

    .line 1980
    return-void

    .line 1978
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 1975
    :catch_0
    move-exception v3

    .line 1976
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearUserKeyAuth failed user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v1    # "callingId":J
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "secret":[B
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1978
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userInfo":Landroid/content/pm/UserInfo;
    .restart local v1    # "callingId":J
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "secret":[B
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1979
    throw v3
.end method

.method private convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 1
    .param p1, "gateKeeperResponse"    # Landroid/service/gatekeeper/GateKeeperResponse;

    .line 1850
    invoke-static {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private createPattern(Ljava/lang/String;)Lcom/android/internal/widget/LockscreenCredential;
    .locals 3
    .param p1, "patternString"    # Ljava/lang/String;

    .line 2343
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 2344
    .local v0, "patternBytes":[B
    nop

    .line 2345
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v1

    .line 2344
    invoke-static {v1}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 2346
    .local v1, "pattern":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 2347
    return-object v1
.end method

.method private static credentialTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "credentialType"    # I

    .line 3351
    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 3361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3359
    :cond_0
    const-string v0, "Password"

    return-object v0

    .line 3357
    :cond_1
    const-string v0, "Pin"

    return-object v0

    .line 3355
    :cond_2
    const-string v0, "Pattern"

    return-object v0

    .line 3353
    :cond_3
    const-string v0, "None"

    return-object v0
.end method

.method private disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 3431
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v0

    .line 3434
    .local v0, "userManagerInternal":Landroid/os/UserManagerInternal;
    invoke-virtual {v0, p1}, Landroid/os/UserManagerInternal;->isUserManaged(I)Z

    move-result v1

    const-string v2, "LockSettingsService"

    if-eqz v1, :cond_0

    .line 3435
    const-string v1, "Managed profile can have escrow token"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    return-void

    .line 3440
    :cond_0
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->isDeviceManaged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3441
    const-string v1, "Corp-owned device can have escrow token"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3442
    return-void

    .line 3448
    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDeviceStateCache()Landroid/app/admin/DeviceStateCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DeviceStateCache;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3449
    const-string v1, "Postpone disabling escrow tokens until device is provisioned"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    return-void

    .line 3454
    :cond_2
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3455
    return-void

    .line 3459
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling escrow token on user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3461
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyEscrowData(I)V

    .line 3463
    :cond_4
    return-void
.end method

.method private doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "challengeType"    # I
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 2130
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "challengeType"    # I
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "IJI",
            "Lcom/android/internal/widget/ICheckCredentialProgressCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)",
            "Lcom/android/internal/widget/VerifyCredentialResponse;"
        }
    .end annotation

    .line 2142
    .local p7, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    move-object v8, p0

    move-object v9, p1

    move/from16 v10, p5

    if-eqz v9, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2145
    const/16 v0, -0x270f

    const-string v1, "LockSettingsService"

    if-ne v10, v0, :cond_0

    iget-object v2, v8, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    iget-object v3, v8, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "device_provisioned"

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsGlobalGetInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2147
    const-string v0, "FRP credential can only be verified prior to provisioning."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2150
    :cond_0
    const/4 v2, 0x0

    .line 2151
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-direct/range {p0 .. p7}, Lcom/android/server/locksettings/LockSettingsService;->spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    .line 2154
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v11, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-eqz v11, :cond_2

    .line 2155
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 2156
    invoke-direct {p0, p1, v10}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2158
    :cond_1
    return-object v11

    .line 2161
    :cond_2
    if-ne v10, v0, :cond_3

    .line 2162
    const-string v0, "Unexpected FRP credential type, should be SP based."

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2166
    :cond_3
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v12

    .line 2167
    .local v12, "storedHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    iget v0, v12, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockscreenCredential;->checkAgainstStoredType(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doVerifyCredential type mismatch with stored credential?? stored: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " passed in: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2168
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2173
    :cond_4
    move-object v0, p0

    move/from16 v1, p5

    move-object v2, v12

    move-object v3, p1

    move v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Lcom/android/internal/widget/LockscreenCredential;IJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2176
    .end local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_5

    .line 2177
    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v1, v10}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 2180
    :cond_5
    return-object v0

    .line 2143
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v12    # "storedHash":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Credential can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceFrpResolved()V
    .locals 6

    .line 1092
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1093
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1095
    .local v1, "inSetupWizard":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    const-string/jumbo v5, "secure_frp_mode"

    invoke-virtual {v4, v0, v5, v3, v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->settingsSecureGetInt(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v3, v2

    :cond_1
    move v2, v3

    .line 1097
    .local v2, "secureFrp":Z
    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    .line 1098
    :cond_2
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Cannot change credential in SUW while factory reset protection is not resolved yet"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1101
    :cond_3
    :goto_1
    return-void
.end method

.method private enforceShell()V
    .locals 2

    .line 2504
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->isCallerShell()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2507
    return-void

    .line 2505
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller must be shell"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enrollCredential([B[B[BI)[B
    .locals 4
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # [B
    .param p3, "toEnroll"    # [B
    .param p4, "userId"    # I

    .line 1923
    const-string v0, "LockSettingsService"

    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1926
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v2

    invoke-interface {v2, p4, p1, p2, p3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1931
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 1933
    if-nez v2, :cond_0

    .line 1934
    return-object v1

    .line 1937
    :cond_0
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 1938
    .local v1, "hash":[B
    if-eqz v1, :cond_1

    .line 1939
    invoke-direct {p0, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_0

    .line 1942
    :cond_1
    const-string v3, "Throttled while enrolling a password"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :goto_0
    return-object v1

    .line 1928
    .end local v1    # "hash":[B
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_0
    move-exception v2

    .line 1929
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to enroll credential"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1930
    return-object v1
.end method

.method private ensureProfileKeystoreUnlocked(I)V
    .locals 10
    .param p1, "userId"    # I

    .line 762
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 763
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 764
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    const-string v1, "LockSettingsService"

    const-string v2, "Managed profile got unlocked, will unlock its keystore"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZIJLjava/util/ArrayList;)V

    .line 773
    :cond_0
    return-void
.end method

.method private faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;
    .locals 1
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 3081
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$6;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .locals 1
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 3062
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$5;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method

.method private fixateNewestUserKeyAuth(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 2031
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2033
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v2, p1}, Landroid/os/storage/IStorageManager;->fixateNewestUserKeyAuth(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2039
    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2040
    goto :goto_1

    .line 2039
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 2034
    :catch_0
    move-exception v2

    .line 2037
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "LockSettingsService"

    const-string v4, "fixateNewestUserKeyAuth failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2039
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 2041
    :goto_1
    return-void

    .line 2039
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2040
    throw v2
.end method

.method private gateKeeperClearSecureUserId(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2688
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2691
    goto :goto_0

    .line 2689
    :catch_0
    move-exception v0

    .line 2690
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed to clear SID"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2692
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private generateRandomProfilePassword()Lcom/android/internal/widget/LockscreenCredential;
    .locals 6

    .line 339
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 341
    .local v1, "randomLockSeed":[B
    :try_start_0
    const-string v2, "SHA1PRNG"

    invoke-static {v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    move-object v1, v2

    .line 342
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .line 343
    .local v2, "newPasswordChars":[C
    array-length v3, v2

    new-array v3, v3, [B

    .line 344
    .local v3, "newPassword":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 345
    aget-char v5, v2, v4

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 344
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 347
    .end local v4    # "i":I
    :cond_0
    nop

    .line 348
    invoke-static {v3}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    .line 349
    .local v4, "credential":Lcom/android/internal/widget/LockscreenCredential;
    invoke-static {v2, v0}, Ljava/util/Arrays;->fill([CC)V

    .line 350
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 351
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    return-object v4

    .line 353
    .end local v2    # "newPasswordChars":[C
    .end local v3    # "newPassword":[B
    .end local v4    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Fail to generate profile password"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getAuthSecretHal()V
    .locals 3

    .line 900
    const-string v0, "LockSettingsService"

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret;->getService(Z)Landroid/hardware/authsecret/V1_0/IAuthSecret;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/V1_0/IAuthSecret;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v1

    .line 904
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to get AuthSecret HAL"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 901
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 902
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "Device doesn\'t implement AuthSecret HAL"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    nop

    .line 906
    :goto_1
    return-void
.end method

.method private getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;"
        }
    .end annotation

    .line 1542
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1543
    const/4 v0, 0x0

    return-object v0

    .line 1545
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1546
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 1547
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1548
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 1549
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1550
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1551
    goto :goto_1

    .line 1553
    :cond_1
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1554
    .local v5, "managedUserId":I
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1555
    goto :goto_1

    .line 1558
    :cond_2
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    goto :goto_1

    .line 1559
    :catch_0
    move-exception v6

    .line 1563
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LockSettingsService"

    invoke-static {v8, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1548
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    .end local v5    # "managedUserId":I
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1567
    .end local v3    # "i":I
    :cond_3
    return-object v0
.end method

.method private getFrpCredentialType()I
    .locals 4

    .line 1300
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    .line 1301
    .local v0, "data":Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;
    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    iget v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    if-eq v1, v2, :cond_0

    .line 1302
    const/4 v1, -0x1

    return v1

    .line 1304
    :cond_0
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getFrpCredentialType([B)I

    move-result v1

    .line 1305
    .local v1, "credentialType":I
    if-eq v1, v2, :cond_1

    .line 1306
    return v1

    .line 1308
    :cond_1
    iget v2, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v2

    return v2
.end method

.method private getKeyguardStoredQuality(I)I
    .locals 4
    .param p1, "userId"    # I

    .line 1254
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private getProfilesWithSameLockScreen(I)Ljava/util/Set;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1691
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1692
    .local v0, "profiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1693
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v3, p1, :cond_0

    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v3, p1, :cond_1

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1695
    invoke-direct {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1696
    :cond_0
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1698
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    :cond_1
    goto :goto_0

    .line 1699
    :cond_2
    return-object v0
.end method

.method private getSeparateProfileChallengeEnabledInternal(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 1158
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1159
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v2, "lockscreen.profilechallenge"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private hasUnifiedChallenge(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1537
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1538
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1537
    :goto_0
    return v0
.end method

.method private hideEncryptionNotification(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 708
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 710
    return-void
.end method

.method private isCallerShell()Z
    .locals 2

    .line 2499
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2500
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isEscrowTokenActive(JI)Z
    .locals 2
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 3227
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3228
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1634
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1635
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1634
    :goto_0
    return v0
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1629
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1629
    :goto_0
    return v0
.end method

.method private isSyntheticPasswordBasedCredentialLocked(I)Z
    .locals 6
    .param p1, "userId"    # I

    .line 2830
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, -0x270f

    if-ne p1, v2, :cond_2

    .line 2831
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v2

    iget v2, v2, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 2832
    .local v2, "type":I
    if-eq v2, v1, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 2834
    .end local v2    # "type":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    .line 2835
    .local v2, "handle":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private isUserKeyUnlocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 1999
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    invoke-interface {v0, p1}, Landroid/os/storage/IStorageManager;->isUserKeyUnlocked(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2000
    :catch_0
    move-exception v0

    .line 2001
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "failed to check user key locked state"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2002
    const/4 v1, 0x0

    return v1
.end method

.method private isUserSecure(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1322
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$notifySeparateProfileChallengeChanged$0(I)V
    .locals 1
    .param p0, "userId"    # I

    .line 1201
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1203
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->reportSeparateProfileChallengeChanged(I)V

    .line 1206
    :cond_0
    return-void
.end method

.method static synthetic lambda$scheduleGc$4()V
    .locals 0

    .line 3475
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3476
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 3477
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 3478
    return-void
.end method

.method private loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;
    .locals 4
    .param p1, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "userHandle"    # I

    .line 2325
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2326
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 2328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeShowEncryptionNotificationForUser(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 621
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 622
    .local v0, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 626
    return-void

    .line 629
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserKeyUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    return-void

    .line 635
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 636
    .local v1, "userHandle":Landroid/os/UserHandle;
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    .line 637
    .local v2, "isSecure":Z
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 638
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 639
    .local v3, "parent":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 640
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 641
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 650
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 651
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    .line 656
    .end local v3    # "parent":Landroid/content/pm/UserInfo;
    :cond_2
    return-void
.end method

.method private migrateFrpCredential()V
    .locals 7

    .line 1044
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    if-eq v0, v1, :cond_0

    .line 1045
    return-void

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1048
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1049
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    .line 1050
    :try_start_0
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1051
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v3

    long-to-int v0, v3

    .line 1054
    .local v0, "actualQuality":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1055
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 1057
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->redactActualQualityToMostLenientEquivalentQuality(I)I

    move-result v6

    .line 1054
    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    .line 1059
    .end local v0    # "actualQuality":I
    :cond_1
    monitor-exit v2

    .line 1060
    return-void

    .line 1059
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1062
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    goto :goto_0

    .line 1063
    :cond_3
    return-void
.end method

.method private migrateOldData()V
    .locals 19

    .line 911
    move-object/from16 v1, p0

    const-string/jumbo v2, "lock_screen_owner_info_enabled"

    const-string/jumbo v0, "migrated"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "LockSettingsService"

    const-string/jumbo v7, "true"

    if-nez v5, :cond_2

    .line 912
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 913
    .local v5, "cr":Landroid/content/ContentResolver;
    sget-object v8, Lcom/android/server/locksettings/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    array-length v9, v8

    move v10, v4

    :goto_0
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    .line 914
    .local v11, "validSetting":Ljava/lang/String;
    invoke-static {v5, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 915
    .local v12, "value":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 916
    invoke-virtual {v1, v11, v12, v4}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 913
    .end local v11    # "validSetting":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 920
    :cond_1
    invoke-virtual {v1, v0, v7, v4}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 921
    const-string v0, "Migrated lock settings to new location"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    .end local v5    # "cr":Landroid/content/ContentResolver;
    :cond_2
    const-string/jumbo v5, "migrated_user_specific"

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 926
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 927
    .local v11, "cr":Landroid/content/ContentResolver;
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 928
    .local v12, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    move v13, v0

    .local v13, "user":I
    :goto_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_7

    .line 930
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    .line 931
    .local v14, "userId":I
    const-string/jumbo v15, "lock_screen_owner_info"

    .line 932
    .local v15, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-static {v11, v0, v14}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 933
    .local v10, "ownerInfo":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 934
    invoke-virtual {v1, v0, v10, v14}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 935
    const-string v8, ""

    invoke-static {v11, v0, v8, v14}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 941
    :cond_3
    const-string/jumbo v8, "lock_screen_owner_info_enabled"

    .line 944
    .local v8, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_0
    invoke-static {v11, v2, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 945
    .local v0, "ivalue":I
    if-eqz v0, :cond_4

    const/16 v18, 0x1

    goto :goto_2

    :cond_4
    const/16 v18, 0x0

    .line 946
    .local v18, "enabled":Z
    :goto_2
    if-eqz v18, :cond_5

    const-wide/16 v3, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v3, 0x0

    :goto_3
    invoke-virtual {v1, v2, v3, v4, v14}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    .end local v0    # "ivalue":I
    goto :goto_4

    .line 947
    .end local v18    # "enabled":Z
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 950
    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4, v14}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 953
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_6
    :goto_4
    const/4 v3, 0x0

    invoke-static {v11, v2, v3, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 928
    .end local v8    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v10    # "ownerInfo":Ljava/lang/String;
    .end local v14    # "userId":I
    .end local v15    # "OWNER_INFO":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move v4, v3

    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    move v3, v4

    .line 956
    .end local v13    # "user":I
    invoke-virtual {v1, v5, v7, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 957
    const-string v0, "Migrated per-user lock settings to new location"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 925
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    move v3, v4

    .line 961
    :goto_5
    const-string/jumbo v0, "migrated_biometric_weak"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    .line 962
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    .line 963
    .local v2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 964
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 965
    .local v4, "userId":I
    const-string/jumbo v5, "lockscreen.password_type"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v5, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v12

    .line 968
    .local v12, "type":J
    const-string/jumbo v8, "lockscreen.password_type_alternate"

    invoke-virtual {v1, v8, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v14

    .line 971
    .local v14, "alternateType":J
    const-wide/32 v16, 0x8000

    cmp-long v16, v12, v16

    if-nez v16, :cond_9

    .line 972
    invoke-virtual {v1, v5, v14, v15, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 976
    :cond_9
    invoke-virtual {v1, v8, v10, v11, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 963
    .end local v4    # "userId":I
    .end local v12    # "type":J
    .end local v14    # "alternateType":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 980
    .end local v3    # "i":I
    :cond_a
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v7, v3}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 981
    const-string v0, "Migrated biometric weak to use the fallback instead"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 961
    .end local v2    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_b
    const/4 v3, 0x0

    .line 987
    :goto_7
    const-string/jumbo v0, "migrated_lockscreen_disabled"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "lockscreen.disabled"

    if-nez v4, :cond_10

    .line 988
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 989
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 990
    .local v4, "userCount":I
    const/4 v5, 0x0

    .line 991
    .local v5, "switchableUsers":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_8
    if-ge v8, v4, :cond_d

    .line 992
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 993
    add-int/lit8 v5, v5, 0x1

    .line 991
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 997
    .end local v8    # "i":I
    :cond_d
    const/4 v8, 0x1

    if-le v5, v8, :cond_f

    .line 998
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    if-ge v8, v4, :cond_f

    .line 999
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    .line 1001
    .local v10, "id":I
    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1002
    invoke-virtual {v1, v2, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 998
    .end local v10    # "id":I
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 1007
    .end local v8    # "i":I
    :cond_f
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v7, v8}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1008
    const-string v0, "Migrated lockscreen disabled flag"

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "userCount":I
    .end local v5    # "switchableUsers":I
    :cond_10
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1015
    .local v0, "isWatch":Z
    if-eqz v0, :cond_12

    const-string/jumbo v3, "migrated_wear_lockscreen_disabled"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    .line 1016
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 1017
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1018
    .local v5, "userCount":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_a
    if-ge v8, v5, :cond_11

    .line 1019
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    .line 1020
    .local v9, "id":I
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v9}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1018
    .end local v9    # "id":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_11
    const/4 v10, 0x0

    .line 1022
    .end local v8    # "i":I
    invoke-virtual {v1, v3, v7, v10}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1023
    const-string v2, "Migrated lockscreen_disabled for Wear devices"

    invoke-static {v6, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "userCount":I
    :cond_12
    return-void
.end method

.method private migrateOldDataAfterSystemReady()V
    .locals 3

    .line 1029
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    const-string/jumbo v0, "migrated_frp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1031
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateFrpCredential()V

    .line 1032
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1033
    const-string v0, "LockSettingsService"

    const-string v1, "Migrated migrated_frp."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    return-void
.end method

.method private notifyPasswordChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 2336
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$uLUdo5pAFhnR0hn-L5FUgWTjl70;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$uLUdo5pAFhnR0hn-L5FUgWTjl70;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2340
    return-void
.end method

.method private notifySeparateProfileChallengeChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1200
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$6ZJNEvi0AXsP3F_UD8F01RaIg3M;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$6ZJNEvi0AXsP3F_UD8F01RaIg3M;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1207
    return-void
.end method

.method private onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2695
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->isGsiRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2696
    const-string v0, "LockSettingsService"

    const-string v1, "Running in GSI; skipping calls to AuthSecret and RebootEscrow"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    return-void

    .line 2700
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getVersion()B

    move-result v1

    .line 2701
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v2

    .line 2700
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->callToRebootEscrowIfNeeded(IB[B)V

    .line 2703
    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2704
    return-void
.end method

.method private onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V
    .locals 13
    .param p1, "authToken"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p2, "challengeType"    # I
    .param p3, "challenge"    # J
    .param p6, "metrics"    # Landroid/app/admin/PasswordMetrics;
    .param p7, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;",
            "IJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;",
            "Landroid/app/admin/PasswordMetrics;",
            "I)V"
        }
    .end annotation

    .line 2920
    .local p5, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p6

    move/from16 v12, p7

    if-eqz v11, :cond_0

    .line 2921
    monitor-enter p0

    .line 2922
    :try_start_0
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2923
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2925
    :cond_0
    const-string v0, "LockSettingsService"

    const-string v1, "Null metrics after credential verification"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v0

    invoke-direct {p0, v0, v12}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 2931
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v0

    .line 2932
    .local v0, "secret":[B
    const/4 v3, 0x0

    move-object v1, p0

    move/from16 v2, p7

    move-object v4, v0

    move v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[BIJLjava/util/ArrayList;)V

    .line 2933
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 2935
    .end local v0    # "secret":[B
    invoke-direct {p0, p1, v12}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2937
    invoke-direct {p0, v12}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2938
    invoke-direct {p0, v12}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 2940
    :cond_1
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, v12}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulStrongAuthUnlock(I)V

    .line 2942
    invoke-direct {p0, v12, p1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2943
    return-void
.end method

.method private static pinOrPasswordQualityToCredentialType(I)I
    .locals 3
    .param p0, "quality"    # I

    .line 1312
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityAlphabeticPassword(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    const/4 v0, 0x4

    return v0

    .line 1315
    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->isQualityNumericPin(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1316
    const/4 v0, 0x3

    return v0

    .line 1318
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quality is neither Pin nor password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private redactActualQualityToMostLenientEquivalentQuality(I)I
    .locals 2
    .param p1, "quality"    # I

    .line 1074
    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_1

    const/high16 v1, 0x30000

    if-eq p1, v1, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_0

    const/high16 v1, 0x50000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq p1, v1, :cond_0

    .line 1087
    return p1

    .line 1078
    :cond_0
    return v0

    .line 1081
    :cond_1
    return v0
.end method

.method private removeAllFaceForUser(I)V
    .locals 7
    .param p1, "userId"    # I

    .line 3044
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object v0

    .line 3045
    .local v0, "mFaceManager":Landroid/hardware/face/FaceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3046
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3047
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->setActiveUser(I)V

    .line 3048
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3049
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v2, Landroid/hardware/face/Face;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 3050
    .local v2, "face":Landroid/hardware/face/Face;
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    .line 3052
    const-wide/16 v3, 0x2710

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3055
    goto :goto_0

    .line 3053
    :catch_0
    move-exception v3

    .line 3054
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "LockSettingsService"

    const-string v5, "Latch interrupted when removing face"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3058
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "face":Landroid/hardware/face/Face;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void
.end method

.method private removeAllFingerprintForUser(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 3025
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 3026
    .local v0, "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3027
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3028
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 3029
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 3031
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, v8

    move v4, p1

    invoke-direct/range {v2 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 3032
    .local v2, "finger":Landroid/hardware/fingerprint/Fingerprint;
    nop

    .line 3033
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->fingerprintManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v3

    .line 3032
    invoke-virtual {v0, v2, p1, v3}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 3035
    const-wide/16 v3, 0x2710

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3038
    goto :goto_0

    .line 3036
    :catch_0
    move-exception v3

    .line 3037
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "LockSettingsService"

    const-string v5, "Latch interrupted when removing fingerprint"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3041
    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2    # "finger":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void
.end method

.method private removeBiometricsForUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 3020
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFingerprintForUser(I)V

    .line 3021
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeAllFaceForUser(I)V

    .line 3022
    return-void
.end method

.method private removeEscrowToken(JI)Z
    .locals 4
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 3241
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3242
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    cmp-long v1, p1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3243
    const-string v1, "LockSettingsService"

    const-string v3, "Cannot remove password handle"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    monitor-exit v0

    return v2

    .line 3246
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removePendingToken(JI)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3247
    monitor-exit v0

    return v3

    .line 3249
    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsHandle(JI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3250
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V

    .line 3251
    monitor-exit v0

    return v3

    .line 3253
    :cond_2
    monitor-exit v0

    return v2

    .line 3255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeKeystoreProfileKey(I)V
    .locals 4
    .param p1, "targetUserId"    # I

    .line 2432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove keystore profile key for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LockSettingsService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    invoke-static {p1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 2441
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2440
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_0
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 2446
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 2447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_encrypt_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 2448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_decrypt_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    .end local v0    # "keyStore":Ljava/security/KeyStore;
    goto :goto_0

    .line 2449
    :catch_0
    move-exception v0

    .line 2452
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove keystore profile key for user:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2454
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private removeUser(IZ)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "unknownUser"    # Z

    .line 2414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->removeUser(I)V

    .line 2416
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->removeUser(I)V

    .line 2418
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 2419
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 2420
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    .line 2422
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 2423
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2424
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 2428
    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 2429
    return-void
.end method

.method private scheduleGc()V
    .locals 4

    .line 3474
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$RYXk-pEQUEGQzg20DHY1hVBg6R8;->INSTANCE:Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$RYXk-pEQUEGQzg20DHY1hVBg6R8;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3479
    return-void
.end method

.method private static secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B
    .locals 3
    .param p0, "credential"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 1984
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1986
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v1, "Android FBE credential hash"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1988
    .local v1, "personalization":[B
    const/16 v2, 0x80

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    move-object v1, v2

    .line 1989
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1990
    invoke-virtual {p0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1991
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1992
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "personalization":[B
    :catch_0
    move-exception v0

    .line 1993
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V
    .locals 5
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "isLockTiedToParent"    # Z

    .line 1673
    if-eqz p3, :cond_0

    .line 1674
    return-void

    .line 1678
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    .line 1680
    .local v0, "secret":[B
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1681
    .local v2, "profileId":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 1682
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    .line 1681
    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretChanged(I[BI)V

    .line 1683
    .end local v2    # "profileId":I
    goto :goto_1

    .line 1684
    :cond_2
    return-void
.end method

.method private sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 5
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 1644
    const/16 v0, -0x270f

    if-ne p2, v0, :cond_0

    .line 1645
    return-void

    .line 1651
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1652
    return-void

    .line 1656
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0

    .line 1658
    .local v0, "secret":[B
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1659
    .local v2, "profileId":I
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 1660
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v4

    .line 1659
    invoke-virtual {v3, v4, v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockScreenSecretAvailable(I[BI)V

    .line 1661
    .end local v2    # "profileId":I
    goto :goto_1

    .line 1662
    :cond_3
    return-void
.end method

.method private setAuthlessUserKeyProtection(I[B)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "key"    # [B

    .line 1949
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1950
    return-void
.end method

.method private setDeviceUnlockedForUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 2946
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 2947
    .local v0, "trustManager":Landroid/app/trust/TrustManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 2948
    return-void
.end method

.method private setKeyguardStoredQuality(II)V
    .locals 4
    .param p1, "quality"    # I
    .param p2, "userId"    # I

    .line 1250
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    int-to-long v1, p1

    const-string/jumbo v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    .line 1251
    return-void
.end method

.method private setKeystorePassword([BI)V
    .locals 2
    .param p1, "password"    # [B
    .param p2, "userHandle"    # I

    .line 1365
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1367
    .local v0, "ks":Landroid/security/KeyStore;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 1368
    .local v1, "passwordString":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p2, v1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    .line 1369
    return-void
.end method

.method private setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 19
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I
    .param p4, "isLockTiedToParent"    # Z

    .line 1759
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    iget-object v1, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v1

    .line 1762
    :try_start_0
    invoke-direct {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    invoke-direct/range {p0 .. p4}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1766
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1768
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    .line 1769
    invoke-direct {v8, v10, v13}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 1770
    invoke-direct {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 1771
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->createEmptyHash()Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v2

    invoke-virtual {v0, v2, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 1775
    invoke-direct {v8, v1, v10}, Lcom/android/server/locksettings/LockSettingsService;->setKeyguardStoredQuality(II)V

    .line 1776
    invoke-direct {v8, v13, v10}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 1777
    invoke-direct {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1778
    invoke-direct {v8, v10, v13}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 1779
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    invoke-direct {v8, v0, v10}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 1780
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    .line 1781
    return v12

    .line 1784
    :cond_1
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->readCredentialHash(I)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v14

    .line 1785
    .local v14, "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    invoke-direct {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1787
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1790
    :try_start_1
    invoke-virtual {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1798
    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    move-object v15, v0

    goto :goto_2

    .line 1793
    .end local v0    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :catch_0
    move-exception v0

    .line 1797
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to decrypt child profile key"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1791
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1792
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "LockSettingsService"

    const-string v3, "Child profile key not found"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    goto :goto_1

    .line 1801
    :cond_2
    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    if-nez v0, :cond_4

    .line 1802
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1803
    const-string v0, "LockSettingsService"

    const-string v2, "Saved credential provided, but none stored"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 1806
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    move-object v15, v0

    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    goto :goto_2

    .line 1809
    .end local v0    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_4
    :goto_1
    move-object/from16 v15, p2

    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v15, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :goto_2
    iget-object v2, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v2

    .line 1810
    :try_start_2
    invoke-virtual {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1811
    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {v8, v0, v15, v10}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 1812
    invoke-direct {v8, v9, v15, v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v0

    monitor-exit v2

    return v0

    .line 1815
    :cond_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1817
    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1818
    invoke-virtual {v15}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    .line 1817
    invoke-direct {v8, v0, v2, v3, v10}, Lcom/android/server/locksettings/LockSettingsService;->enrollCredential([B[B[BI)[B

    move-result-object v7

    .line 1819
    .local v7, "enrolledHandle":[B
    if-nez v7, :cond_7

    .line 1820
    new-array v0, v12, [Ljava/lang/Object;

    .line 1821
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "pattern"

    goto :goto_3

    :cond_6
    const-string/jumbo v2, "password"

    :goto_3
    aput-object v2, v0, v1

    .line 1820
    const-string v2, "Failed to enroll %s: incorrect credential"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LockSettingsService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    return v1

    .line 1824
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v7, v0}, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->create([BI)Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;

    move-result-object v6

    .line 1825
    .local v6, "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v6, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->writeCredentialHash(Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;I)V

    .line 1829
    nop

    .line 1830
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v0

    .line 1829
    invoke-direct {v8, v0, v10}, Lcom/android/server/locksettings/LockSettingsService;->setKeyguardStoredQuality(II)V

    .line 1834
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    const-wide/16 v3, 0x0

    iget-object v5, v6, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1835
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1834
    move/from16 v2, p3

    move-object/from16 v16, v6

    .end local v6    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .local v16, "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    move-object v6, v0

    :try_start_4
    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1838
    .local v0, "gkResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    nop

    .line 1839
    invoke-direct {v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    invoke-direct {v8, v10, v9, v1}, Lcom/android/server/locksettings/LockSettingsService;->setUserKeyProtection(ILcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 1840
    invoke-direct {v8, v10}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1842
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    move-object/from16 v18, v7

    .end local v7    # "enrolledHandle":[B
    .local v18, "enrolledHandle":[B
    move-object/from16 v7, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1844
    invoke-direct {v8, v10, v13}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 1845
    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    .line 1846
    return v12

    .line 1836
    .end local v0    # "gkResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v18    # "enrolledHandle":[B
    .restart local v7    # "enrolledHandle":[B
    :catch_2
    move-exception v0

    move-object/from16 v18, v7

    .end local v7    # "enrolledHandle":[B
    .restart local v18    # "enrolledHandle":[B
    goto :goto_4

    .end local v16    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v18    # "enrolledHandle":[B
    .restart local v6    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local v7    # "enrolledHandle":[B
    :catch_3
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v18, v7

    .line 1837
    .end local v6    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v7    # "enrolledHandle":[B
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .restart local v18    # "enrolledHandle":[B
    :goto_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to verify current credential"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1815
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v16    # "willStore":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v18    # "enrolledHandle":[B
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 1766
    .end local v14    # "currentHandle":Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .end local v15    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method private setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J
    .locals 11
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "auth"    # Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .param p3, "userId"    # I

    .line 2963
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v0

    .line 2966
    .local v0, "newHandle":J
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2968
    const/4 v2, 0x0

    .line 2970
    .local v2, "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2976
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    const-wide/16 v7, 0x0

    move-object v6, p2

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 2980
    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2981
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    const-wide/16 v8, 0x0

    move-object v7, p2

    move v10, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2982
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {p0, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 2983
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2984
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_0

    .line 2989
    .end local v2    # "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordsForAllTiedProfiles(I)Ljava/util/Map;

    move-result-object v2

    .line 2992
    .restart local v2    # "profilePasswords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 2993
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 2997
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, p3, v4, v3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUserKey(I[B[B)V

    .line 2998
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {p0, p3, v3}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 2999
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 3000
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 3001
    invoke-direct {p0, v4, p3}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 3002
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeBiometricsForUser(I)V

    .line 3004
    :goto_0
    invoke-direct {p0, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordHandleLocked(JI)V

    .line 3005
    invoke-direct {p0, p3, v2}, Lcom/android/server/locksettings/LockSettingsService;->synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V

    .line 3007
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 3008
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v3, p3}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    .line 3010
    if-eqz v2, :cond_2

    .line 3011
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3012
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 3013
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    goto :goto_1

    .line 3016
    :cond_2
    return-wide v0
.end method

.method private setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 4
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 3261
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3262
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3265
    invoke-direct/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    move-result v1

    .line 3267
    .local v1, "result":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3268
    if-eqz v1, :cond_1

    .line 3269
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3270
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, p5, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 3271
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3272
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3276
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$3iCV7W6YQrxOv5dDGr5Cx3toXr0;

    invoke-direct {v2, p0, p5}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$3iCV7W6YQrxOv5dDGr5Cx3toXr0;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3278
    :cond_0
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    .line 3279
    invoke-direct {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    goto :goto_0

    .line 3271
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3281
    :cond_1
    :goto_0
    return v1

    .line 3263
    .end local v1    # "result":Z
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "tokenHandle":J
    .end local p4    # "token":[B
    .end local p5    # "userId":I
    throw v1

    .line 3267
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "tokenHandle":J
    .restart local p4    # "token":[B
    .restart local p5    # "userId":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 6
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "tokenHandle"    # J
    .param p4, "token"    # [B
    .param p5, "userId"    # I

    .line 3288
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3289
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 3288
    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    .line 3290
    .local v0, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v2, 0x0

    const-string v3, "LockSettingsService"

    if-nez v1, :cond_0

    .line 3291
    const-string v1, "Invalid escrow token supplied"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3292
    return v2

    .line 3294
    :cond_0
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3297
    const-string v1, "Obsolete token: synthetic password derived but it fails GK verification."

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    return v2

    .line 3301
    :cond_1
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p5, v1}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3302
    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 3303
    .local v1, "oldHandle":J
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v3, p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    .line 3304
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 3305
    const/4 v3, 0x1

    return v3
.end method

.method private setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 1181
    const-string/jumbo v0, "lockscreen.profilechallenge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    .line 1182
    .local v1, "old":Z
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1184
    if-eqz p2, :cond_0

    .line 1185
    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1186
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_0

    .line 1188
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :goto_0
    nop

    .line 1194
    return-void

    .line 1190
    :catch_0
    move-exception v2

    .line 1191
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1192
    throw v2
.end method

.method private setSyntheticPasswordHandleLocked(JI)V
    .locals 5
    .param p1, "handle"    # J
    .param p3, "userId"    # I

    .line 2815
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    .line 2816
    .local v0, "oldHandle":J
    const-string/jumbo v2, "sp-handle"

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2817
    const-string/jumbo v2, "prev-sp-handle"

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "sp-handle-ts"

    invoke-virtual {p0, v4, v2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 2820
    return-void
.end method

.method private setUserKeyProtection(ILcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "vcr"    # Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1955
    if-eqz p3, :cond_2

    .line 1958
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1962
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    .line 1963
    .local v0, "token":[B
    if-eqz v0, :cond_0

    .line 1966
    invoke-static {p2}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1967
    return-void

    .line 1964
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1959
    .end local v0    # "token":[B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-OK response verifying a credential we just set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1960
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1956
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null response verifying a credential we just set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 2
    .param p1, "password"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userHandle"    # I

    .line 2305
    monitor-enter p0

    .line 2306
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2307
    monitor-exit p0

    .line 2308
    return-void

    .line 2307
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "detail"    # Ljava/lang/CharSequence;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .line 686
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 688
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080548

    .line 690
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 691
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 692
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 693
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 694
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 696
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 697
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 698
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 699
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 700
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 702
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 704
    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .locals 13
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 659
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 660
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x10406d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 662
    .local v1, "title":Ljava/lang/CharSequence;
    const v2, 0x10406d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 664
    .local v8, "message":Ljava/lang/CharSequence;
    const v2, 0x10406d1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 667
    .local v9, "detail":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/app/KeyguardManager;

    .line 668
    .local v10, "km":Landroid/app/KeyguardManager;
    nop

    .line 669
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 668
    const/4 v3, 0x0

    invoke-virtual {v10, v3, v3, v2}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v11

    .line 670
    .local v11, "unlockIntent":Landroid/content/Intent;
    if-nez v11, :cond_0

    .line 671
    return-void

    .line 673
    :cond_0
    const/high16 v2, 0x10800000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 675
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v11, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 678
    .local v12, "intent":Landroid/app/PendingIntent;
    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v12

    invoke-direct/range {v2 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 679
    return-void
.end method

.method private spBasedDoVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 20
    .param p1, "userCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "challengeType"    # I
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockscreenCredential;",
            "IJI",
            "Lcom/android/internal/widget/ICheckCredentialProgressCallback;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)",
            "Lcom/android/internal/widget/VerifyCredentialResponse;"
        }
    .end annotation

    .line 2848
    .local p7, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    move-object/from16 v9, p0

    move/from16 v0, p2

    move/from16 v8, p5

    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService$Injector;->hasEnrolledBiometrics(I)Z

    move-result v7

    .line 2850
    .local v7, "hasEnrolledBiometrics":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "spBasedDoVerifyCredential: user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " challengeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hasEnrolledBiometrics="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 2857
    .local v15, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v15, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    .line 2861
    const/4 v0, 0x2

    .line 2862
    .end local p2    # "challengeType":I
    .local v0, "challengeType":I
    iget-object v1, v9, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/face/FaceManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceManager;

    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v1

    move/from16 v16, v0

    move-wide/from16 v17, v1

    .end local p3    # "challenge":J
    .local v1, "challenge":J
    goto :goto_0

    .line 2867
    .end local v0    # "challengeType":I
    .end local v1    # "challenge":J
    .restart local p2    # "challengeType":I
    .restart local p3    # "challenge":J
    :cond_0
    move-wide/from16 v17, p3

    move/from16 v16, v0

    .end local p2    # "challengeType":I
    .end local p3    # "challenge":J
    .local v16, "challengeType":I
    .local v17, "challenge":J
    :goto_0
    iget-object v13, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v13

    .line 2868
    :try_start_0
    invoke-direct {v9, v8}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v0, :cond_1

    .line 2869
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 2894
    :catchall_0
    move-exception v0

    :goto_1
    move v12, v8

    move-object v4, v13

    move-object/from16 v19, v15

    move v13, v7

    goto/16 :goto_6

    .line 2871
    :cond_1
    const/16 v0, -0x270f

    if-ne v8, v0, :cond_2

    .line 2872
    :try_start_2
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v14, p1

    move-object/from16 v12, p6

    :try_start_3
    invoke-virtual {v0, v1, v14, v12}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v0

    .line 2894
    :catchall_1
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v12, p6

    goto :goto_1

    .line 2876
    :cond_2
    move-object/from16 v14, p1

    move-object/from16 v12, p6

    :try_start_4
    invoke-virtual {v9, v8}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v2

    .line 2877
    .local v2, "handle":J
    iget-object v0, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2878
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 2877
    move-object/from16 v4, p1

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v0

    .line 2880
    .local v0, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2882
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-nez v4, :cond_4

    .line 2885
    :try_start_5
    iget-object v10, v9, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v11

    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v12, v4

    move-object v4, v13

    move-wide/from16 v13, v17

    move-object/from16 v19, v15

    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "pm":Landroid/content/pm/PackageManager;
    move/from16 v15, p5

    :try_start_6
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    move-object v1, v5

    .line 2887
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    if-eqz v5, :cond_3

    .line 2890
    const-string v5, "LockSettingsService"

    const-string/jumbo v6, "verifyChallenge with SP failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    sget-object v5, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v5

    .line 2887
    :cond_3
    move-object v10, v1

    goto :goto_2

    .line 2894
    .end local v0    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v2    # "handle":J
    :catchall_2
    move-exception v0

    move v13, v7

    move v12, v8

    goto/16 :goto_6

    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    :catchall_3
    move-exception v0

    move-object v4, v13

    move-object/from16 v19, v15

    move v13, v7

    move v12, v8

    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    goto/16 :goto_6

    .line 2882
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v2    # "handle":J
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    move-object v4, v13

    move-object/from16 v19, v15

    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    move-object v10, v1

    .line 2894
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v2    # "handle":J
    .local v10, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_2
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2895
    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_7

    .line 2897
    if-eqz v7, :cond_6

    .line 2898
    if-nez p7, :cond_5

    .line 2899
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .end local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .local v1, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    goto :goto_3

    .line 2898
    .end local v1    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .restart local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :cond_5
    move-object/from16 v1, p7

    .line 2901
    .end local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .restart local v1    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :goto_3
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;

    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v3

    invoke-direct {v2, v9, v8, v3}, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;-><init>(Lcom/android/server/locksettings/LockSettingsService;I[B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v1

    goto :goto_4

    .line 2897
    .end local v1    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .restart local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :cond_6
    move-object/from16 v11, p7

    .line 2904
    .end local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .local v11, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :goto_4
    iget-object v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 2905
    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    move-result-object v12

    .line 2904
    move-object/from16 v1, p0

    move/from16 v3, v16

    move-wide/from16 v4, v17

    move-object v6, v11

    move v13, v7

    .end local v7    # "hasEnrolledBiometrics":Z
    .local v13, "hasEnrolledBiometrics":Z
    move-object v7, v12

    move v12, v8

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V

    goto :goto_5

    .line 2906
    .end local v11    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .end local v13    # "hasEnrolledBiometrics":Z
    .restart local v7    # "hasEnrolledBiometrics":Z
    .restart local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :cond_7
    move v13, v7

    move v12, v8

    .end local v7    # "hasEnrolledBiometrics":Z
    .restart local v13    # "hasEnrolledBiometrics":Z
    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 2907
    invoke-virtual {v10}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v1

    if-lez v1, :cond_8

    .line 2908
    const/16 v1, 0x8

    invoke-virtual {v9, v1, v12}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 2912
    :cond_8
    move-object/from16 v11, p7

    .end local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .restart local v11    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :goto_5
    return-object v10

    .line 2894
    .end local v0    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v10    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v11    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    .end local v13    # "hasEnrolledBiometrics":Z
    .restart local v7    # "hasEnrolledBiometrics":Z
    .restart local p7    # "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :catchall_4
    move-exception v0

    move v13, v7

    move v12, v8

    .end local v7    # "hasEnrolledBiometrics":Z
    .restart local v13    # "hasEnrolledBiometrics":Z
    goto :goto_6

    .end local v13    # "hasEnrolledBiometrics":Z
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "hasEnrolledBiometrics":Z
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    :catchall_5
    move-exception v0

    move v12, v8

    move-object v4, v13

    move-object/from16 v19, v15

    move v13, v7

    .end local v7    # "hasEnrolledBiometrics":Z
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v13    # "hasEnrolledBiometrics":Z
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    :goto_6
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_6
.end method

.method private spBasedSetLockCredentialInternalLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 14
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I
    .param p4, "isLockTiedToParent"    # Z

    .line 3107
    move-object v1, p0

    move-object v2, p1

    move/from16 v10, p3

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    const-string v11, "LockSettingsService"

    if-eqz v0, :cond_0

    invoke-direct {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3111
    :try_start_0
    invoke-virtual {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3119
    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    goto :goto_1

    .line 3114
    .end local v0    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :catch_0
    move-exception v0

    .line 3118
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Failed to decrypt child profile key"

    invoke-static {v11, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3112
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 3113
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Child profile key not found"

    invoke-static {v11, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3121
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_0
    move-object/from16 v0, p2

    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v12

    .line 3122
    .local v12, "handle":J
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3123
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const/4 v9, 0x0

    .line 3122
    move-wide v5, v12

    move-object v7, v0

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v3

    .line 3124
    .local v3, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v4, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3125
    .local v4, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    iget-object v5, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3127
    .local v5, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    const/4 v6, 0x1

    if-nez v5, :cond_4

    .line 3128
    const/4 v7, 0x0

    if-eqz v4, :cond_3

    .line 3129
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_2

    .line 3133
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v8

    if-ne v8, v6, :cond_2

    .line 3134
    const-string v6, "Failed to enroll: rate limit exceeded."

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    return v7

    .line 3138
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "password change failed"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3130
    :cond_3
    :goto_2
    const-string v6, "Failed to enroll: incorrect credential."

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    return v7

    .line 3141
    :cond_4
    invoke-direct {p0, v10, v5}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 3142
    invoke-direct {p0, p1, v5, v10}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithAuthTokenLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    .line 3143
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v7, v12, v13, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    .line 3144
    move/from16 v7, p4

    invoke-direct {p0, p1, v10, v7}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(Lcom/android/internal/widget/LockscreenCredential;IZ)V

    .line 3145
    return v6
.end method

.method private synchronizeUnifiedWorkChallengeForProfiles(ILjava/util/Map;)V
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockscreenCredential;",
            ">;)V"
        }
    .end annotation

    .line 1584
    .local p2, "profilePasswordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/widget/LockscreenCredential;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1585
    return-void

    .line 1587
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    .line 1588
    .local v0, "isSecure":Z
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    .line 1589
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1590
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 1591
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1592
    .local v4, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1593
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1594
    .local v5, "managedUserId":I
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1595
    goto :goto_1

    .line 1597
    :cond_1
    if-eqz v0, :cond_2

    .line 1598
    nop

    .line 1599
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 1598
    invoke-virtual {p0, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V

    goto :goto_1

    .line 1603
    :cond_2
    if-eqz p2, :cond_3

    .line 1604
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1605
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 1606
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockscreenCredential;

    .line 1605
    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v5, v8}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 1609
    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v6, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 1610
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_1

    .line 1612
    :cond_3
    const-string v6, "LockSettingsService"

    const-string v7, "Attempt to clear tied challenge, but no password supplied."

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    invoke-static {v5}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1616
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 1617
    .local v6, "userHandle":Landroid/os/UserHandle;
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1590
    .end local v4    # "profile":Landroid/content/pm/UserInfo;
    .end local v5    # "managedUserId":I
    .end local v6    # "userHandle":Landroid/os/UserHandle;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1626
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method static timestampToString(J)Ljava/lang/String;
    .locals 2
    .param p0, "timestamp"    # J

    .line 3347
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryDeriveAuthTokenForUnsecuredPrimaryUser(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 802
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 804
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 805
    monitor-exit v0

    return-void

    .line 808
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 809
    .local v4, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 810
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    .line 811
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    const/4 v8, 0x0

    .line 810
    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    .line 812
    .local v1, "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v2, :cond_1

    .line 813
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieved auth token for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    goto :goto_0

    .line 816
    :cond_1
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Auth token not available for user "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v1    # "result":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v4    # "handle":J
    :goto_0
    monitor-exit v0

    .line 819
    return-void

    .line 818
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unlockChildProfile(IZIJLjava/util/ArrayList;)V
    .locals 8
    .param p1, "profileHandle"    # I
    .param p2, "ignoreUserNotAuthenticated"    # Z
    .param p3, "challengeType"    # I
    .param p4, "challenge"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)V"
        }
    .end annotation

    .line 1415
    .local p6, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p3

    move-wide v3, p4

    move v5, p1

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;Ljava/util/ArrayList;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    goto :goto_0

    .line 1418
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    const-string v2, "LockSettingsService"

    if-eqz v1, :cond_0

    .line 1423
    const-string v1, "Child profile key not found"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1424
    :cond_0
    if-eqz p2, :cond_1

    instance-of v1, v0, Landroid/security/keystore/UserNotAuthenticatedException;

    if-eqz v1, :cond_1

    .line 1425
    const-string v1, "Parent keystore seems locked, ignoring"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1427
    :cond_1
    const-string v1, "Failed to decrypt child profile key"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1430
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private unlockKeystore([BI)V
    .locals 2
    .param p1, "password"    # [B
    .param p2, "userHandle"    # I

    .line 1374
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 1375
    .local v0, "passwordString":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1376
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-virtual {v1, p2, v0}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    .line 1377
    return-void
.end method

.method private unlockUser(I[B[B)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    .line 1433
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[BIJLjava/util/ArrayList;)V

    .line 1434
    return-void
.end method

.method private unlockUser(I[B[BIJLjava/util/ArrayList;)V
    .locals 18
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .param p4, "challengeType"    # I
    .param p5, "challenge"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[BIJ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;",
            ">;)V"
        }
    .end annotation

    .line 1447
    .local p7, "resetLockouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;>;"
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocking user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with secret only, length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1448
    if-eqz v10, :cond_0

    array-length v1, v10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1447
    const-string v12, "LockSettingsService"

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v13

    .line 1451
    .local v13, "alreadyUnlocked":Z
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v14, v0

    .line 1452
    .local v14, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$4;

    invoke-direct {v0, v8, v14}, Lcom/android/server/locksettings/LockSettingsService$4;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    move-object v15, v0

    .line 1471
    .local v15, "listener":Landroid/os/IProgressListener;
    :try_start_0
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v7, p2

    invoke-interface {v0, v9, v7, v10, v15}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1474
    nop

    .line 1477
    const-wide/16 v0, 0xf

    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v14, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1480
    goto :goto_1

    .line 1478
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1482
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    return-void

    .line 1486
    :cond_1
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 1487
    .local v5, "profile":Landroid/content/pm/UserInfo;
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, v9, :cond_2

    goto :goto_2

    .line 1488
    :cond_2
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 1490
    :cond_3
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasUnifiedChallenge(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1491
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1495
    iget v2, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move/from16 v4, p4

    move-object/from16 v17, v5

    .end local v5    # "profile":Landroid/content/pm/UserInfo;
    .local v17, "profile":Landroid/content/pm/UserInfo;
    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->unlockChildProfile(IZIJLjava/util/ArrayList;)V

    move-object/from16 v1, v17

    goto :goto_3

    .line 1501
    .end local v17    # "profile":Landroid/content/pm/UserInfo;
    .restart local v5    # "profile":Landroid/content/pm/UserInfo;
    :cond_4
    move-object/from16 v17, v5

    .end local v5    # "profile":Landroid/content/pm/UserInfo;
    .restart local v17    # "profile":Landroid/content/pm/UserInfo;
    move-object/from16 v1, v17

    .end local v17    # "profile":Landroid/content/pm/UserInfo;
    .local v1, "profile":Landroid/content/pm/UserInfo;
    :try_start_2
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1504
    goto :goto_3

    .line 1502
    :catch_1
    move-exception v0

    .line 1503
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Cache work profile password failed"

    invoke-static {v12, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1490
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .restart local v5    # "profile":Landroid/content/pm/UserInfo;
    :cond_5
    move-object v1, v5

    .line 1509
    .end local v5    # "profile":Landroid/content/pm/UserInfo;
    .restart local v1    # "profile":Landroid/content/pm/UserInfo;
    :goto_3
    if-nez v13, :cond_6

    .line 1510
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1512
    .local v2, "ident":J
    :try_start_3
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1514
    invoke-static {v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    .line 1515
    goto :goto_4

    .line 1514
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->restoreCallingIdentity(J)V

    .line 1515
    throw v0

    .line 1518
    .end local v1    # "profile":Landroid/content/pm/UserInfo;
    .end local v2    # "ident":J
    :cond_6
    :goto_4
    move-object/from16 v7, p2

    goto :goto_2

    .line 1520
    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1521
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$25VQEBWGuGqdc4Xjn9m8HXt9ZTI;

    move/from16 v2, p4

    invoke-direct {v1, v8, v11, v2}, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$25VQEBWGuGqdc4Xjn9m8HXt9ZTI;-><init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 1520
    :cond_8
    move/from16 v2, p4

    .line 1534
    :goto_5
    return-void

    .line 1472
    :catch_2
    move-exception v0

    move/from16 v2, p4

    .line 1473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private unlockUserKey(I[B[B)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    .line 2008
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2010
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    iget v2, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/os/storage/IStorageManager;->unlockUserKey(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    nop

    .line 2015
    return-void

    .line 2011
    :catch_0
    move-exception v1

    .line 2012
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to unlock user key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private unlockUserWithToken(J[BI)Z
    .locals 10
    .param p1, "tokenHandle"    # J
    .param p3, "token"    # [B
    .param p4, "userId"    # I

    .line 3310
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3311
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3314
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v1

    .line 3316
    .local v1, "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v2, :cond_0

    .line 3317
    const-string v2, "LockSettingsService"

    const-string v3, "Invalid escrow token supplied"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 3320
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3325
    iget-object v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    .line 3326
    invoke-direct {p0, v0, p4}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Landroid/app/admin/PasswordMetrics;

    move-result-object v8

    .line 3325
    move-object v2, p0

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;IJLjava/util/ArrayList;Landroid/app/admin/PasswordMetrics;I)V

    .line 3327
    const/4 v0, 0x1

    return v0

    .line 3312
    .end local v1    # "authResult":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Escrow token is disabled on the current user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "tokenHandle":J
    .end local p3    # "token":[B
    .end local p4    # "userId":I
    throw v1

    .line 3320
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "tokenHandle":J
    .restart local p3    # "token":[B
    .restart local p4    # "userId":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private verifyCredential(ILcom/android/server/locksettings/LockSettingsStorage$CredentialHash;Lcom/android/internal/widget/LockscreenCredential;IJLcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p4, "challengeType"    # I
    .param p5, "challenge"    # J
    .param p7, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 2228
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2230
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0

    .line 2233
    :cond_1
    if-eqz p2, :cond_9

    iget-object v0, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v0, v0

    if-eqz v0, :cond_9

    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    .line 2239
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 2243
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iget-object v5, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    .line 2244
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v6

    .line 2243
    move v2, p1

    move-wide v3, p5

    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    .local v0, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_0

    .line 2245
    .end local v0    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :catch_0
    move-exception v0

    .line 2246
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "gatekeeper verify failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2247
    sget-object v1, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    move-object v0, v1

    .line 2249
    .local v0, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->convertResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2250
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v2

    .line 2252
    .local v2, "shouldReEnroll":Z
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_7

    .line 2256
    if-eqz p7, :cond_3

    .line 2258
    :try_start_1
    invoke-interface {p7}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2261
    goto :goto_1

    .line 2259
    :catch_1
    move-exception v3

    .line 2260
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "progressCallback throws exception"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2263
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    invoke-direct {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setUserPasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 2264
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore([BI)V

    .line 2266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unlocking user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " with token length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2267
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2266
    const-string v4, "LockSettingsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v3

    invoke-static {p3}, Lcom/android/server/locksettings/LockSettingsService;->secretFromCredential(Lcom/android/internal/widget/LockscreenCredential;)[B

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    .line 2270
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2271
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 2273
    :cond_4
    if-eqz v2, :cond_5

    .line 2274
    const/4 v3, 0x0

    invoke-direct {p0, p3, p3, p1, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    goto :goto_2

    .line 2279
    :cond_5
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v3

    .line 2280
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->shouldMigrateToSyntheticPasswordLocked(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2281
    iget-object v4, p2, Lcom/android/server/locksettings/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual {p0, v4, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v4

    .line 2283
    .local v4, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-direct {p0, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->activateEscrowTokens(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2285
    .end local v4    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    :cond_6
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2288
    :goto_2
    invoke-direct {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    goto :goto_3

    .line 2285
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 2290
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 2291
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    if-lez v3, :cond_8

    .line 2292
    const/16 v3, 0x8

    invoke-virtual {p0, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 2296
    :cond_8
    :goto_3
    return-object v1

    .line 2234
    .end local v0    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v2    # "shouldReEnroll":Z
    :cond_9
    :goto_4
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v0
.end method


# virtual methods
.method public checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;

    .line 2093
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2095
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move-object v6, p3

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2097
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 2100
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 2101
    .local v1, "credentialString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->retainPassword(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2103
    .end local v1    # "credentialString":Ljava/lang/String;
    :cond_1
    nop

    .line 2105
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2103
    return-object v0

    .line 2105
    .end local v0    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2106
    throw v0
.end method

.method public checkVoldPassword(I)Z
    .locals 9
    .param p1, "userId"    # I

    .line 2352
    const-string v0, "LockSettingsService"

    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2353
    return v2

    .line 2355
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mFirstCallToVold:Z

    .line 2357
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2367
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 2370
    .local v1, "service":Landroid/os/storage/IStorageManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2372
    .local v3, "identity":J
    :try_start_0
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPassword()Ljava/lang/String;

    move-result-object v5

    .line 2373
    .local v5, "password":Ljava/lang/String;
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->clearPassword()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2378
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2379
    nop

    .line 2380
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2381
    return v2

    .line 2386
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    const/4 v8, 0x3

    if-eq v6, v8, :cond_3

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    .line 2397
    const/4 v6, 0x0

    .line 2398
    .local v6, "credential":Lcom/android/internal/widget/LockscreenCredential;
    const-string v8, "Unknown credential type"

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2394
    .end local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_2
    invoke-static {v5}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 2395
    .restart local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    goto :goto_0

    .line 2391
    .end local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_3
    invoke-static {v5}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 2392
    .restart local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    goto :goto_0

    .line 2388
    .end local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->createPattern(Ljava/lang/String;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v6

    .line 2389
    .restart local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    nop

    .line 2401
    :goto_0
    if-eqz v6, :cond_5

    const/4 v8, 0x0

    .line 2402
    invoke-virtual {p0, v6, p1, v8}, Lcom/android/server/locksettings/LockSettingsService;->checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v8

    .line 2403
    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_5

    .line 2404
    return v7

    .line 2408
    .end local v6    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_5
    goto :goto_1

    .line 2406
    :catch_0
    move-exception v6

    .line 2407
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "checkVoldPassword failed: "

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2410
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    return v2

    .line 2378
    .end local v5    # "password":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2374
    :catch_1
    move-exception v5

    .line 2375
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "vold getPassword() failed"

    invoke-static {v0, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2376
    nop

    .line 2378
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2376
    return v2

    .line 2378
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2379
    throw v0
.end method

.method public closeSession(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2590
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->closeSession(Ljava/lang/String;)V

    .line 2591
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "printWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3367
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v3, "LockSettingsService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3368
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v3, v0

    .line 3370
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v0, "Current lock settings service state:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3371
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3373
    const-string v0, "User State:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3374
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3375
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 3376
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    move v5, v0

    .local v5, "user":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 3377
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    .line 3378
    .local v6, "userId":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "User "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3380
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v7

    .line 3381
    :try_start_0
    const-string v0, "SP Handle: %x"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 3382
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 3381
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3383
    const-string v0, "Last changed: %s (%x)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "sp-handle-ts"

    .line 3384
    const-wide/16 v12, 0x0

    invoke-virtual {v1, v10, v12, v13, v6}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v14

    invoke-static {v14, v15}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    const-string/jumbo v10, "prev-sp-handle"

    .line 3385
    invoke-virtual {v1, v10, v12, v13, v6}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v8

    .line 3383
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3386
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3388
    :try_start_1
    const-string v0, "SID: %x"

    new-array v7, v8, [Ljava/lang/Object;

    .line 3389
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v11

    .line 3388
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3392
    goto :goto_1

    .line 3390
    :catch_0
    move-exception v0

    .line 3395
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Quality: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CredentialType: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3397
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v7

    .line 3396
    invoke-static {v7}, Lcom/android/server/locksettings/LockSettingsService;->credentialTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SeparateChallenge: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3399
    new-array v0, v8, [Ljava/lang/Object;

    .line 3400
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "known"

    goto :goto_2

    :cond_1
    const-string/jumbo v7, "unknown"

    :goto_2
    aput-object v7, v0, v11

    .line 3399
    const-string v7, "Metrics: %s"

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3401
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3376
    .end local v6    # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 3386
    .restart local v6    # "userId":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3403
    .end local v5    # "user":I
    .end local v6    # "userId":I
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3404
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3406
    const-string v0, "Storage:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3407
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3408
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3409
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3410
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3412
    const-string v0, "StrongAuth:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3414
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3415
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3416
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3418
    const-string v0, "RebootEscrow:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3419
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3420
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/RebootEscrowManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3421
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3422
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3423
    return-void
.end method

.method public generateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2600
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2606
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .line 1229
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1230
    const-string/jumbo v0, "lock_pattern_autolock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1231
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getCredentialType(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 1260
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordHavePermission(I)V

    .line 1261
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    move-result v0

    return v0
.end method

.method public getCredentialTypeInternal(I)I
    .locals 5
    .param p1, "userId"    # I

    .line 1271
    const/16 v0, -0x270f

    if-ne p1, v0, :cond_0

    .line 1272
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getFrpCredentialType()I

    move-result v0

    return v0

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 1275
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1276
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v1

    .line 1277
    .local v1, "handle":J
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getCredentialType(JI)I

    move-result v3

    .line 1278
    .local v3, "rawType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 1279
    monitor-exit v0

    return v3

    .line 1281
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v4

    monitor-exit v0

    return v4

    .line 1283
    .end local v1    # "handle":J
    .end local v3    # "rawType":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1287
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getKeyguardStoredQuality(I)I

    move-result v0

    .line 1288
    .local v0, "savedQuality":I
    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1289
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1290
    const/4 v1, 0x1

    return v1

    .line 1292
    :cond_3
    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 1293
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasPassword(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1294
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->pinOrPasswordQualityToCredentialType(I)I

    move-result v1

    return v1

    .line 1296
    :cond_4
    const/4 v1, -0x1

    return v1

    .line 1283
    .end local v0    # "savedQuality":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1386
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v0

    .line 1387
    .local v0, "storedData":[B
    if-eqz v0, :cond_0

    .line 1390
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 1391
    .local v3, "iv":[B
    array-length v4, v0

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1394
    .local v2, "encryptedPassword":[B
    const-string v4, "AndroidKeyStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 1395
    .local v4, "keyStore":Ljava/security/KeyStore;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "profile_key_name_decrypt_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5

    check-cast v5, Ljavax/crypto/SecretKey;

    .line 1399
    .local v5, "decryptionKey":Ljavax/crypto/SecretKey;
    const-string v6, "AES/GCM/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 1402
    .local v6, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x2

    new-instance v8, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v9, 0x80

    invoke-direct {v8, v9, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v6, v7, v5, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1403
    invoke-virtual {v6, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 1404
    .local v7, "decryptionResult":[B
    invoke-static {v7}, Lcom/android/internal/widget/LockscreenCredential;->createManagedPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v8

    .line 1406
    .local v8, "credential":Lcom/android/internal/widget/LockscreenCredential;
    invoke-static {v7, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 1407
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v1, p1, v8}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 1408
    return-object v8

    .line 1388
    .end local v2    # "encryptedPassword":[B
    .end local v3    # "iv":[B
    .end local v4    # "keyStore":Ljava/security/KeyStore;
    .end local v5    # "decryptionKey":Ljavax/crypto/SecretKey;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "decryptionResult":[B
    .end local v8    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Child profile lock file not found"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4

    monitor-enter p0

    .line 2667
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v0, :cond_0

    .line 2668
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2671
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    :cond_0
    :try_start_1
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2672
    .local v0, "service":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2674
    :try_start_2
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/server/locksettings/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService$1;)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2677
    goto :goto_0

    .line 2675
    :catch_0
    move-exception v1

    .line 2676
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "LockSettingsService"

    const-string v3, " Unable to register death recipient"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2678
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2679
    monitor-exit p0

    return-object v1

    .line 2682
    :cond_1
    :try_start_4
    const-string v2, "LockSettingsService"

    const-string v3, "Unable to acquire GateKeeperService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2683
    monitor-exit p0

    return-object v1

    .line 2666
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .locals 9
    .param p1, "currentCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "userId"    # I

    .line 3156
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3158
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3160
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v0

    .line 3164
    goto :goto_0

    .line 3161
    :catch_0
    move-exception v0

    .line 3162
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to get work profile credential"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3163
    nop

    .line 3181
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3163
    return-object v1

    .line 3166
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3167
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3168
    const-string v2, "LockSettingsService"

    const-string v3, "Synthetic password not enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3181
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3169
    return-object v1

    .line 3171
    :cond_1
    :try_start_5
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    .line 3172
    .local v4, "handle":J
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3173
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    const/4 v8, 0x0

    .line 3172
    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object v2

    .line 3174
    .local v2, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-nez v3, :cond_2

    .line 3175
    const-string v3, "LockSettingsService"

    const-string v6, "Current credential is incorrect"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3181
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3176
    return-object v1

    .line 3178
    :cond_2
    :try_start_6
    iget-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    invoke-virtual {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->derivePasswordHashFactor()[B

    move-result-object v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3181
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3178
    return-object v1

    .line 3179
    .end local v2    # "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .end local v4    # "handle":J
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "userId":I
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3181
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "currentCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "userId":I
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 3182
    throw v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2623
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2532
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I

    .line 1238
    invoke-direct {p0, p1, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1239
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    .line 1356
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkCryptKeeperPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "no crypt_keeper or admin permission to get the password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    :cond_0
    sget-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoverySecretTypes()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2564
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoverySecretTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getRecoveryStatus()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2553
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getRecoveryStatus()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 1153
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1154
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1244
    invoke-direct {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1245
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStrongAuthForUser(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 2494
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2495
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method getSyntheticPasswordHandleLocked(I)J
    .locals 3
    .param p1, "userId"    # I

    .line 2810
    const-string/jumbo v0, "sp-handle"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 2
    .param p1, "userHandle"    # I

    .line 2312
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2317
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    return-object v0

    .line 2319
    :cond_0
    monitor-enter p0

    .line 2320
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PasswordMetrics;

    monitor-exit p0

    return-object v0

    .line 2321
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasPendingEscrowToken(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 3234
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 3235
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 3236
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 3237
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasSecureLockScreen()Z
    .locals 1

    .line 1148
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    return v0
.end method

.method public importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2612
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKey(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "keyBytes"    # [B
    .param p3, "metadata"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2618
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .locals 1
    .param p1, "rootCertificateAlias"    # Ljava/lang/String;
    .param p2, "recoveryServiceCertFile"    # [B
    .param p3, "recoveryServiceSigFile"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2526
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V

    .line 2528
    return-void
.end method

.method protected initializeSyntheticPasswordLocked([BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .locals 19
    .param p1, "credentialHash"    # [B
    .param p2, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I

    .line 2763
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v9, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initialize SyntheticPassword for user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "LockSettingsService"

    invoke-static {v10, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/os/RuntimeInit;->setInitializedFinished(Z)V

    .line 2767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 2770
    .local v11, "start":J
    nop

    .line 2771
    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v13, 0x1

    if-nez v4, :cond_0

    move v3, v13

    .line 2770
    :cond_0
    const-string v4, "Cannot reinitialize SP"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 2774
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 2775
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 2774
    invoke-virtual {v3, v4, v1, v2, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v14

    .line 2776
    .local v14, "auth":Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    invoke-direct {v0, v9, v14}, Lcom/android/server/locksettings/LockSettingsService;->onAuthTokenKnownForUser(ILcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)V

    .line 2777
    const/4 v3, 0x0

    if-nez v14, :cond_1

    .line 2778
    const-string v4, "initializeSyntheticPasswordLocked returns null auth token"

    invoke-static {v10, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    return-object v3

    .line 2781
    :cond_1
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v14, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J

    move-result-wide v6

    .line 2783
    .local v6, "handle":J
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v4

    if-nez v4, :cond_3

    .line 2784
    if-nez v1, :cond_2

    .line 2787
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-virtual {v3, v4, v14, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    .line 2789
    :cond_2
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    const-wide/16 v15, 0x0

    move-object v5, v14

    move-wide/from16 v17, v6

    .end local v6    # "handle":J
    .local v17, "handle":J
    move-wide v6, v15

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2790
    invoke-virtual {v14}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveDiskEncryptionKey()[B

    move-result-object v3

    invoke-direct {v0, v9, v3}, Lcom/android/server/locksettings/LockSettingsService;->setAuthlessUserKeyProtection(I[B)V

    .line 2791
    invoke-virtual {v14}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveKeyStorePassword()[B

    move-result-object v3

    invoke-direct {v0, v3, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    goto :goto_0

    .line 2793
    .end local v17    # "handle":J
    .restart local v6    # "handle":J
    :cond_3
    move-wide/from16 v17, v6

    .end local v6    # "handle":J
    .restart local v17    # "handle":J
    invoke-direct {v0, v9, v3}, Lcom/android/server/locksettings/LockSettingsService;->clearUserKeyProtection(I[B)V

    .line 2794
    invoke-direct {v0, v3, v9}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 2795
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->gateKeeperClearSecureUserId(I)V

    .line 2797
    :goto_0
    invoke-direct {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 2798
    move-wide/from16 v3, v17

    .end local v17    # "handle":J
    .local v3, "handle":J
    invoke-direct {v0, v3, v4, v9}, Lcom/android/server/locksettings/LockSettingsService;->setSyntheticPasswordHandleLocked(JI)V

    .line 2801
    invoke-static {v13}, Lcom/android/internal/os/RuntimeInit;->setInitializedFinished(Z)V

    .line 2802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2803
    .local v5, "end":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initialize SyntheticPassword used "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v5, v11

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    return-object v14
.end method

.method isSyntheticPasswordBasedCredential(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 2824
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    monitor-enter v0

    .line 2825
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2826
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$notifyPasswordChanged$2$LockSettingsService(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2337
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(I)V

    .line 2338
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->reportPasswordChanged(I)V

    .line 2339
    return-void
.end method

.method public synthetic lambda$setLockCredentialWithToken$3$LockSettingsService(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 3276
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I[B[B)V

    return-void
.end method

.method public synthetic lambda$unlockUser$1$LockSettingsService(Ljava/util/ArrayList;I)V
    .locals 4
    .param p1, "resetLockouts"    # Ljava/util/ArrayList;
    .param p2, "challengeType"    # I

    .line 1522
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    .line 1523
    .local v0, "bm":Landroid/hardware/biometrics/BiometricManager;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1524
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1525
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;

    iget v3, v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;->mUserId:I

    invoke-virtual {v0, v3}, Landroid/hardware/biometrics/BiometricManager;->setActiveUser(I)V

    .line 1526
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;

    iget-object v3, v3, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;->mHAT:[B

    invoke-virtual {v0, v3}, Landroid/hardware/biometrics/BiometricManager;->resetLockout([B)V

    .line 1524
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1528
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 1529
    const-string v2, "android.hardware.biometrics.face"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1530
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/face/FaceManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/FaceManager;

    invoke-virtual {v2}, Landroid/hardware/face/FaceManager;->revokeChallenge()I

    .line 1532
    :cond_1
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 713
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 717
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    .line 718
    .local v0, "strongAuthRequired":I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 719
    monitor-enter p0

    .line 720
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 721
    monitor-exit p0

    .line 722
    return-void

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 12
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2512
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceShell()V

    .line 2513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2515
    .local v1, "origId":J
    :try_start_0
    new-instance v3, Lcom/android/server/locksettings/LockSettingsShellCommand;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    :try_start_1
    iget-object v4, v11, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, v0}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/locksettings/LockSettingsShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2518
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2519
    nop

    .line 2520
    return-void

    .line 2518
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2519
    throw v0
.end method

.method public onStartUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 725
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(I)V

    .line 726
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 778
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 799
    return-void
.end method

.method public recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "recoveryKeyBlob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2584
    .local p3, "applicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 2458
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2459
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2460
    return-void
.end method

.method public removeCachedUnifiedChallenge(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 3343
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->removePassword(I)V

    .line 3344
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2595
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->removeKey(Ljava/lang/String;)V

    .line 2596
    return-void
.end method

.method public reportSuccessfulBiometricUnlock(ZI)V
    .locals 1
    .param p1, "isStrongBiometric"    # Z
    .param p2, "userId"    # I

    .line 2476
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    .line 2477
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportSuccessfulBiometricUnlock(ZI)V

    .line 2478
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 1
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .line 2470
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2471
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 2472
    return-void
.end method

.method public resetKeyStore(I)V
    .locals 16
    .param p1, "userId"    # I

    .line 2045
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2047
    const/4 v0, -0x1

    .line 2048
    .local v0, "managedUserId":I
    const/4 v3, 0x0

    .line 2049
    .local v3, "managedUserDecryptedPassword":Lcom/android/internal/widget/LockscreenCredential;
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 2050
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v3

    move v3, v0

    .end local v0    # "managedUserId":I
    .local v3, "managedUserId":I
    .local v6, "managedUserDecryptedPassword":Lcom/android/internal/widget/LockscreenCredential;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 2052
    .local v8, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    .line 2053
    invoke-direct {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 2054
    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2056
    const-string v9, "LockSettingsService"

    if-ne v3, v7, :cond_0

    .line 2057
    :try_start_0
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    move-object v6, v0

    .line 2058
    iget v0, v8, Landroid/content/pm/UserInfo;->id:I

    move v3, v0

    goto :goto_1

    .line 2064
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2061
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "More than one managed profile, uid1:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid2:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2069
    :goto_1
    goto :goto_3

    .line 2068
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v7, "Failed to decrypt child profile key"

    invoke-static {v9, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2071
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "pi":Landroid/content/pm/UserInfo;
    :cond_1
    :goto_3
    goto :goto_0

    .line 2074
    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    array-length v5, v0

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v5, :cond_4

    aget v10, v0, v9

    .line 2075
    .local v10, "profileId":I
    sget-object v11, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v12, v11

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_3

    aget v14, v11, v13

    .line 2076
    .local v14, "uid":I
    iget-object v15, v1, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v10, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    invoke-virtual {v15, v8}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2075
    nop

    .end local v14    # "uid":I
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 2074
    .end local v10    # "profileId":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2080
    :cond_4
    if-eq v3, v7, :cond_5

    if-eqz v6, :cond_5

    .line 2082
    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 2085
    :cond_5
    if-eqz v6, :cond_6

    .line 2086
    invoke-virtual {v6}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 2088
    :cond_6
    return-void

    .line 2080
    :catchall_0
    move-exception v0

    if-eq v3, v7, :cond_7

    if-eqz v6, :cond_7

    .line 2082
    invoke-virtual {v1, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 2084
    :cond_7
    throw v0
.end method

.method public retainPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .line 1326
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1327
    if-eqz p1, :cond_0

    .line 1328
    sput-object p1, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    goto :goto_0

    .line 1330
    :cond_0
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1332
    :cond_1
    :goto_0
    return-void
.end method

.method public sanitizePassword()V
    .locals 1

    .line 1335
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    const-string v0, "default_password"

    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1338
    :cond_0
    return-void
.end method

.method public scheduleNonStrongBiometricIdleTimeout(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2482
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkBiometricPermission()V

    .line 2483
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->scheduleNonStrongBiometricIdleTimeout(I)V

    .line 2484
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I

    .line 1211
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1212
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setBoolean(Ljava/lang/String;ZI)V

    .line 1213
    return-void
.end method

.method public setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .locals 3
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "savedCredential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p3, "userId"    # I

    .line 1708
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-eqz v0, :cond_3

    .line 1712
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1713
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceFrpResolved()V

    .line 1723
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 1728
    invoke-virtual {v2, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 1727
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1729
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 1730
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p2

    move-object v0, p2

    goto :goto_0

    .line 1732
    :cond_0
    move-object v0, p2

    .end local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .local v0, "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1733
    const/4 p2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1735
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 1736
    monitor-exit v1

    return p2

    .line 1738
    :cond_1
    const/4 p2, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p3, v2, p2}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 1739
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifyPasswordChanged(I)V

    .line 1740
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1743
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->setDeviceUnlockedForUser(I)V

    .line 1745
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 1746
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 1747
    return v2

    .line 1740
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 1709
    .end local v0    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "savedCredential":Lcom/android/internal/widget/LockscreenCredential;
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I

    .line 1217
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1218
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->setLong(Ljava/lang/String;JI)V

    .line 1219
    return-void
.end method

.method public setRecoverySecretTypes([I)V
    .locals 1
    .param p1, "secretTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2559
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoverySecretTypes([I)V

    .line 2560
    return-void
.end method

.method public setRecoveryStatus(Ljava/lang/String;I)V
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2548
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setRecoveryStatus(Ljava/lang/String;I)V

    .line 2549
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 1166
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1167
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1172
    if-eqz p3, :cond_0

    .line 1173
    move-object v1, p3

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 1172
    :goto_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 1174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->notifySeparateProfileChallengeChanged(I)V

    .line 1176
    return-void

    .line 1174
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1168
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This operation requires secure lock screen feature."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServerParams([B)V
    .locals 1
    .param p1, "serverParams"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2543
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setServerParams([B)V

    .line 2544
    return-void
.end method

.method public setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2538
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V

    .line 2539
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1223
    invoke-direct {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 1224
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1225
    return-void
.end method

.method protected shouldMigrateToSyntheticPasswordLocked(I)Z
    .locals 4
    .param p1, "userId"    # I

    .line 2840
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSyntheticPasswordHandleLocked(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .locals 7
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "rootCertificateAlias"    # Ljava/lang/String;
    .param p3, "verifierCertPath"    # Landroid/security/keystore/recovery/RecoveryCertPath;
    .param p4, "vaultParams"    # [B
    .param p5, "vaultChallenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/security/keystore/recovery/RecoveryCertPath;",
            "[B[B",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2574
    .local p6, "secrets":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B

    move-result-object v0

    return-object v0
.end method

.method public systemReady()V
    .locals 5

    .line 881
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 882
    const v0, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "28251513"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 884
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 886
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 887
    const-string v2, "android.software.secure_lock_screen"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 888
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldData()V

    .line 889
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 890
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    .line 891
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->getAuthSecretHal()V

    .line 892
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->onSystemReady()V

    .line 893
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->loadRebootEscrowDataIfAvailable()V

    .line 895
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 896
    return-void
.end method

.method public tieManagedProfileLockIfNecessary(ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 7
    .param p1, "managedUserId"    # I
    .param p2, "managedUserPassword"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 368
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    return-void

    .line 372
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    return-void

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 388
    .local v0, "parentId":I
    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v1

    if-nez v1, :cond_3

    .line 391
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    invoke-direct {p0, v1, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 393
    return-void

    .line 399
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    .line 400
    return-void

    .line 405
    :cond_4
    nop

    .line 407
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->generateRandomProfilePassword()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v1

    .line 408
    .local v1, "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :try_start_1
    invoke-direct {p0, v1, p2, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 410
    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V

    .line 411
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 413
    .end local v1    # "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :cond_5
    return-void

    .line 407
    .restart local v1    # "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v1}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw v2

    .line 402
    .end local v1    # "unifiedProfilePassword":Lcom/android/internal/widget/LockscreenCredential;
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to talk to GateKeeper service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    return-void
.end method

.method protected tieProfileLockToParent(ILcom/android/internal/widget/LockscreenCredential;)V
    .locals 16
    .param p1, "userId"    # I
    .param p2, "password"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 1859
    move/from16 v1, p1

    const-string v0, "NoPadding"

    const-string v2, "GCM"

    const-string v3, " Callers="

    const-string v4, "The original key can now be discarded. userId: "

    const-string v5, "LockSettingsService"

    const-string/jumbo v6, "profile_key_name_encrypt_"

    :try_start_0
    const-string v7, "AES"

    invoke-static {v7}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v7

    .line 1860
    .local v7, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v8, Ljava/security/SecureRandom;

    invoke-direct {v8}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v8}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 1861
    invoke-virtual {v7}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 1862
    .local v8, "secretKey":Ljavax/crypto/SecretKey;
    const-string v9, "AndroidKeyStore"

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    .line 1863
    .local v9, "keyStore":Ljava/security/KeyStore;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1865
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v13, v8}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v14, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v11

    .line 1869
    invoke-virtual {v14, v11}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v11

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v14

    .line 1870
    invoke-virtual {v11, v14}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v11

    .line 1871
    invoke-virtual {v11}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v11

    .line 1865
    invoke-virtual {v9, v12, v13, v11}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1872
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "profile_key_name_decrypt_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v12, v8}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v13, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 1876
    invoke-virtual {v13, v2}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1877
    invoke-virtual {v2, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 1878
    invoke-virtual {v0, v15}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const/16 v2, 0x1e

    .line 1879
    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 1880
    invoke-virtual {v0, v15}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    .line 1881
    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    .line 1872
    invoke-virtual {v9, v11, v12, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v10}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    .line 1885
    .local v0, "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    const-string v2, "AES/GCM/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 1888
    .local v2, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v2, v15, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1889
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    .line 1890
    .local v10, "encryptionResult":[B
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1895
    .end local v0    # "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .local v11, "iv":[B
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1896
    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1902
    nop

    .line 1907
    .end local v7    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v8    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v9    # "keyStore":Ljava/security/KeyStore;
    nop

    .line 1908
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 1910
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    array-length v0, v11

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    .line 1913
    invoke-virtual {v2, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1914
    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1917
    nop

    .line 1918
    move-object/from16 v12, p0

    iget-object v0, v12, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->writeChildProfileLock(I[B)V

    .line 1919
    return-void

    .line 1911
    :cond_1
    move-object/from16 v12, p0

    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid iv length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "encryptionResult":[B
    .end local v11    # "iv":[B
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1915
    .restart local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "encryptionResult":[B
    .restart local v11    # "iv":[B
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v12, p0

    .line 1916
    .local v0, "e":Ljava/io/IOException;
    :goto_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Failed to concatenate byte arrays"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1895
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "encryptionResult":[B
    .end local v11    # "iv":[B
    .restart local v7    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .restart local v8    # "secretKey":Ljavax/crypto/SecretKey;
    .restart local v9    # "keyStore":Ljava/security/KeyStore;
    :catchall_0
    move-exception v0

    move-object/from16 v12, p0

    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1896
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1896
    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 1902
    nop

    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "userId":I
    .end local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    throw v0
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1903
    .end local v7    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v8    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v9    # "keyStore":Ljava/security/KeyStore;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "userId":I
    .restart local p2    # "password":Lcom/android/internal/widget/LockscreenCredential;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v12, p0

    .line 1906
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to encrypt key"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public tryUnlockWithCachedUnifiedChallenge(I)Z
    .locals 9
    .param p1, "userId"    # I

    .line 3332
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mManagedProfilePasswordCache:Lcom/android/server/locksettings/ManagedProfilePasswordCache;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/ManagedProfilePasswordCache;->retrievePassword(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v0

    .line 3333
    .local v0, "cred":Lcom/android/internal/widget/LockscreenCredential;
    const/4 v8, 0x0

    if-nez v0, :cond_1

    .line 3334
    nop

    .line 3338
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 3334
    :cond_0
    return v8

    .line 3336
    :cond_1
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move v6, p1

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 3337
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v8, 0x1

    .line 3338
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 3336
    :cond_3
    return v8

    .line 3332
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v1
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .line 2464
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2465
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2466
    return-void
.end method

.method public userPresent(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2488
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission(I)V

    .line 2489
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->reportUnlock(I)V

    .line 2490
    return-void
.end method

.method public verifyCredential(Lcom/android/internal/widget/LockscreenCredential;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I

    .line 2112
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2113
    const/4 v0, 0x1

    .line 2114
    .local v0, "challengeType":I
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 2115
    const-string v1, "LockSettingsService"

    const-string v2, "VerifyCredential called with challenge=0"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    const/4 v0, 0x0

    .line 2120
    :cond_0
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, v0

    move-wide v4, p2

    move v6, p4

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2123
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2120
    return-object v1

    .line 2123
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2124
    throw v1
.end method

.method public verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10
    .param p1, "credential"    # Lcom/android/internal/widget/LockscreenCredential;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I

    .line 2186
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2187
    invoke-direct {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2190
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 2192
    .local v0, "parentProfileId":I
    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 2198
    .local v1, "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-eqz v2, :cond_0

    .line 2200
    return-object v1

    .line 2205
    :cond_0
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;IJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2216
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2205
    return-object v2

    .line 2216
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 2209
    :catch_0
    move-exception v2

    .line 2213
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "LockSettingsService"

    const-string v4, "Failed to decrypt child profile key"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2214
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to get tied profile token"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parentProfileId":I
    .end local v1    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .end local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .end local p2    # "challenge":J
    .end local p4    # "userId":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2216
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "parentProfileId":I
    .restart local v1    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsService;
    .restart local p1    # "credential":Lcom/android/internal/widget/LockscreenCredential;
    .restart local p2    # "challenge":J
    .restart local p4    # "userId":I
    :goto_0
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 2217
    throw v2

    .line 2188
    .end local v0    # "parentProfileId":I
    .end local v1    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User id must be managed profile with unified lock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
