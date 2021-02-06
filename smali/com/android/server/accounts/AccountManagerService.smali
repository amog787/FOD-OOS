.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerService$NotificationId;,
        Lcom/android/server/accounts/AccountManagerService$Injector;,
        Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;,
        Lcom/android/server/accounts/AccountManagerService$MessageHandler;,
        Lcom/android/server/accounts/AccountManagerService$Session;,
        Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/android/server/accounts/AccountManagerService$StartAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;,
        Lcom/android/server/accounts/AccountManagerService$UserAccounts;,
        Lcom/android/server/accounts/AccountManagerService$Lifecycle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field private static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final PRE_N_DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final SIGNATURE_CHECK_MATCH:I = 0x1

.field private static final SIGNATURE_CHECK_MISMATCH:I = 0x0

.field private static final SIGNATURE_CHECK_UID_MATCH:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field final mContext:Landroid/content/Context;

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field final mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

.field private final mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

.field private final mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 198
    const/high16 v1, 0x5000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 262
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
    .locals 9
    .param p1, "injector"    # Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 275
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 202
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 255
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 256
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 258
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 259
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 276
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 277
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 278
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 279
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 280
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getMessageHandlerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 281
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Injector;->getAccountAuthenticatorCache()Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 282
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 284
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 289
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/accounts/AccountManagerService$1;

    invoke-direct {v3, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;

    invoke-direct {v2, p0, v1}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$1;)V

    invoke-virtual {p1, v2}, Lcom/android/server/accounts/AccountManagerService$Injector;->addLocalService(Landroid/accounts/AccountManagerInternal;)V

    .line 320
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 321
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/accounts/AccountManagerService$2;

    invoke-direct {v4, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 336
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 348
    invoke-virtual {v5}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/accounts/AccountManagerService$3;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 351
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v4, Lcom/android/server/accounts/AccountManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    const/16 v5, 0x3e

    invoke-virtual {v3, v5, v1, v4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 375
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v3, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$c6GExIY3Vh2fORdBziuAPJbExac;

    invoke-direct {v3, p0}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$c6GExIY3Vh2fORdBziuAPJbExac;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 409
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accounts/AccountManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->purgeUserData(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 145
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "x2"    # Landroid/os/Bundle;
    .param p3, "x3"    # Landroid/accounts/Account;
    .param p4, "x4"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p5, "x5"    # I

    .line 145
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z

    .line 145
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->removeVisibilityValuesForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # [B
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # J

    .line 145
    invoke-direct/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService;->saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;
    .param p3, "x3"    # Ljava/lang/CharSequence;
    .param p4, "x4"    # Landroid/content/Intent;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .line 145
    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/UserHandle;

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "x2"    # [Landroid/accounts/Account;
    .param p3, "x3"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "x2"    # Landroid/accounts/Account;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .param p2, "x2"    # Landroid/os/UserHandle;

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/accounts/AccountManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # I

    .line 145
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/accounts/AccountManagerService;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Landroid/os/RemoteCallback;

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accounts/AccountManagerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(IZ)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Landroid/accounts/Account;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 145
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V

    return-void
.end method

.method private accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .locals 8
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 2693
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2694
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2695
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 2696
    .local v5, "acc":Landroid/accounts/Account;
    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v7, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2697
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 2695
    .end local v5    # "acc":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2701
    :cond_1
    monitor-exit v0

    .line 2702
    return v2

    .line 2701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private accountTypeManagesContacts(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5494
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5495
    return v0

    .line 5497
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5500
    .local v1, "identityToken":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5502
    .local v3, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5503
    nop

    .line 5506
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5507
    .local v5, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v6, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v6, Landroid/accounts/AuthenticatorDescription;

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5508
    iget-object v0, v5, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-string v4, "android.permission.WRITE_CONTACTS"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 5511
    .end local v5    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_1
    goto :goto_0

    .line 5512
    :cond_2
    return v0

    .line 5502
    .end local v3    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5503
    throw v0
.end method

.method private addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;)Z
    .locals 21
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1807
    .local p6, "packageToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    const/4 v0, 0x1

    invoke-static {v11, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1808
    const/4 v1, 0x0

    if-nez v10, :cond_0

    .line 1809
    return v1

    .line 1811
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v8, v2}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot be added - user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1813
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is locked. callingUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p5

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1812
    const-string v2, "AccountManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    return v1

    .line 1816
    :cond_1
    move/from16 v12, p5

    iget-object v13, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v13

    .line 1817
    :try_start_0
    iget-object v14, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1818
    :try_start_1
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1820
    :try_start_2
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v10}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 1821
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping since the account already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1823
    nop

    .line 1864
    :try_start_3
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1823
    return v1

    .line 1825
    :cond_2
    :try_start_5
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v15, p3

    :try_start_6
    invoke-virtual {v2, v10, v15}, Lcom/android/server/accounts/AccountsDb;->insertCeAccount(Landroid/accounts/Account;Ljava/lang/String;)J

    move-result-wide v2

    move-wide v6, v2

    .line 1826
    .local v6, "accountId":J
    cmp-long v2, v6, v4

    if-gez v2, :cond_3

    .line 1827
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping the DB insert failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1829
    nop

    .line 1864
    :try_start_7
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1829
    return v1

    .line 1832
    :cond_3
    :try_start_9
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v10, v6, v7}, Lcom/android/server/accounts/AccountsDb;->insertDeAccount(Landroid/accounts/Account;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 1833
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping the DB insert failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1835
    nop

    .line 1864
    :try_start_a
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    monitor-exit v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1835
    return v1

    .line 1837
    :cond_4
    if-eqz v11, :cond_6

    .line 1838
    :try_start_c
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1839
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 1840
    .local v17, "value":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    move-object/from16 v1, v17

    .end local v17    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v6, v7, v3, v1}, Lcom/android/server/accounts/AccountsDb;->insertExtra(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v19

    cmp-long v0, v19, v4

    if-gez v0, :cond_5

    .line 1841
    const-string v0, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertAccountIntoDatabase: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1842
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", skipping since insertExtra failed for key "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1841
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1844
    nop

    .line 1864
    :try_start_d
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1844
    const/4 v0, 0x0

    return v0

    .line 1840
    :cond_5
    const/4 v0, 0x0

    .line 1846
    .end local v1    # "value":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    move v1, v0

    const/4 v0, 0x1

    goto :goto_0

    .line 1849
    :cond_6
    if-eqz p6, :cond_8

    .line 1850
    :try_start_f
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object/from16 v17, v1

    .line 1851
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 1852
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    .line 1851
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v18, v6

    .end local v6    # "accountId":J
    .local v18, "accountId":J
    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    .line 1854
    move-wide/from16 v6, v18

    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 1850
    .end local v18    # "accountId":J
    .restart local v6    # "accountId":J
    :cond_7
    move-wide/from16 v18, v6

    .end local v6    # "accountId":J
    .restart local v18    # "accountId":J
    goto :goto_2

    .line 1849
    .end local v18    # "accountId":J
    .restart local v6    # "accountId":J
    :cond_8
    move-wide/from16 v18, v6

    .line 1856
    .end local v6    # "accountId":J
    .restart local v18    # "accountId":J
    :goto_2
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V

    .line 1858
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    const-string v3, "accounts"

    move-object/from16 v1, p0

    move-wide/from16 v4, v18

    move-object/from16 v6, p1

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1862
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1864
    .end local v18    # "accountId":J
    :try_start_10
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 1865
    nop

    .line 1866
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 1867
    :try_start_11
    monitor-exit v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 1868
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1869
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v8, v10, v0}, Lcom/android/server/accounts/AccountManagerService;->addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V

    .line 1872
    :cond_9
    invoke-direct {v8, v10, v9}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1874
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v8, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1876
    const/4 v0, 0x1

    return v0

    .line 1864
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v15, p3

    :goto_3
    :try_start_12
    iget-object v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 1865
    nop

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    .end local p5    # "callingUid":I
    .end local p6    # "packageToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    throw v0

    .line 1866
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "password":Ljava/lang/String;
    .restart local p4    # "extras":Landroid/os/Bundle;
    .restart local p5    # "callingUid":I
    .restart local p6    # "packageToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v15, p3

    :goto_4
    monitor-exit v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "extras":Landroid/os/Bundle;
    .end local p5    # "callingUid":I
    .end local p6    # "packageToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_13
    throw v0

    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "password":Ljava/lang/String;
    .restart local p4    # "extras":Landroid/os/Bundle;
    .restart local p5    # "callingUid":I
    .restart local p6    # "packageToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_3
    move-exception v0

    goto :goto_4

    .line 1867
    :catchall_4
    move-exception v0

    move-object/from16 v15, p3

    :goto_5
    monitor-exit v13
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_5
.end method

.method private addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "parentUserId"    # I

    .line 1892
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1893
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1894
    .local v2, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne p2, v3, :cond_0

    .line 1895
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 1896
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1897
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const/4 v4, 0x4

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4, p2, v5, p1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1901
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 1902
    :cond_1
    return-void
.end method

.method private addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .line 4396
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 4397
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 4398
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->deleteSharedAccount(Landroid/accounts/Account;)Z

    .line 4399
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->insertSharedAccount(Landroid/accounts/Account;)J

    move-result-wide v7

    .line 4400
    .local v7, "accountId":J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-gez v0, :cond_0

    .line 4401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertAccountIntoDatabase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skipping the DB insert failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    const/4 v0, 0x0

    return v0

    .line 4405
    :cond_0
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    move-wide v3, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 4407
    const/4 v0, 0x1

    return v0
.end method

.method private calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .locals 8
    .param p1, "callerPkg"    # Ljava/lang/String;

    .line 3036
    const-string v0, "AccountManagerService"

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 3037
    .local v1, "digester":Ljava/security/MessageDigest;
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3039
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 3040
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3039
    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_1

    .line 3045
    .end local v1    # "digester":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 3046
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find packageinfo for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    const/4 v0, 0x0

    move-object v1, v0

    .local v0, "digester":Ljava/security/MessageDigest;
    goto :goto_2

    .line 3042
    .end local v0    # "digester":Ljava/security/MessageDigest;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 3043
    .local v1, "x":Ljava/security/NoSuchAlgorithmException;
    const-string v2, "SHA-256 should be available"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3044
    const/4 v1, 0x0

    .line 3048
    .local v1, "digester":Ljava/security/MessageDigest;
    :goto_1
    nop

    .line 3049
    :goto_2
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method private canHaveProfile(I)Z
    .locals 2
    .param p1, "parentUserId"    # I

    .line 2130
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2131
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private canUserModifyAccounts(II)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "callingUid"    # I

    .line 5699
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5700
    return v1

    .line 5702
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 5703
    const-string/jumbo v2, "no_modify_accounts"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5704
    const/4 v0, 0x0

    return v0

    .line 5706
    :cond_1
    return v1
.end method

.method private canUserModifyAccountsForType(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .line 5711
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5712
    return v1

    .line 5714
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 5715
    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5716
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object v2

    .line 5717
    .local v2, "typesArray":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 5718
    return v1

    .line 5720
    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 5721
    .local v6, "forbiddenType":Ljava/lang/String;
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5722
    return v4

    .line 5720
    .end local v6    # "forbiddenType":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5725
    :cond_3
    return v1
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "checkAccess"    # Z

    .line 422
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 423
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 424
    .local v3, "account":Landroid/accounts/Account;
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 423
    .end local v3    # "account":Landroid/accounts/Account;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "checkAccess"    # Z

    .line 449
    if-eqz p4, :cond_0

    .line 450
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 449
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    :cond_0
    const-string v0, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    .line 453
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 451
    invoke-direct {p0, v0, p3, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 455
    :cond_1
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    .line 438
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 440
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 441
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 440
    .end local v3    # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method private cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "checkAccess"    # Z

    .line 430
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 431
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 432
    .local v3, "account":Landroid/accounts/Account;
    invoke-direct {p0, v3, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 431
    .end local v3    # "account":Landroid/accounts/Account;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method

.method private cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "id"    # Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 5332
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 5333
    return-void
.end method

.method private cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "id"    # Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 5336
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 5338
    .local v0, "identityToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object v3

    .line 5339
    .local v3, "service":Landroid/app/INotificationManager;
    const-string v5, "android"

    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 5340
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;->access$3600(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I

    move-result v7

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 5339
    move-object v4, p2

    invoke-interface/range {v3 .. v8}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "service":Landroid/app/INotificationManager;
    goto :goto_0

    .line 5344
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5345
    throw v2

    .line 5341
    :catch_0
    move-exception v2

    .line 5344
    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5345
    nop

    .line 5346
    return-void
.end method

.method private checkGetAccountsPermission(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5483
    const-string v0, "android.permission.GET_ACCOUNTS"

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .line 5612
    nop

    .line 5613
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5612
    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5615
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5614
    const-string v1, "android.permission.CREATE_USERS"

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5616
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5619
    :cond_1
    :goto_0
    return-void
.end method

.method private static checkManageUsersPermission(Ljava/lang/String;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .line 5604
    nop

    .line 5605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5604
    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_0

    .line 5609
    return-void

    .line 5607
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPackageSignature(Ljava/lang/String;II)I
    .locals 9
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5522
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5523
    return v0

    .line 5526
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5529
    .local v1, "identityToken":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, p3}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5531
    .local v3, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5532
    nop

    .line 5534
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 5536
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5537
    .local v6, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v7, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5538
    iget v7, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v7, p2, :cond_1

    .line 5539
    const/4 v0, 0x2

    return v0

    .line 5541
    :cond_1
    iget v7, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const/16 v8, 0x10

    invoke-virtual {v4, v7, p2, v8}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5544
    const/4 v0, 0x1

    return v0

    .line 5547
    .end local v6    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_2
    goto :goto_0

    .line 5548
    :cond_3
    return v0

    .line 5531
    .end local v3    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5532
    throw v0
.end method

.method private varargs checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 7
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    .line 5378
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p3, v2

    .line 5379
    .local v3, "perm":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    .line 5380
    const/4 v4, 0x2

    const-string v5, "AccountManagerService"

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5381
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  caller uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5383
    :cond_0
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v4

    .line 5384
    .local v4, "opCode":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v5, v4, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 5386
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 5378
    .end local v3    # "perm":Ljava/lang/String;
    .end local v4    # "opCode":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5390
    :cond_3
    return v1
.end method

.method private checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "callingUid"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 5687
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5695
    return-void

    .line 5688
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5690
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 5688
    const-string v1, "caller uid %s cannot access %s accounts"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5692
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5693
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkReadContactsPermission(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5488
    const-string v0, "android.permission.READ_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 17
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountCredentials"    # Landroid/os/Bundle;
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "targetUser"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p5, "parentUserId"    # I

    .line 1757
    move-object/from16 v13, p3

    const/4 v0, 0x1

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1758
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v15

    .line 1760
    .local v15, "id":J
    :try_start_0
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$6;

    iget-object v5, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    .line 1799
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$6;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1801
    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1802
    nop

    .line 1803
    return-void

    .line 1801
    :catchall_0
    move-exception v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1802
    throw v0
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 18
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 3054
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    const-string/jumbo v2, "uid"

    const/4 v3, -0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 3056
    .local v9, "uid":I
    const-string v2, "authTokenType"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3058
    .local v10, "authTokenType":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3059
    const v4, 0x104060f

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 3061
    .local v11, "titleAndSubtitle":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 3062
    .local v12, "index":I
    move-object v2, v11

    .line 3063
    .local v2, "title":Ljava/lang/String;
    const-string v3, ""

    .line 3064
    .local v3, "subtitle":Ljava/lang/String;
    if-lez v12, :cond_0

    .line 3065
    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3066
    add-int/lit8 v4, v12, 0x1

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v13, v2

    move-object v14, v3

    goto :goto_0

    .line 3064
    :cond_0
    move-object v13, v2

    move-object v14, v3

    .line 3068
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "subtitle":Ljava/lang/String;
    .local v13, "title":Ljava/lang/String;
    .local v14, "subtitle":Ljava/lang/String;
    :goto_0
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 3069
    .local v15, "user":Landroid/os/UserHandle;
    invoke-direct {v0, v15}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    .line 3070
    .local v7, "contextForUser":Landroid/content/Context;
    new-instance v2, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v2, v7, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x108008a

    .line 3072
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 3073
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x106001c

    .line 3074
    invoke-virtual {v7, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3076
    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3077
    invoke-virtual {v2, v14}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/16 v16, 0x0

    .line 3078
    move-object/from16 v4, p2

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    .end local v7    # "contextForUser":Landroid/content/Context;
    .local v16, "contextForUser":Landroid/content/Context;
    move-object v7, v15

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3080
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 3081
    .local v2, "n":Landroid/app/Notification;
    invoke-direct {v0, v1, v10, v9}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v3

    .line 3082
    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 3081
    move-object/from16 v5, p3

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V

    .line 3083
    return-void
.end method

.method private doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 19
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "userId"    # I

    .line 5277
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    const-string v0, "AccountManagerService"

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v13

    .line 5279
    .local v13, "identityToken":J
    const/4 v4, 0x2

    :try_start_0
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doNotification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5283
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const-class v0, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 5284
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5285
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 5284
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5286
    invoke-direct {v1, v2, v10, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 5288
    :cond_1
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 5289
    .local v0, "contextForUser":Landroid/content/Context;
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v4

    move-object v15, v4

    .line 5290
    .local v15, "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    iget-object v4, v15, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5292
    const v4, 0x104055c

    .line 5293
    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .line 5294
    .local v9, "notificationTitleFormat":Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    .line 5296
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x108008a

    .line 5297
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106001c

    .line 5298
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 5300
    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 5301
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v7, 0x10000000

    const/16 v16, 0x0

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    .line 5302
    move-object/from16 v17, v6

    move-object/from16 v6, p4

    move-object/from16 v18, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    .end local v9    # "notificationTitleFormat":Ljava/lang/String;
    .local v16, "notificationTitleFormat":Ljava/lang/String;
    move-object/from16 v9, v17

    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v5, v18

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 5305
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 5306
    .local v4, "n":Landroid/app/Notification;
    invoke-direct {v1, v15, v4, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5309
    .end local v0    # "contextForUser":Landroid/content/Context;
    .end local v4    # "n":Landroid/app/Notification;
    .end local v15    # "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .end local v16    # "notificationTitleFormat":Ljava/lang/String;
    :goto_0
    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5310
    nop

    .line 5311
    return-void

    .line 5309
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 5310
    throw v0
.end method

.method private dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 16
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "fout"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "isCheckinRequest"    # Z

    .line 5220
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    if-eqz p5, :cond_0

    .line 5223
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5224
    :try_start_0
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v9}, Lcom/android/server/accounts/AccountsDb;->dumpDeAccountsTable(Ljava/io/PrintWriter;)V

    .line 5225
    monitor-exit v1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5227
    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    .line 5229
    .local v1, "accounts":[Landroid/accounts/Account;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accounts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5230
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 5231
    .local v3, "account":Landroid/accounts/Account;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5230
    .end local v3    # "account":Landroid/accounts/Account;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5235
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5236
    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5237
    :try_start_1
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v9}, Lcom/android/server/accounts/AccountsDb;->dumpDebugTable(Ljava/io/PrintWriter;)V

    .line 5238
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 5239
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5240
    iget-object v3, v7, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 5241
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 5242
    .local v4, "now":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Active Sessions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5243
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$Session;

    .line 5244
    .local v2, "session":Lcom/android/server/accounts/AccountManagerService$Session;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5245
    .end local v2    # "session":Lcom/android/server/accounts/AccountManagerService$Session;
    goto :goto_1

    .line 5246
    .end local v4    # "now":J
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 5248
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5249
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    invoke-interface {v0, v4, v9, v5, v2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 5252
    iget-object v2, v7, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5253
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v0

    move v3, v0

    .line 5254
    .local v3, "isUserUnlocked":Z
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5256
    if-nez v3, :cond_3

    .line 5257
    return-void

    .line 5259
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/io/PrintWriter;->println()V

    .line 5260
    iget-object v6, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5261
    :try_start_4
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 5262
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    move-result-object v0

    .line 5263
    .local v0, "allVisibilityValues":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const-string v2, "Account visibility:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5264
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/accounts/Account;

    .line 5265
    .local v10, "account":Landroid/accounts/Account;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5266
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 5267
    .local v11, "visibilities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 5268
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5269
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_3

    .line 5270
    .end local v10    # "account":Landroid/accounts/Account;
    .end local v11    # "visibilities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    goto :goto_2

    .line 5271
    .end local v0    # "allVisibilityValues":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_5
    monitor-exit v6

    .line 5273
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "isUserUnlocked":Z
    :goto_4
    return-void

    .line 5271
    .restart local v1    # "accounts":[Landroid/accounts/Account;
    .restart local v3    # "isUserUnlocked":Z
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 5254
    .end local v3    # "isUserUnlocked":Z
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 5246
    :catchall_3
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    :goto_5
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5

    .line 5238
    :catchall_5
    move-exception v0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    :goto_6
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_6
.end method

.method private filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "unfiltered"    # [Landroid/accounts/Account;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "includeManagedNotVisible"    # Z

    .line 5872
    move-object v0, p4

    .line 5873
    .local v0, "visibilityFilterPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5874
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5876
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5877
    .local v1, "firstPass":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    .line 5878
    .local v4, "account":Landroid/accounts/Account;
    invoke-direct {p0, v4, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 5879
    .local v5, "visibility":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    if-eqz p5, :cond_2

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 5884
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5877
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "visibility":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5887
    :cond_3
    nop

    .line 5888
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 5890
    .local v2, "secondPass":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Landroid/accounts/Account;

    .line 5891
    .local v3, "filtered":[Landroid/accounts/Account;
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Landroid/accounts/Account;

    .line 5892
    return-object v3
.end method

.method private filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;
    .locals 17
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5901
    .local p2, "unfiltered":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    if-ltz v0, :cond_f

    const/16 v0, 0x3e8

    if-ne v2, v0, :cond_0

    goto/16 :goto_9

    .line 5905
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 5906
    .local v4, "user":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5907
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 5908
    .local v0, "packages":[Ljava/lang/String;
    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 5909
    new-array v0, v5, [Ljava/lang/String;

    move-object v6, v0

    goto :goto_0

    .line 5908
    :cond_1
    move-object v6, v0

    .line 5914
    .end local v0    # "packages":[Ljava/lang/String;
    .local v6, "packages":[Ljava/lang/String;
    :goto_0
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x10401ce

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5916
    .local v7, "visibleList":Ljava/lang/String;
    array-length v0, v6

    move v8, v5

    :goto_1
    if-ge v8, v0, :cond_3

    aget-object v9, v6, v8

    .line 5917
    .local v9, "packageName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5918
    return-object p2

    .line 5916
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 5921
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v8

    .line 5922
    .local v8, "sharedAccounts":[Landroid/accounts/Account;
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5923
    return-object p2

    .line 5925
    :cond_4
    const-string v9, ""

    .line 5929
    .local v9, "requiredAccountType":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 5930
    :try_start_0
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5931
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_5

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 5932
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    move-object v9, v10

    .line 5934
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :cond_5
    goto :goto_3

    .line 5936
    :cond_6
    array-length v0, v6

    move v10, v5

    :goto_2
    if-ge v10, v0, :cond_8

    aget-object v11, v6, v10

    .line 5937
    .local v11, "packageName":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v11, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 5938
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v12, :cond_7

    iget-object v13, v12, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 5939
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5940
    .end local v9    # "requiredAccountType":Ljava/lang/String;
    .local v0, "requiredAccountType":Ljava/lang/String;
    move-object v9, v0

    goto :goto_3

    .line 5936
    .end local v0    # "requiredAccountType":Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v9    # "requiredAccountType":Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 5946
    :cond_8
    :goto_3
    goto :goto_4

    .line 5944
    :catch_0
    move-exception v0

    .line 5945
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Package not found "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AccountManagerService"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5947
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5948
    .local v0, "filtered":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 5949
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accounts/Account;

    .line 5950
    .local v12, "account":Landroid/accounts/Account;
    iget-object v13, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 5951
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 5953
    :cond_9
    const/4 v13, 0x0

    .line 5954
    .local v13, "found":Z
    array-length v14, v8

    move v15, v5

    :goto_6
    if-ge v15, v14, :cond_b

    aget-object v5, v8, v15

    .line 5955
    .local v5, "shared":Landroid/accounts/Account;
    invoke-virtual {v5, v12}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 5956
    const/4 v13, 0x1

    .line 5957
    goto :goto_7

    .line 5954
    .end local v5    # "shared":Landroid/accounts/Account;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_6

    .line 5960
    :cond_b
    :goto_7
    if-nez v13, :cond_c

    .line 5961
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v0, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5964
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    .end local v12    # "account":Landroid/accounts/Account;
    .end local v13    # "found":Z
    :cond_c
    :goto_8
    const/4 v5, 0x0

    goto :goto_5

    .line 5965
    :cond_d
    return-object v0

    .line 5967
    .end local v0    # "filtered":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    .end local v6    # "packages":[Ljava/lang/String;
    .end local v7    # "visibleList":Ljava/lang/String;
    .end local v8    # "sharedAccounts":[Landroid/accounts/Account;
    .end local v9    # "requiredAccountType":Ljava/lang/String;
    :cond_e
    return-object p2

    .line 5903
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_f
    :goto_9
    return-object p2
.end method

.method private getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 996
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 997
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 998
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 999
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1000
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 1002
    return-object v2

    .line 1004
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1005
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1006
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v5, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1007
    .local v6, "visibility":I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 1009
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "visibility":I
    :cond_2
    goto :goto_0

    .line 1012
    :cond_3
    return-object v2
.end method

.method private getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 643
    iget-object v0, p3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    nop

    .line 645
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    .line 646
    .local v1, "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 647
    .local v2, "visibility":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    monitor-exit v0

    return v3

    .line 648
    .end local v1    # "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "visibility":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAccounts([I)[Landroid/accounts/AccountAndUser;
    .locals 12
    .param p1, "userIds"    # [I

    .line 4272
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 4273
    .local v0, "runningAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/AccountAndUser;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, p1, v3

    .line 4274
    .local v4, "userId":I
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v11

    .line 4275
    .local v11, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-nez v11, :cond_0

    goto :goto_2

    .line 4276
    :cond_0
    const/4 v7, 0x0

    .line 4279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4276
    move-object v5, p0

    move-object v6, v11

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v5

    .line 4282
    .local v5, "accounts":[Landroid/accounts/Account;
    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 4283
    .local v8, "account":Landroid/accounts/Account;
    new-instance v9, Landroid/accounts/AccountAndUser;

    invoke-direct {v9, v8, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4282
    .end local v8    # "account":Landroid/accounts/Account;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4273
    .end local v4    # "userId":I
    .end local v5    # "accounts":[Landroid/accounts/Account;
    .end local v11    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4287
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/accounts/AccountAndUser;

    .line 4288
    .local v1, "accountsArray":[Landroid/accounts/AccountAndUser;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/AccountAndUser;

    return-object v2
.end method

.method private getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "callingUid"    # Ljava/lang/Integer;
    .param p4, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 524
    .local p2, "accountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0

    .line 529
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 530
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 531
    .local v2, "accountType":Ljava/lang/String;
    iget-object v3, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 532
    :try_start_0
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 533
    :try_start_1
    iget-object v5, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/accounts/Account;

    .line 534
    .local v5, "accountsOfType":[Landroid/accounts/Account;
    if-eqz v5, :cond_1

    .line 535
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 536
    .local v8, "account":Landroid/accounts/Account;
    nop

    .line 537
    invoke-direct {p0, v8, p1, p4}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v9

    .line 536
    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    nop

    .end local v8    # "account":Landroid/accounts/Account;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 540
    .end local v5    # "accountsOfType":[Landroid/accounts/Account;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 542
    .end local v2    # "accountType":Ljava/lang/String;
    goto :goto_0

    .line 540
    .restart local v2    # "accountType":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    .end local v2    # "accountType":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "callingUid":Ljava/lang/Integer;
    .end local p4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_start_4
    throw v1

    .line 541
    .restart local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/accounts/Account;Ljava/lang/Integer;>;"
    .restart local v2    # "accountType":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "accountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3    # "callingUid":Ljava/lang/Integer;
    .restart local p4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 543
    .end local v2    # "accountType":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p4, v0, v1, p1}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 17
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageUid"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "includeUserManagedNotVisible"    # Z

    .line 4308
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4310
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v9, v1, :cond_1

    if-eq v0, v2, :cond_1

    iget-object v1, v7, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 4312
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4315
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " trying to get account for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4319
    :cond_1
    :goto_0
    const/4 v1, 0x2

    const-string v3, "AccountManagerService"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccounts: accountType "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4321
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4322
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4320
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    :cond_2
    nop

    .line 4329
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v7, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object v10

    .line 4330
    .local v10, "managedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    move/from16 v11, p4

    if-eq v11, v1, :cond_4

    .line 4331
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v8, :cond_4

    .line 4332
    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4333
    :cond_3
    move/from16 v0, p4

    .line 4334
    move-object/from16 v1, p3

    move v13, v0

    move-object v12, v1

    .end local p5    # "opPackageName":Ljava/lang/String;
    .local v1, "opPackageName":Ljava/lang/String;
    goto :goto_1

    .line 4336
    .end local v1    # "opPackageName":Ljava/lang/String;
    .restart local p5    # "opPackageName":Ljava/lang/String;
    :cond_4
    move-object/from16 v12, p5

    move v13, v0

    .end local v0    # "callingUid":I
    .end local p5    # "opPackageName":Ljava/lang/String;
    .local v12, "opPackageName":Ljava/lang/String;
    .local v13, "callingUid":I
    :goto_1
    invoke-direct {v7, v13, v9, v12}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4338
    .local v0, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v8, :cond_5

    .line 4339
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 4341
    :cond_5
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 4344
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v14, v0

    goto :goto_2

    .line 4341
    :cond_6
    move-object v14, v0

    .line 4348
    .end local v0    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v15

    .line 4350
    .local v15, "identityToken":J
    :try_start_0
    invoke-virtual {v7, v9}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4351
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v1, p0

    move v3, v13

    move-object v4, v12

    move-object v5, v14

    move/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4358
    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4351
    return-object v0

    .line 4358
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4359
    throw v0

    .line 4340
    .end local v14    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "identityToken":J
    .restart local v0    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :goto_3
    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v1
.end method

.method private getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;
    .locals 9
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p5, "includeUserManagedNotVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)[",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .line 4369
    .local p4, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4370
    .local v0, "visibleAccounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4371
    .local v2, "visibleType":Ljava/lang/String;
    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move v6, p2

    move-object v7, p3

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v3

    .line 4374
    .local v3, "accountsForType":[Landroid/accounts/Account;
    if-eqz v3, :cond_0

    .line 4375
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4377
    .end local v2    # "visibleType":Ljava/lang/String;
    .end local v3    # "accountsForType":[Landroid/accounts/Account;
    :cond_0
    goto :goto_0

    .line 4378
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/accounts/Account;

    .line 4379
    .local v1, "result":[Landroid/accounts/Account;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4380
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    aput-object v3, v1, v2

    .line 4379
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4382
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method static getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1273
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    .line 1274
    .local v0, "authCache":Lcom/android/server/accounts/AccountAuthenticatorCache;
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method private static getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;
    .locals 5
    .param p0, "authCache"    # Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/IAccountAuthenticatorCache;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1280
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1281
    .local v0, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 1282
    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v1

    .line 1281
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1283
    .local v2, "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    .end local v2    # "service":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    goto :goto_0

    .line 1285
    :cond_0
    return-object v0
.end method

.method private getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 6
    .param p1, "userId"    # I

    .line 1626
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->updateServices(I)V

    .line 1628
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v0

    .line 1629
    .local v0, "authenticatorCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    nop

    .line 1630
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Landroid/accounts/AuthenticatorDescription;

    .line 1631
    .local v1, "types":[Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x0

    .line 1633
    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1634
    .local v4, "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v5, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v5, Landroid/accounts/AuthenticatorDescription;

    aput-object v5, v1, v2

    .line 1635
    nop

    .end local v4    # "authenticator":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    add-int/lit8 v2, v2, 0x1

    .line 1636
    goto :goto_0

    .line 1637
    :cond_0
    return-object v1
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 6106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6107
    :catch_0
    move-exception v0

    .line 6109
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 3110
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3111
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 3112
    :try_start_0
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3114
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3115
    .local v2, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 3116
    .local v3, "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    if-nez v3, :cond_0

    .line 3117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountManagerService:38:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3118
    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3119
    .local v4, "tag":Ljava/lang/String;
    const/16 v5, 0x26

    .line 3120
    .local v5, "id":I
    new-instance v6, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    invoke-direct {v6, v4, v5}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    move-object v3, v6

    .line 3121
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3123
    .end local v2    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "id":I
    :cond_0
    monitor-exit v1

    .line 3124
    return-object v3

    .line 3123
    .end local v3    # "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getDefaultCantAddAccountIntent(I)Landroid/content/Intent;
    .locals 3
    .param p1, "errorCode"    # I

    .line 3655
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/CantAddAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3656
    .local v0, "cantAddAccount":Landroid/content/Intent;
    const-string v1, "android.accounts.extra.ERROR_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3657
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3658
    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 9
    .param p1, "uid"    # I

    .line 3966
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3967
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3968
    const/4 v1, 0x0

    return-object v1

    .line 3970
    :cond_0
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 3971
    .local v2, "packageName":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 3972
    return-object v2

    .line 3975
    :cond_1
    const v3, 0x7fffffff

    .line 3976
    .local v3, "oldestVersion":I
    array-length v4, v0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    .line 3978
    .local v6, "name":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 3979
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_2

    .line 3980
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3981
    .local v8, "version":I
    if-ge v8, v3, :cond_2

    .line 3982
    move v3, v8

    .line 3983
    move-object v2, v6

    .line 3988
    .end local v7    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "version":I
    :cond_2
    goto :goto_1

    .line 3986
    :catch_0
    move-exception v7

    .line 3976
    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3990
    :cond_3
    return-object v2
.end method

.method private getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 583
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 584
    .local v0, "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 585
    const-string v1, "AccountManagerService"

    const-string v2, "Visibility was not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 587
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_0
    return-object v0
.end method

.method private getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 978
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 979
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 980
    const/4 v2, 0x2

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput-object v4, v3, v6

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v4, v3, v5

    .line 981
    .local v4, "type":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 982
    .local v6, "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    .line 983
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 980
    .end local v4    # "type":Ljava/lang/String;
    .end local v6    # "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 986
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 987
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 988
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 989
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 991
    :cond_2
    return-object v1

    .line 986
    .end local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .locals 5
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 3129
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 3130
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 3131
    .local v1, "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    if-nez v1, :cond_0

    .line 3132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountManagerService:37:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3133
    invoke-virtual {p2}, Landroid/accounts/Account;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3134
    .local v2, "tag":Ljava/lang/String;
    const/16 v3, 0x25

    .line 3135
    .local v3, "id":I
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    invoke-direct {v4, v2, v3}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    move-object v1, v4

    .line 3136
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$2200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3138
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "id":I
    :cond_0
    monitor-exit v0

    .line 3139
    return-object v1

    .line 3138
    .end local v1    # "nId":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getSingleton()Lcom/android/server/accounts/AccountManagerService;
    .locals 1

    .line 272
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    return-object v0
.end method

.method private getTypesForCaller(IIZ)Ljava/util/List;
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "isOtherwisePermitted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5572
    .local v0, "managedAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5575
    .local v1, "identityToken":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5577
    .local v3, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5578
    nop

    .line 5580
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    .line 5582
    .local v4, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5583
    .local v6, "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez p3, :cond_0

    iget v7, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const/16 v8, 0x10

    invoke-virtual {v4, v7, p1, v8}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5586
    :cond_0
    iget-object v7, v6, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5588
    .end local v6    # "serviceInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_1
    goto :goto_0

    .line 5589
    :cond_2
    return-object v0

    .line 5577
    .end local v3    # "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v4    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5578
    throw v3
.end method

.method private getTypesManagedByCaller(II)Ljava/util/List;
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5566
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5562
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;
    .locals 6
    .param p1, "userId"    # I

    .line 1257
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1258
    const/16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 1260
    .local v0, "pkgsWithData":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1261
    .local v1, "knownUids":Landroid/util/SparseBooleanArray;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1262
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 1264
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1266
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_0

    .line 1267
    :cond_1
    return-object v1
.end method

.method private getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 1

    .line 1289
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    return-object v0
.end method

.method private getUserAccountsNotChecked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 7
    .param p1, "userId"    # I

    .line 1320
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1321
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1322
    .local v1, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v2, 0x0

    .line 1323
    .local v2, "validateAccounts":Z
    if-nez v1, :cond_0

    .line 1324
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v4, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getPreNDatabaseName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1325
    .local v3, "preNDbFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v5, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getDeDatabaseName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1326
    .local v4, "deDbFile":Ljava/io/File;
    new-instance v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, p1, v3, v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    move-object v1, v5

    .line 1327
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1328
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1329
    const/4 v2, 0x1

    .line 1332
    .end local v3    # "preNDbFile":Ljava/io/File;
    .end local v4    # "deDbFile":Ljava/io/File;
    :cond_0
    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->isCeDatabaseAttached()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1333
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is unlocked - opening CE database"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1335
    :try_start_1
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1336
    :try_start_2
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v6, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getCeDatabaseName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1337
    .local v5, "ceDatabaseFile":Ljava/io/File;
    iget-object v6, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v5}, Lcom/android/server/accounts/AccountsDb;->attachCeDatabase(Ljava/io/File;)V

    .line 1338
    .end local v5    # "ceDatabaseFile":Ljava/io/File;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1339
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1340
    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 1338
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "validateAccounts":Z
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "userId":I
    :try_start_6
    throw v5

    .line 1339
    .restart local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v2    # "validateAccounts":Z
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "userId":I
    :try_start_7
    throw v4

    .line 1342
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "userId":I
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1343
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 1345
    :cond_2
    monitor-exit v0

    return-object v1

    .line 1346
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v2    # "validateAccounts":Z
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method private getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method private handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accounts"    # [Landroid/accounts/Account;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 4518
    invoke-direct {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4519
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 4520
    return-void

    .line 4522
    :cond_0
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4523
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4524
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    aget-object v2, p2, v1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v3, "authAccount"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4525
    aget-object v1, p2, v1

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "accountType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4526
    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 4527
    return-void

    .line 4530
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 4531
    return-void
.end method

.method private handleIncomingUser(I)I
    .locals 8
    .param p1, "userId"    # I

    .line 5395
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5396
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    .line 5395
    move v3, p1

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5397
    :catch_0
    move-exception v0

    .line 5400
    return p1
.end method

.method private hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 3995
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3996
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p2

    .line 3997
    if-nez p2, :cond_0

    .line 3998
    return v0

    .line 4004
    :cond_0
    const/4 v1, 0x0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {p0, p1, v1, p3, v2}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4005
    return v2

    .line 4010
    :cond_1
    nop

    .line 4011
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 4010
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4012
    .local v1, "visibility":I
    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I

    .line 5623
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 5624
    return v1

    .line 5626
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 5627
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5628
    :try_start_0
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5630
    if-eqz p2, :cond_1

    .line 5631
    :try_start_1
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 5632
    invoke-virtual {v4, p3, p2, p1}, Lcom/android/server/accounts/AccountsDb;->findMatchingGrantsCount(ILjava/lang/String;Landroid/accounts/Account;)J

    move-result-wide v4

    .local v4, "grantsCount":J
    goto :goto_0

    .line 5634
    .end local v4    # "grantsCount":J
    :cond_1
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, p3, p1}, Lcom/android/server/accounts/AccountsDb;->findMatchingGrantsCountAnyToken(ILandroid/accounts/Account;)J

    move-result-wide v4

    .line 5637
    .restart local v4    # "grantsCount":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    move v6, v1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 5639
    .local v6, "permissionGranted":Z
    :goto_1
    if-nez v6, :cond_3

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5642
    const-string v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "no credentials permission for usage of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5643
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " by uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " but ignoring since device is in test harness."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5642
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5646
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    .line 5648
    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v6

    .line 5649
    .end local v4    # "grantsCount":J
    .end local v6    # "permissionGranted":Z
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .end local p3    # "callerUid":I
    :try_start_6
    throw v1

    .line 5650
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authTokenType":Ljava/lang/String;
    .restart local p3    # "callerUid":I
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 6
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 5856
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5857
    .local v0, "accountsForType":[Landroid/accounts/Account;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 5858
    .local v2, "oldLength":I
    :goto_0
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Landroid/accounts/Account;

    .line 5859
    .local v3, "newAccountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_1

    .line 5860
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5862
    :cond_1
    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5863
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    nop

    .line 5864
    .local v1, "token":Ljava/lang/String;
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, p2, v1}, Landroid/accounts/Account;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 5865
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v5, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5866
    aget-object v4, v3, v2

    return-object v4
.end method

.method private installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    .locals 10
    .param p1, "id"    # Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 5315
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 5317
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5321
    .local v3, "notificationManager":Landroid/app/INotificationManager;
    :try_start_1
    const-string v5, "android"

    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    .line 5322
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;->access$3600(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I

    move-result v7

    .line 5321
    move-object v4, p3

    move-object v8, p2

    move v9, p4

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5325
    goto :goto_0

    .line 5323
    :catch_0
    move-exception v2

    .line 5327
    .end local v3    # "notificationManager":Landroid/app/INotificationManager;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5328
    nop

    .line 5329
    return-void

    .line 5327
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5328
    throw v2
.end method

.method private invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2436
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;>;"
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/accounts/AccountsDb;->findAuthtokenForAllAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2439
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2440
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2441
    .local v2, "authTokenId":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2442
    .local v3, "accountName":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2443
    .local v4, "authTokenType":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v2}, Lcom/android/server/accounts/AccountsDb;->deleteAuthToken(Ljava/lang/String;)Z

    .line 2444
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v3, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2445
    nop

    .end local v2    # "authTokenId":Ljava/lang/String;
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "authTokenType":Ljava/lang/String;
    goto :goto_0

    .line 2447
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2448
    nop

    .line 2449
    return-object v0

    .line 2447
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2448
    throw v2
.end method

.method private isAccountManagedByCaller(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 5553
    if-nez p1, :cond_0

    .line 5554
    const/4 v0, 0x0

    return v0

    .line 5556
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;

    .line 5593
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5594
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 5595
    .local v4, "account":Landroid/accounts/Account;
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5596
    const/4 v0, 0x1

    return v0

    .line 5594
    .end local v4    # "account":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5600
    :cond_1
    return v1
.end method

.method private isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 5471
    if-nez p1, :cond_0

    .line 5472
    const/4 v0, 0x0

    return v0

    .line 5474
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5475
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 5474
    return v0
.end method

.method private isCrossUser(II)Z
    .locals 2
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 1641
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 1643
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1641
    :goto_0
    return v0
.end method

.method private isLocalUnlockedUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1880
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1881
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1882
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private varargs isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    .line 5349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5351
    .local v0, "identity":J
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 5352
    .local v3, "uid":I
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 5353
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    array-length v5, p3

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, p3, v6

    .line 5354
    .local v7, "perm":Ljava/lang/String;
    invoke-interface {v4, v7, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1

    .line 5357
    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v8

    .line 5358
    .local v8, "opCode":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v9, v8, v3, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    .line 5360
    :cond_0
    nop

    .line 5367
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5360
    const/4 v2, 0x1

    return v2

    .line 5353
    .end local v7    # "perm":Ljava/lang/String;
    .end local v8    # "opCode":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v3    # "uid":I
    .end local v4    # "pm":Landroid/content/pm/IPackageManager;
    :cond_2
    goto :goto_1

    .line 5367
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5368
    throw v2

    .line 5364
    :catch_0
    move-exception v3

    .line 5367
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5368
    nop

    .line 5369
    return v2
.end method

.method private isPreOApplication(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 738
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    .local v1, "identityToken":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_2
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 744
    nop

    .line 746
    if-eqz v3, :cond_1

    .line 747
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 748
    .local v5, "version":I
    const/16 v6, 0x1a

    if-ge v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    return v0

    .line 750
    .end local v5    # "version":I
    :cond_1
    return v0

    .line 743
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 744
    nop

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 751
    .end local v1    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 752
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return v0
.end method

.method private isPrivileged(I)Z
    .locals 11
    .param p1, "callingUid"    # I

    .line 5405
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5407
    .local v0, "identityToken":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5408
    .local v2, "packages":[Ljava/lang/String;
    const-string v3, "AccountManagerService"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 5409
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No packages for callingUid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5410
    nop

    .line 5426
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5410
    return v4

    .line 5412
    :cond_0
    :try_start_2
    array-length v5, v2

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v2, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5414
    .local v7, "name":Ljava/lang/String;
    :try_start_3
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5415
    invoke-virtual {v8, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 5416
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_1

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_1

    .line 5419
    nop

    .line 5426
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5419
    const/4 v3, 0x1

    return v3

    .line 5423
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    goto :goto_1

    .line 5421
    :catch_0
    move-exception v8

    .line 5422
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package not found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5412
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5426
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5427
    nop

    .line 5428
    return v4

    .line 5426
    .end local v2    # "packages":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5427
    throw v2
.end method

.method private isProfileOwner(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 5729
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5730
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 5731
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 5732
    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5731
    :goto_0
    return v1
.end method

.method private isSpecialPackageKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1050
    const-string v0, "android:accounts:key_legacy_visible"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1051
    const-string v0, "android:accounts:key_legacy_not_visible"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1050
    :goto_1
    return v0
.end method

.method private isSystemUid(I)Z
    .locals 11
    .param p1, "callingUid"    # I

    .line 5654
    const/4 v0, 0x0

    .line 5655
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5657
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 5658
    const-string v3, "AccountManagerService"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 5659
    :try_start_1
    array-length v5, v0

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v0, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5661
    .local v7, "name":Ljava/lang/String;
    const/4 v8, 0x1

    :try_start_2
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5662
    invoke-virtual {v9, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 5663
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_0

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/2addr v10, v8

    if-eqz v10, :cond_0

    .line 5666
    nop

    .line 5676
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5666
    return v8

    .line 5670
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    goto :goto_1

    .line 5668
    :catch_0
    move-exception v9

    .line 5669
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v10, "Could not find package [%s]"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v4

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5659
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5673
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No known packages with uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5676
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5677
    nop

    .line 5678
    return v4

    .line 5676
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5677
    throw v3
.end method

.method private isVisible(I)Z
    .locals 2
    .param p1, "visibility"    # I

    .line 782
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic lambda$grantAppPermission$3(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0
    .param p0, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 5781
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    return-void
.end method

.method static synthetic lambda$revokeAppPermission$4(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .locals 0
    .param p0, "listener"    # Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 5822
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    return-void
.end method

.method private logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;

    .line 5104
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 5105
    return-void
.end method

.method private logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .param p5, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 5116
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 5117
    return-void
.end method

.method private logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .locals 14
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "accountId"    # J
    .param p5, "userAccount"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p6, "callingUid"    # I

    .line 5173
    move-object/from16 v10, p5

    iget-object v0, v10, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->reserveDebugDbInsertionPoint()J

    move-result-wide v11

    .line 5174
    .local v11, "insertionPoint":J
    const-wide/16 v0, -0x1

    cmp-long v0, v11, v0

    if-eqz v0, :cond_0

    .line 5175
    new-instance v13, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;-><init>(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;IJ)V

    .line 5177
    .local v0, "logTask":Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;
    iget-object v2, v1, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5174
    .end local v0    # "logTask":Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;
    :cond_0
    move-object v1, p0

    .line 5179
    :goto_0
    return-void
.end method

.method private logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tableName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 5108
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 5109
    return-void
.end method

.method private needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 6
    .param p1, "accounts"    # [Landroid/accounts/Account;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 4493
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 4494
    :cond_0
    array-length v0, p1

    if-le v0, v2, :cond_1

    return v2

    .line 4495
    :cond_1
    aget-object v0, p1, v1

    .line 4496
    .local v0, "account":Landroid/accounts/Account;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 4497
    .local v3, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4498
    .local v4, "visibility":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    return v2

    .line 4499
    :cond_2
    return v1
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "response"    # Landroid/accounts/AccountAuthenticatorResponse;
    .param p5, "authTokenType"    # Ljava/lang/String;
    .param p6, "startInNewTask"    # Z

    .line 3089
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3091
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p6, :cond_0

    .line 3095
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3097
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p5, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    if-eqz p2, :cond_1

    move-object v2, p2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3097
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3099
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3100
    const-string v1, "authTokenType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3101
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3102
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3104
    return-object v0
.end method

.method private newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 4054
    new-instance v4, Landroid/accounts/AccountAuthenticatorResponse;

    new-instance v0, Lcom/android/server/accounts/AccountManagerService$18;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move v8, p3

    move-object v9, p2

    move-object v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerService$18;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-direct {v4, v0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    const-string v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 968
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 969
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 971
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 972
    return-void
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 2734
    const-string v0, "AccountManagerService"

    if-nez p2, :cond_0

    .line 2735
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v2, "the result is unexpectedly null"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2737
    :cond_0
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2738
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2749
    goto :goto_0

    .line 2743
    :catch_0
    move-exception v2

    .line 2746
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2747
    const-string v1, "failure while notifying response"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2750
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method private packageExistsForUser(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1034
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    .local v0, "identityToken":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1037
    const/4 v2, 0x1

    .line 1039
    :try_start_2
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1037
    return v2

    .line 1039
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1040
    nop

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    throw v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1041
    .end local v0    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "callerUid"    # I
    .param p4, "userId"    # I

    .line 5433
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Access to "

    const/4 v3, 0x2

    const-string v4, "AccountManagerService"

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_1

    .line 5434
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " granted calling uid is system"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5437
    :cond_0
    return v1

    .line 5440
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isPrivileged(I)Z

    move-result v0

    const-string v5, " granted calling uid "

    if-eqz v0, :cond_3

    .line 5441
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " privileged"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5445
    :cond_2
    return v1

    .line 5447
    :cond_3
    if-eqz p1, :cond_5

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5448
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " manages the account"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    :cond_4
    return v1

    .line 5454
    :cond_5
    if-eqz p1, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5455
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " user granted access"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5459
    :cond_6
    return v1

    .line 5462
    :cond_7
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not granted for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5466
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 9
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1374
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1375
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1376
    :try_start_1
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->findAllUidGrants()Ljava/util/List;

    move-result-object v2

    .line 1377
    .local v2, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1378
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 1379
    .local v5, "packageExists":Z
    :goto_1
    if-eqz v5, :cond_1

    .line 1380
    goto :goto_0

    .line 1382
    :cond_1
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleting grants for UID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " because its package is no longer installed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v4}, Lcom/android/server/accounts/AccountsDb;->deleteGrantsByUid(I)Z

    .line 1385
    nop

    .end local v4    # "uid":I
    .end local v5    # "packageExists":Z
    goto :goto_0

    .line 1386
    .end local v2    # "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1387
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1388
    return-void

    .line 1386
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_start_4
    throw v2

    .line 1387
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private purgeOldGrantsAll()V
    .locals 3

    .line 1366
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1367
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1368
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-direct {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1370
    .end local v1    # "i":I
    :cond_0
    monitor-exit v0

    .line 1371
    return-void

    .line 1370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private purgeUserData(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 1419
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1420
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1421
    .local v1, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1422
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1423
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1424
    if-eqz v1, :cond_0

    .line 1425
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1426
    :try_start_1
    iget-object v2, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1427
    :try_start_2
    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->closeDebugStatement()V

    .line 1428
    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->close()V

    .line 1429
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1430
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1429
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "userId":I
    :try_start_5
    throw v3

    .line 1430
    .restart local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "userId":I
    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1423
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 1507
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1508
    return-object v0

    .line 1510
    :cond_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Password is not available - user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data is locked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    return-object v0

    .line 1515
    :cond_1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1516
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1517
    :try_start_1
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1518
    invoke-virtual {v2, v3, v4}, Lcom/android/server/accounts/AccountsDb;->findAccountPasswordByNameAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1517
    return-object v2

    .line 1519
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    :try_start_4
    throw v2

    .line 1520
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 1542
    if-nez p2, :cond_0

    .line 1543
    const/4 v0, 0x0

    return-object v0

    .line 1545
    :cond_0
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1546
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1547
    :try_start_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1548
    .local v2, "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 1549
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    .line 1550
    .local v3, "previousName":Ljava/lang/String;
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v4

    .line 1551
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v3

    .line 1554
    .end local v3    # "previousName":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v3

    .line 1556
    .end local v2    # "previousNameRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    :try_start_6
    throw v2

    .line 1557
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;

    .line 6085
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6086
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 6087
    .local v1, "userDataForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6089
    if-nez v1, :cond_1

    .line 6090
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6091
    :try_start_1
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6092
    :try_start_2
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v1, v3

    .line 6093
    if-nez v1, :cond_0

    .line 6095
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p2}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v3

    move-object v1, v3

    .line 6096
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6098
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6099
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 6098
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v1    # "userDataForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "key":Ljava/lang/String;
    :try_start_5
    throw v3

    .line 6099
    .restart local v1    # "userDataForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "key":Ljava/lang/String;
    :catchall_1
    move-exception v2

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    .line 6101
    :cond_1
    :goto_0
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6087
    .end local v1    # "userDataForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 8
    .param p1, "accountTypes"    # [Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 895
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 896
    if-nez p1, :cond_0

    .line 898
    const/4 v1, 0x0

    :try_start_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 900
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 901
    .local v3, "type":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 902
    .local v4, "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v4, :cond_1

    .line 903
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v4, v5

    .line 904
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    :cond_1
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 907
    .local v5, "cnt":Ljava/lang/Integer;
    const/4 v6, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    nop

    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "cnt":Ljava/lang/Integer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    :cond_3
    monitor-exit v0

    .line 910
    return-void

    .line 909
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .locals 6
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;

    .line 5827
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 5828
    .local v0, "oldAccountsForType":[Landroid/accounts/Account;
    if-eqz v0, :cond_3

    .line 5829
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5830
    .local v1, "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 5831
    .local v4, "curAccount":Landroid/accounts/Account;
    invoke-virtual {v4, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5832
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5830
    .end local v4    # "curAccount":Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5835
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5836
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5838
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/accounts/Account;

    .line 5839
    .local v2, "newAccountsForType":[Landroid/accounts/Account;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Landroid/accounts/Account;

    .line 5840
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5843
    .end local v1    # "newAccountsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    .end local v2    # "newAccountsForType":[Landroid/accounts/Account;
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5844
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5845
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5846
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5847
    return-void
.end method

.method private removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .locals 18
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callingUid"    # I

    .line 2305
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v1, 0x0

    .line 2306
    .local v1, "isChanged":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v10

    .line 2307
    .local v10, "userUnlocked":Z
    if-nez v10, :cond_0

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing account "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " while user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is still locked. CE data will be removed later"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2308
    const-string v2, "AccountManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :cond_0
    iget-object v11, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2313
    :try_start_0
    iget-object v12, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 2314
    :try_start_1
    invoke-direct {v7, v9, v8}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    move-object v13, v0

    .line 2316
    .local v13, "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 2317
    invoke-direct {v7, v9, v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v0

    move-object v14, v0

    .line 2318
    .local v14, "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 2321
    const-wide/16 v2, -0x1

    .line 2323
    .local v2, "accountId":J
    :try_start_2
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v9}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 2324
    .end local v2    # "accountId":J
    .local v4, "accountId":J
    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    .line 2325
    :try_start_3
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v0

    move v15, v1

    goto :goto_0

    .line 2337
    :catchall_0
    move-exception v0

    move-wide v2, v4

    goto/16 :goto_d

    .line 2324
    :cond_1
    move v15, v1

    .line 2329
    .end local v1    # "isChanged":Z
    .local v15, "isChanged":Z
    :goto_0
    if-eqz v10, :cond_2

    .line 2330
    :try_start_4
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v9}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v0

    .line 2331
    .local v0, "ceAccountId":J
    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 2332
    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 2337
    .end local v0    # "ceAccountId":J
    :catchall_1
    move-exception v0

    move-wide v2, v4

    move v1, v15

    goto/16 :goto_d

    .line 2335
    :cond_2
    :goto_1
    :try_start_5
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    .line 2337
    :try_start_6
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 2338
    nop

    .line 2339
    const/4 v0, 0x1

    if-eqz v15, :cond_8

    .line 2340
    :try_start_7
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 2341
    nop

    .line 2342
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2341
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2343
    .local v2, "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 2344
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    .line 2346
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v7, v3, v8}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2348
    .end local v2    # "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    goto :goto_2

    .line 2351
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-direct {v7, v1}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2352
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2353
    .local v2, "packageName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {v7, v9, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2354
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_3

    .line 2355
    :cond_6
    if-eqz v10, :cond_7

    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    move-object v2, v1

    goto :goto_4

    .line 2356
    :cond_7
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

    move-object v2, v1

    :goto_4
    nop

    .line 2357
    .local v2, "action":Ljava/lang/String;
    const-string v3, "accounts"

    move-object/from16 v1, p0

    move-wide/from16 v16, v4

    .end local v4    # "accountId":J
    .local v16, "accountId":J
    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    .line 2359
    .end local v2    # "action":Ljava/lang/String;
    .end local v13    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "accountId":J
    :catchall_2
    move-exception v0

    goto/16 :goto_c

    .line 2339
    .restart local v4    # "accountId":J
    .restart local v13    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    move-wide/from16 v16, v4

    .line 2359
    .end local v4    # "accountId":J
    .end local v13    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 2360
    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 2361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2363
    .local v1, "id":J
    :try_start_a
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 2364
    .local v3, "parentUserId":I
    invoke-direct {v7, v3}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2366
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 2367
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2368
    .local v5, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_9

    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v3, v6, :cond_9

    .line 2369
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move/from16 v13, p3

    :try_start_b
    invoke-direct {v7, v9, v6, v13}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_7

    .line 2374
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "parentUserId":I
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :catchall_3
    move-exception v0

    goto :goto_b

    .line 2368
    .restart local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "parentUserId":I
    .restart local v5    # "user":Landroid/content/pm/UserInfo;
    :cond_9
    move/from16 v13, p3

    .line 2371
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    :goto_7
    goto :goto_6

    .line 2367
    :cond_a
    move/from16 v13, p3

    goto :goto_8

    .line 2364
    .end local v0    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_b
    move/from16 v13, p3

    .line 2374
    .end local v3    # "parentUserId":I
    :goto_8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2375
    nop

    .line 2377
    if-eqz v15, :cond_e

    .line 2378
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 2380
    :try_start_c
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2381
    .local v4, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v9, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2382
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2383
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2384
    .local v5, "uid":I
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v11, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;

    invoke-direct {v11, v7, v9, v5}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$lqbNdAUKUSipmpqby9oIO8JlNTQ;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;I)V

    invoke-virtual {v6, v11}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 2387
    .end local v4    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v5    # "uid":I
    :cond_c
    goto :goto_9

    .line 2388
    :cond_d
    monitor-exit v3

    goto :goto_a

    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    .line 2391
    :cond_e
    :goto_a
    return v15

    .line 2374
    :catchall_5
    move-exception v0

    move/from16 v13, p3

    :goto_b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2375
    throw v0

    .line 2360
    .end local v1    # "id":J
    :catchall_6
    move-exception v0

    move/from16 v13, p3

    move v1, v15

    goto :goto_f

    .line 2359
    :catchall_7
    move-exception v0

    move/from16 v13, p3

    :goto_c
    move v1, v15

    goto :goto_e

    .line 2337
    .local v4, "accountId":J
    .restart local v13    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_8
    move-exception v0

    move-wide/from16 v16, v4

    move v1, v15

    move-wide/from16 v2, v16

    .end local v4    # "accountId":J
    .restart local v16    # "accountId":J
    goto :goto_d

    .end local v15    # "isChanged":Z
    .end local v16    # "accountId":J
    .local v1, "isChanged":Z
    .local v2, "accountId":J
    :catchall_9
    move-exception v0

    :goto_d
    :try_start_d
    iget-object v4, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2338
    nop

    .end local v1    # "isChanged":Z
    .end local v10    # "userUnlocked":Z
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "callingUid":I
    throw v0

    .line 2359
    .end local v2    # "accountId":J
    .end local v13    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "isChanged":Z
    .restart local v10    # "userUnlocked":Z
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "callingUid":I
    :catchall_a
    move-exception v0

    :goto_e
    monitor-exit v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .end local v1    # "isChanged":Z
    .end local v10    # "userUnlocked":Z
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "callingUid":I
    :try_start_e
    throw v0

    .line 2360
    .restart local v1    # "isChanged":Z
    .restart local v10    # "userUnlocked":Z
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "callingUid":I
    :catchall_b
    move-exception v0

    :goto_f
    monitor-exit v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    throw v0
.end method

.method private removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I

    .line 4430
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 4431
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 4432
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    move-result-wide v8

    .line 4433
    .local v8, "sharedTableAccountId":J
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->deleteSharedAccount(Landroid/accounts/Account;)Z

    move-result v10

    .line 4434
    .local v10, "deleted":Z
    if-eqz v10, :cond_0

    .line 4435
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    move-wide v3, v8

    move-object v5, v7

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4437
    invoke-direct {p0, v7, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 4439
    :cond_0
    return v10
.end method

.method private removeVisibilityValuesForPackage(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1391
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1392
    return-void

    .line 1394
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1396
    .local v1, "numberOfUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1397
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1399
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1412
    goto :goto_2

    .line 1400
    :catch_0
    move-exception v4

    .line 1402
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    iget-object v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, p1}, Lcom/android/server/accounts/AccountsDb;->deleteAccountVisibilityForPackage(Ljava/lang/String;)Z

    .line 1403
    iget-object v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1404
    :try_start_3
    iget-object v6, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1405
    :try_start_4
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accounts/Account;

    .line 1406
    .local v8, "account":Landroid/accounts/Account;
    nop

    .line 1407
    invoke-direct {p0, v8, v3}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v9

    .line 1408
    .local v9, "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v9, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    nop

    .end local v8    # "account":Landroid/accounts/Account;
    .end local v9    # "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_1

    .line 1410
    :cond_1
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1411
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1396
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1410
    .restart local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v7

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v1    # "numberOfUsers":I
    .end local v2    # "i":I
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    :try_start_7
    throw v7

    .line 1411
    .restart local v1    # "numberOfUsers":I
    .restart local v2    # "i":I
    .restart local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "packageName":Ljava/lang/String;
    :try_start_8
    throw v6

    .line 1414
    .end local v1    # "numberOfUsers":I
    .end local v2    # "i":I
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "packageName":Ljava/lang/String;
    :cond_2
    monitor-exit v0

    .line 1415
    return-void

    .line 1414
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1
.end method

.method private renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 17
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    .line 2028
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 2038
    .local v5, "resultAccount":Landroid/accounts/Account;
    nop

    .line 2039
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    new-instance v6, Landroid/os/UserHandle;

    .line 2040
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 2038
    invoke-direct {v1, v0, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2041
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 2043
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 2044
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2045
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 2046
    .local v8, "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    new-instance v9, Landroid/os/UserHandle;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v10

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, v8, v9}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2048
    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v8    # "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    :cond_0
    goto :goto_0

    .line 2049
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2050
    iget-object v7, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2051
    :try_start_1
    iget-object v6, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2052
    nop

    .line 2053
    :try_start_2
    invoke-direct {v1, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v0

    move-object v8, v0

    .line 2054
    .local v8, "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V

    .line 2055
    new-instance v0, Landroid/accounts/Account;

    iget-object v9, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v0, v4, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v9, v0

    .line 2057
    .local v9, "renamedAccount":Landroid/accounts/Account;
    :try_start_3
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v9}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    const/4 v10, 0x0

    if-ltz v0, :cond_2

    .line 2058
    const-string v0, "AccountManagerService"

    const-string/jumbo v11, "renameAccount failed - account with new name already exists"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2059
    nop

    .line 2076
    :try_start_4
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2059
    return-object v10

    .line 2061
    :cond_2
    :try_start_6
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v3}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v14

    .line 2062
    .local v14, "accountId":J
    cmp-long v0, v14, v12

    if-ltz v0, :cond_9

    .line 2063
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v14, v15, v4}, Lcom/android/server/accounts/AccountsDb;->renameCeAccount(JLjava/lang/String;)Z

    .line 2064
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v11, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v14, v15, v4, v11}, Lcom/android/server/accounts/AccountsDb;->renameDeAccount(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2066
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2076
    .end local v14    # "accountId":J
    :try_start_7
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2077
    nop

    .line 2082
    invoke-direct {v1, v2, v9}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    .line 2088
    .end local v9    # "renamedAccount":Landroid/accounts/Account;
    .local v0, "renamedAccount":Landroid/accounts/Account;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    .line 2089
    .local v9, "tmpData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 2090
    .local v10, "tmpTokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 2091
    .local v11, "tmpVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 2096
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v12

    new-instance v13, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v14, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    move-object v5, v0

    .line 2104
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v12

    .line 2105
    .local v12, "parentUserId":I
    invoke-direct {v1, v12}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2110
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v13

    .line 2111
    .local v13, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/UserInfo;

    .line 2112
    .local v15, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v15}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v16, v0

    .end local v0    # "renamedAccount":Landroid/accounts/Account;
    .local v16, "renamedAccount":Landroid/accounts/Account;
    iget v0, v15, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v0, v12, :cond_4

    .line 2114
    iget v0, v15, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    goto :goto_2

    .line 2112
    .end local v16    # "renamedAccount":Landroid/accounts/Account;
    .restart local v0    # "renamedAccount":Landroid/accounts/Account;
    :cond_3
    move-object/from16 v16, v0

    .line 2116
    .end local v0    # "renamedAccount":Landroid/accounts/Account;
    .end local v15    # "user":Landroid/content/pm/UserInfo;
    .restart local v16    # "renamedAccount":Landroid/accounts/Account;
    :cond_4
    :goto_2
    move-object/from16 v0, v16

    goto :goto_1

    .line 2111
    .end local v16    # "renamedAccount":Landroid/accounts/Account;
    .restart local v0    # "renamedAccount":Landroid/accounts/Account;
    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "renamedAccount":Landroid/accounts/Account;
    .restart local v16    # "renamedAccount":Landroid/accounts/Account;
    goto :goto_3

    .line 2105
    .end local v13    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v16    # "renamedAccount":Landroid/accounts/Account;
    .restart local v0    # "renamedAccount":Landroid/accounts/Account;
    :cond_6
    move-object/from16 v16, v0

    .line 2119
    .end local v0    # "renamedAccount":Landroid/accounts/Account;
    .restart local v16    # "renamedAccount":Landroid/accounts/Account;
    :goto_3
    invoke-direct {v1, v5, v2}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2120
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2121
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2122
    .local v13, "packageName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v14

    invoke-direct {v1, v3, v13, v14}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2123
    .end local v13    # "packageName":Ljava/lang/String;
    goto :goto_4

    .line 2124
    .end local v8    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "tmpData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "tmpTokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "tmpVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "parentUserId":I
    .end local v16    # "renamedAccount":Landroid/accounts/Account;
    :cond_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2125
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2126
    return-object v5

    .line 2068
    .restart local v8    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v9, "renamedAccount":Landroid/accounts/Account;
    .restart local v14    # "accountId":J
    :cond_8
    :try_start_9
    const-string v0, "AccountManagerService"

    const-string/jumbo v11, "renameAccount failed"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2069
    nop

    .line 2076
    :try_start_a
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 2069
    return-object v10

    .line 2072
    :cond_9
    :try_start_c
    const-string v0, "AccountManagerService"

    const-string/jumbo v11, "renameAccount failed - old account does not exist"

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2073
    nop

    .line 2076
    :try_start_d
    iget-object v0, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 2073
    return-object v10

    .line 2076
    .end local v14    # "accountId":J
    :catchall_0
    move-exception v0

    :try_start_f
    iget-object v10, v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v10}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2077
    nop

    .end local v5    # "resultAccount":Landroid/accounts/Account;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "accountToRename":Landroid/accounts/Account;
    .end local p3    # "newName":Ljava/lang/String;
    throw v0

    .line 2124
    .end local v8    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "renamedAccount":Landroid/accounts/Account;
    .restart local v5    # "resultAccount":Landroid/accounts/Account;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "accountToRename":Landroid/accounts/Account;
    .restart local p3    # "newName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .end local v5    # "resultAccount":Landroid/accounts/Account;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "accountToRename":Landroid/accounts/Account;
    .end local p3    # "newName":Ljava/lang/String;
    :try_start_10
    throw v0

    .line 2125
    .restart local v5    # "resultAccount":Landroid/accounts/Account;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "accountToRename":Landroid/accounts/Account;
    .restart local p3    # "newName":Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v0

    .line 2049
    :catchall_3
    move-exception v0

    :try_start_11
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw v0
.end method

.method private resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 663
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 664
    const/4 v0, -0x1

    .line 666
    .local v0, "uid":I
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .local v1, "identityToken":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    .line 670
    :try_start_2
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 671
    nop

    .line 675
    .end local v1    # "identityToken":J
    nop

    .line 678
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 679
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 682
    :cond_0
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 683
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {p0, v1, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->checkPackageSignature(Ljava/lang/String;II)I

    move-result v1

    .line 686
    .local v1, "signatureCheckResult":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 687
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 691
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 693
    .local v3, "visibility":I
    if-eqz v3, :cond_2

    .line 694
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 697
    :cond_2
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    const-string v5, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v4

    .line 701
    .local v4, "isPrivileged":Z
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 702
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 705
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isPreOApplication(Ljava/lang/String;)Z

    move-result v2

    .line 706
    .local v2, "preO":Z
    if-nez v1, :cond_8

    if-eqz v2, :cond_4

    .line 707
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-direct {p0, p2, v5}, Lcom/android/server/accounts/AccountManagerService;->checkGetAccountsPermission(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 708
    :cond_4
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-direct {p0, p2, v5}, Lcom/android/server/accounts/AccountManagerService;->checkReadContactsPermission(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 709
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->accountTypeManagesContacts(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    if-eqz v4, :cond_7

    :cond_6
    goto :goto_0

    .line 719
    :cond_7
    const-string v5, "android:accounts:key_legacy_not_visible"

    invoke-direct {p0, p1, v5, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 721
    if-nez v3, :cond_9

    .line 722
    const/4 v3, 0x4

    goto :goto_1

    .line 713
    :cond_8
    :goto_0
    const-string v5, "android:accounts:key_legacy_visible"

    invoke-direct {p0, p1, v5, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 715
    if-nez v3, :cond_9

    .line 716
    const/4 v3, 0x2

    .line 725
    :cond_9
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 670
    .end local v2    # "preO":Z
    .end local v3    # "visibility":I
    .end local v4    # "isPrivileged":Z
    .local v1, "identityToken":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 671
    nop

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    throw v3
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 672
    .end local v1    # "identityToken":J
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catch_0
    move-exception v1

    .line 673
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AccountManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 5794
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 5798
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 5799
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5800
    :try_start_0
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5801
    :try_start_1
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5803
    :try_start_2
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 5804
    .local v3, "accountId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 5805
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    int-to-long v9, p3

    move-wide v6, v3

    move-object v8, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accounts/AccountsDb;->deleteGrantsByAccountIdAuthTokenTypeAndUid(JLjava/lang/String;J)Z

    .line 5807
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5810
    .end local v3    # "accountId":J
    :cond_1
    :try_start_3
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 5811
    nop

    .line 5813
    nop

    .line 5814
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v3

    .line 5815
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 5813
    invoke-direct {p0, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 5816
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5817
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 5821
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 5822
    .local v2, "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v4, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;

    invoke-direct {v4, v2, p1, p3}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$b-wmW_X7TIC2Bc_zEKaPtyELmHY;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 5823
    .end local v2    # "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    goto :goto_0

    .line 5824
    :cond_2
    return-void

    .line 5810
    :catchall_0
    move-exception v3

    :try_start_5
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 5811
    nop

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .end local p3    # "uid":I
    throw v3

    .line 5816
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authTokenType":Ljava/lang/String;
    .restart local p3    # "uid":I
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .end local p3    # "uid":I
    :try_start_6
    throw v3

    .line 5817
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authTokenType":Ljava/lang/String;
    .restart local p3    # "uid":I
    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 5795
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "AccountManagerService"

    const-string/jumbo v2, "revokeAppPermission: called with invalid arguments"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5796
    return-void
.end method

.method private saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .line 2474
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    if-nez p3, :cond_0

    goto/16 :goto_5

    .line 2477
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v1

    .line 2478
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2477
    invoke-direct {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2479
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2480
    :try_start_0
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 2481
    const/4 v2, 0x0

    .line 2483
    .local v2, "updateCache":Z
    :try_start_1
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2484
    .local v3, "accountId":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_2

    .line 2485
    nop

    .line 2495
    :try_start_2
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2496
    if-eqz v2, :cond_1

    .line 2497
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 2498
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "type":Ljava/lang/String;
    .end local p4    # "authToken":Ljava/lang/String;
    :goto_0
    :try_start_4
    throw v0

    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "type":Ljava/lang/String;
    .restart local p4    # "authToken":Ljava/lang/String;
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 2485
    return v0

    .line 2487
    :cond_2
    :try_start_5
    iget-object v7, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7, v3, v4, p3}, Lcom/android/server/accounts/AccountsDb;->deleteAuthtokensByAccountIdAndType(JLjava/lang/String;)Z

    .line 2488
    iget-object v7, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7, v3, v4, p3, p4}, Lcom/android/server/accounts/AccountsDb;->insertAuthToken(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v5, v7, v5

    if-ltz v5, :cond_4

    .line 2489
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2490
    const/4 v0, 0x1

    .line 2491
    .end local v2    # "updateCache":Z
    .local v0, "updateCache":Z
    const/4 v2, 0x1

    .line 2495
    :try_start_6
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2496
    if-eqz v0, :cond_3

    .line 2497
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2498
    :try_start_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    monitor-exit v5

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "type":Ljava/lang/String;
    .end local p4    # "authToken":Ljava/lang/String;
    :try_start_8
    throw v2

    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "type":Ljava/lang/String;
    .restart local p4    # "authToken":Ljava/lang/String;
    :cond_3
    :goto_2
    monitor-exit v1

    .line 2491
    return v2

    .line 2493
    .end local v0    # "updateCache":Z
    .restart local v2    # "updateCache":Z
    :cond_4
    nop

    .line 2495
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2496
    if-eqz v2, :cond_5

    .line 2497
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 2498
    :try_start_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    monitor-exit v5

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_0

    :cond_5
    :goto_3
    :try_start_a
    monitor-exit v1

    .line 2493
    return v0

    .line 2495
    .end local v3    # "accountId":J
    :catchall_3
    move-exception v0

    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2496
    if-eqz v2, :cond_6

    .line 2497
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 2498
    :try_start_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    monitor-exit v3

    goto :goto_4

    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "type":Ljava/lang/String;
    .end local p4    # "authToken":Ljava/lang/String;
    :try_start_c
    throw v0

    .line 2501
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "type":Ljava/lang/String;
    .restart local p4    # "authToken":Ljava/lang/String;
    :cond_6
    :goto_4
    nop

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "type":Ljava/lang/String;
    .end local p4    # "authToken":Ljava/lang/String;
    throw v0

    .line 2502
    .end local v2    # "updateCache":Z
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "type":Ljava/lang/String;
    .restart local p4    # "authToken":Ljava/lang/String;
    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v0

    .line 2475
    :cond_7
    :goto_5
    return v0
.end method

.method private saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .locals 12
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "callerPkg"    # Ljava/lang/String;
    .param p4, "callerSigDigest"    # [B
    .param p5, "tokenType"    # Ljava/lang/String;
    .param p6, "token"    # Ljava/lang/String;
    .param p7, "expiryMillis"    # J

    .line 2461
    if-eqz p2, :cond_1

    if-eqz p5, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    move-object v9, p0

    move-object v10, p1

    goto :goto_0

    .line 2464
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    .line 2465
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2464
    move-object v9, p0

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2466
    move-object v10, p1

    iget-object v11, v10, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2467
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v1

    move-object v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p5

    move-object v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 2469
    monitor-exit v11

    .line 2470
    return-void

    .line 2469
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2461
    :cond_1
    move-object v9, p0

    move-object v10, p1

    .line 2462
    :goto_0
    return-void
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 5192
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 5193
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 5194
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5195
    const/4 v0, 0x1

    return v0

    .line 5193
    .end local v3    # "arg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5199
    :cond_1
    return v0
.end method

.method private sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1061
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1063
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "authAccount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "accountType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1067
    return-void
.end method

.method private sendAccountsChangedBroadcast(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the accounts changed, sending broadcast of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 1056
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1058
    return-void
.end method

.method private sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .locals 3
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;

    .line 6128
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6135
    goto :goto_0

    .line 6129
    :catch_0
    move-exception v0

    .line 6132
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6133
    const-string v1, "failure while notifying response"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6136
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 950
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    .line 952
    .local v0, "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 953
    .local v2, "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 954
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 956
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 958
    .end local v2    # "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 959
    :cond_1
    return-void
.end method

.method private sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 6115
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6122
    goto :goto_0

    .line 6116
    :catch_0
    move-exception v0

    .line 6119
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6120
    const-string v1, "failure while notifying response"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6123
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newVisibility"    # I
    .param p4, "notify"    # Z
    .param p5, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 799
    iget-object v0, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_0
    iget-object v1, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 803
    const/4 v2, 0x0

    if-eqz p4, :cond_2

    .line 804
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 805
    nop

    .line 806
    invoke-direct {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    .line 807
    .local v3, "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v4

    .local v4, "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 809
    .end local v3    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {p0, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 810
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v2

    .line 812
    :cond_1
    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 813
    .restart local v3    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 814
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v4

    .line 813
    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .restart local v4    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 817
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 822
    .end local v3    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 823
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-direct {p0, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 825
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v2

    .line 827
    :cond_3
    :try_start_5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 828
    .restart local v3    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 831
    .restart local v4    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/accounts/AccountManagerService;->updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 832
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v2

    .line 835
    :cond_5
    if-eqz p4, :cond_9

    .line 836
    nop

    .line 837
    :try_start_7
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 836
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 838
    .local v5, "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 839
    .local v6, "oldVisibility":I
    nop

    .line 840
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 841
    .local v7, "currentVisibility":I
    invoke-direct {p0, v6}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v8

    invoke-direct {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v9

    if-eq v8, v9, :cond_6

    .line 842
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8, p5}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 844
    .end local v5    # "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "oldVisibility":I
    .end local v7    # "currentVisibility":I
    :cond_6
    goto :goto_1

    .line 845
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 846
    .local v5, "packageNameToNotify":Ljava/lang/String;
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 847
    .end local v5    # "packageNameToNotify":Ljava/lang/String;
    goto :goto_2

    .line 848
    :cond_8
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 850
    :cond_9
    const/4 v2, 0x1

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return v2

    .line 851
    .end local v3    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "newVisibility":I
    .end local p4    # "notify":Z
    .end local p5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_start_a
    throw v2

    .line 852
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "newVisibility":I
    .restart local p4    # "notify":Z
    .restart local p5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1
.end method

.method private setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 17
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "callingUid"    # I

    .line 2595
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    if-nez v10, :cond_0

    .line 2596
    return-void

    .line 2598
    :cond_0
    const/4 v1, 0x0

    .line 2599
    .local v1, "isChanged":Z
    iget-object v12, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2600
    :try_start_0
    iget-object v13, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2601
    :try_start_1
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2603
    :try_start_2
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v10}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v2

    move-wide v14, v2

    .line 2604
    .local v14, "accountId":J
    const-wide/16 v2, 0x0

    cmp-long v0, v14, v2

    if-ltz v0, :cond_3

    .line 2605
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v14, v15, v11}, Lcom/android/server/accounts/AccountsDb;->updateCeAccountPassword(JLjava/lang/String;)I

    .line 2606
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v14, v15}, Lcom/android/server/accounts/AccountsDb;->deleteAuthTokensByAccountId(J)Z

    .line 2607
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2608
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 2609
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2614
    const/16 v16, 0x1

    .line 2615
    .end local v1    # "isChanged":Z
    .local v16, "isChanged":Z
    if-eqz v11, :cond_2

    :try_start_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2617
    :cond_1
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SET_PASSWORD:Ljava/lang/String;

    move-object v2, v0

    goto :goto_1

    .line 2616
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    move-object v2, v0

    .line 2617
    :goto_1
    nop

    .line 2618
    .local v2, "action":Ljava/lang/String;
    const-string v3, "accounts"

    move-object/from16 v1, p0

    move-wide v4, v14

    move-object/from16 v6, p1

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v1, v16

    goto :goto_2

    .line 2622
    .end local v2    # "action":Ljava/lang/String;
    .end local v14    # "accountId":J
    :catchall_0
    move-exception v0

    move/from16 v1, v16

    goto :goto_3

    .end local v16    # "isChanged":Z
    .restart local v1    # "isChanged":Z
    :cond_3
    :goto_2
    :try_start_4
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2623
    if-eqz v1, :cond_4

    .line 2625
    invoke-direct {v8, v10, v9}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2626
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v8, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2629
    :cond_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2630
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2631
    return-void

    .line 2622
    :catchall_1
    move-exception v0

    :goto_3
    :try_start_6
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2623
    if-eqz v1, :cond_5

    .line 2625
    invoke-direct {v8, v10, v9}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2626
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v8, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2628
    :cond_5
    nop

    .end local v1    # "isChanged":Z
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "callingUid":I
    throw v0

    .line 2629
    .restart local v1    # "isChanged":Z
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "password":Ljava/lang/String;
    .restart local p4    # "callingUid":I
    :catchall_2
    move-exception v0

    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "isChanged":Z
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "password":Ljava/lang/String;
    .end local p4    # "callingUid":I
    :try_start_7
    throw v0

    .line 2630
    .restart local v1    # "isChanged":Z
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "password":Ljava/lang/String;
    .restart local p4    # "callingUid":I
    :catchall_3
    move-exception v0

    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method private setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 2707
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2708
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2710
    :try_start_1
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2711
    .local v1, "accountId":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 2725
    :try_start_2
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2712
    return-void

    .line 2714
    :cond_0
    :try_start_3
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v1, v2, p3}, Lcom/android/server/accounts/AccountsDb;->findExtrasIdByAccountId(JLjava/lang/String;)J

    move-result-wide v5

    .line 2715
    .local v5, "extrasId":J
    cmp-long v7, v5, v3

    if-gez v7, :cond_1

    .line 2716
    iget-object v7, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7, v1, v2, p3, p4}, Lcom/android/server/accounts/AccountsDb;->insertExtra(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide v5, v7

    .line 2717
    cmp-long v3, v5, v3

    if-gez v3, :cond_2

    .line 2725
    :try_start_4
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2718
    return-void

    .line 2720
    :cond_1
    :try_start_5
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, v5, v6, p4}, Lcom/android/server/accounts/AccountsDb;->updateExtra(JLjava/lang/String;)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v3, :cond_2

    .line 2725
    :try_start_6
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2721
    return-void

    .line 2723
    :cond_2
    :try_start_7
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2725
    .end local v1    # "accountId":J
    .end local v5    # "extrasId":J
    :try_start_8
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2726
    nop

    .line 2727
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2728
    :try_start_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2730
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2731
    return-void

    .line 2729
    :catchall_0
    move-exception v2

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "key":Ljava/lang/String;
    .end local p4    # "value":Ljava/lang/String;
    :try_start_c
    throw v2

    .line 2725
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "key":Ljava/lang/String;
    .restart local p4    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v1

    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2726
    nop

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "key":Ljava/lang/String;
    .end local p4    # "value":Ljava/lang/String;
    throw v1

    .line 2730
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "key":Ljava/lang/String;
    .restart local p4    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v1
.end method

.method private shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1018
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1019
    .local v0, "visibility":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 1021
    return v2

    .line 1024
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1025
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x1000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1026
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1028
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-virtual {v4, v3, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 1029
    .local v4, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private showCantAddAccount(II)V
    .locals 6
    .param p1, "errorCode"    # I
    .param p2, "userId"    # I

    .line 3629
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3630
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3631
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v1, 0x0

    .line 3632
    .local v1, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 3633
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDefaultCantAddAccountIntent(I)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 3634
    :cond_0
    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    .line 3635
    const-string/jumbo v2, "no_modify_accounts"

    invoke-virtual {v0, p2, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 3637
    :cond_1
    const/16 v2, 0x65

    if-ne p1, v2, :cond_2

    .line 3638
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v1

    .line 3640
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 3641
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDefaultCantAddAccountIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 3643
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 3645
    .local v2, "identityToken":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3647
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3648
    nop

    .line 3649
    return-void

    .line 3647
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3648
    throw v4
.end method

.method private startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accounts"    # [Landroid/accounts/Account;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 4504
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/ChooseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4505
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "accounts"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4506
    new-instance v1, Landroid/accounts/AccountManagerResponse;

    invoke-direct {v1, p1}, Landroid/accounts/AccountManagerResponse;-><init>(Landroid/accounts/IAccountManagerResponse;)V

    const-string v2, "accountManagerResponse"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4508
    const-string v1, "androidPackageName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4510
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4511
    return-void
.end method

.method private syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 4
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1350
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "mUsers lock must be held"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1351
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->findCeAccountsNotInDe()Ljava/util/List;

    move-result-object v0

    .line 1352
    .local v0, "accountsToRemove":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " accounts were previously deleted while user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1355
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was locked. Removing accounts from CE tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1353
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 1360
    .local v2, "account":Landroid/accounts/Account;
    const/16 v3, 0x3e8

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 1361
    .end local v2    # "account":Landroid/accounts/Account;
    goto :goto_0

    .line 1363
    :cond_0
    return-void
.end method

.method private syncSharedAccounts(I)V
    .locals 8
    .param p1, "userId"    # I

    .line 1452
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 1453
    .local v0, "sharedAccounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_5

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_3

    .line 1454
    :cond_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1455
    .local v1, "accounts":[Landroid/accounts/Account;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1456
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    goto :goto_0

    .line 1457
    :cond_1
    move v3, v4

    :goto_0
    nop

    .line 1458
    .local v3, "parentUserId":I
    if-gez v3, :cond_2

    .line 1459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has shared accounts, but no parent user"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AccountManagerService"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-void

    .line 1462
    :cond_2
    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v6, v0, v4

    .line 1463
    .local v6, "sa":Landroid/accounts/Account;
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 1465
    :cond_3
    invoke-virtual {p0, v2, v6, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    .line 1462
    .end local v6    # "sa":Landroid/accounts/Account;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1467
    :cond_4
    return-void

    .line 1453
    .end local v1    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "parentUserId":I
    :cond_5
    :goto_3
    return-void
.end method

.method private unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .locals 8
    .param p1, "accountTypes"    # [Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 928
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 929
    if-nez p1, :cond_0

    .line 931
    const/4 v1, 0x0

    :try_start_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-object p1, v1

    .line 933
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 934
    .local v3, "type":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1000(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 935
    .local v4, "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 938
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 939
    .local v5, "cnt":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 940
    invoke-interface {v4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 942
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "cnt":Ljava/lang/Integer;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 936
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "attempt to unregister wrong receiver"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accountTypes":[Ljava/lang/String;
    .end local p2    # "opPackageName":Ljava/lang/String;
    .end local p3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    throw v1

    .line 945
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "receivers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accountTypes":[Ljava/lang/String;
    .restart local p2    # "opPackageName":Ljava/lang/String;
    .restart local p3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_3
    monitor-exit v0

    .line 946
    return-void

    .line 945
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newVisibility"    # I
    .param p4, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 858
    iget-object v0, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v0

    .line 859
    .local v0, "accountId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 860
    return v3

    .line 863
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 865
    .local v2, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v0, v1, p2, p3}, Lcom/android/server/accounts/AccountsDb;->setAccountVisibility(JLjava/lang/String;I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 867
    nop

    .line 870
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 867
    return v3

    .line 870
    :cond_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 871
    nop

    .line 872
    nop

    .line 873
    invoke-direct {p0, p1, p4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    .line 874
    .local v3, "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    const/4 v4, 0x1

    return v4

    .line 870
    .end local v3    # "accountVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 871
    throw v3
.end method

.method private updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1746
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1747
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1748
    :try_start_0
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1749
    :try_start_1
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->updateAccountLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3

    .line 1750
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "account":Landroid/accounts/Account;
    :try_start_4
    throw v3

    .line 1751
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "account":Landroid/accounts/Account;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method private validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .locals 27
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "invalidateAuthenticatorCache"    # Z

    .line 1108
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "AccountManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validateAccountsInternal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isCeDatabaseAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 1110
    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->isCeDatabaseAttached()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " userLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 1111
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_0
    if-eqz p2, :cond_1

    .line 1115
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    .line 1118
    :cond_1
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 1119
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    .line 1118
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object v9

    .line 1120
    .local v9, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v10

    .line 1122
    .local v10, "userUnlocked":Z
    iget-object v11, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1123
    :try_start_0
    iget-object v12, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 1124
    const/4 v1, 0x0

    .line 1127
    .local v1, "accountDeleted":Z
    :try_start_1
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    move-object v13, v0

    .line 1128
    .local v13, "accountsDb":Lcom/android/server/accounts/AccountsDb;
    invoke-virtual {v13}, Lcom/android/server/accounts/AccountsDb;->findMetaAuthUid()Ljava/util/Map;

    move-result-object v0

    move-object v14, v0

    .line 1130
    .local v14, "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    move-object v15, v0

    .line 1131
    .local v15, "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1132
    .local v0, "knownUids":Landroid/util/SparseBooleanArray;
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v16, v0

    .end local v0    # "knownUids":Landroid/util/SparseBooleanArray;
    .local v16, "knownUids":Landroid/util/SparseBooleanArray;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-eqz v0, :cond_5

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1133
    .local v0, "authToUidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1134
    .local v3, "type":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1135
    .local v4, "uid":I
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1136
    .local v5, "knownUid":Ljava/lang/Integer;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v4, v6, :cond_2

    .line 1138
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1156
    :cond_2
    if-nez v16, :cond_3

    .line 1157
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-direct {v7, v6}, Lcom/android/server/accounts/AccountManagerService;->getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v6

    move-object/from16 v16, v6

    goto :goto_1

    .line 1156
    :cond_3
    move-object/from16 v6, v16

    .line 1159
    .end local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    .local v6, "knownUids":Landroid/util/SparseBooleanArray;
    :goto_1
    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1163
    invoke-virtual {v15, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1165
    invoke-virtual {v13, v3, v4}, Lcom/android/server/accounts/AccountsDb;->deleteMetaByAuthTypeAndUid(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1168
    .end local v0    # "authToUidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "knownUid":Ljava/lang/Integer;
    :cond_4
    move-object/from16 v16, v6

    .end local v6    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    :goto_2
    goto :goto_0

    .line 1250
    .end local v1    # "accountDeleted":Z
    .end local v13    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v14    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v20, v10

    goto/16 :goto_d

    .line 1173
    .restart local v1    # "accountDeleted":Z
    .restart local v13    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v14    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v15    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    :cond_5
    :try_start_3
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    if-eqz v2, :cond_6

    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1174
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v13, v3, v4}, Lcom/android/server/accounts/AccountsDb;->insertOrReplaceMetaAuthTypeAndUid(Ljava/lang/String;I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1175
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_3

    .line 1177
    :cond_6
    :try_start_5
    invoke-virtual {v13}, Lcom/android/server/accounts/AccountsDb;->findAllDeAccounts()Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move-object/from16 v17, v0

    .line 1179
    .local v17, "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    :try_start_6
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1180
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v6, v0

    .line 1182
    .local v6, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object/from16 v18, v2

    .line 1183
    .local v18, "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v4, v2

    .line 1184
    .local v4, "accountId":J
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    move-object v3, v2

    .line 1185
    .local v3, "account":Landroid/accounts/Account;
    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1186
    const-string v2, "AccountManagerService"

    move-object/from16 v19, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v6

    .end local v6    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v20, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v6, "deleting account "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " because type "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'s registered authenticator no longer exist."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    nop

    .line 1190
    invoke-direct {v7, v3, v8}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v21, v0

    .line 1191
    .local v21, "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    nop

    .line 1192
    invoke-direct {v7, v3, v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v22, v0

    .line 1193
    .local v22, "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v13}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1195
    :try_start_7
    invoke-virtual {v13, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1199
    if-eqz v10, :cond_7

    .line 1200
    :try_start_8
    invoke-virtual {v13, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    .line 1204
    :catchall_1
    move-exception v0

    move-wide/from16 v24, v4

    move-object/from16 v26, v9

    move-object/from16 v9, v20

    move/from16 v20, v10

    move-object v10, v3

    goto/16 :goto_8

    .line 1202
    :cond_7
    :goto_5
    :try_start_9
    invoke-virtual {v13}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1204
    :try_start_a
    invoke-virtual {v13}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1205
    nop

    .line 1206
    const/16 v23, 0x1

    .line 1208
    .end local v1    # "accountDeleted":Z
    .local v23, "accountDeleted":Z
    :try_start_b
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    const-string v0, "accounts"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v1, p0

    move-object v6, v3

    .end local v3    # "account":Landroid/accounts/Account;
    .local v6, "account":Landroid/accounts/Account;
    move-object v3, v0

    move-wide/from16 v24, v4

    .end local v4    # "accountId":J
    .local v24, "accountId":J
    move-object/from16 v26, v9

    move-object/from16 v9, v20

    move/from16 v20, v10

    move-object v10, v6

    .end local v6    # "account":Landroid/accounts/Account;
    .local v9, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v10, "account":Landroid/accounts/Account;
    .local v20, "userUnlocked":Z
    .local v26, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v6, p1

    :try_start_c
    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1211
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 1214
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1218
    .local v1, "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v7, v2}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1219
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v7, v2, v8}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1221
    .end local v1    # "packageToVisibility":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_8
    goto :goto_6

    .line 1222
    :cond_9
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1223
    .local v1, "packageName":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v7, v10, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1224
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_7

    .line 1225
    .end local v21    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v22    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    move/from16 v1, v23

    goto :goto_9

    .line 1246
    .end local v9    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "account":Landroid/accounts/Account;
    .end local v18    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v24    # "accountId":J
    :catchall_2
    move-exception v0

    move/from16 v1, v23

    goto/16 :goto_c

    .end local v20    # "userUnlocked":Z
    .end local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v9, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v10, "userUnlocked":Z
    :catchall_3
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v20, v10

    move/from16 v1, v23

    .end local v9    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "userUnlocked":Z
    .restart local v20    # "userUnlocked":Z
    .restart local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_c

    .line 1204
    .end local v23    # "accountDeleted":Z
    .end local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v1, "accountDeleted":Z
    .restart local v3    # "account":Landroid/accounts/Account;
    .restart local v4    # "accountId":J
    .restart local v9    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "userUnlocked":Z
    .restart local v18    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .local v20, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v21    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v22    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_4
    move-exception v0

    move-wide/from16 v24, v4

    move-object/from16 v26, v9

    move-object/from16 v9, v20

    move/from16 v20, v10

    move-object v10, v3

    .end local v3    # "account":Landroid/accounts/Account;
    .end local v4    # "accountId":J
    .local v9, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v10, "account":Landroid/accounts/Account;
    .local v20, "userUnlocked":Z
    .restart local v24    # "accountId":J
    .restart local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_8
    :try_start_d
    invoke-virtual {v13}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 1205
    nop

    .end local v1    # "accountDeleted":Z
    .end local v13    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v14    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v17    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v20    # "userUnlocked":Z
    .end local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "invalidateAuthenticatorCache":Z
    throw v0

    .line 1226
    .end local v21    # "packagesToVisibility":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v22    # "accountRemovedReceivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "accountId":J
    .restart local v1    # "accountDeleted":Z
    .restart local v3    # "account":Landroid/accounts/Account;
    .restart local v4    # "accountId":J
    .local v6, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v9, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v10, "userUnlocked":Z
    .restart local v13    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v14    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v15    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v17    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "invalidateAuthenticatorCache":Z
    :cond_b
    move-object/from16 v19, v0

    move-wide/from16 v24, v4

    move-object/from16 v26, v9

    move/from16 v20, v10

    move-object v10, v3

    move-object v9, v6

    .end local v3    # "account":Landroid/accounts/Account;
    .end local v4    # "accountId":J
    .end local v6    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v9, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v10, "account":Landroid/accounts/Account;
    .restart local v20    # "userUnlocked":Z
    .restart local v24    # "accountId":J
    .restart local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1227
    .local v0, "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_c

    .line 1228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 1229
    iget-object v2, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    :cond_c
    iget-object v2, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    .end local v0    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "account":Landroid/accounts/Account;
    .end local v18    # "accountEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .end local v24    # "accountId":J
    :goto_9
    move-object v6, v9

    move-object/from16 v0, v19

    move/from16 v10, v20

    move-object/from16 v9, v26

    goto/16 :goto_4

    .line 1234
    .end local v20    # "userUnlocked":Z
    .end local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v6    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v9, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v10, "userUnlocked":Z
    :cond_d
    move-object/from16 v26, v9

    move/from16 v20, v10

    move-object v9, v6

    .end local v6    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v10    # "userUnlocked":Z
    .local v9, "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v20    # "userUnlocked":Z
    .restart local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1235
    .local v2, "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1236
    .local v3, "accountType":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1237
    .local v4, "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/accounts/Account;

    .line 1238
    .local v5, "accountsForType":[Landroid/accounts/Account;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_b
    array-length v10, v5

    if-ge v6, v10, :cond_e

    .line 1239
    new-instance v10, Landroid/accounts/Account;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    .line 1240
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v18

    move-object/from16 v21, v2

    .end local v2    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local v21, "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v0, v3, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v5, v6

    .line 1238
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v2, v21

    goto :goto_b

    .end local v21    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v2    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_e
    move-object/from16 v19, v0

    move-object/from16 v21, v2

    .line 1242
    .end local v2    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v6    # "i":I
    .restart local v21    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    move-object/from16 v0, v19

    .end local v3    # "accountType":Ljava/lang/String;
    .end local v4    # "accountNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "accountsForType":[Landroid/accounts/Account;
    .end local v21    # "cur":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    goto :goto_a

    .line 1244
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$900(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1246
    .end local v9    # "accountNamesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_10

    .line 1247
    :try_start_e
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1250
    .end local v1    # "accountDeleted":Z
    .end local v13    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v14    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v17    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    :cond_10
    monitor-exit v12
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1251
    :try_start_f
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 1252
    return-void

    .line 1246
    .restart local v1    # "accountDeleted":Z
    .restart local v13    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .restart local v14    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v15    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    .restart local v17    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    :catchall_5
    move-exception v0

    goto :goto_c

    .end local v20    # "userUnlocked":Z
    .end local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v9, "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "userUnlocked":Z
    :catchall_6
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v20, v10

    .end local v9    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "userUnlocked":Z
    .restart local v20    # "userUnlocked":Z
    .restart local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_c
    if-eqz v1, :cond_11

    .line 1247
    :try_start_10
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v7, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1249
    :cond_11
    nop

    .end local v20    # "userUnlocked":Z
    .end local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "invalidateAuthenticatorCache":Z
    throw v0

    .line 1250
    .end local v1    # "accountDeleted":Z
    .end local v13    # "accountsDb":Lcom/android/server/accounts/AccountsDb;
    .end local v14    # "metaAuthUid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "obsoleteAuthType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v17    # "accountsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Landroid/accounts/Account;>;"
    .restart local v9    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "userUnlocked":Z
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "invalidateAuthenticatorCache":Z
    :catchall_7
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v20, v10

    .end local v9    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "userUnlocked":Z
    .restart local v20    # "userUnlocked":Z
    .restart local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_d
    monitor-exit v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .end local v20    # "userUnlocked":Z
    .end local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "invalidateAuthenticatorCache":Z
    :try_start_11
    throw v0

    .restart local v20    # "userUnlocked":Z
    .restart local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "invalidateAuthenticatorCache":Z
    :catchall_8
    move-exception v0

    goto :goto_d

    .line 1251
    .end local v20    # "userUnlocked":Z
    .end local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "userUnlocked":Z
    :catchall_9
    move-exception v0

    move-object/from16 v26, v9

    move/from16 v20, v10

    .end local v9    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "userUnlocked":Z
    .restart local v20    # "userUnlocked":Z
    .restart local v26    # "knownAuth":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_e
    monitor-exit v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1714
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1715
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 1718
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    .line 1715
    const-string v6, "accountAuthenticated( account: %s, callerUid: %s)"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1719
    .local v3, "msg":Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    const-string v1, "account cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1722
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1723
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1731
    invoke-direct {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1732
    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1736
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1738
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 1739
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1739
    return v5

    .line 1741
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1742
    throw v4

    .line 1733
    .end local v2    # "identityToken":J
    :cond_2
    :goto_0
    return v5

    .line 1724
    :cond_3
    new-array v2, v2, [Ljava/lang/Object;

    .line 1726
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 1724
    const-string/jumbo v3, "uid %s cannot notify authentication for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1728
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 26
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;

    .line 3146
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p6

    const/16 v0, 0x10

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 3147
    const/4 v0, 0x1

    invoke-static {v12, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3148
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccount: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requiredFeatures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3152
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3154
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3149
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3148
    :cond_0
    move-object/from16 v11, p3

    move/from16 v10, p5

    .line 3157
    :goto_0
    if-eqz v14, :cond_5

    .line 3158
    if-eqz v13, :cond_4

    .line 3161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3162
    .local v9, "uid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 3163
    .local v8, "userId":I
    invoke-direct {v15, v8, v9}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3165
    const/16 v1, 0x64

    :try_start_0
    const-string v0, "User is not allowed to add an account!"

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3168
    goto :goto_1

    .line 3167
    :catch_0
    move-exception v0

    .line 3169
    :goto_1
    invoke-direct {v15, v1, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3170
    return-void

    .line 3172
    :cond_1
    invoke-direct {v15, v8, v13, v9}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3174
    const/16 v1, 0x65

    :try_start_1
    const-string v0, "User cannot modify accounts of this type (policy)."

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3177
    goto :goto_2

    .line 3176
    :catch_1
    move-exception v0

    .line 3178
    :goto_2
    invoke-direct {v15, v1, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3180
    return-void

    .line 3183
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3184
    .local v7, "pid":I
    if-nez v12, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_3

    :cond_3
    move-object v0, v12

    :goto_3
    move-object v6, v0

    .line 3185
    .local v6, "options":Landroid/os/Bundle;
    const-string v0, "callerUid"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3186
    const-string v0, "callerPid"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3188
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 3189
    .local v5, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3191
    .local v16, "identityToken":J
    :try_start_2
    invoke-virtual {v15, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3192
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-direct {v15, v0, v1, v2, v9}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3195
    new-instance v18, Lcom/android/server/accounts/AccountManagerService$9;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object v3, v0

    move-object/from16 v4, p1

    move/from16 v23, v5

    .end local v5    # "usrId":I
    .local v23, "usrId":I
    move-object/from16 v5, p2

    move-object/from16 v24, v6

    .end local v6    # "options":Landroid/os/Bundle;
    .local v24, "options":Landroid/os/Bundle;
    move/from16 v6, p5

    move/from16 v25, v7

    .end local v7    # "pid":I
    .local v25, "pid":I
    move/from16 v7, v19

    move/from16 v19, v8

    .end local v8    # "userId":I
    .local v19, "userId":I
    move-object/from16 v8, v20

    move/from16 v20, v9

    .end local v9    # "uid":I
    .local v20, "uid":I
    move/from16 v9, v21

    move/from16 v10, v22

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, v24

    move-object/from16 v14, p2

    :try_start_3
    invoke-direct/range {v1 .. v14}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3210
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accounts/AccountManagerService$9;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3212
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3213
    nop

    .line 3214
    return-void

    .line 3212
    :catchall_0
    move-exception v0

    goto :goto_4

    .end local v19    # "userId":I
    .end local v20    # "uid":I
    .end local v23    # "usrId":I
    .end local v24    # "options":Landroid/os/Bundle;
    .end local v25    # "pid":I
    .restart local v5    # "usrId":I
    .restart local v6    # "options":Landroid/os/Bundle;
    .restart local v7    # "pid":I
    .restart local v8    # "userId":I
    .restart local v9    # "uid":I
    :catchall_1
    move-exception v0

    move/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v19, v8

    move/from16 v20, v9

    .end local v5    # "usrId":I
    .end local v6    # "options":Landroid/os/Bundle;
    .end local v7    # "pid":I
    .end local v8    # "userId":I
    .end local v9    # "uid":I
    .restart local v19    # "userId":I
    .restart local v20    # "uid":I
    .restart local v23    # "usrId":I
    .restart local v24    # "options":Landroid/os/Bundle;
    .restart local v25    # "pid":I
    :goto_4
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3213
    throw v0

    .line 3158
    .end local v16    # "identityToken":J
    .end local v19    # "userId":I
    .end local v20    # "uid":I
    .end local v23    # "usrId":I
    .end local v24    # "options":Landroid/os/Bundle;
    .end local v25    # "pid":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3157
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .locals 26
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;
    .param p7, "userId"    # I

    .line 3220
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p6

    move/from16 v11, p7

    const/4 v0, 0x1

    invoke-static {v12, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3221
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3222
    .local v10, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount: accountType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", requiredFeatures "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3226
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p5

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3229
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", for user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3223
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3222
    :cond_0
    move-object/from16 v9, p3

    move/from16 v8, p5

    .line 3232
    :goto_0
    const/4 v1, 0x0

    if-eqz v14, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3233
    if-eqz v13, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    const-string v4, "accountType cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3235
    invoke-direct {v15, v10, v11}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3244
    invoke-direct {v15, v11, v10}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3246
    const/16 v1, 0x64

    :try_start_0
    const-string v0, "User is not allowed to add an account!"

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3249
    goto :goto_3

    .line 3248
    :catch_0
    move-exception v0

    .line 3250
    :goto_3
    invoke-direct {v15, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3251
    return-void

    .line 3253
    :cond_3
    invoke-direct {v15, v11, v13, v10}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3255
    const/16 v1, 0x65

    :try_start_1
    const-string v0, "User cannot modify accounts of this type (policy)."

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3258
    goto :goto_4

    .line 3257
    :catch_1
    move-exception v0

    .line 3259
    :goto_4
    invoke-direct {v15, v1, v11}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3261
    return-void

    .line 3264
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3265
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3266
    .local v6, "uid":I
    if-nez v12, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_5

    :cond_5
    move-object v0, v12

    :goto_5
    move-object v5, v0

    .line 3267
    .local v5, "options":Landroid/os/Bundle;
    const-string v0, "callerUid"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3268
    const-string v0, "callerPid"

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3270
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3272
    .local v16, "identityToken":J
    :try_start_2
    invoke-virtual {v15, v11}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3273
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-direct {v15, v0, v1, v2, v6}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3276
    new-instance v18, Lcom/android/server/accounts/AccountManagerService$10;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v23, v5

    .end local v5    # "options":Landroid/os/Bundle;
    .local v23, "options":Landroid/os/Bundle;
    move-object/from16 v5, p2

    move/from16 v24, v6

    .end local v6    # "uid":I
    .local v24, "uid":I
    move/from16 v6, p5

    move/from16 v25, v7

    .end local v7    # "pid":I
    .local v25, "pid":I
    move/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    move/from16 v19, v10

    .end local v10    # "callingUid":I
    .local v19, "callingUid":I
    move/from16 v10, v22

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, v23

    move-object/from16 v14, p2

    :try_start_3
    invoke-direct/range {v1 .. v14}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3294
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accounts/AccountManagerService$10;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3296
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3297
    nop

    .line 3298
    return-void

    .line 3296
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v19    # "callingUid":I
    .end local v23    # "options":Landroid/os/Bundle;
    .end local v24    # "uid":I
    .end local v25    # "pid":I
    .restart local v5    # "options":Landroid/os/Bundle;
    .restart local v6    # "uid":I
    .restart local v7    # "pid":I
    .restart local v10    # "callingUid":I
    :catchall_1
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v19, v10

    .end local v5    # "options":Landroid/os/Bundle;
    .end local v6    # "uid":I
    .end local v7    # "pid":I
    .end local v10    # "callingUid":I
    .restart local v19    # "callingUid":I
    .restart local v23    # "options":Landroid/os/Bundle;
    .restart local v24    # "uid":I
    .restart local v25    # "pid":I
    :goto_6
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3297
    throw v0

    .line 3236
    .end local v16    # "identityToken":J
    .end local v19    # "callingUid":I
    .end local v23    # "options":Landroid/os/Bundle;
    .end local v24    # "uid":I
    .end local v25    # "pid":I
    .restart local v10    # "callingUid":I
    :cond_6
    new-instance v3, Ljava/lang/SecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 3239
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    .line 3240
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 3237
    const-string v0, "User %s trying to add account for %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1650
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/accounts/AccountManagerService;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
    .locals 15
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "packageToVisibility"    # Ljava/util/Map;

    .line 460
    move-object v8, p0

    move-object/from16 v9, p1

    const/4 v0, 0x1

    move-object/from16 v10, p3

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 461
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 462
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 463
    .local v12, "userId":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccountExplicitly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    const-string v1, "account cannot be null"

    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 468
    iget-object v1, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v1, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v13

    .line 482
    .local v13, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v12}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 483
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v6, v11

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 483
    return v0

    .line 486
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 487
    throw v0

    .line 469
    .end local v13    # "identityToken":J
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 470
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 469
    const-string/jumbo v0, "uid %s cannot explicitly add accounts of type: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addSharedAccountsFromParentUser(IILjava/lang/String;)V
    .locals 4
    .param p1, "parentUserId"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 4388
    const-string v0, "addSharedAccountsFromParentUser"

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    .line 4389
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 4390
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4391
    .local v3, "account":Landroid/accounts/Account;
    invoke-direct {p0, v3, p2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 4390
    .end local v3    # "account":Landroid/accounts/Account;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4393
    :cond_0
    return-void
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;

    .line 2635
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2637
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2640
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2638
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_0
    const-string v1, "account cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2643
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2644
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2651
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2653
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2654
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    invoke-direct {p0, v4, p1, v5, v0}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2657
    nop

    .line 2658
    return-void

    .line 2656
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2657
    throw v4

    .line 2645
    .end local v2    # "identityToken":J
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2647
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2645
    const-string/jumbo v3, "uid %s cannot clear passwords for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2649
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 20
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "userId"    # I

    .line 3668
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move/from16 v12, p5

    const/4 v0, 0x1

    move-object/from16 v11, p3

    invoke-static {v11, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3669
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3670
    .local v10, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3671
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmCredentials: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p4

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3675
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3671
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3670
    :cond_0
    move/from16 v9, p4

    .line 3678
    :goto_0
    invoke-direct {v13, v10, v12}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3685
    if-eqz v14, :cond_2

    .line 3686
    if-eqz v15, :cond_1

    .line 3687
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3689
    .local v16, "identityToken":J
    :try_start_0
    invoke-virtual {v13, v12}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3690
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$13;

    iget-object v5, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v15, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move/from16 v9, v18

    move/from16 v18, v10

    .end local v10    # "callingUid":I
    .local v18, "callingUid":I
    move/from16 v10, v19

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    :try_start_1
    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$13;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    .line 3702
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$13;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3704
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3705
    nop

    .line 3706
    return-void

    .line 3704
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v18    # "callingUid":I
    .restart local v10    # "callingUid":I
    :catchall_1
    move-exception v0

    move/from16 v18, v10

    .end local v10    # "callingUid":I
    .restart local v18    # "callingUid":I
    :goto_1
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3705
    throw v0

    .line 3686
    .end local v16    # "identityToken":J
    .end local v18    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3685
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3679
    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3682
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3683
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3680
    const-string v0, "User %s trying to confirm account credentials for %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .locals 21
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "userFrom"    # I
    .param p4, "userTo"    # I

    .line 1656
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move/from16 v12, p3

    move/from16 v11, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1657
    .local v10, "callingUid":I
    const/4 v0, -0x1

    invoke-direct {v14, v10, v0}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1661
    invoke-virtual {v14, v12}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v16

    .line 1662
    .local v16, "fromAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {v14, v11}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v17

    .line 1663
    .local v17, "toAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const-string v1, "AccountManagerService"

    if-eqz v16, :cond_1

    if-nez v17, :cond_0

    move/from16 v20, v10

    goto :goto_1

    .line 1676
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Copying account "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v18

    .line 1680
    .local v18, "identityToken":J
    :try_start_0
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$5;

    iget-object v5, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v13, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v9, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object/from16 v4, p1

    move/from16 v20, v10

    .end local v10    # "callingUid":I
    .local v20, "callingUid":I
    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move-object/from16 v12, v17

    move/from16 v13, p3

    :try_start_1
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1705
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$5;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1707
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1708
    nop

    .line 1709
    return-void

    .line 1707
    :catchall_0
    move-exception v0

    goto :goto_0

    .end local v20    # "callingUid":I
    .restart local v10    # "callingUid":I
    :catchall_1
    move-exception v0

    move/from16 v20, v10

    .end local v10    # "callingUid":I
    .restart local v20    # "callingUid":I
    :goto_0
    invoke-static/range {v18 .. v19}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1708
    throw v0

    .line 1663
    .end local v18    # "identityToken":J
    .end local v20    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_1
    move/from16 v20, v10

    .line 1664
    .end local v10    # "callingUid":I
    .restart local v20    # "callingUid":I
    :goto_1
    if-eqz v15, :cond_2

    .line 1665
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 1666
    .local v2, "result":Landroid/os/Bundle;
    const/4 v0, 0x0

    const-string v3, "booleanResult"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1668
    :try_start_2
    invoke-interface {v15, v2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1671
    goto :goto_2

    .line 1669
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1670
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report error back to the client."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "result":Landroid/os/Bundle;
    :cond_2
    :goto_2
    return-void

    .line 1658
    .end local v16    # "fromAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v17    # "toAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v20    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .locals 11
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 4019
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 4023
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4024
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4025
    const-string/jumbo v0, "userHandle cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4027
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 4029
    .local v0, "userId":I
    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-string/jumbo v3, "user must be concrete"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 4033
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4037
    .local v2, "uid":I
    nop

    .line 4039
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v1

    .line 4041
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4043
    .local v9, "identity":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x54000000

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v1

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 4046
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4048
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4043
    return-object v3

    .line 4048
    :catchall_0
    move-exception v3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4049
    throw v3

    .line 4034
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uid":I
    .end local v9    # "identity":J
    :catch_0
    move-exception v2

    .line 4035
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccountManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    return-object v1

    .line 4020
    .end local v0    # "userId":I
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can be called only by system UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 5204
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AccountManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5205
    :cond_0
    const-string v0, "--checkin"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "-c"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v6, v0

    .line 5206
    .local v6, "isCheckinRequest":Z
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5208
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 5209
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 5210
    .local v9, "user":Landroid/content/pm/UserInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5211
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5212
    iget v1, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 5213
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5214
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5215
    .end local v9    # "user":Landroid/content/pm/UserInfo;
    goto :goto_2

    .line 5216
    :cond_3
    return-void
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 19
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "expectActivityLaunch"    # Z

    .line 3900
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    const/16 v0, 0x15

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 3901
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 3902
    .local v14, "callingUid":I
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editProperties: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p3

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3907
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3903
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3902
    :cond_0
    move/from16 v15, p3

    .line 3909
    :goto_0
    if-eqz v12, :cond_4

    .line 3910
    if-eqz v13, :cond_3

    .line 3911
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 3912
    .local v10, "userId":I
    invoke-direct {v11, v13, v14, v10}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3913
    invoke-direct {v11, v14}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3914
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3916
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v13, v0, v1

    .line 3914
    const-string/jumbo v1, "uid %s cannot edit authenticator properites for account type: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3918
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3920
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3922
    .local v16, "identityToken":J
    :try_start_0
    invoke-virtual {v11, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3923
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$17;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v18, v10

    .end local v10    # "userId":I
    .local v18, "userId":I
    move-object/from16 v10, p2

    :try_start_1
    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$17;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 3935
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$17;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3937
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3938
    nop

    .line 3939
    return-void

    .line 3937
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v18    # "userId":I
    .restart local v10    # "userId":I
    :catchall_1
    move-exception v0

    move/from16 v18, v10

    .end local v10    # "userId":I
    .restart local v18    # "userId":I
    :goto_2
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3938
    throw v0

    .line 3910
    .end local v16    # "identityToken":J
    .end local v18    # "userId":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3909
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .locals 25
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "sessionBundle"    # Landroid/os/Bundle;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "appInfo"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .line 3502
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p4

    move/from16 v11, p5

    const-string v1, "failed to decrypt session bundle"

    const/4 v0, 0x1

    invoke-static {v15, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3503
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3504
    .local v10, "callingUid":I
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishSession: response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", expectActivityLaunch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p3

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3509
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3510
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", for user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3505
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3504
    :cond_0
    move/from16 v9, p3

    .line 3513
    :goto_0
    const/4 v4, 0x0

    if-eqz v14, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    const-string/jumbo v6, "response cannot be null"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3516
    if-eqz v15, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    move-result v5

    if-eqz v5, :cond_9

    .line 3521
    invoke-direct {v13, v10, v11}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v5

    if-nez v5, :cond_8

    .line 3529
    invoke-direct {v13, v11, v10}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3530
    const/16 v0, 0x64

    const-string v1, "User is not allowed to add an account!"

    invoke-direct {v13, v14, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3533
    invoke-direct {v13, v0, v11}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3534
    return-void

    .line 3537
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 3542
    .local v8, "pid":I
    const/16 v3, 0x8

    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    move-result-object v0

    .line 3543
    .local v0, "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    invoke-virtual {v0, v15}, Lcom/android/server/accounts/CryptoHelper;->decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v4

    .line 3544
    .local v7, "decryptedBundle":Landroid/os/Bundle;
    if-nez v7, :cond_3

    .line 3545
    :try_start_1
    invoke-direct {v13, v14, v3, v1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3549
    return-void

    .line 3573
    .end local v0    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    .end local v7    # "decryptedBundle":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move/from16 v19, v8

    move/from16 v20, v10

    goto/16 :goto_3

    .line 3551
    .restart local v0    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    .restart local v7    # "decryptedBundle":Landroid/os/Bundle;
    :cond_3
    :try_start_2
    const-string v4, "accountType"

    invoke-virtual {v7, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 3554
    .local v6, "accountType":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_4

    .line 3555
    const/4 v4, 0x7

    :try_start_3
    const-string v5, "accountType is empty"

    invoke-direct {v13, v14, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3559
    return-void

    .line 3566
    :cond_4
    if-eqz v12, :cond_5

    .line 3567
    invoke-virtual {v7, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3571
    :cond_5
    :try_start_4
    const-string v4, "callerUid"

    invoke-virtual {v7, v4, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3572
    const-string v4, "callerPid"

    invoke-virtual {v7, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3582
    .end local v0    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    nop

    .line 3584
    invoke-direct {v13, v11, v6, v10}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3585
    const/16 v0, 0x65

    const-string v1, "User cannot modify accounts of this type (policy)."

    invoke-direct {v13, v14, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3589
    invoke-direct {v13, v0, v11}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3591
    return-void

    .line 3594
    :cond_6
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3596
    .local v16, "identityToken":J
    :try_start_5
    invoke-virtual {v13, v11}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3597
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-direct {v13, v0, v1, v2, v10}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3602
    new-instance v18, Lcom/android/server/accounts/AccountManagerService$12;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object v3, v0

    move-object/from16 v4, p1

    move-object v5, v6

    move-object/from16 v23, v6

    .end local v6    # "accountType":Ljava/lang/String;
    .local v23, "accountType":Ljava/lang/String;
    move/from16 v6, p3

    move-object/from16 v24, v7

    .end local v7    # "decryptedBundle":Landroid/os/Bundle;
    .local v24, "decryptedBundle":Landroid/os/Bundle;
    move/from16 v7, v19

    move/from16 v19, v8

    .end local v8    # "pid":I
    .local v19, "pid":I
    move-object/from16 v8, v20

    move/from16 v9, v21

    move/from16 v20, v10

    .end local v10    # "callingUid":I
    .local v20, "callingUid":I
    move/from16 v10, v22

    move-object/from16 v11, v24

    move-object/from16 v12, v23

    :try_start_6
    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$12;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 3622
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accounts/AccountManagerService$12;->bind()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3624
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3625
    nop

    .line 3626
    return-void

    .line 3624
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v19    # "pid":I
    .end local v20    # "callingUid":I
    .end local v23    # "accountType":Ljava/lang/String;
    .end local v24    # "decryptedBundle":Landroid/os/Bundle;
    .restart local v6    # "accountType":Ljava/lang/String;
    .restart local v7    # "decryptedBundle":Landroid/os/Bundle;
    .restart local v8    # "pid":I
    .restart local v10    # "callingUid":I
    :catchall_1
    move-exception v0

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v19, v8

    move/from16 v20, v10

    .end local v6    # "accountType":Ljava/lang/String;
    .end local v7    # "decryptedBundle":Landroid/os/Bundle;
    .end local v8    # "pid":I
    .end local v10    # "callingUid":I
    .restart local v19    # "pid":I
    .restart local v20    # "callingUid":I
    .restart local v23    # "accountType":Ljava/lang/String;
    .restart local v24    # "decryptedBundle":Landroid/os/Bundle;
    :goto_2
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3625
    throw v0

    .line 3573
    .end local v16    # "identityToken":J
    .end local v19    # "pid":I
    .end local v20    # "callingUid":I
    .end local v23    # "accountType":Ljava/lang/String;
    .end local v24    # "decryptedBundle":Landroid/os/Bundle;
    .restart local v8    # "pid":I
    .restart local v10    # "callingUid":I
    :catch_1
    move-exception v0

    move/from16 v19, v8

    move/from16 v20, v10

    .line 3574
    .end local v8    # "pid":I
    .end local v10    # "callingUid":I
    .local v0, "e":Ljava/security/GeneralSecurityException;
    .restart local v19    # "pid":I
    .restart local v20    # "callingUid":I
    :goto_3
    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3575
    const-string v4, "Failed to decrypt session bundle!"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3577
    :cond_7
    invoke-direct {v13, v14, v3, v1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3581
    return-void

    .line 3522
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .end local v19    # "pid":I
    .end local v20    # "callingUid":I
    .restart local v10    # "callingUid":I
    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    new-array v2, v3, [Ljava/lang/Object;

    .line 3525
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 3526
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3523
    const-string v0, "User %s trying to finish session for %s without cross user permission"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3516
    :cond_9
    move/from16 v20, v10

    .line 3517
    .end local v10    # "callingUid":I
    .restart local v20    # "callingUid":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sessionBundle is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 4540
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 4541
    .local v11, "callingUid":I
    iget-object v0, v12, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v11, v15}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4542
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccount: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", features "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4545
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4547
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4543
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4549
    :cond_0
    if-eqz v13, :cond_3

    .line 4550
    if-eqz v14, :cond_2

    .line 4552
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 4554
    .local v10, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 4556
    .local v16, "identityToken":J
    :try_start_0
    invoke-virtual {v12, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4557
    .local v2, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_1

    .line 4558
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move v4, v11

    move-object/from16 v5, p4

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    .line 4561
    .local v0, "accountsWithManagedNotVisible":[Landroid/accounts/Account;
    invoke-direct {v12, v13, v0, v15}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4595
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4563
    return-void

    .line 4595
    .end local v0    # "accountsWithManagedNotVisible":[Landroid/accounts/Account;
    .end local v2    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_0

    .line 4566
    .restart local v2    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_1
    :try_start_2
    new-instance v6, Lcom/android/server/accounts/AccountManagerService$19;

    invoke-direct {v6, v12, v13, v15}, Lcom/android/server/accounts/AccountManagerService$19;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V

    .line 4586
    .local v6, "retrieveAccountsResponse":Landroid/accounts/IAccountManagerResponse;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x1

    move-object v3, v0

    move-object/from16 v4, p0

    move-object v5, v2

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move v9, v11

    move/from16 v18, v10

    .end local v10    # "userId":I
    .local v18, "userId":I
    move-object/from16 v10, p4

    move/from16 v19, v11

    .end local v11    # "callingUid":I
    .local v19, "callingUid":I
    move v11, v1

    :try_start_3
    invoke-direct/range {v3 .. v11}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 4593
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4595
    .end local v2    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v6    # "retrieveAccountsResponse":Landroid/accounts/IAccountManagerResponse;
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4596
    nop

    .line 4597
    return-void

    .line 4595
    :catchall_1
    move-exception v0

    goto :goto_0

    .end local v18    # "userId":I
    .end local v19    # "callingUid":I
    .restart local v10    # "userId":I
    .restart local v11    # "callingUid":I
    :catchall_2
    move-exception v0

    move/from16 v18, v10

    move/from16 v19, v11

    .end local v10    # "userId":I
    .end local v11    # "callingUid":I
    .restart local v18    # "userId":I
    .restart local v19    # "callingUid":I
    :goto_0
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4596
    throw v0

    .line 4550
    .end local v16    # "identityToken":J
    .end local v18    # "userId":I
    .end local v19    # "callingUid":I
    .restart local v11    # "callingUid":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4549
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 594
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 595
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 596
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 597
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 598
    .local v1, "userId":I
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_1

    .line 599
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 602
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 600
    const-string/jumbo v3, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 606
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 608
    .local v4, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 609
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const-string v6, "android:accounts:key_legacy_visible"

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 610
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    .local v6, "visibility":I
    if-eqz v6, :cond_2

    .line 612
    nop

    .line 627
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 612
    return v6

    .line 614
    :cond_2
    nop

    .line 627
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 614
    return v3

    .line 617
    .end local v6    # "visibility":I
    :cond_3
    :try_start_1
    const-string v3, "android:accounts:key_legacy_not_visible"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 618
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 619
    .local v3, "visibility":I
    if-eqz v3, :cond_4

    .line 620
    nop

    .line 627
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 620
    return v3

    .line 622
    :cond_4
    const/4 v6, 0x4

    .line 627
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 622
    return v6

    .line 625
    .end local v3    # "visibility":I
    :cond_5
    :try_start_2
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 627
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 625
    return v3

    .line 627
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v2

    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 628
    throw v2
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 4217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4218
    .local v6, "callingUid":I
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v6, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4219
    invoke-direct {p0, v6, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 4221
    .local v7, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4222
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v0

    .line 4224
    :cond_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 4226
    .local v8, "identityToken":J
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 4227
    .local v1, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v6

    move-object v3, p2

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4234
    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4227
    return-object v0

    .line 4234
    .end local v1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4235
    throw v0
.end method

.method public getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 494
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 495
    .local v1, "userId":I
    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    .line 496
    .local v2, "isSystemUid":Z
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v3

    .line 498
    .local v3, "managedTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 500
    :cond_1
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountsAndVisibilityForPackage() called from unauthorized uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " with packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 504
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 505
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 506
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_3
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 511
    .local v4, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 512
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, p1, v3, v7, v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 512
    return-object v7

    .line 515
    .end local v6    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 516
    throw v6
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 4294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4295
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4296
    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 4605
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 4606
    .local v15, "callingUid":I
    iget-object v0, v10, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v15, v14}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4607
    const-string v1, "AccountManagerService"

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccounts: accountType "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", features "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4610
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4612
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4608
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    :cond_0
    if-eqz v11, :cond_5

    .line 4615
    if-eqz v12, :cond_4

    .line 4616
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 4618
    .local v9, "userId":I
    invoke-direct {v10, v15, v9, v14}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 4620
    .local v8, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "accounts"

    if-nez v0, :cond_1

    .line 4621
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    .line 4623
    .local v3, "result":Landroid/os/Bundle;
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4625
    :try_start_0
    invoke-interface {v11, v3}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4628
    goto :goto_0

    .line 4626
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 4627
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Cannot respond to caller do to exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4629
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 4632
    .end local v3    # "result":Landroid/os/Bundle;
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 4634
    .local v16, "identityToken":J
    :try_start_1
    invoke-virtual {v10, v9}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 4635
    .local v3, "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    if-eqz v13, :cond_3

    array-length v0, v13

    if-nez v0, :cond_2

    move-object/from16 v19, v8

    move/from16 v20, v9

    goto :goto_1

    .line 4643
    :cond_2
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v18, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v7, v15

    move-object/from16 v19, v8

    .end local v8    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v8, p4

    move/from16 v20, v9

    .end local v9    # "userId":I
    .local v20, "userId":I
    move/from16 v9, v18

    :try_start_2
    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 4650
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4652
    .end local v3    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4653
    nop

    .line 4654
    return-void

    .line 4635
    .end local v19    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "userId":I
    .restart local v3    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v8    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "userId":I
    :cond_3
    move-object/from16 v19, v8

    move/from16 v20, v9

    .line 4636
    .end local v8    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "userId":I
    .restart local v19    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "userId":I
    :goto_1
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object v5, v3

    move-object/from16 v6, p2

    move v7, v15

    move-object/from16 v8, p4

    :try_start_3
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    .line 4638
    .local v0, "accounts":[Landroid/accounts/Account;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4639
    .local v1, "result":Landroid/os/Bundle;
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4640
    invoke-direct {v10, v11, v1}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4652
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4641
    return-void

    .line 4652
    .end local v0    # "accounts":[Landroid/accounts/Account;
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v3    # "userAccounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v19    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "userId":I
    .restart local v8    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "userId":I
    :catchall_1
    move-exception v0

    move-object/from16 v19, v8

    move/from16 v20, v9

    .end local v8    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "userId":I
    .restart local v19    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "userId":I
    :goto_2
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 4653
    throw v0

    .line 4615
    .end local v16    # "identityToken":J
    .end local v19    # "visibleAccountTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "userId":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4614
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 16
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 4470
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 4471
    .local v12, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 4472
    .local v11, "userId":I
    iget-object v0, v13, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    move-object/from16 v10, p3

    invoke-virtual {v0, v12, v10}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4473
    const/4 v1, -0x1

    .line 4475
    .local v1, "packageUid":I
    :try_start_0
    iget-object v0, v13, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v15, v11}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4479
    .end local v1    # "packageUid":I
    .local v5, "packageUid":I
    nop

    .line 4480
    const/16 v0, 0x3e8

    invoke-static {v12, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v14, :cond_0

    .line 4481
    invoke-direct {v13, v14, v12, v11}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4482
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v0

    .line 4484
    :cond_0
    invoke-static {v12, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v14, :cond_1

    .line 4485
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v11

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0

    .line 4488
    :cond_1
    const/4 v0, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v8, v11

    move-object/from16 v9, p2

    move v10, v5

    move v2, v11

    .end local v11    # "userId":I
    .local v2, "userId":I
    move-object/from16 v11, p3

    move v3, v12

    .end local v12    # "callingUid":I
    .local v3, "callingUid":I
    move v12, v0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0

    .line 4476
    .end local v2    # "userId":I
    .end local v3    # "callingUid":I
    .end local v5    # "packageUid":I
    .restart local v1    # "packageUid":I
    .restart local v11    # "userId":I
    .restart local v12    # "callingUid":I
    :catch_0
    move-exception v0

    move v2, v11

    move v3, v12

    .line 4477
    .end local v11    # "userId":I
    .end local v12    # "callingUid":I
    .local v0, "re":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "userId":I
    .restart local v3    # "callingUid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t determine the packageUid for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AccountManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    sget-object v4, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v4
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 4456
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4457
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4462
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v8, 0x1

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1

    .line 4459
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountsForPackage() called from unauthorized uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .locals 9
    .param p1, "userAccounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "includeManagedNotVisible"    # Z

    .line 5981
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Method should not be called with cacheLock"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 5983
    if-eqz p2, :cond_1

    .line 5985
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5986
    :try_start_0
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 5987
    .local v1, "accounts":[Landroid/accounts/Account;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5988
    if-nez v1, :cond_0

    .line 5989
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object v0

    .line 5991
    :cond_0
    array-length v0, v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/accounts/Account;

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0

    .line 5987
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 5995
    :cond_1
    const/4 v0, 0x0

    .line 5997
    .local v0, "totalLength":I
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5998
    :try_start_2
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/Account;

    .line 5999
    .local v3, "accounts":[Landroid/accounts/Account;
    array-length v4, v3

    add-int/2addr v0, v4

    .line 6000
    .end local v3    # "accounts":[Landroid/accounts/Account;
    goto :goto_0

    .line 6001
    :cond_2
    if-nez v0, :cond_3

    .line 6002
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    monitor-exit v1

    return-object v2

    .line 6004
    :cond_3
    new-array v2, v0, [Landroid/accounts/Account;

    .line 6005
    .local v2, "accountsArray":[Landroid/accounts/Account;
    const/4 v0, 0x0

    .line 6006
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    .line 6007
    .local v4, "accountsOfType":[Landroid/accounts/Account;
    const/4 v5, 0x0

    array-length v6, v4

    invoke-static {v4, v5, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6009
    array-length v5, v4

    add-int/2addr v0, v5

    .line 6010
    .end local v4    # "accountsOfType":[Landroid/accounts/Account;
    goto :goto_1

    .line 6011
    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6012
    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1

    .line 6011
    .end local v2    # "accountsArray":[Landroid/accounts/Account;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getAllAccounts()[Landroid/accounts/AccountAndUser;
    .locals 4

    .line 4262
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 4263
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 4264
    .local v1, "userIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 4265
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    aput v3, v1, v2

    .line 4264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4267
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v2

    return-object v2
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 37
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "notifyOnAuthFailure"    # Z
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "loginOptions"    # Landroid/os/Bundle;

    .line 2810
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    move/from16 v10, p4

    move-object/from16 v9, p6

    const/4 v0, 0x1

    invoke-static {v9, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2811
    const-string v7, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAuthToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", notifyOnAuthFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p5

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2817
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2818
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2812
    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2811
    :cond_0
    move/from16 v15, p5

    .line 2820
    :goto_0
    if-eqz v13, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string/jumbo v3, "response cannot be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2822
    const/4 v2, 0x7

    if-nez v12, :cond_2

    .line 2823
    :try_start_0
    const-string v0, "getAuthToken called with null account"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    const-string v0, "account is null"

    invoke-interface {v13, v2, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 2825
    return-void

    .line 2832
    :catch_0
    move-exception v0

    goto :goto_2

    .line 2827
    :cond_2
    if-nez v11, :cond_3

    .line 2828
    const-string v0, "getAuthToken called with null authTokenType"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    const-string v0, "authTokenType is null"

    invoke-interface {v13, v2, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2830
    return-void

    .line 2833
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to report error back to the client."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    return-void

    .line 2835
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    nop

    .line 2836
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 2837
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2841
    .local v2, "ident":J
    :try_start_1
    invoke-virtual {v14, v5}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2842
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v6, v14, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    iget-object v1, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 2843
    invoke-static {v1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v8

    .line 2842
    invoke-interface {v6, v1, v8}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object v8, v1

    .line 2845
    .local v8, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2846
    nop

    .line 2848
    if-eqz v8, :cond_4

    iget-object v1, v8, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v1, v1, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    move/from16 v26, v1

    .line 2852
    .local v26, "customTokens":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2853
    .local v1, "callerUid":I
    if-nez v26, :cond_6

    .line 2854
    invoke-direct {v14, v12, v11, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v0

    :goto_5
    move/from16 v27, v6

    .line 2857
    .local v27, "permissionGranted":Z
    const-string v6, "androidPackageName"

    invoke-virtual {v9, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2859
    .local v6, "callerPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 2861
    .end local v2    # "ident":J
    .local v28, "ident":J
    :try_start_2
    iget-object v2, v14, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v3, v2

    .line 2863
    .local v3, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2864
    nop

    .line 2865
    if-eqz v6, :cond_d

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2874
    const-string v2, "callerUid"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2875
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v0, "callerPid"

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2877
    if-eqz v10, :cond_7

    .line 2878
    const-string/jumbo v0, "notifyOnAuthFailure"

    const/4 v2, 0x1

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2881
    :cond_7
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v30

    .line 2884
    .local v30, "identityToken":J
    :try_start_3
    invoke-direct {v14, v6}, Lcom/android/server/accounts/AccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v32, v6

    .end local v6    # "callerPkg":Ljava/lang/String;
    .local v32, "callerPkg":Ljava/lang/String;
    move-object v6, v0

    .line 2888
    .local v6, "callerPkgSigDigest":[B
    const-string v0, "accountType"

    const-string v2, "authAccount"

    move-object/from16 v18, v8

    .end local v8    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .local v18, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    const-string v8, "authtoken"

    if-nez v26, :cond_8

    if-eqz v27, :cond_8

    .line 2889
    :try_start_4
    invoke-virtual {v14, v4, v12, v11}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v19, v16

    .line 2890
    .local v19, "authToken":Ljava/lang/String;
    move/from16 v20, v1

    move-object/from16 v1, v19

    .end local v19    # "authToken":Ljava/lang/String;
    .local v1, "authToken":Ljava/lang/String;
    .local v20, "callerUid":I
    if-eqz v1, :cond_9

    .line 2891
    :try_start_5
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2892
    .local v7, "result":Landroid/os/Bundle;
    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2893
    iget-object v8, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    iget-object v2, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    invoke-direct {v14, v13, v7}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3029
    invoke-static/range {v30 .. v31}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2896
    return-void

    .line 3029
    .end local v1    # "authToken":Ljava/lang/String;
    .end local v6    # "callerPkgSigDigest":[B
    .end local v7    # "result":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v4, v18

    move/from16 v33, v20

    goto/16 :goto_6

    .end local v20    # "callerUid":I
    .local v1, "callerUid":I
    :catchall_1
    move-exception v0

    move/from16 v33, v1

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v4, v18

    .end local v1    # "callerUid":I
    .restart local v20    # "callerUid":I
    goto/16 :goto_6

    .line 2888
    .end local v20    # "callerUid":I
    .restart local v1    # "callerUid":I
    .restart local v6    # "callerPkgSigDigest":[B
    :cond_8
    move/from16 v20, v1

    .line 2900
    .end local v1    # "callerUid":I
    .restart local v20    # "callerUid":I
    :cond_9
    if-eqz v26, :cond_b

    .line 2906
    move/from16 v33, v20

    .end local v20    # "callerUid":I
    .local v33, "callerUid":I
    move-object/from16 v1, p0

    move-object v9, v2

    move-object v2, v4

    move-object/from16 v34, v3

    .end local v3    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v34, "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v3, p2

    move-object/from16 v35, v4

    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .local v35, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move-object/from16 v4, p3

    move/from16 v36, v5

    .end local v5    # "userId":I
    .local v36, "userId":I
    move-object/from16 v5, v32

    :try_start_6
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    .line 2912
    .local v1, "token":Ljava/lang/String;
    if-eqz v1, :cond_c

    .line 2913
    const/4 v2, 0x2

    invoke-static {v7, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2914
    const-string v2, "getAuthToken: cache hit ofr custom token authenticator."

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :cond_a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2917
    .local v2, "result":Landroid/os/Bundle;
    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    iget-object v3, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    iget-object v3, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    invoke-direct {v14, v13, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3029
    invoke-static/range {v30 .. v31}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2921
    return-void

    .line 3029
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "result":Landroid/os/Bundle;
    .end local v6    # "callerPkgSigDigest":[B
    :catchall_2
    move-exception v0

    move-object/from16 v4, v18

    goto :goto_6

    .line 2900
    .end local v33    # "callerUid":I
    .end local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v36    # "userId":I
    .restart local v3    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v5    # "userId":I
    .restart local v6    # "callerPkgSigDigest":[B
    .restart local v20    # "callerUid":I
    :cond_b
    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move/from16 v36, v5

    move/from16 v33, v20

    .line 2925
    .end local v3    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v5    # "userId":I
    .end local v20    # "callerUid":I
    .restart local v33    # "callerUid":I
    .restart local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v35    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v36    # "userId":I
    :cond_c
    :try_start_7
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$8;

    iget-object v1, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v12, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 v4, 0x0

    move v15, v4

    move-object v7, v0

    move-object/from16 v4, v18

    .end local v18    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .local v4, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, v35

    move-object/from16 v10, p1

    move-object v11, v1

    move/from16 v12, p5

    move v13, v2

    move-object v14, v3

    move-object/from16 v16, p6

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move/from16 v19, p4

    move/from16 v20, v27

    move/from16 v21, v33

    move/from16 v22, v26

    move-object/from16 v23, v32

    move-object/from16 v24, v6

    move-object/from16 v25, v35

    :try_start_8
    invoke-direct/range {v7 .. v25}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZLjava/lang/String;[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 3027
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$8;->bind()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 3029
    .end local v6    # "callerPkgSigDigest":[B
    invoke-static/range {v30 .. v31}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3030
    nop

    .line 3031
    return-void

    .line 3029
    :catchall_3
    move-exception v0

    goto :goto_6

    .end local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .restart local v18    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :catchall_4
    move-exception v0

    move-object/from16 v4, v18

    .end local v18    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .restart local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    goto :goto_6

    .end local v32    # "callerPkg":Ljava/lang/String;
    .end local v33    # "callerUid":I
    .end local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v36    # "userId":I
    .local v1, "callerUid":I
    .restart local v3    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v5    # "userId":I
    .local v6, "callerPkg":Ljava/lang/String;
    .restart local v8    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :catchall_5
    move-exception v0

    move/from16 v33, v1

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v32, v6

    move-object v4, v8

    .end local v1    # "callerUid":I
    .end local v3    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "userId":I
    .end local v6    # "callerPkg":Ljava/lang/String;
    .end local v8    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .local v4, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .restart local v32    # "callerPkg":Ljava/lang/String;
    .restart local v33    # "callerUid":I
    .restart local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v35    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v36    # "userId":I
    :goto_6
    invoke-static/range {v30 .. v31}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3030
    throw v0

    .line 2865
    .end local v30    # "identityToken":J
    .end local v32    # "callerPkg":Ljava/lang/String;
    .end local v33    # "callerUid":I
    .end local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v36    # "userId":I
    .restart local v1    # "callerUid":I
    .restart local v3    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v5    # "userId":I
    .restart local v6    # "callerPkg":Ljava/lang/String;
    .restart local v8    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_d
    move/from16 v33, v1

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v32, v6

    move-object v4, v8

    .line 2866
    .end local v1    # "callerUid":I
    .end local v3    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "userId":I
    .end local v6    # "callerPkg":Ljava/lang/String;
    .end local v8    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .local v4, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .restart local v32    # "callerPkg":Ljava/lang/String;
    .restart local v33    # "callerUid":I
    .restart local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v35    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v36    # "userId":I
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 2868
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v32, v0, v1

    .line 2866
    const-string v1, "Uid %s is attempting to illegally masquerade as package %s!"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2870
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2863
    .end local v0    # "msg":Ljava/lang/String;
    .end local v32    # "callerPkg":Ljava/lang/String;
    .end local v33    # "callerUid":I
    .end local v34    # "callerOwnedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v36    # "userId":I
    .restart local v1    # "callerUid":I
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v5    # "userId":I
    .restart local v6    # "callerPkg":Ljava/lang/String;
    .restart local v8    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :catchall_6
    move-exception v0

    move/from16 v33, v1

    move-object/from16 v35, v4

    move/from16 v36, v5

    move-object/from16 v32, v6

    move-object v4, v8

    .end local v1    # "callerUid":I
    .end local v5    # "userId":I
    .end local v6    # "callerPkg":Ljava/lang/String;
    .end local v8    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .local v4, "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .restart local v32    # "callerPkg":Ljava/lang/String;
    .restart local v33    # "callerUid":I
    .restart local v35    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v36    # "userId":I
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2864
    throw v0

    .line 2845
    .end local v4    # "authenticatorInfo":Landroid/content/pm/RegisteredServicesCache$ServiceInfo;, "Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v26    # "customTokens":Z
    .end local v27    # "permissionGranted":Z
    .end local v28    # "ident":J
    .end local v32    # "callerPkg":Ljava/lang/String;
    .end local v33    # "callerUid":I
    .end local v35    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v36    # "userId":I
    .local v2, "ident":J
    .restart local v5    # "userId":I
    :catchall_7
    move-exception v0

    move/from16 v36, v5

    .end local v5    # "userId":I
    .restart local v36    # "userId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2846
    throw v0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2756
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "accountType cannot be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2757
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "authTokenType cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2759
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v1

    .line 2760
    .local v1, "callingUid":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    .line 2761
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2

    .line 2764
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 2765
    .local v13, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v14

    .line 2767
    .local v14, "identityToken":J
    move-object/from16 v12, p0

    :try_start_0
    invoke-virtual {v12, v13}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2768
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$7;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v2 .. v12}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2796
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$7;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2798
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2799
    nop

    .line 2800
    return-void

    .line 2798
    :catchall_0
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2799
    throw v0

    .line 2762
    .end local v13    # "userId":I
    .end local v14    # "identityToken":J
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "can only call from system"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 5
    .param p1, "userId"    # I

    .line 1597
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1598
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthenticatorTypes: for user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1599
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1613
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1615
    .local v1, "identityToken":J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1618
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1615
    return-object v3

    .line 1618
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1619
    throw v3

    .line 1606
    .end local v1    # "identityToken":J
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1609
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1610
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1607
    const-string v3, "User %s tying to get authenticator types for %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBindInstantServiceAllowed(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 413
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getBindInstantServiceAllowed(I)Z

    move-result v0

    return v0
.end method

.method public getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 548
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 549
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 550
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 551
    .local v1, "userId":I
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 552
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 554
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string/jumbo v3, "uid %s cannot get secrets for account %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 558
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 560
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 561
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v5, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 562
    :try_start_1
    iget-object v6, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 563
    :try_start_2
    invoke-direct {p0, p1, v4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 567
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 563
    return-object v7

    .line 564
    :catchall_0
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "identityToken":J
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "account":Landroid/accounts/Account;
    :try_start_5
    throw v7

    .line 565
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "identityToken":J
    .restart local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "account":Landroid/accounts/Account;
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "callingUid":I
    .end local v1    # "userId":I
    .end local v2    # "identityToken":J
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "account":Landroid/accounts/Account;
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 567
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v0    # "callingUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "account":Landroid/accounts/Account;
    :catchall_2
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 568
    throw v4
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1481
    const/16 v0, 0xe

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1482
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1483
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1484
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_0
    if-eqz p1, :cond_2

    .line 1489
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1490
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1497
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1499
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 1500
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v4, p1}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1500
    return-object v5

    .line 1502
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1503
    throw v4

    .line 1491
    .end local v2    # "identityToken":J
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 1491
    const-string/jumbo v3, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1495
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1488
    .end local v1    # "userId":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;

    .line 1525
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1526
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    :cond_0
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1531
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1532
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1534
    .local v1, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 1535
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1537
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1535
    return-object v4

    .line 1537
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1538
    throw v3
.end method

.method public getRunningAccounts()[Landroid/accounts/AccountAndUser;
    .locals 2

    .line 4247
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4251
    .local v0, "runningUserIds":[I
    nop

    .line 4252
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccounts([I)[Landroid/accounts/AccountAndUser;

    move-result-object v1

    return-object v1

    .line 4248
    .end local v0    # "runningUserIds":[I
    :catch_0
    move-exception v0

    .line 4250
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .locals 4
    .param p1, "userId"    # I

    .line 4443
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p1

    .line 4444
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 4445
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4446
    :try_start_0
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->getSharedAccounts()Ljava/util/List;

    move-result-object v2

    .line 4447
    .local v2, "accountList":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/accounts/Account;

    .line 4448
    .local v3, "accountArray":[Landroid/accounts/Account;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4449
    monitor-exit v1

    return-object v3

    .line 4450
    .end local v2    # "accountList":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    .end local v3    # "accountArray":[Landroid/accounts/Account;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .locals 5
    .param p1, "userId"    # I

    .line 1294
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsNotChecked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " due to exception ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") reading its account database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 1305
    const-string v1, "Switching to system user first"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1310
    goto :goto_0

    .line 1308
    :catch_1
    move-exception v1

    .line 1309
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not switch to 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->removeUserEvenWhenDisallowed(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not remove user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_1
    throw v0

    .line 1298
    :cond_2
    throw v0
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;

    .line 1562
    const/16 v0, 0xf

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1563
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1564
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 1565
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v4

    .line 1566
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    const/4 v6, 0x3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    .line 1565
    const-string v6, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1567
    .local v3, "msg":Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    const-string v3, "account cannot be null"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1570
    const-string/jumbo v3, "key cannot be null"

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1571
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1572
    .local v3, "userId":I
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v6, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1579
    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 1580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " data is locked. callingUid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    return-object v4

    .line 1583
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1585
    .local v1, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 1586
    .local v5, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v5, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 1587
    nop

    .line 1591
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1587
    return-object v4

    .line 1589
    :cond_2
    :try_start_1
    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1591
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1589
    return-object v4

    .line 1591
    .end local v5    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1592
    throw v4

    .line 1573
    .end local v1    # "identityToken":J
    :cond_3
    new-array v1, v2, [Ljava/lang/Object;

    .line 1575
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 1573
    const-string/jumbo v2, "uid %s cannot get user data for accounts of type: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1577
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 5759
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 5763
    :cond_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 5764
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5765
    :try_start_0
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5766
    :try_start_1
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 5767
    .local v3, "accountId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 5768
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v3, v4, p2, p3}, Lcom/android/server/accounts/AccountsDb;->insertGrant(JLjava/lang/String;I)J

    .line 5770
    :cond_1
    nop

    .line 5771
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v5

    .line 5772
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$800(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 5770
    invoke-direct {p0, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 5774
    const/4 v5, 0x1

    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 5775
    .end local v3    # "accountId":J
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5776
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5780
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 5781
    .local v2, "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v4, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$nCdu9dc3c8qBwJIwS0ZQk2waXfY;

    invoke-direct {v4, v2, p1, p3}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$nCdu9dc3c8qBwJIwS0ZQk2waXfY;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 5782
    .end local v2    # "listener":Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    goto :goto_0

    .line 5783
    :cond_2
    return-void

    .line 5775
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "account":Landroid/accounts/Account;
    .end local p2    # "authTokenType":Ljava/lang/String;
    .end local p3    # "uid":I
    :try_start_4
    throw v3

    .line 5776
    .restart local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "account":Landroid/accounts/Account;
    .restart local p2    # "authTokenType":Ljava/lang/String;
    .restart local p3    # "uid":I
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 5760
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "AccountManagerService"

    const-string v2, "grantAppPermission: called with invalid arguments"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5761
    return-void
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 3944
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3947
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3948
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3949
    const-string/jumbo v0, "userHandle cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3951
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3953
    .local v0, "userId":I
    const v1, 0x7fffffff

    const/4 v2, 0x0

    const-string/jumbo v3, "user must be concrete"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 3956
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 3957
    .local v1, "uid":I
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 3958
    .end local v1    # "uid":I
    :catch_0
    move-exception v1

    .line 3959
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccountManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3960
    return v2

    .line 3945
    .end local v0    # "userId":I
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can be called only by system UID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "features"    # [Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .line 1907
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1908
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1909
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasFeatures: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1912
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1910
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const-string v4, "account cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1917
    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1918
    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    const-string v2, "features cannot be null"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1919
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1920
    .local v1, "userId":I
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1, p4}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    .line 1923
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 1925
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 1926
    .local v6, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v10, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;

    move-object v4, v10

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    .end local v6    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1929
    nop

    .line 1930
    return-void

    .line 1928
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1929
    throw v4
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;

    .line 2396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2397
    .local v0, "callerUid":I
    const-string v1, "accountType cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2398
    const-string v1, "authToken cannot be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2399
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalidateAuthToken: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2400
    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2405
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2407
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2409
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v5, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2410
    :try_start_1
    iget-object v6, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2412
    :try_start_2
    invoke-direct {p0, v4, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 2413
    .local v6, "deletedTokens":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;>;"
    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2415
    :try_start_3
    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2416
    nop

    .line 2417
    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2418
    :try_start_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 2419
    .local v9, "tokenInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/accounts/Account;

    .line 2420
    .local v10, "act":Landroid/accounts/Account;
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 2421
    .local v11, "tokenType":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {p0, v4, v10, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    .end local v9    # "tokenInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;"
    .end local v10    # "act":Landroid/accounts/Account;
    .end local v11    # "tokenType":Ljava/lang/String;
    goto :goto_0

    .line 2424
    :cond_1
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2426
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2428
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v6    # "deletedTokens":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;>;"
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2429
    nop

    .line 2430
    return-void

    .line 2425
    .restart local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v6    # "deletedTokens":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v8

    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v0    # "callerUid":I
    .end local v1    # "userId":I
    .end local v2    # "identityToken":J
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accountType":Ljava/lang/String;
    .end local p2    # "authToken":Ljava/lang/String;
    :try_start_7
    throw v8

    .line 2415
    .end local v6    # "deletedTokens":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;>;"
    .restart local v0    # "callerUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "identityToken":J
    .restart local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accountType":Ljava/lang/String;
    .restart local p2    # "authToken":Ljava/lang/String;
    :catchall_1
    move-exception v6

    iget-object v7, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2416
    nop

    .end local v0    # "callerUid":I
    .end local v1    # "userId":I
    .end local v2    # "identityToken":J
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accountType":Ljava/lang/String;
    .end local p2    # "authToken":Ljava/lang/String;
    throw v6

    .line 2426
    .restart local v0    # "callerUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "identityToken":J
    .restart local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accountType":Ljava/lang/String;
    .restart local p2    # "authToken":Ljava/lang/String;
    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v0    # "callerUid":I
    .end local v1    # "userId":I
    .end local v2    # "identityToken":J
    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accountType":Ljava/lang/String;
    .end local p2    # "authToken":Ljava/lang/String;
    :try_start_8
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2428
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v0    # "callerUid":I
    .restart local v1    # "userId":I
    .restart local v2    # "identityToken":J
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accountType":Ljava/lang/String;
    .restart local p2    # "authToken":Ljava/lang/String;
    :catchall_3
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2429
    throw v4
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 17
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "statusToken"    # Ljava/lang/String;

    .line 3817
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCredentialsUpdateSuggested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3821
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3818
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3823
    :cond_0
    if-eqz v12, :cond_3

    .line 3826
    if-eqz v13, :cond_2

    .line 3829
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3833
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 3834
    .local v14, "usrId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v15

    .line 3836
    .local v15, "identityToken":J
    move-object/from16 v11, p0

    :try_start_0
    invoke-virtual {v11, v14}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3837
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$16;

    iget-object v5, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/server/accounts/AccountManagerService$16;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V

    .line 3891
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$16;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3893
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3894
    nop

    .line 3895
    return-void

    .line 3893
    :catchall_0
    move-exception v0

    invoke-static/range {v15 .. v16}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3894
    throw v0

    .line 3830
    .end local v14    # "usrId":I
    .end local v15    # "identityToken":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "status token is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3827
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3824
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$new$0$AccountManagerService(I)V
    .locals 13
    .param p1, "uid"    # I

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "accounts":[Landroid/accounts/Account;
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "packageNames":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 380
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 381
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 383
    .local v3, "identity":J
    :try_start_0
    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_3

    aget-object v8, v1, v7

    .line 386
    .local v8, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v9, v10, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 389
    goto :goto_2

    .line 392
    :cond_0
    if-nez v0, :cond_1

    .line 393
    const/4 v9, 0x0

    const-string v10, "android"

    invoke-virtual {p0, v9, v2, v10}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    move-object v0, v9

    .line 394
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_1

    .line 405
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 395
    return-void

    .line 399
    :cond_1
    :try_start_1
    array-length v9, v0

    move v10, v6

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v0, v10

    .line 400
    .local v11, "account":Landroid/accounts/Account;
    const/4 v12, 0x1

    invoke-direct {p0, v11, p1, v8, v12}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    .end local v11    # "account":Landroid/accounts/Account;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 383
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 405
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    goto :goto_3

    .line 405
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    throw v5

    .line 408
    .end local v2    # "userId":I
    .end local v3    # "identity":J
    :cond_4
    :goto_3
    return-void
.end method

.method public synthetic lambda$onUnlockUser$1$AccountManagerService(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 1447
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->syncSharedAccounts(I)V

    return-void
.end method

.method public synthetic lambda$removeAccountInternal$2$AccountManagerService(Landroid/accounts/Account;I)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "uid"    # I

    .line 2384
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    return-void
.end method

.method public onAccountAccessed(Ljava/lang/String;)V
    .locals 10
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4659
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 4660
    return-void

    .line 4662
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4663
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4665
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 4666
    .local v7, "account":Landroid/accounts/Account;
    invoke-virtual {v7}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4670
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, v0}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 4671
    const-string v8, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v0, v9}, Lcom/android/server/accounts/AccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4665
    .end local v7    # "account":Landroid/accounts/Account;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4677
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4678
    nop

    .line 4679
    return-void

    .line 4677
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4678
    throw v4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 5182
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V
    .locals 3
    .param p1, "desc"    # Landroid/accounts/AuthenticatorDescription;
    .param p2, "userId"    # I
    .param p3, "removed"    # Z

    .line 1471
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1472
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 1473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceChanged: ignore removed user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    return-void

    .line 1476
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 1477
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .locals 0

    .line 145
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

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

    .line 4685
    new-instance v0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4687
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1073
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1074
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 1078
    const-string v1, "AccountManagerService"

    const-string v2, "Account Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    :cond_0
    throw v0
.end method

.method onUnlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 1440
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserUnlocked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1444
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1445
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1446
    if-ge p1, v2, :cond_1

    return-void

    .line 1447
    :cond_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v1, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$ncg6hlXg7I0Ee1EZqbXw8fQH9bY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accounts/-$$Lambda$AccountManagerService$ncg6hlXg7I0Ee1EZqbXw8fQH9bY;-><init>(Lcom/android/server/accounts/AccountManagerService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1448
    return-void

    .line 1445
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method onUserUnlocked(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1436
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->onUnlockUser(I)V

    .line 1437
    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;

    .line 2507
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2508
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peekAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2512
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2509
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :cond_0
    const-string v3, "account cannot be null"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2515
    const-string v3, "authTokenType cannot be null"

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2516
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2517
    .local v3, "userId":I
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2524
    invoke-direct {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authtoken not available - user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " data is locked. callingUid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    const/4 v1, 0x0

    return-object v1

    .line 2529
    :cond_1
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 2531
    .local v1, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2532
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2534
    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2532
    return-object v5

    .line 2534
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2535
    throw v4

    .line 2518
    .end local v1    # "identityToken":J
    :cond_2
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2520
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2518
    const-string/jumbo v2, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2522
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;

    .line 6062
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6063
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 6064
    .local v1, "authTokensForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 6065
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 6067
    .end local v1    # "authTokensForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6069
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6070
    :try_start_1
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6071
    :try_start_2
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 6072
    .local v2, "authTokensForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 6074
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p2}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 6075
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6077
    :cond_1
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v3

    .line 6078
    .end local v2    # "authTokensForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .end local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local p2    # "account":Landroid/accounts/Account;
    .end local p3    # "authTokenType":Ljava/lang/String;
    :try_start_5
    throw v2

    .line 6079
    .restart local p0    # "this":Lcom/android/server/accounts/AccountManagerService;
    .restart local p1    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local p2    # "account":Landroid/accounts/Account;
    .restart local p3    # "authTokenType":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 6067
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method protected readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "tokenType"    # Ljava/lang/String;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "pkgSigDigest"    # [B

    .line 6038
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6039
    :try_start_0
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1300(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/accounts/TokenCache;->get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 6041
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "accountTypes"    # [Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 880
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 881
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 883
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 884
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 886
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 887
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/accounts/AccountManagerService;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 890
    nop

    .line 891
    return-void

    .line 889
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 890
    throw v4
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .locals 19
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "expectActivityLaunch"    # Z
    .param p4, "userId"    # I

    .line 2137
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2138
    .local v12, "callingUid":I
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAccount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2142
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", for user id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2139
    const-string v2, "AccountManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v10, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const-string v4, "account cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2146
    if-eqz v9, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    const-string/jumbo v4, "response cannot be null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2149
    invoke-direct {v8, v12, v11}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2161
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    .line 2162
    .local v13, "user":Landroid/os/UserHandle;
    iget-object v3, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-direct {v8, v3, v12, v4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2163
    invoke-direct {v8, v12}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2164
    invoke-direct {v8, v12}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 2165
    :cond_3
    new-array v1, v1, [Ljava/lang/Object;

    .line 2167
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 2165
    const-string/jumbo v0, "uid %s cannot remove accounts of type: %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2169
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2171
    .end local v0    # "msg":Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-direct {v8, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2173
    const/16 v0, 0x64

    :try_start_0
    const-string v1, "User cannot modify accounts"

    invoke-interface {v9, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2176
    goto :goto_3

    .line 2175
    :catch_0
    move-exception v0

    .line 2177
    :goto_3
    return-void

    .line 2179
    :cond_5
    iget-object v0, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v8, v11, v0, v12}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2181
    const/16 v0, 0x65

    :try_start_1
    const-string v1, "User cannot modify accounts of this type (policy)."

    invoke-interface {v9, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2184
    goto :goto_4

    .line 2183
    :catch_1
    move-exception v0

    .line 2185
    :goto_4
    return-void

    .line 2187
    :cond_6
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v14

    .line 2188
    .local v14, "identityToken":J
    invoke-virtual {v8, v11}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 2189
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {v8, v7, v10}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    invoke-direct {v8, v0, v13}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2190
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 2192
    :try_start_2
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_8

    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2193
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2194
    invoke-static {v7}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1600(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 2195
    .local v2, "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    invoke-direct {v8, v2, v13}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2197
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    .end local v2    # "id":Lcom/android/server/accounts/AccountManagerService$NotificationId;
    :cond_7
    goto :goto_5

    .line 2198
    :catchall_0
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_6

    :cond_8
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2199
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, v10}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v16

    .line 2200
    .local v16, "accountId":J
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string v3, "accounts"

    move-object/from16 v1, p0

    move-wide/from16 v4, v16

    move-object v6, v7

    move-object/from16 v18, v7

    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .local v18, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    move v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2207
    :try_start_5
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2209
    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2210
    nop

    .line 2211
    return-void

    .line 2209
    :catchall_1
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2210
    throw v0

    .line 2198
    .end local v16    # "accountId":J
    .end local v18    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_2
    move-exception v0

    move-object/from16 v18, v7

    .end local v7    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .restart local v18    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :goto_6
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 2150
    .end local v13    # "user":Landroid/os/UserHandle;
    .end local v14    # "identityToken":J
    .end local v18    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :cond_9
    new-instance v3, Ljava/lang/SecurityException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 2153
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 2154
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2151
    const-string v0, "User %s tying remove account for %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;

    .line 2215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2216
    .local v7, "callingUid":I
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAccountExplicitly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2217
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 2222
    .local v8, "userId":I
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 2227
    const-string v1, "account is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    return v2

    .line 2229
    :cond_1
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v8}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2236
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v9

    .line 2237
    .local v9, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v10

    .line 2238
    .local v10, "accountId":J
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string v2, "accounts"

    move-object v0, p0

    move-wide v3, v10

    move-object v5, v9

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2244
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 2246
    .local v0, "identityToken":J
    :try_start_0
    invoke-direct {p0, v9, p1, v7}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2248
    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2246
    return v2

    .line 2248
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2249
    throw v2

    .line 2230
    .end local v0    # "identityToken":J
    .end local v9    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v10    # "accountId":J
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    .line 2232
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2230
    const-string/jumbo v1, "uid %s cannot explicitly remove accounts of type: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2234
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;

    .line 2301
    invoke-direct {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    .line 2302
    return-void
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I

    .line 4426
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z

    move-result v0

    return v0
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountToRename"    # Landroid/accounts/Account;
    .param p3, "newName"    # Ljava/lang/String;

    .line 1992
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1993
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1994
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "renameAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1996
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1994
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    :cond_0
    if-eqz p2, :cond_2

    .line 1999
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2000
    .local v3, "userId":I
    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2007
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 2009
    .local v4, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 2010
    .local v2, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v6

    .line 2011
    .local v6, "resultingAccount":Landroid/accounts/Account;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2012
    .local v7, "result":Landroid/os/Bundle;
    const-string v8, "authAccount"

    iget-object v9, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    const-string v8, "accountType"

    iget-object v9, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    const-string v8, "accountAccessId"

    .line 2015
    invoke-virtual {v6}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v9

    .line 2014
    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2017
    :try_start_1
    invoke-interface {p1, v7}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2020
    goto :goto_0

    .line 2018
    :catch_0
    move-exception v8

    .line 2019
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2022
    .end local v2    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .end local v6    # "resultingAccount":Landroid/accounts/Account;
    .end local v7    # "result":Landroid/os/Bundle;
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2023
    nop

    .line 2024
    return-void

    .line 2022
    :catchall_0
    move-exception v1

    invoke-static {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2023
    throw v1

    .line 2001
    .end local v4    # "identityToken":J
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2003
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 2001
    const-string/jumbo v2, "uid %s cannot rename accounts of type: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2005
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1998
    .end local v1    # "msg":Ljava/lang/String;
    .end local v3    # "userId":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4411
    invoke-direct {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p3

    .line 4412
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v7

    .line 4413
    .local v7, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    move-result-wide v8

    .line 4414
    .local v8, "sharedTableAccountId":J
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accounts/AccountsDb;->renameSharedAccount(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v10

    .line 4415
    .local v10, "r":I
    if-lez v10, :cond_0

    .line 4416
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v11

    .line 4417
    .local v11, "callingUid":I
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    move-wide v3, v8

    move-object v5, v7

    move v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4420
    invoke-direct {p0, v7, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    .line 4422
    .end local v11    # "callingUid":I
    :cond_0
    if-lez v10, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 10
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "newVisibility"    # I

    .line 759
    const-string v0, "account cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 760
    const-string/jumbo v0, "packageName cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 761
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 762
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 763
    .local v1, "userId":I
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 764
    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 767
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 765
    const-string/jumbo v3, "uid %s cannot get secrets for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 771
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 773
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v9

    .line 774
    .local v9, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 774
    return v4

    .line 777
    .end local v9    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 778
    throw v4
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;

    .line 2540
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2541
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2545
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2542
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    :cond_0
    const-string v1, "account cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2548
    const-string v1, "authTokenType cannot be null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2549
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2550
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2557
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2559
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2560
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2562
    nop

    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2563
    nop

    .line 2564
    return-void

    .line 2562
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2563
    throw v4

    .line 2551
    .end local v2    # "identityToken":J
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2553
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2551
    const-string/jumbo v3, "uid %s cannot set auth tokens associated with accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2555
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method setBindInstantServiceAllowed(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "allowed"    # Z

    .line 417
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setBindInstantServiceAllowed(IZ)V

    .line 418
    return-void
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "password"    # Ljava/lang/String;

    .line 2568
    const/16 v0, 0x12

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2570
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2573
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2571
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :cond_0
    const-string v1, "account cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2576
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2577
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2584
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2586
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2587
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v4, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2589
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2590
    nop

    .line 2591
    return-void

    .line 2589
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2590
    throw v4

    .line 2578
    .end local v2    # "identityToken":J
    :cond_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2578
    const-string/jumbo v3, "uid %s cannot set secrets for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2582
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 2662
    const/16 v0, 0x14

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 2663
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2664
    .local v0, "callingUid":I
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUserData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2668
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2665
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_0
    if-eqz p2, :cond_4

    .line 2671
    if-eqz p1, :cond_3

    .line 2672
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2673
    .local v1, "userId":I
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2680
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 2682
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 2683
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, v4, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 2688
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2684
    return-void

    .line 2686
    :cond_1
    :try_start_1
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2688
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2689
    nop

    .line 2690
    return-void

    .line 2688
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 2689
    throw v4

    .line 2674
    .end local v2    # "identityToken":J
    :cond_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2676
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2674
    const-string/jumbo v3, "uid %s cannot set user data for accounts of type: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2678
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2671
    .end local v1    # "userId":I
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "account is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2670
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "key is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .locals 6
    .param p1, "account"    # Landroid/accounts/Account;

    .line 4086
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4089
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4091
    .local v0, "token":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v2

    .line 4092
    .local v2, "allAccounts":[Landroid/accounts/AccountAndUser;
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 4093
    aget-object v5, v2, v3

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v5, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 4094
    nop

    .line 4099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4094
    return v4

    .line 4092
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4097
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .line 4099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4097
    return v3

    .line 4099
    .end local v2    # "allAccounts":[Landroid/accounts/AccountAndUser;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4100
    throw v2

    .line 4087
    .end local v0    # "token":J
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system can check for accounts across users"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 26
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "requiredFeatures"    # [Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "optionsIn"    # Landroid/os/Bundle;

    .line 3308
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p6

    const/4 v0, 0x1

    invoke-static {v12, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3309
    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAddAccountSession: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", requiredFeatures "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3314
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3316
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3317
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3310
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3309
    :cond_0
    move-object/from16 v11, p3

    move/from16 v10, p5

    .line 3319
    :goto_0
    const/4 v1, 0x0

    if-eqz v14, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string/jumbo v3, "response cannot be null"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3320
    if-eqz v13, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v1, "accountType cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3323
    .local v9, "uid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 3324
    .local v8, "userId":I
    invoke-direct {v15, v8, v9}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3326
    const/16 v1, 0x64

    :try_start_0
    const-string v0, "User is not allowed to add an account!"

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3329
    goto :goto_3

    .line 3328
    :catch_0
    move-exception v0

    .line 3330
    :goto_3
    invoke-direct {v15, v1, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3331
    return-void

    .line 3333
    :cond_3
    invoke-direct {v15, v8, v13, v9}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3335
    const/16 v1, 0x65

    :try_start_1
    const-string v0, "User cannot modify accounts of this type (policy)."

    invoke-interface {v14, v1, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3338
    goto :goto_4

    .line 3337
    :catch_1
    move-exception v0

    .line 3339
    :goto_4
    invoke-direct {v15, v1, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    .line 3341
    return-void

    .line 3343
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3344
    .local v7, "pid":I
    if-nez v12, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_5

    :cond_5
    move-object v0, v12

    :goto_5
    move-object v6, v0

    .line 3345
    .local v6, "options":Landroid/os/Bundle;
    const-string v0, "callerUid"

    invoke-virtual {v6, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3346
    const-string v0, "callerPid"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3349
    const-string v0, "androidPackageName"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3350
    .local v5, "callerPkg":Ljava/lang/String;
    const-string v0, "android.permission.GET_PASSWORD"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v5, v9, v0}, Lcom/android/server/accounts/AccountManagerService;->checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v16

    .line 3353
    .local v16, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v17

    .line 3355
    .local v17, "identityToken":J
    :try_start_2
    invoke-virtual {v15, v8}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 3356
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-direct {v15, v0, v1, v2, v9}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3358
    new-instance v19, Lcom/android/server/accounts/AccountManagerService$11;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v23, v5

    .end local v5    # "callerPkg":Ljava/lang/String;
    .local v23, "callerPkg":Ljava/lang/String;
    move-object/from16 v5, p2

    move-object/from16 v24, v6

    .end local v6    # "options":Landroid/os/Bundle;
    .local v24, "options":Landroid/os/Bundle;
    move/from16 v6, p5

    move/from16 v25, v7

    .end local v7    # "pid":I
    .local v25, "pid":I
    move-object/from16 v7, v20

    move/from16 v20, v8

    .end local v8    # "userId":I
    .local v20, "userId":I
    move/from16 v8, v21

    move/from16 v21, v9

    .end local v9    # "uid":I
    .local v21, "uid":I
    move/from16 v9, v22

    move/from16 v10, v16

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, v24

    move-object/from16 v14, p2

    :try_start_3
    invoke-direct/range {v1 .. v14}, Lcom/android/server/accounts/AccountManagerService$11;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3380
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accounts/AccountManagerService$11;->bind()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3382
    .end local v0    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {v17 .. v18}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3383
    nop

    .line 3384
    return-void

    .line 3382
    :catchall_0
    move-exception v0

    goto :goto_6

    .end local v20    # "userId":I
    .end local v21    # "uid":I
    .end local v23    # "callerPkg":Ljava/lang/String;
    .end local v24    # "options":Landroid/os/Bundle;
    .end local v25    # "pid":I
    .restart local v5    # "callerPkg":Ljava/lang/String;
    .restart local v6    # "options":Landroid/os/Bundle;
    .restart local v7    # "pid":I
    .restart local v8    # "userId":I
    .restart local v9    # "uid":I
    :catchall_1
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    move/from16 v20, v8

    move/from16 v21, v9

    .end local v5    # "callerPkg":Ljava/lang/String;
    .end local v6    # "options":Landroid/os/Bundle;
    .end local v7    # "pid":I
    .end local v8    # "userId":I
    .end local v9    # "uid":I
    .restart local v20    # "userId":I
    .restart local v21    # "uid":I
    .restart local v23    # "callerPkg":Ljava/lang/String;
    .restart local v24    # "options":Landroid/os/Bundle;
    .restart local v25    # "pid":I
    :goto_6
    invoke-static/range {v17 .. v18}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3383
    throw v0
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 23
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "loginOptions"    # Landroid/os/Bundle;

    .line 3755
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p5

    const/4 v0, 0x1

    invoke-static {v12, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3756
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUpdateCredentialsSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3760
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3761
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3757
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3756
    :cond_0
    move-object/from16 v11, p3

    move/from16 v10, p4

    .line 3763
    :goto_0
    if-eqz v15, :cond_2

    .line 3766
    if-eqz v13, :cond_1

    .line 3770
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3771
    .local v9, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 3774
    .local v8, "userId":I
    const-string v0, "androidPackageName"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3775
    .local v7, "callerPkg":Ljava/lang/String;
    const-string v0, "android.permission.GET_PASSWORD"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v7, v9, v0}, Lcom/android/server/accounts/AccountManagerService;->checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v16

    .line 3778
    .local v16, "isPasswordForwardingAllowed":Z
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v17

    .line 3780
    .local v17, "identityToken":J
    :try_start_0
    invoke-virtual {v14, v8}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3781
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$15;

    iget-object v5, v13, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, v13, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v21, v6

    move/from16 v6, p4

    move-object/from16 v22, v7

    .end local v7    # "callerPkg":Ljava/lang/String;
    .local v22, "callerPkg":Ljava/lang/String;
    move-object/from16 v7, v21

    move/from16 v21, v8

    .end local v8    # "userId":I
    .local v21, "userId":I
    move/from16 v8, v19

    move/from16 v19, v9

    .end local v9    # "uid":I
    .local v19, "uid":I
    move/from16 v9, v20

    move/from16 v10, v16

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    :try_start_1
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$15;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3806
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$15;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3808
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {v17 .. v18}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3809
    nop

    .line 3810
    return-void

    .line 3808
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v19    # "uid":I
    .end local v21    # "userId":I
    .end local v22    # "callerPkg":Ljava/lang/String;
    .restart local v7    # "callerPkg":Ljava/lang/String;
    .restart local v8    # "userId":I
    .restart local v9    # "uid":I
    :catchall_1
    move-exception v0

    move-object/from16 v22, v7

    move/from16 v21, v8

    move/from16 v19, v9

    .end local v7    # "callerPkg":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v9    # "uid":I
    .restart local v19    # "uid":I
    .restart local v21    # "userId":I
    .restart local v22    # "callerPkg":Ljava/lang/String;
    :goto_1
    invoke-static/range {v17 .. v18}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3809
    throw v0

    .line 3767
    .end local v16    # "isPasswordForwardingAllowed":Z
    .end local v17    # "identityToken":J
    .end local v19    # "uid":I
    .end local v21    # "userId":I
    .end local v22    # "callerPkg":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3764
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "accountTypes"    # [Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 914
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 915
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 916
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 917
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 919
    .local v2, "identityToken":J
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 920
    .local v4, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/accounts/AccountManagerService;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    .end local v4    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 923
    nop

    .line 924
    return-void

    .line 922
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 923
    throw v4
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "authTokenType"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5738
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getCallingUid()I

    move-result v0

    .line 5740
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 5744
    if-eqz p4, :cond_0

    .line 5745
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_0

    .line 5747
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 5749
    :goto_0
    return-void

    .line 5741
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 20
    .param p1, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "authTokenType"    # Ljava/lang/String;
    .param p4, "expectActivityLaunch"    # Z
    .param p5, "loginOptions"    # Landroid/os/Bundle;

    .line 3712
    move-object/from16 v14, p1

    move-object/from16 v15, p2

    const/4 v0, 0x1

    move-object/from16 v13, p5

    invoke-static {v13, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3713
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCredentials: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3718
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3719
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3714
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3713
    :cond_0
    move-object/from16 v12, p3

    move/from16 v11, p4

    .line 3721
    :goto_0
    if-eqz v14, :cond_2

    .line 3722
    if-eqz v15, :cond_1

    .line 3723
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    .line 3724
    .local v10, "userId":I
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v16

    .line 3726
    .local v16, "identityToken":J
    move-object/from16 v9, p0

    :try_start_0
    invoke-virtual {v9, v10}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3727
    .local v3, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$14;

    iget-object v5, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v15, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move/from16 v9, v18

    move/from16 v18, v10

    .end local v10    # "userId":I
    .local v18, "userId":I
    move/from16 v10, v19

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    :try_start_1
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$14;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3742
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$14;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3744
    .end local v3    # "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3745
    nop

    .line 3746
    return-void

    .line 3744
    :catchall_0
    move-exception v0

    goto :goto_1

    .end local v18    # "userId":I
    .restart local v10    # "userId":I
    :catchall_1
    move-exception v0

    move/from16 v18, v10

    .end local v10    # "userId":I
    .restart local v18    # "userId":I
    :goto_1
    invoke-static/range {v16 .. v17}, Lcom/android/server/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 3745
    throw v0

    .line 3722
    .end local v16    # "identityToken":J
    .end local v18    # "userId":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3721
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateAccounts(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1096
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1099
    .local v0, "accounts":Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 1100
    return-void
.end method

.method protected writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 6047
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6048
    .local v0, "authTokensForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 6049
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v0

    .line 6050
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1200(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6052
    :cond_0
    if-nez p4, :cond_1

    .line 6053
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6055
    :cond_1
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6057
    :goto_0
    return-void
.end method

.method protected writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .line 6020
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6021
    .local v0, "userDataForAccount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 6022
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v0

    .line 6023
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$1100(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6025
    :cond_0
    if-nez p4, :cond_1

    .line 6026
    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6028
    :cond_1
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6030
    :goto_0
    return-void
.end method
