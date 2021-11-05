.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$ChainToggleType;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$RestrictType;,
        Lcom/android/server/net/NetworkPolicyManagerService$Stats;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field public static final ACTION_DATAUSAGE_ALARM:Ljava/lang/String; = "com.oneplus.security.action.DATAUSAGE_ALARM"

.field private static final ACTION_SNOOZE_RAPID:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_RAPID"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CYCLE_END:Ljava/lang/String; = "cycleEnd"

.field private static final ATTR_CYCLE_PERIOD:Ljava/lang/String; = "cyclePeriod"

.field private static final ATTR_CYCLE_START:Ljava/lang/String; = "cycleStart"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BEHAVIOR:Ljava/lang/String; = "limitBehavior"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_SUB_ID:Ljava/lang/String; = "subId"

.field private static final ATTR_SUMMARY:Ljava/lang/String; = "summary"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_USAGE_BYTES:Ljava/lang/String; = "usageBytes"

.field private static final ATTR_USAGE_TIME:Ljava/lang/String; = "usageTime"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final CHAIN_TOGGLE_DISABLE:I = 0x2

.field private static final CHAIN_TOGGLE_ENABLE:I = 0x1

.field private static final CHAIN_TOGGLE_NONE:I = 0x0

.field private static LOGD:Z = false

.field private static LOGV:Z = false

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_METERED_RESTRICTED_PACKAGES_CHANGED:I = 0x11

.field private static final MSG_POLICIES_CHANGED:I = 0xd

.field private static final MSG_REMOVE_INTERFACE_QUOTA:I = 0xb

.field private static final MSG_RESET_FIREWALL_RULES_BY_UID:I = 0xf

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SET_NETWORK_TEMPLATE_ENABLED:I = 0x12

.field private static final MSG_STATS_PROVIDER_LIMIT_REACHED:I = 0x14

.field private static final MSG_SUBSCRIPTION_OVERRIDE:I = 0x10

.field private static final MSG_SUBSCRIPTION_PLANS_CHANGED:I = 0x13

.field private static final MSG_UPDATE_INTERFACE_QUOTA:I = 0xa

.field public static final OPPORTUNISTIC_QUOTA_UNKNOWN:I = -0x1

.field private static final PROP_SUB_PLAN_OWNER:Ljava/lang/String; = "persist.sys.sub_plan_owner"

.field private static final QUOTA_FRAC_JOBS_DEFAULT:F = 0.5f

.field private static final QUOTA_FRAC_MULTIPATH_DEFAULT:F = 0.5f

.field private static final QUOTA_LIMITED_DEFAULT:F = 0.1f

.field private static final QUOTA_UNLIMITED_DEFAULT:J

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field private static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field private static final TAG_SUBSCRIPTION_PLAN:Ljava/lang/String; = "subscription-plan"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

.field public static final TYPE_LIMIT:I = 0x23

.field public static final TYPE_LIMIT_SNOOZED:I = 0x24

.field public static final TYPE_RAPID:I = 0x2d

.field private static final TYPE_RESTRICT_BACKGROUND:I = 0x1

.field private static final TYPE_RESTRICT_POWER:I = 0x2

.field public static final TYPE_WARNING:I = 0x22

.field private static final UID_MSG_GONE:I = 0x65

.field private static final UID_MSG_STATE_CHANGED:I = 0x64

.field private static final VERSION_ADDED_CYCLE:I = 0xb

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xb

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa

.field private static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L


# instance fields
.field private isInEsportRestrictBackground:Z

.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Ljava/time/Clock;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

.field volatile mDeviceIdleMode:Z

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mInternetPermissionMap:Landroid/util/SparseBooleanArray;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedRestrictBackground:Z

.field private final mLogger:Lcom/android/server/net/NetworkPolicyLogger;

.field private mMergedSubscriberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeteredRestrictedUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNetIdToSubId:Landroid/util/SparseIntArray;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private volatile mNetworkManagerReady:Z

.field private final mNetworkMetered:Landroid/util/SparseBooleanArray;

.field final mNetworkPoliciesSecondLock:Ljava/lang/Object;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkRoaming:Landroid/util/SparseBooleanArray;

.field private mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field volatile mRestrictBackground:Z

.field private mRestrictBackgroundBeforeBsm:Z

.field volatile mRestrictBackgroundChangedInBsm:Z

.field private mRestrictBackgroundLowPowerMode:Z

.field private final mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

.field volatile mRestrictPower:Z

.field private final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubIdToSubscriberId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

.field final mSubscriptionPlans:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionPlansOwner:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z

.field final mUidEventHandler:Landroid/os/Handler;

.field private final mUidEventHandlerCallback:Landroid/os/Handler$Callback;

.field private final mUidEventThread:Lcom/android/server/ServiceThread;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;

.field final mUidRulesFirstLock:Ljava/lang/Object;

.field final mUidState:Landroid/util/SparseIntArray;

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 304
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 305
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 384
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkManagement"    # Landroid/os/INetworkManagementService;

    .line 616
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 617
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v6

    .line 616
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V

    .line 618
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p4, "pm"    # Landroid/content/pm/IPackageManager;
    .param p5, "clock"    # Ljava/time/Clock;
    .param p6, "systemDir"    # Ljava/io/File;
    .param p7, "suppressDefaultPolicy"    # Z

    .line 631
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 435
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 436
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 449
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 454
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 458
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 461
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 465
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 469
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 471
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 473
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 475
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 477
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 481
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 493
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 501
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 504
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 511
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 517
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 525
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 530
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 533
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 537
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 541
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 545
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    .line 548
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    .line 552
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 556
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 566
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 569
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 587
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger;

    invoke-direct {v0}, Lcom/android/server/net/NetworkPolicyLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 593
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    .line 609
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    const-string/jumbo v2, "isUidNetworkingBlocked()"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 943
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 964
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 976
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 998
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1017
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1055
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 1075
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 1089
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 1109
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 1132
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1160
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1535
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1702
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 2817
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isInEsportRestrictBackground:Z

    .line 4761
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 4933
    new-instance v1, Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    .line 632
    const-string/jumbo v1, "missing context"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 633
    const-string/jumbo v1, "missing activityManager"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 634
    const-string/jumbo v1, "missing networkManagement"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p3

    check-cast v1, Landroid/os/INetworkManagementService;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 635
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerWhitelistManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerWhitelistManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    .line 636
    const-string/jumbo v1, "missing Clock"

    invoke-static {p5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p5

    check-cast v1, Ljava/time/Clock;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 637
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 638
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 639
    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 641
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NetworkPolicy"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 642
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 643
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 646
    new-instance v2, Lcom/android/server/ServiceThread;

    const-string v3, "NetworkPolicy.uid"

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    .line 648
    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->start()V

    .line 649
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 651
    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 653
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "netpolicy.xml"

    invoke-direct {v2, p6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "net-policy"

    invoke-direct {v0, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 655
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 658
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 663
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v2}, Lcom/android/server/net/OpNetworkPolicyInjector;->initInstance(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    .line 665
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 295
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->onUidDeletedUL(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeWifiMeteredOverrideAL()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .locals 1
    .param p0, "x0"    # Landroid/util/SparseBooleanArray;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/net/Network;

    .line 295
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isInEsportRestrictBackground:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 295
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # Z

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 295
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Boolean;

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 295
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 295
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # I

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # Z

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Landroid/telephony/SubscriptionPlan;

    .line 295
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionPlansChanged(Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V

    return-void
.end method

.method static synthetic access$4000(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 295
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 295
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 295
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    return-void
.end method

.method private static varargs addAll(Landroid/util/ArraySet;[I)Z
    .locals 3
    .param p1, "elements"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)Z"
        }
    .end annotation

    .line 3247
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 3248
    .local v0, "result":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3249
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    and-int/2addr v0, v2

    .line 3248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3251
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private addDefaultRestrictBackgroundWhitelistUidsUL(I)Z
    .locals 11
    .param p1, "userId"    # I

    .line 707
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 708
    .local v0, "sysConfig":Lcom/android/server/SystemConfig;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 709
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v2

    .line 710
    .local v2, "allowDataUsage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 711
    .local v3, "changed":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 712
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 713
    .local v5, "pkg":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    const-string v7, "NetworkPolicy"

    if-eqz v6, :cond_0

    .line 714
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checking restricted background whitelisting for package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " and user "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_0
    const/high16 v6, 0x100000

    :try_start_0
    invoke-virtual {v1, v5, v6, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    nop

    .line 724
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 725
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addDefaultRestrictBackgroundWhitelistUidsUL(): skipping non-privileged app  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    goto/16 :goto_1

    .line 729
    :cond_1
    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 730
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 731
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_2

    .line 732
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " (user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") to default restricted background whitelist. Revoked status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 734
    invoke-virtual {v10, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 732
    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_2
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 736
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_3

    .line 737
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "adding default package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") to restrict background whitelist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_3
    const/4 v7, 0x4

    const/4 v9, 0x0

    invoke-direct {p0, v8, v7, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 740
    const/4 v3, 0x1

    goto :goto_1

    .line 719
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "uid":I
    :catch_0
    move-exception v6

    .line 720
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No ApplicationInfo for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_4
    nop

    .line 711
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 743
    .end local v4    # "i":I
    :cond_6
    return v3
.end method

.method private broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "changed"    # Ljava/lang/Boolean;

    .line 4998
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4999
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 5000
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 5001
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5002
    .local v2, "userId":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 5003
    .local v5, "packageName":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5005
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5006
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5007
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5002
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5010
    .end local v2    # "userId":I
    :cond_0
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .line 5253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 5271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5272
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 5273
    const v1, 0x104023f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5272
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5274
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5275
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5276
    return-object v0
.end method

.method private static buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .line 5264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5265
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5266
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5267
    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .line 5257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5258
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5259
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5260
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 5280
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5281
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 5282
    const v1, 0x10401f7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5281
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5283
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5284
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5285
    return-object v0
.end method

.method private cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V
    .locals 3
    .param p1, "notificationId"    # Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1527
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 1528
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v2

    .line 1527
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1529
    return-void
.end method

.method private varargs checkAnyPermissionOf([Ljava/lang/String;)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 2800
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2801
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 2802
    const/4 v0, 0x1

    return v0

    .line 2800
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2805
    :cond_1
    return v1
.end method

.method private static collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V
    .locals 4
    .param p1, "state"    # Landroid/net/NetworkState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkState;",
            ")V"
        }
    .end annotation

    .line 1856
    .local p0, "ifaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1857
    .local v0, "baseIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1858
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1860
    :cond_0
    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 1861
    .local v2, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 1862
    .local v3, "stackedIface":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1863
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1865
    .end local v2    # "stackedLink":Landroid/net/LinkProperties;
    .end local v3    # "stackedIface":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1866
    :cond_2
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .line 5328
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 5329
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5330
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5332
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;
    .locals 1
    .param p0, "val"    # [Landroid/net/NetworkState;

    .line 5687
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/NetworkState;

    :goto_0
    return-object v0
.end method

.method private dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    .line 4713
    if-eqz p1, :cond_0

    .line 4715
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4717
    goto :goto_0

    .line 4716
    :catch_0
    move-exception v0

    .line 4719
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    .line 4723
    if-eqz p1, :cond_0

    .line 4725
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4727
    goto :goto_0

    .line 4726
    :catch_0
    move-exception v0

    .line 4729
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "subId"    # I
    .param p3, "overrideMask"    # I
    .param p4, "overrideValue"    # I

    .line 4743
    if-eqz p1, :cond_0

    .line 4745
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/net/INetworkPolicyListener;->onSubscriptionOverride(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4747
    goto :goto_0

    .line 4746
    :catch_0
    move-exception v0

    .line 4749
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchSubscriptionPlansChanged(Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "subId"    # I
    .param p3, "plans"    # [Landroid/telephony/SubscriptionPlan;

    .line 4753
    if-eqz p1, :cond_0

    .line 4755
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4757
    goto :goto_0

    .line 4756
    :catch_0
    move-exception v0

    .line 4759
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidPolicies"    # I

    .line 4733
    if-eqz p1, :cond_0

    .line 4735
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidPoliciesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4737
    goto :goto_0

    .line 4736
    :catch_0
    move-exception v0

    .line 4739
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    .line 4703
    if-eqz p1, :cond_0

    .line 4705
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4707
    goto :goto_0

    .line 4706
    :catch_0
    move-exception v0

    .line 4709
    :cond_0
    :goto_0
    return-void
.end method

.method private enableFirewallChainUL(IZ)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .line 5183
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 5184
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 5186
    return-void

    .line 5188
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 5191
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5194
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5192
    :catch_1
    move-exception v0

    .line 5193
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5196
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5197
    :goto_1
    return-void
.end method

.method private varargs enforceAnyPermissionOf([Ljava/lang/String;)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 2809
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2813
    return-void

    .line 2810
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires one of the following permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2811
    const-string v2, ", "

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSubscriptionPlanAccess(IILjava/lang/String;)V
    .locals 11
    .param p1, "subId"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3137
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3144
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 3145
    .local v2, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 3146
    .local v3, "si":Landroid/telephony/SubscriptionInfo;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v4, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3148
    .local v4, "config":Landroid/os/PersistableBundle;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3149
    nop

    .line 3152
    if-eqz v3, :cond_0

    .line 3153
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3, p3}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3154
    return-void

    .line 3159
    :cond_0
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 3160
    nop

    .line 3161
    const-string v6, "config_plans_package_override_string"

    invoke-virtual {v4, v6, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3162
    .local v6, "overridePackage":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3163
    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3164
    return-void

    .line 3169
    .end local v6    # "overridePackage":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v6}, Landroid/telephony/CarrierConfigManager;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v6

    .line 3170
    .local v6, "defaultPackage":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3171
    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3172
    return-void

    .line 3176
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "persist.sys.sub_plan_owner."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3177
    .local v7, "testPackage":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3178
    invoke-static {v7, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3179
    return-void

    .line 3183
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fw.sub_plan_owner."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3184
    .local v5, "legacyTestPackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 3185
    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3186
    return-void

    .line 3190
    :cond_4
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    const-string v10, "NetworkPolicy"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3191
    return-void

    .line 3148
    .end local v2    # "sm":Landroid/telephony/SubscriptionManager;
    .end local v3    # "si":Landroid/telephony/SubscriptionInfo;
    .end local v4    # "config":Landroid/os/PersistableBundle;
    .end local v5    # "legacyTestPackage":Ljava/lang/String;
    .end local v6    # "defaultPackage":Ljava/lang/String;
    .end local v7    # "testPackage":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3149
    throw v2
.end method

.method private enforceSubscriptionPlanValidity([Landroid/telephony/SubscriptionPlan;)V
    .locals 11
    .param p1, "plans"    # [Landroid/telephony/SubscriptionPlan;

    .line 3195
    array-length v0, p1

    if-nez v0, :cond_0

    .line 3196
    const-string v0, "NetworkPolicy"

    const-string v1, "Received empty plans list. Clearing existing SubscriptionPlans."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    return-void

    .line 3200
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v0

    .line 3201
    .local v0, "allNetworkTypes":[I
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 3202
    .local v1, "allNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    .line 3204
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 3205
    .local v2, "applicableNetworkTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 3206
    .local v3, "hasGeneralPlan":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_6

    .line 3207
    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan;->getNetworkTypes()[I

    move-result-object v5

    .line 3208
    .local v5, "planNetworkTypes":[I
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 3209
    .local v6, "planNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_3

    .line 3211
    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3213
    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3209
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3214
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Subscription plan contains duplicate network types."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3218
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid network type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v10, v5, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3223
    .end local v7    # "j":I
    :cond_3
    array-length v7, v5

    array-length v8, v0

    if-ne v7, v8, :cond_4

    .line 3224
    const/4 v3, 0x1

    goto :goto_2

    .line 3227
    :cond_4
    invoke-static {v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addAll(Landroid/util/ArraySet;[I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3206
    .end local v5    # "planNetworkTypes":[I
    .end local v6    # "planNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3228
    .restart local v5    # "planNetworkTypes":[I
    .restart local v6    # "planNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Multiple subscription plans defined for a single network type."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3235
    .end local v4    # "i":I
    .end local v5    # "planNetworkTypes":[I
    .end local v6    # "planNetworksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_6
    if-eqz v3, :cond_7

    .line 3239
    return-void

    .line 3236
    :cond_7
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No generic subscription plan that applies to all network types."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V
    .locals 22
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J
    .param p5, "rapidBlame"    # Landroid/content/pm/ApplicationInfo;

    .line 1390
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;I)V

    .line 1391
    .local v6, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1393
    .local v7, "builder":Landroid/app/Notification$Builder;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1394
    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1395
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1398
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1401
    .local v9, "res":Landroid/content/res/Resources;
    const/16 v10, 0x2d

    const/4 v13, 0x0

    if-eq v2, v10, :cond_7

    const/4 v10, 0x4

    const/16 v14, 0x8

    packed-switch v2, :pswitch_data_0

    .line 1512
    return-void

    .line 1454
    :pswitch_0
    iget-object v15, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v15}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v15

    if-eq v15, v8, :cond_1

    if-eq v15, v10, :cond_0

    .line 1462
    return-void

    .line 1459
    :cond_0
    const v10, 0x1040294

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1460
    .local v10, "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1456
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_1
    const v10, 0x104028b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1457
    .restart local v10    # "title":Ljava/lang/CharSequence;
    nop

    .line 1464
    :goto_0
    iget-wide v11, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v11, v3, v11

    .line 1465
    .local v11, "overBytes":J
    new-array v15, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1466
    invoke-static {v8, v11, v12, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v13

    .line 1465
    const v8, 0x104028a

    invoke-virtual {v9, v8, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1468
    .local v8, "body":Ljava/lang/CharSequence;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1469
    const v14, 0x1080078

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1470
    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1472
    iget-object v14, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v14

    .line 1474
    .local v14, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1475
    iget-object v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0x8000000

    const/16 v20, 0x0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v13

    move-object/from16 v18, v14

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 1479
    :cond_2
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v15, v13, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1482
    goto/16 :goto_3

    .line 1426
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v11    # "overBytes":J
    .end local v14    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_4

    if-eq v2, v10, :cond_3

    .line 1434
    return-void

    .line 1431
    :cond_3
    const v2, 0x1040295

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1432
    .local v2, "title":Ljava/lang/CharSequence;
    move-object v10, v2

    goto :goto_1

    .line 1428
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_4
    const v2, 0x104028c

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1429
    .restart local v2    # "title":Ljava/lang/CharSequence;
    move-object v10, v2

    .line 1436
    .end local v2    # "title":Ljava/lang/CharSequence;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :goto_1
    const v2, 0x1040289

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1438
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1439
    const v2, 0x1080800

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1441
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1443
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1444
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0x8000000

    const/16 v20, 0x0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v11

    move-object/from16 v18, v2

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 1448
    :cond_5
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1451
    goto/16 :goto_3

    .line 1403
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const v2, 0x1040293

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1404
    .restart local v10    # "title":Ljava/lang/CharSequence;
    const v2, 0x1040292

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1405
    invoke-static {v11, v3, v4, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v13

    .line 1404
    invoke-virtual {v9, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1407
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1409
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1410
    .local v2, "snoozeIntent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1413
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1415
    .local v11, "viewIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1416
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0x8000000

    const/16 v20, 0x0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v12

    move-object/from16 v18, v11

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 1420
    :cond_6
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v11, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1423
    goto :goto_3

    .line 1485
    .end local v2    # "snoozeIntent":Landroid/content/Intent;
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v11    # "viewIntent":Landroid/content/Intent;
    :cond_7
    const v2, 0x104028f

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1486
    .restart local v10    # "title":Ljava/lang/CharSequence;
    if-eqz v5, :cond_8

    .line 1487
    const v2, 0x104028d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1488
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v8, v13

    .line 1487
    invoke-virtual {v9, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .local v2, "body":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1490
    .end local v2    # "body":Ljava/lang/CharSequence;
    :cond_8
    const v2, 0x104028e

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 1493
    .restart local v8    # "body":Ljava/lang/CharSequence;
    :goto_2
    const v2, 0x1080078

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1495
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1496
    .local v2, "snoozeIntent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1499
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1501
    .restart local v11    # "viewIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1502
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0x8000000

    const/16 v20, 0x0

    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v16, v12

    move-object/from16 v18, v11

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_3

    .line 1506
    :cond_9
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v11, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1509
    nop

    .line 1516
    .end local v2    # "snoozeIntent":Landroid/content/Intent;
    .end local v11    # "viewIntent":Landroid/content/Intent;
    :goto_3
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1517
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1518
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1519
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1521
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v11, Landroid/app/NotificationManager;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 1522
    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v12

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1521
    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1523
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1524
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ensureActiveMobilePolicyAL()V
    .locals 3

    .line 2108
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string v1, "ensureActiveMobilePolicyAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v0, :cond_1

    return-void

    .line 2111
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2112
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2113
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2115
    .local v2, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 2111
    .end local v1    # "subId":I
    .end local v2    # "subscriberId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2117
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private ensureActiveMobilePolicyAL(ILjava/lang/String;)Z
    .locals 9
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 2130
    new-instance v8, Landroid/net/NetworkIdentity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 2132
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    const-string v3, "NetworkPolicy"

    if-ltz v1, :cond_2

    .line 2133
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2134
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v4, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2135
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v2, :cond_0

    .line 2136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found template "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " which matches subscriber "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    invoke-static {p2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2136
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2132
    .end local v4    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2143
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No policy for subscriber "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; generating default policy"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2146
    .local v1, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V

    .line 2147
    return v2
.end method

.method private findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;
    .locals 17
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 1306
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 1307
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    .line 1308
    .local v4, "maxBytes":J
    const/4 v0, 0x0

    .line 1310
    .local v0, "maxUid":I
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1311
    .local v6, "stats":Landroid/net/NetworkStats;
    const/4 v7, 0x0

    .line 1312
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    move-wide v13, v2

    move v2, v0

    move v0, v8

    move-wide v15, v4

    move-object v5, v7

    move-wide v3, v13

    move-wide v7, v15

    .end local v4    # "maxBytes":J
    .local v0, "i":I
    .local v2, "maxUid":I
    .local v3, "totalBytes":J
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    .local v7, "maxBytes":J
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v9

    if-ge v0, v9, :cond_1

    .line 1313
    invoke-virtual {v6, v0, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 1314
    iget-wide v9, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v11, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v9, v11

    .line 1315
    .local v9, "bytes":J
    add-long/2addr v3, v9

    .line 1316
    cmp-long v11, v9, v7

    if-lez v11, :cond_0

    .line 1317
    move-wide v7, v9

    .line 1318
    iget v2, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1312
    .end local v9    # "bytes":J
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1324
    .end local v0    # "i":I
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    const-wide/16 v9, 0x2

    div-long v9, v3, v9

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    .line 1325
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1326
    .local v9, "packageNames":[Ljava/lang/String;
    if-eqz v9, :cond_2

    array-length v0, v9

    const/4 v10, 0x1

    if-ne v0, v10, :cond_2

    .line 1328
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v10, 0x0

    aget-object v10, v9, v10

    const v11, 0x4c2200

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1331
    :catch_0
    move-exception v0

    .line 1336
    .end local v9    # "packageNames":[Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1352
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1353
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1354
    .local v2, "subscriberId":Ljava/lang/String;
    new-instance v11, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v3, v11

    move-object v6, v2

    invoke-direct/range {v3 .. v10}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1357
    .local v3, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1358
    return v1

    .line 1351
    .end local v1    # "subId":I
    .end local v2    # "subscriberId":Ljava/lang/String;
    .end local v3    # "probeIdent":Landroid/net/NetworkIdentity;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1361
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/PersistableBundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 5692
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private static getDefaultClock()Ljava/time/Clock;
    .locals 5

    .line 625
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 626
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 625
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    .line 621
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 5224
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 5225
    :catch_0
    move-exception v0

    .line 5226
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5227
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 5233
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 5234
    :catch_0
    move-exception v0

    .line 5235
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read network stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5236
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getPlatformDefaultLimitBytes()J
    .locals 2

    .line 2161
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getPlatformDefaultWarningBytes()J
    .locals 5

    .line 2151
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2153
    .local v0, "dataWarningConfig":I
    int-to-long v1, v0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2154
    return-wide v3

    .line 2156
    :cond_0
    int-to-long v1, v0

    const-wide/32 v3, 0x100000

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;
    .locals 6
    .param p1, "subId"    # I

    .line 5624
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 5625
    .local v0, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5626
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 5627
    .local v3, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/RecurrenceRule;->isRecurring()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5629
    return-object v3

    .line 5632
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 5633
    .local v4, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-static {v5}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5634
    return-object v3

    .line 5626
    .end local v3    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v4    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5639
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSubIdLocked(Landroid/net/Network;)I
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 5619
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    iget v1, p1, Landroid/net/Network;->netId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 2
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5219
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5598
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x402000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 5600
    :catch_0
    move-exception v0

    .line 5601
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method private handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5654
    .local p1, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    if-nez v0, :cond_0

    .line 5655
    return-void

    .line 5657
    :cond_0
    if-nez p1, :cond_2

    .line 5658
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5659
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5660
    .end local v1    # "uid":I
    goto :goto_0

    .line 5661
    :cond_1
    return-void

    .line 5663
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5664
    .restart local v1    # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5665
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5667
    .end local v1    # "uid":I
    :cond_3
    goto :goto_1

    .line 5668
    :cond_4
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5669
    .restart local v1    # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5670
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5672
    .end local v1    # "uid":I
    :cond_5
    goto :goto_2

    .line 5673
    :cond_6
    return-void
.end method

.method private hasInternetPermissionUL(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 4320
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 4322
    .local v1, "appId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    .line 4323
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v3, "android.permission.INTERNET"

    .line 4324
    invoke-interface {v2, v3, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4326
    .local v2, "hasPermission":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 4328
    .end local v2    # "hasPermission":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mInternetPermissionMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 4330
    .restart local v2    # "hasPermission":Z
    :goto_1
    return v2

    .line 4331
    .end local v1    # "appId":I
    .end local v2    # "hasPermission":Z
    :catch_0
    move-exception v1

    .line 4333
    return v0
.end method

.method private static hasRule(II)Z
    .locals 1
    .param p0, "uidRules"    # I
    .param p1, "rule"    # I

    .line 5683
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initService(Ljava/util/concurrent/CountDownLatch;)V
    .locals 16
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 747
    move-object/from16 v1, p0

    const-wide/32 v2, 0x200000

    const-string/jumbo v0, "systemReady"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 748
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    .line 751
    .local v4, "oldPriority":I
    const/4 v0, -0x2

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 752
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    const-string v0, "NetworkPolicy"

    const-string v5, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 919
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 920
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 754
    return-void

    .line 757
    :cond_0
    :try_start_1
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 758
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 759
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    .line 761
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 762
    :try_start_2
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 763
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    .line 764
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 765
    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 792
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 797
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->waitForAdminData()V

    .line 800
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 803
    iget-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    iput-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 804
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v8, 0xa

    .line 805
    invoke-virtual {v7, v8}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v7

    iget-boolean v7, v7, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 806
    if-eqz v7, :cond_1

    iget-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    if-nez v7, :cond_1

    .line 807
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 809
    :cond_1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 824
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 828
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    const-string/jumbo v7, "init_service"

    invoke-direct {v1, v0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    .line 829
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 833
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 834
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 836
    :try_start_5
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 838
    :try_start_6
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v6, 0x3

    const/4 v7, 0x5

    const-string v8, "android"

    invoke-interface {v0, v5, v6, v7, v8}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 841
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v5}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 844
    goto :goto_0

    .line 842
    :catch_0
    move-exception v0

    .line 847
    :goto_0
    :try_start_7
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    .line 849
    .local v5, "whitelistFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v5, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 852
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 853
    .local v6, "connFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v9, "android.permission.NETWORK_STACK"

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v6, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 856
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v7, v0

    .line 857
    .local v7, "packageFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    const-string/jumbo v0, "package"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 859
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v7, v8, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 862
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.UID_REMOVED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v8, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 866
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v9, v0

    .line 867
    .local v9, "userFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10, v9, v8, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 872
    new-instance v0, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v0, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 873
    .local v10, "statsFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11, v10, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 877
    new-instance v0, Landroid/content/IntentFilter;

    const-string v11, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 878
    .local v11, "allowFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v13, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v11, v13, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 881
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 883
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 887
    new-instance v0, Landroid/content/IntentFilter;

    const-string v12, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v0, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v12, v0

    .line 889
    .local v12, "wifiFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v13, v12, v8, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 892
    new-instance v0, Landroid/content/IntentFilter;

    const-string v13, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v0, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 894
    .local v13, "carrierConfigFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14, v13, v8, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 897
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v14, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    new-instance v14, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v14}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 898
    invoke-virtual {v14}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 897
    invoke-virtual {v0, v14, v15}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 900
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    new-instance v14, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;

    invoke-direct {v14, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-interface {v0, v14}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 901
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 902
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    .line 903
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 906
    :try_start_9
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    new-instance v8, Landroid/os/HandlerExecutor;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v14}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v14, Lcom/android/server/net/NetworkPolicyManagerService$3;

    invoke-direct {v14, v1}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v8, v14}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 916
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 919
    .end local v5    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v6    # "connFilter":Landroid/content/IntentFilter;
    .end local v7    # "packageFilter":Landroid/content/IntentFilter;
    .end local v9    # "userFilter":Landroid/content/IntentFilter;
    .end local v10    # "statsFilter":Landroid/content/IntentFilter;
    .end local v11    # "allowFilter":Landroid/content/IntentFilter;
    .end local v12    # "wifiFilter":Landroid/content/IntentFilter;
    .end local v13    # "carrierConfigFilter":Landroid/content/IntentFilter;
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 920
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 921
    nop

    .line 922
    return-void

    .line 903
    .restart local v5    # "whitelistFilter":Landroid/content/IntentFilter;
    .restart local v6    # "connFilter":Landroid/content/IntentFilter;
    .restart local v7    # "packageFilter":Landroid/content/IntentFilter;
    .restart local v9    # "userFilter":Landroid/content/IntentFilter;
    .restart local v10    # "statsFilter":Landroid/content/IntentFilter;
    .restart local v11    # "allowFilter":Landroid/content/IntentFilter;
    .restart local v12    # "wifiFilter":Landroid/content/IntentFilter;
    .restart local v13    # "carrierConfigFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .end local v4    # "oldPriority":I
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 833
    .end local v5    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v6    # "connFilter":Landroid/content/IntentFilter;
    .end local v7    # "packageFilter":Landroid/content/IntentFilter;
    .end local v9    # "userFilter":Landroid/content/IntentFilter;
    .end local v10    # "statsFilter":Landroid/content/IntentFilter;
    .end local v11    # "allowFilter":Landroid/content/IntentFilter;
    .end local v12    # "wifiFilter":Landroid/content/IntentFilter;
    .end local v13    # "carrierConfigFilter":Landroid/content/IntentFilter;
    .restart local v4    # "oldPriority":I
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v4    # "oldPriority":I
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :try_start_d
    throw v0

    .line 834
    .restart local v4    # "oldPriority":I
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .end local v4    # "oldPriority":I
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 919
    .restart local v4    # "oldPriority":I
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catchall_3
    move-exception v0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 920
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 921
    throw v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .line 5241
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5243
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5248
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5243
    return v2

    .line 5248
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5249
    throw v2

    .line 5244
    :catch_0
    move-exception v2

    .line 5246
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 5248
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5246
    return v3
.end method

.method private isRestrictedByAdminUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 5677
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 5678
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5677
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 5679
    .local v0, "restrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isSystem(I)Z
    .locals 1
    .param p0, "uid"    # I

    .line 5385
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUidForegroundOnRestrictBackgroundUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 3752
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3753
    .local v0, "procState":I
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundOnRestrictPowerUL(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 3758
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x13

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3766
    .local v0, "procState":I
    invoke-static {p1, v0}, Lcom/android/server/net/OpNetworkPolicyInjector;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v1

    return v1
.end method

.method static isUidNetworkingBlockedInternal(IIZZLcom/android/server/net/NetworkPolicyLogger;)Z
    .locals 2
    .param p0, "uid"    # I
    .param p1, "uidRules"    # I
    .param p2, "isNetworkMetered"    # Z
    .param p3, "isBackgroundRestricted"    # Z
    .param p4, "logger"    # Lcom/android/server/net/NetworkPolicyLogger;

    .line 5392
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5393
    const/4 v0, 0x7

    .local v0, "reason":I
    goto :goto_0

    .line 5395
    .end local v0    # "reason":I
    :cond_0
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5396
    const/4 v0, 0x0

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5398
    .end local v0    # "reason":I
    :cond_1
    if-nez p2, :cond_2

    .line 5399
    const/4 v0, 0x1

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5401
    .end local v0    # "reason":I
    :cond_2
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5402
    const/4 v0, 0x2

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5404
    .end local v0    # "reason":I
    :cond_3
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5405
    const/4 v0, 0x3

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5407
    .end local v0    # "reason":I
    :cond_4
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5408
    const/4 v0, 0x4

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5410
    .end local v0    # "reason":I
    :cond_5
    if-eqz p3, :cond_6

    .line 5411
    const/4 v0, 0x5

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5414
    .end local v0    # "reason":I
    :cond_6
    const/4 v0, 0x6

    .line 5418
    .restart local v0    # "reason":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 5432
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 5424
    :pswitch_0
    const/4 v1, 0x0

    .line 5425
    .local v1, "blocked":Z
    goto :goto_1

    .line 5429
    .end local v1    # "blocked":Z
    :pswitch_1
    const/4 v1, 0x1

    .line 5430
    .restart local v1    # "blocked":Z
    nop

    .line 5434
    :goto_1
    if-eqz p4, :cond_7

    .line 5435
    invoke-virtual {p4, p0, v0}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5438
    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isUidStateForeground(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 3772
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUidValidForBlacklistRulesUL(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 4223
    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3fb

    if-eq p1, v0, :cond_1

    .line 4224
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRulesUL(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4228
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4225
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isUidValidForWhitelistRulesUL(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 4233
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWhitelistedFromPowerSaveUL(IZ)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "deviceIdleMode"    # Z

    .line 3954
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3955
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 3956
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 3957
    .local v1, "isWhitelisted":Z
    :goto_1
    if-nez p2, :cond_4

    .line 3958
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    move v1, v2

    .line 3960
    :cond_4
    return v1
.end method

.method static synthetic lambda$updateNetworks$1(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 1567
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1568
    return-void
.end method

.method private maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z
    .locals 10
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 1586
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "maybeUpdateMobilePolicyCycleAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_0
    const/4 v0, 0x0

    .line 1590
    .local v0, "policyUpdated":Z
    new-instance v9, Landroid/net/NetworkIdentity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1592
    .local v1, "probeIdent":Landroid/net/NetworkIdentity;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1593
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 1594
    .local v3, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1595
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 1596
    .local v4, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1592
    .end local v3    # "template":Landroid/net/NetworkTemplate;
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1599
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private normalizePoliciesNL()V
    .locals 1

    .line 2905
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 2906
    return-void
.end method

.method private normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .locals 6
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 2910
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2911
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 2912
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    .line 2913
    goto :goto_1

    .line 2917
    :cond_0
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    invoke-static {v3, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;Ljava/util/List;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2918
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 2919
    .local v3, "existing":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v4

    if-lez v4, :cond_3

    .line 2920
    :cond_1
    if-eqz v3, :cond_2

    .line 2921
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Normalization replaced "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkPolicy"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :cond_2
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2911
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .end local v3    # "existing":Landroid/net/NetworkPolicy;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2926
    :cond_4
    return-void
.end method

.method private notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1370
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1377
    :cond_0
    return-void
.end method

.method private notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1381
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1382
    return-void
.end method

.method private onUidDeletedUL(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 4342
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4343
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4344
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4345
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4346
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4347
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4348
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4349
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4350
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4353
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4354
    return-void
.end method

.method private parseSubId(Landroid/net/NetworkState;)I
    .locals 3
    .param p1, "state"    # Landroid/net/NetworkState;

    .line 5606
    const/4 v0, -0x1

    .line 5607
    .local v0, "subId":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    .line 5608
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5609
    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    .line 5610
    .local v1, "spec":Landroid/net/NetworkSpecifier;
    instance-of v2, v1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v2, :cond_0

    .line 5611
    move-object v2, v1

    check-cast v2, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {v2}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v0

    .line 5614
    .end local v1    # "spec":Landroid/net/NetworkSpecifier;
    :cond_0
    return v0
.end method

.method private readPolicyAL()V
    .locals 36

    .line 2245
    move-object/from16 v1, p0

    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v3, "NetworkPolicy"

    if-eqz v2, :cond_0

    const-string/jumbo v2, "readPolicyAL()"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_0
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 2249
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 2250
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 2251
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 2253
    const/4 v2, 0x0

    .line 2255
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v2, v4

    .line 2256
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2257
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2261
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2264
    .local v5, "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    const/4 v6, 0x1

    .line 2265
    .local v6, "version":I
    const/4 v7, 0x0

    .line 2266
    .local v7, "insideWhitelist":Z
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "type":I
    const/4 v11, 0x1

    if-eq v8, v11, :cond_1b

    .line 2267
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2268
    .local v8, "tag":Ljava/lang/String;
    const-string/jumbo v12, "whitelist"

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-ne v9, v14, :cond_19

    .line 2269
    :try_start_2
    const-string/jumbo v15, "policy-list"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v15, :cond_2

    .line 2270
    :try_start_3
    iget-boolean v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2271
    .local v12, "oldValue":Z
    const-string/jumbo v14, "version"

    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v14

    move v6, v14

    .line 2272
    if-lt v6, v13, :cond_1

    const-string/jumbo v13, "restrictBackground"

    .line 2273
    invoke-static {v4, v13}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    move v10, v11

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iput-boolean v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2274
    .end local v12    # "oldValue":Z
    move-object/from16 v19, v2

    move v2, v9

    goto/16 :goto_f

    :cond_2
    :try_start_4
    const-string/jumbo v13, "network-policy"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string/jumbo v15, "limitBytes"

    const-string v10, "cyclePeriod"

    const-string v11, "cycleEnd"

    const-string v14, "cycleStart"

    if-eqz v13, :cond_d

    .line 2275
    :try_start_5
    const-string/jumbo v12, "networkTemplate"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    .line 2276
    .local v12, "networkTemplate":I
    const-string/jumbo v13, "subscriberId"
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v19, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v19, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    :try_start_6
    invoke-interface {v4, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2278
    .local v13, "subscriberId":Ljava/lang/String;
    const/16 v2, 0x9

    if-lt v6, v2, :cond_3

    .line 2279
    const-string/jumbo v2, "networkId"

    move/from16 v20, v9

    const/4 v9, 0x0

    .end local v9    # "type":I
    .local v20, "type":I
    invoke-interface {v4, v9, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "networkId":Ljava/lang/String;
    goto :goto_2

    .line 2281
    .end local v2    # "networkId":Ljava/lang/String;
    .end local v20    # "type":I
    .restart local v9    # "type":I
    :cond_3
    move/from16 v20, v9

    .end local v9    # "type":I
    .restart local v20    # "type":I
    const/4 v2, 0x0

    .line 2284
    .restart local v2    # "networkId":Ljava/lang/String;
    :goto_2
    const/16 v9, 0xb

    if-lt v6, v9, :cond_4

    .line 2285
    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2286
    .local v9, "start":Ljava/lang/String;
    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2287
    .local v11, "end":Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2288
    .local v10, "period":Ljava/lang/String;
    new-instance v14, Landroid/util/RecurrenceRule;

    .line 2289
    move-object/from16 v21, v5

    .end local v5    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .local v21, "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    invoke-static {v9}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 2290
    move-object/from16 v16, v9

    .end local v9    # "start":Ljava/lang/String;
    .local v16, "start":Ljava/lang/String;
    invoke-static {v11}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v9

    .line 2291
    move-object/from16 v22, v11

    .end local v11    # "end":Ljava/lang/String;
    .local v22, "end":Ljava/lang/String;
    invoke-static {v10}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v11

    invoke-direct {v14, v5, v9, v11}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    move-object v5, v14

    .line 2292
    .end local v10    # "period":Ljava/lang/String;
    .end local v16    # "start":Ljava/lang/String;
    .end local v22    # "end":Ljava/lang/String;
    .local v5, "cycleRule":Landroid/util/RecurrenceRule;
    goto :goto_4

    .line 2293
    .end local v21    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .local v5, "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    :cond_4
    move-object/from16 v21, v5

    .end local v5    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .restart local v21    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    const-string v5, "cycleDay"

    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v5

    .line 2295
    .local v5, "cycleDay":I
    const/4 v9, 0x6

    if-lt v6, v9, :cond_5

    .line 2296
    const-string v9, "cycleTimezone"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "cycleTimezone":Ljava/lang/String;
    goto :goto_3

    .line 2298
    .end local v9    # "cycleTimezone":Ljava/lang/String;
    :cond_5
    const-string v9, "UTC"

    .line 2300
    .restart local v9    # "cycleTimezone":Ljava/lang/String;
    :goto_3
    invoke-static {v9}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v10

    move-object v5, v10

    .line 2302
    .end local v9    # "cycleTimezone":Ljava/lang/String;
    .local v5, "cycleRule":Landroid/util/RecurrenceRule;
    :goto_4
    const-string/jumbo v9, "warningBytes"

    invoke-static {v4, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v25

    .line 2303
    .local v25, "warningBytes":J
    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v27

    .line 2305
    .local v27, "limitBytes":J
    const/4 v9, 0x5

    if-lt v6, v9, :cond_6

    .line 2306
    const-string/jumbo v10, "lastLimitSnooze"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .local v10, "lastLimitSnooze":J
    goto :goto_5

    .line 2307
    .end local v10    # "lastLimitSnooze":J
    :cond_6
    const/4 v10, 0x2

    if-lt v6, v10, :cond_7

    .line 2308
    const-string/jumbo v10, "lastSnooze"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .restart local v10    # "lastLimitSnooze":J
    goto :goto_5

    .line 2310
    .end local v10    # "lastLimitSnooze":J
    :cond_7
    const-wide/16 v10, -0x1

    .line 2313
    .restart local v10    # "lastLimitSnooze":J
    :goto_5
    const/4 v14, 0x4

    if-lt v6, v14, :cond_8

    .line 2314
    const-string/jumbo v14, "metered"

    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    .local v14, "metered":Z
    goto :goto_6

    .line 2316
    .end local v14    # "metered":Z
    :cond_8
    const/4 v14, 0x1

    if-eq v12, v14, :cond_9

    .line 2321
    const/4 v14, 0x0

    .restart local v14    # "metered":Z
    goto :goto_6

    .line 2318
    .end local v14    # "metered":Z
    :cond_9
    const/4 v14, 0x1

    .line 2319
    .restart local v14    # "metered":Z
    nop

    .line 2325
    :goto_6
    if-lt v6, v9, :cond_a

    .line 2326
    const-string/jumbo v9, "lastWarningSnooze"

    invoke-static {v4, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v15

    .local v15, "lastWarningSnooze":J
    goto :goto_7

    .line 2328
    .end local v15    # "lastWarningSnooze":J
    :cond_a
    const-wide/16 v15, -0x1

    .line 2331
    .restart local v15    # "lastWarningSnooze":J
    :goto_7
    const/4 v9, 0x7

    if-lt v6, v9, :cond_b

    .line 2332
    const-string v9, "inferred"

    invoke-static {v4, v9}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    .local v9, "inferred":Z
    goto :goto_8

    .line 2334
    .end local v9    # "inferred":Z
    :cond_b
    const/4 v9, 0x0

    .line 2337
    .restart local v9    # "inferred":Z
    :goto_8
    move/from16 v18, v6

    .end local v6    # "version":I
    .local v18, "version":I
    new-instance v6, Landroid/net/NetworkTemplate;

    invoke-direct {v6, v12, v13, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2339
    .local v6, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2340
    move-object/from16 v17, v2

    .end local v2    # "networkId":Ljava/lang/String;
    .local v17, "networkId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v35, v12

    .end local v12    # "networkTemplate":I
    .local v35, "networkTemplate":I
    new-instance v12, Landroid/net/NetworkPolicy;

    move-object/from16 v22, v12

    move-object/from16 v23, v6

    move-object/from16 v24, v5

    move-wide/from16 v29, v15

    move-wide/from16 v31, v10

    move/from16 v33, v14

    move/from16 v34, v9

    invoke-direct/range {v22 .. v34}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    invoke-virtual {v2, v6, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2339
    .end local v17    # "networkId":Ljava/lang/String;
    .end local v35    # "networkTemplate":I
    .restart local v2    # "networkId":Ljava/lang/String;
    .restart local v12    # "networkTemplate":I
    :cond_c
    move-object/from16 v17, v2

    move/from16 v35, v12

    .line 2345
    .end local v2    # "networkId":Ljava/lang/String;
    .end local v5    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v6    # "template":Landroid/net/NetworkTemplate;
    .end local v9    # "inferred":Z
    .end local v10    # "lastLimitSnooze":J
    .end local v12    # "networkTemplate":I
    .end local v13    # "subscriberId":Ljava/lang/String;
    .end local v14    # "metered":Z
    .end local v15    # "lastWarningSnooze":J
    .end local v25    # "warningBytes":J
    .end local v27    # "limitBytes":J
    :goto_9
    move/from16 v2, v20

    move-object/from16 v5, v21

    goto/16 :goto_e

    .end local v18    # "version":I
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "type":I
    .end local v21    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .local v2, "fis":Ljava/io/FileInputStream;
    .local v5, "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .local v6, "version":I
    .local v9, "type":I
    :cond_d
    move-object/from16 v19, v2

    move-object/from16 v21, v5

    move/from16 v18, v6

    move/from16 v20, v9

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .end local v6    # "version":I
    .end local v9    # "type":I
    .restart local v18    # "version":I
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "type":I
    .restart local v21    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    const-string/jumbo v2, "subscription-plan"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2346
    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2347
    .local v2, "start":Ljava/lang/String;
    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2348
    .local v5, "end":Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2349
    .local v6, "period":Ljava/lang/String;
    new-instance v9, Landroid/telephony/SubscriptionPlan$Builder;

    .line 2350
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v10

    .line 2351
    invoke-static {v5}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v11

    .line 2352
    invoke-static {v6}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 2353
    .local v9, "builder":Landroid/telephony/SubscriptionPlan$Builder;
    const-string/jumbo v10, "title"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2354
    const-string/jumbo v10, "summary"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2356
    const-wide/16 v10, -0x1

    invoke-static {v4, v15, v10, v11}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    .line 2358
    .local v12, "limitBytes":J
    const-string/jumbo v14, "limitBehavior"

    const/4 v15, -0x1

    invoke-static {v4, v14, v15}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 2360
    .local v14, "limitBehavior":I
    cmp-long v16, v12, v10

    if-eqz v16, :cond_e

    if-eq v14, v15, :cond_e

    .line 2362
    invoke-virtual {v9, v12, v13, v14}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2365
    :cond_e
    const-string/jumbo v15, "usageBytes"

    invoke-static {v4, v15, v10, v11}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    move-wide/from16 v22, v15

    .line 2367
    .local v22, "usageBytes":J
    const-string/jumbo v15, "usageTime"

    invoke-static {v4, v15, v10, v11}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    move-wide/from16 v24, v15

    .line 2369
    .local v24, "usageTime":J
    move-object v15, v5

    move-object/from16 v16, v6

    move-wide/from16 v5, v22

    .end local v6    # "period":Ljava/lang/String;
    .end local v22    # "usageBytes":J
    .local v5, "usageBytes":J
    .local v15, "end":Ljava/lang/String;
    .local v16, "period":Ljava/lang/String;
    cmp-long v17, v5, v10

    if-eqz v17, :cond_f

    move-wide/from16 v22, v12

    move-wide/from16 v12, v24

    .end local v24    # "usageTime":J
    .local v12, "usageTime":J
    .local v22, "limitBytes":J
    cmp-long v10, v12, v10

    if-eqz v10, :cond_10

    .line 2371
    invoke-virtual {v9, v5, v6, v12, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    goto :goto_a

    .line 2369
    .end local v22    # "limitBytes":J
    .local v12, "limitBytes":J
    .restart local v24    # "usageTime":J
    :cond_f
    move-wide/from16 v22, v12

    move-wide/from16 v12, v24

    .line 2374
    .end local v24    # "usageTime":J
    .local v12, "usageTime":J
    .restart local v22    # "limitBytes":J
    :cond_10
    :goto_a
    const-string/jumbo v10, "subId"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v10

    .line 2375
    .local v10, "subId":I
    invoke-virtual {v9}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v11

    .line 2376
    .local v11, "plan":Landroid/telephony/SubscriptionPlan;
    move-object/from16 v17, v2

    .end local v2    # "start":Ljava/lang/String;
    .local v17, "start":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    move-wide/from16 v24, v5

    .end local v5    # "usageBytes":J
    .local v24, "usageBytes":J
    const-class v5, Landroid/telephony/SubscriptionPlan;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 2377
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/telephony/SubscriptionPlan;

    .line 2376
    invoke-static {v5, v6, v11}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    invoke-virtual {v2, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2379
    const-string/jumbo v2, "ownerPackage"

    invoke-static {v4, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2380
    .local v2, "ownerPackage":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v5, v10, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2382
    .end local v2    # "ownerPackage":Ljava/lang/String;
    .end local v9    # "builder":Landroid/telephony/SubscriptionPlan$Builder;
    .end local v10    # "subId":I
    .end local v11    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v12    # "usageTime":J
    .end local v14    # "limitBehavior":I
    .end local v15    # "end":Ljava/lang/String;
    .end local v16    # "period":Ljava/lang/String;
    .end local v17    # "start":Ljava/lang/String;
    .end local v22    # "limitBytes":J
    .end local v24    # "usageBytes":J
    move/from16 v2, v20

    move-object/from16 v5, v21

    goto/16 :goto_e

    :cond_11
    const-string/jumbo v2, "uid-policy"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v5, "; ignoring"

    const-string/jumbo v6, "unable to apply policy to UID "

    const-string/jumbo v9, "policy"

    const-string/jumbo v10, "uid"

    if-eqz v2, :cond_13

    .line 2383
    :try_start_7
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 2384
    .local v2, "uid":I
    invoke-static {v4, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 2386
    .local v9, "policy":I
    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2387
    const/4 v5, 0x0

    invoke-direct {v1, v2, v9, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_b

    .line 2389
    :cond_12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    .end local v2    # "uid":I
    .end local v9    # "policy":I
    :goto_b
    move/from16 v2, v20

    move-object/from16 v5, v21

    goto/16 :goto_e

    :cond_13
    const-string v2, "app-policy"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2392
    const-string v2, "appId"

    invoke-static {v4, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 2393
    .local v2, "appId":I
    invoke-static {v4, v9}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 2397
    .restart local v9    # "policy":I
    const/4 v10, 0x0

    invoke-static {v10, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    .line 2398
    .local v11, "uid":I
    invoke-static {v11}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 2399
    invoke-direct {v1, v11, v9, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_c

    .line 2401
    :cond_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    .end local v2    # "appId":I
    .end local v9    # "policy":I
    .end local v11    # "uid":I
    :goto_c
    move/from16 v2, v20

    move-object/from16 v5, v21

    goto :goto_e

    :cond_15
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2404
    const/4 v2, 0x1

    move v7, v2

    move/from16 v6, v18

    move/from16 v2, v20

    move-object/from16 v5, v21

    .end local v7    # "insideWhitelist":Z
    .local v2, "insideWhitelist":Z
    goto :goto_f

    .line 2405
    .end local v2    # "insideWhitelist":Z
    .restart local v7    # "insideWhitelist":Z
    :cond_16
    const-string/jumbo v2, "restrict-background"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v7, :cond_17

    .line 2406
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 2407
    .local v2, "uid":I
    move-object/from16 v5, v21

    const/4 v6, 0x1

    .end local v21    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .local v5, "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    invoke-virtual {v5, v2, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .end local v2    # "uid":I
    goto :goto_d

    .line 2405
    .end local v5    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .restart local v21    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    :cond_17
    move-object/from16 v5, v21

    .line 2408
    .end local v21    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .restart local v5    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    const-string/jumbo v2, "revoked-restrict-background"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v7, :cond_18

    .line 2409
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 2410
    .restart local v2    # "uid":I
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x1

    invoke-virtual {v6, v2, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2411
    .end local v2    # "uid":I
    move/from16 v2, v20

    goto :goto_e

    .line 2408
    :cond_18
    :goto_d
    move/from16 v2, v20

    goto :goto_e

    .line 2412
    .end local v18    # "version":I
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "type":I
    .local v2, "fis":Ljava/io/FileInputStream;
    .local v6, "version":I
    .local v9, "type":I
    :cond_19
    move-object/from16 v19, v2

    move/from16 v18, v6

    move/from16 v20, v9

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "version":I
    .end local v9    # "type":I
    .restart local v18    # "version":I
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "type":I
    move/from16 v2, v20

    .end local v20    # "type":I
    .local v2, "type":I
    if-ne v2, v13, :cond_1a

    .line 2413
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2414
    const/4 v6, 0x0

    move v7, v6

    move/from16 v6, v18

    .end local v7    # "insideWhitelist":Z
    .local v6, "insideWhitelist":Z
    goto :goto_f

    .line 2418
    .end local v6    # "insideWhitelist":Z
    .end local v8    # "tag":Ljava/lang/String;
    .restart local v7    # "insideWhitelist":Z
    :cond_1a
    :goto_e
    move/from16 v6, v18

    .end local v18    # "version":I
    .local v6, "version":I
    :goto_f
    move-object/from16 v2, v19

    goto/16 :goto_0

    .line 2420
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    .restart local v9    # "type":I
    :cond_1b
    move-object/from16 v19, v2

    move/from16 v18, v6

    move v2, v9

    .end local v6    # "version":I
    .end local v9    # "type":I
    .local v2, "type":I
    .restart local v18    # "version":I
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    .line 2421
    .local v6, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_10
    if-ge v8, v6, :cond_1f

    .line 2422
    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    .line 2423
    .local v9, "uid":I
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 2424
    .local v10, "policy":I
    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_1c

    .line 2425
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ignoring restrict-background-whitelist for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " because its policy is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2426
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2425
    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    const/4 v12, 0x0

    goto :goto_11

    .line 2429
    :cond_1c
    invoke-static {v9}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 2430
    or-int/lit8 v11, v10, 0x4

    .line 2431
    .local v11, "newPolicy":I
    sget-boolean v12, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v12, :cond_1d

    .line 2432
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "new policy for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_1d
    const/4 v12, 0x0

    invoke-direct {v1, v9, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2434
    .end local v11    # "newPolicy":I
    goto :goto_11

    .line 2435
    :cond_1e
    const/4 v12, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unable to update policy on UID "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2421
    .end local v9    # "uid":I
    .end local v10    # "policy":I
    :goto_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    .line 2445
    .end local v2    # "type":I
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .end local v6    # "size":I
    .end local v7    # "insideWhitelist":Z
    .end local v8    # "i":I
    .end local v18    # "version":I
    :cond_1f
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2446
    move-object/from16 v2, v19

    goto :goto_15

    .line 2445
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v2, v19

    goto :goto_16

    .line 2442
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object/from16 v2, v19

    goto :goto_12

    .line 2439
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object/from16 v2, v19

    goto :goto_13

    .line 2445
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    move-object v3, v0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    goto :goto_16

    .line 2442
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object/from16 v19, v2

    move-object v4, v0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    goto :goto_12

    .line 2439
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object/from16 v19, v2

    move-object v3, v0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    goto :goto_13

    .line 2445
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v0

    move-object v3, v0

    goto :goto_16

    .line 2442
    :catch_4
    move-exception v0

    move-object v4, v0

    .line 2443
    .local v4, "e":Ljava/lang/Exception;
    :goto_12
    :try_start_8
    const-string/jumbo v5, "problem reading network policy"

    invoke-static {v3, v5, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2445
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_14

    .line 2439
    :catch_5
    move-exception v0

    move-object v3, v0

    .line 2441
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeDefaultBackgroundDataUL()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2445
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    nop

    :goto_14
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2446
    nop

    .line 2447
    :goto_15
    return-void

    .line 2445
    :goto_16
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2446
    throw v3
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 5034
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5037
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5035
    :catch_1
    move-exception v0

    .line 5036
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5039
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5040
    :goto_1
    return-void
.end method

.method private removeInterfaceQuotaAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 5029
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5030
    return-void
.end method

.method private removeUidStateUL(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 3819
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 3820
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 3821
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 3822
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3823
    const/16 v2, 0x13

    if-eq v1, v2, :cond_2

    .line 3824
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 3826
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    .line 3827
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 3829
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v2, :cond_1

    .line 3830
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 3832
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 3833
    const/4 v2, 0x1

    return v2

    .line 3836
    .end local v1    # "oldUidState":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private resetUidFirewallRules(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 5204
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5205
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5206
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x3

    .line 5207
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5208
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 5209
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5212
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5210
    :catch_1
    move-exception v0

    .line 5211
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "problem resetting firewall uid rules for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5214
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5215
    :goto_1
    return-void
.end method

.method private sendRestrictBackgroundChangedMsg()V
    .locals 4

    .line 3035
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3036
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3037
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3038
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 5020
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5023
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5021
    :catch_1
    move-exception v0

    .line 5022
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5025
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5026
    :goto_1
    return-void
.end method

.method private setInterfaceQuotaAsync(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 5014
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v1, v1

    const-wide/16 v2, -0x1

    and-long/2addr v2, p2

    long-to-int v2, v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5015
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5016
    return-void
.end method

.method private setMeteredNetworkBlacklist(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 5043
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkBlacklist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5048
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5046
    :catch_1
    move-exception v0

    .line 5047
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting blacklist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5050
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5051
    :goto_1
    return-void
.end method

.method private setMeteredNetworkWhitelist(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 5054
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v1, "NetworkPolicy"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkWhitelist "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5056
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5059
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5057
    :catch_1
    move-exception v0

    .line 5058
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting whitelist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5061
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5062
    :goto_1
    return-void
.end method

.method private setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5581
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5582
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5583
    .local v1, "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5584
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidForPackage(Ljava/lang/String;I)I

    move-result v4

    .line 5585
    .local v4, "uid":I
    if-ltz v4, :cond_0

    .line 5586
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5588
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_0
    goto :goto_0

    .line 5589
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 5590
    .local v2, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5591
    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V

    .line 5592
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meteredRestrictedPkgsChanged(Ljava/util/Set;)V

    .line 5593
    .end local v1    # "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 5594
    return-void

    .line 5593
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .line 1809
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1810
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1811
    return-void
.end method

.method private setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V
    .locals 13
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .line 1817
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1821
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 1822
    .local v0, "matchingSubIds":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1823
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1824
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1825
    .local v3, "subId":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 1827
    .local v8, "subscriberId":Ljava/lang/String;
    new-instance v4, Landroid/net/NetworkIdentity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v12}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1831
    .local v4, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1832
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 1823
    .end local v3    # "subId":I
    .end local v4    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v8    # "subscriberId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1835
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1838
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1839
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1840
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 1843
    .restart local v3    # "subId":I
    if-nez p2, :cond_2

    .line 1844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNetworkTemplateEnabledInner: enabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkPolicy"

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_2
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(Z)V

    .line 1839
    .end local v3    # "subId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1835
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1850
    .end local v0    # "matchingSubIds":Landroid/util/IntArray;
    :cond_3
    return-void
.end method

.method private setRestrictBackgroundUL(ZLjava/lang/String;)V
    .locals 6
    .param p1, "restrictBackground"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 2990
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setRestrictBackgroundUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2992
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v2, :cond_0

    .line 2994
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL: already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3030
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2995
    return-void

    .line 2997
    :cond_0
    :try_start_1
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "; reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2999
    .local v2, "oldRestrictBackground":Z
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3003
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3005
    :try_start_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3006
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not change Data Saver Mode on NMS to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    iput-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3030
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3011
    return-void

    .line 3015
    :cond_1
    goto :goto_0

    .line 3013
    :catch_0
    move-exception v3

    .line 3017
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendRestrictBackgroundChangedMsg()V

    .line 3018
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v2, v4}, Lcom/android/server/net/NetworkPolicyLogger;->restrictBackgroundChanged(ZZ)V

    .line 3020
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    if-eqz v3, :cond_2

    .line 3021
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 3023
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3027
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3028
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3030
    .end local v2    # "oldRestrictBackground":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3031
    nop

    .line 3032
    return-void

    .line 3028
    .restart local v2    # "oldRestrictBackground":Z
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "restrictBackground":Z
    .end local p2    # "reason":Ljava/lang/String;
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3030
    .end local v2    # "oldRestrictBackground":Z
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "restrictBackground":Z
    .restart local p2    # "reason":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3031
    throw v2
.end method

.method private setUidFirewallRule(III)V
    .locals 5
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 5141
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUidFirewallRule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5146
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 5147
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 5174
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 5148
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 5149
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 5150
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 5151
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 5156
    :cond_3
    :goto_0
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "NetworkPolicy"

    if-eqz v2, :cond_4

    .line 5157
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUidFirewallRule chain = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rule "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5161
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5162
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 5169
    :catch_0
    move-exception v2

    .line 5170
    .local v2, "oobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string/jumbo v4, "problem setting firewall uid rules "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5165
    .end local v2    # "oobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 5172
    :goto_1
    goto :goto_2

    .line 5163
    :catch_2
    move-exception v2

    .line 5164
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "problem setting firewall uid rules"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5172
    nop

    .line 5174
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5175
    nop

    .line 5176
    return-void

    .line 5174
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5175
    throw v2
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V
    .locals 7
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .line 5115
    const-string v0, "NetworkPolicy"

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/net/OpNetworkPolicyInjector;->adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 5117
    .local v1, "uidRulesTemp":Landroid/util/SparseIntArray;
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 5118
    .local v2, "size":I
    new-array v3, v2, [I

    .line 5119
    .local v3, "uids":[I
    new-array v4, v2, [I

    .line 5120
    .local v4, "rules":[I
    add-int/lit8 v5, v2, -0x1

    .local v5, "index":I
    :goto_0
    if-ltz v5, :cond_0

    .line 5121
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    aput v6, v3, v5

    .line 5122
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    aput v6, v4, v5

    .line 5120
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 5125
    .end local v5    # "index":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUidFirewallRules uidRules "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " chain ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V

    .line 5129
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v5, p1, v3, v4}, Lcom/android/server/net/NetworkPolicyLogger;->firewallRulesChanged(I[I[I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "uidRulesTemp":Landroid/util/SparseIntArray;
    .end local v2    # "size":I
    .end local v3    # "uids":[I
    .end local v4    # "rules":[I
    goto :goto_1

    .line 5132
    :catch_0
    move-exception v0

    goto :goto_2

    .line 5130
    :catch_1
    move-exception v1

    .line 5131
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "problem setting firewall uid rules"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5134
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    nop

    .line 5135
    :goto_2
    return-void
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    .locals 1
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;
    .param p3, "toggle"    # I

    .line 5087
    if-eqz p2, :cond_0

    .line 5088
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    .line 5090
    :cond_0
    if-eqz p3, :cond_2

    .line 5091
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 5093
    :cond_2
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIIZ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "policy"    # I
    .param p4, "persist"    # Z

    .line 2680
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2683
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRulesUL(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2684
    const/4 v0, 0x0

    .local v0, "notifyApp":Z
    goto/16 :goto_8

    .line 2686
    .end local v0    # "notifyApp":Z
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2687
    .local v2, "wasBlacklisted":Z
    :goto_0
    if-ne p3, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 2688
    .local v3, "isBlacklisted":Z
    :goto_1
    const/4 v4, 0x4

    if-ne p2, v4, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v0

    .line 2689
    .local v5, "wasWhitelisted":Z
    :goto_2
    if-ne p3, v4, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v0

    .line 2690
    .local v4, "isWhitelisted":Z
    :goto_3
    if-nez v2, :cond_6

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v6, :cond_5

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    move v6, v0

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v1

    .line 2691
    .local v6, "wasBlocked":Z
    :goto_5
    if-nez v3, :cond_8

    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v7, :cond_7

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    move v7, v0

    goto :goto_7

    :cond_8
    :goto_6
    move v7, v1

    .line 2692
    .local v7, "isBlocked":Z
    :goto_7
    if-eqz v5, :cond_b

    if-eqz v4, :cond_9

    if-eqz v3, :cond_b

    :cond_9
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 2693
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2694
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2695
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_a

    .line 2696
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to revoked restrict background whitelist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NetworkPolicy"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    :cond_a
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2699
    :cond_b
    if-eq v6, v7, :cond_c

    move v0, v1

    .line 2701
    .end local v2    # "wasBlacklisted":Z
    .end local v3    # "isBlacklisted":Z
    .end local v4    # "isWhitelisted":Z
    .end local v5    # "wasWhitelisted":Z
    .end local v6    # "wasBlocked":Z
    .end local v7    # "isBlocked":Z
    .restart local v0    # "notifyApp":Z
    :cond_c
    :goto_8
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, p1, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2702
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2703
    if-eqz p4, :cond_d

    .line 2704
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2705
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2706
    monitor-exit v1

    goto :goto_9

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2708
    :cond_d
    :goto_9
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .line 2712
    if-nez p2, :cond_0

    .line 2713
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 2715
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2719
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 2720
    if-eqz p3, :cond_1

    .line 2721
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2722
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2723
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2725
    :cond_1
    :goto_1
    return-void
.end method

.method private static updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .locals 3
    .param p0, "lastValues"    # Landroid/util/SparseBooleanArray;
    .param p1, "newValue"    # Z
    .param p2, "network"    # Landroid/net/Network;

    .line 1124
    iget v0, p2, Landroid/net/Network;->netId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1125
    .local v0, "lastValue":Z
    if-ne v0, p1, :cond_0

    iget v2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1126
    .local v1, "changed":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 1127
    iget v2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1129
    :cond_2
    return v1
.end method

.method private updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z
    .locals 19
    .param p1, "subId"    # I
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    .line 2189
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->inferred:Z

    const-string v4, "NetworkPolicy"

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 2190
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring user-defined policy "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :cond_0
    return v5

    .line 2194
    :cond_1
    new-instance v3, Landroid/net/NetworkPolicy;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v13, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    iget-wide v5, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    iget-boolean v15, v2, Landroid/net/NetworkPolicy;->metered:Z

    move-wide/from16 v16, v5

    iget-boolean v5, v2, Landroid/net/NetworkPolicy;->inferred:Z

    move-object v6, v3

    move/from16 v18, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v5

    invoke-direct/range {v6 .. v18}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2198
    .local v3, "original":Landroid/net/NetworkPolicy;
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    .line 2199
    .local v5, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_5

    .line 2200
    const/4 v6, 0x0

    aget-object v8, v5, v6

    .line 2201
    .local v8, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v8}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v6

    iput-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2202
    invoke-virtual {v8}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v9

    .line 2203
    .local v9, "planLimitBytes":J
    const-wide/16 v11, -0x1

    cmp-long v6, v9, v11

    if-nez v6, :cond_2

    .line 2204
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v11

    iput-wide v11, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2205
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v11

    iput-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    .line 2206
    :cond_2
    const-wide v13, 0x7fffffffffffffffL

    cmp-long v6, v9, v13

    if-nez v6, :cond_3

    .line 2207
    iput-wide v11, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2208
    iput-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    .line 2210
    :cond_3
    const-wide/16 v13, 0x9

    mul-long/2addr v13, v9

    const-wide/16 v15, 0xa

    div-long/2addr v13, v15

    iput-wide v13, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2211
    invoke-virtual {v8}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v6

    if-eqz v6, :cond_4

    if-eq v6, v7, :cond_4

    .line 2217
    iput-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    .line 2214
    :cond_4
    iput-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2215
    nop

    .line 2221
    .end local v8    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v9    # "planLimitBytes":J
    :goto_0
    goto :goto_2

    .line 2222
    :cond_5
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v6, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 2224
    .local v6, "config":Landroid/os/PersistableBundle;
    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v8}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2225
    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v8, v8, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v8

    .local v8, "currentCycleDay":I
    goto :goto_1

    .line 2227
    .end local v8    # "currentCycleDay":I
    :cond_6
    const/4 v8, -0x1

    .line 2229
    .restart local v8    # "currentCycleDay":I
    :goto_1
    invoke-virtual {v0, v6, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I

    move-result v9

    .line 2230
    .local v9, "cycleDay":I
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v10

    iput-object v10, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2231
    iget-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v6, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2232
    iget-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v6, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2235
    .end local v6    # "config":Landroid/os/PersistableBundle;
    .end local v8    # "currentCycleDay":I
    .end local v9    # "cycleDay":I
    :goto_2
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2236
    const/4 v4, 0x0

    return v4

    .line 2238
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updated "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    return v7
.end method

.method private updateNetworkStats(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .line 3841
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3843
    if-eqz p2, :cond_0

    const-string v3, "F"

    goto :goto_0

    :cond_0
    const-string v3, "B"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3842
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3846
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/net/NetworkStatsManagerInternal;->setUidForeground(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3848
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3849
    nop

    .line 3850
    return-void

    .line 3848
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3849
    throw v2
.end method

.method private updateNetworksInternal()V
    .locals 3

    .line 1547
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 1549
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1550
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1551
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL()V

    .line 1552
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1553
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1554
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1558
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1559
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1560
    return-void

    .line 1558
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_4
    throw v2

    .line 1559
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private updatePowerSaveWhitelistUL()V
    .locals 7

    .line 673
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerWhitelistManager;->getWhitelistedAppIds(Z)[I

    move-result-object v0

    .line 674
    .local v0, "whitelist":[I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 675
    array-length v2, v0

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_0

    aget v5, v0, v3

    .line 676
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 675
    .end local v5    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 679
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    invoke-virtual {v2, v4}, Landroid/os/PowerWhitelistManager;->getWhitelistedAppIds(Z)[I

    move-result-object v0

    .line 680
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 681
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 682
    .local v3, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 681
    .end local v3    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 684
    :cond_1
    return-void
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .line 3854
    nop

    .line 3855
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    .line 3856
    .local v0, "oldForeground":Z
    nop

    .line 3857
    invoke-static {p3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    .line 3858
    .local v1, "newForeground":Z
    if-eq v0, v1, :cond_0

    .line 3859
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 3861
    :cond_0
    return-void
.end method

.method private updateRestrictionRulesForUidUL(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 4379
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4380
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4381
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4384
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4387
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4388
    return-void
.end method

.method private updateRulesForAllAppsUL(I)V
    .locals 16
    .param p1, "type"    # I

    .line 4152
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRulesForRestrictPowerUL-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4158
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v5, v0

    .line 4162
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v0, "list-users"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4164
    :try_start_1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v0

    .line 4166
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4167
    nop

    .line 4168
    const-string/jumbo v0, "list-uids"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4170
    const v0, 0x4c0200

    :try_start_3
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4175
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4176
    nop

    .line 4178
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 4179
    .local v7, "usersSize":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 4180
    .local v8, "appsSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_4

    .line 4181
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 4182
    .local v10, "user":Landroid/content/pm/UserInfo;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v8, :cond_3

    .line 4183
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    .line 4184
    .local v12, "app":Landroid/content/pm/ApplicationInfo;
    iget v13, v10, Landroid/content/pm/UserInfo;->id:I

    iget v14, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 4185
    .local v13, "uid":I
    const/4 v14, 0x1

    if-eq v2, v14, :cond_2

    const/4 v14, 0x2

    if-eq v2, v14, :cond_1

    .line 4193
    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type for updateRulesForAllApps: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4190
    :cond_1
    invoke-direct {v1, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4191
    goto :goto_2

    .line 4187
    :cond_2
    invoke-direct {v1, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4188
    nop

    .line 4182
    .end local v12    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "uid":I
    :goto_2
    add-int/lit8 v11, v11, 0x1

    const-wide/32 v3, 0x200000

    goto :goto_1

    .line 4180
    .end local v10    # "user":Landroid/content/pm/UserInfo;
    .end local v11    # "j":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    const-wide/32 v3, 0x200000

    goto :goto_0

    .line 4198
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "usersSize":I
    .end local v8    # "appsSize":I
    .end local v9    # "i":I
    :cond_4
    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4199
    nop

    .line 4200
    return-void

    .line 4175
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v0

    move-object v3, v0

    const-wide/32 v7, 0x200000

    :try_start_5
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 4176
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "type":I
    throw v3

    .line 4166
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "type":I
    :catchall_1
    move-exception v0

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4167
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "type":I
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4198
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "type":I
    :catchall_2
    move-exception v0

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4199
    throw v0
.end method

.method private updateRulesForAppIdleParoleUL()V
    .locals 12

    .line 4043
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->isInParole()Z

    move-result v0

    .line 4044
    .local v0, "paroled":Z
    xor-int/lit8 v1, v0, 0x1

    .line 4046
    .local v1, "enableChain":Z
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 4047
    .local v2, "ruleCount":I
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 4048
    .local v3, "blockedUids":Landroid/util/SparseIntArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v4, v2, :cond_6

    .line 4049
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 4050
    .local v7, "uid":I
    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRulesUL(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 4051
    goto :goto_4

    .line 4053
    :cond_0
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 4054
    .local v8, "oldRules":I
    if-eqz v1, :cond_1

    .line 4059
    and-int/lit8 v8, v8, 0xf

    goto :goto_1

    .line 4062
    :cond_1
    and-int/lit16 v9, v8, 0xf0

    if-nez v9, :cond_2

    goto :goto_4

    .line 4064
    :cond_2
    :goto_1
    const/4 v9, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    move v6, v9

    .line 4065
    .local v6, "isUidIdle":Z
    :goto_2
    if-eqz v6, :cond_4

    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 4066
    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 4067
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4068
    invoke-virtual {v3, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_3

    .line 4070
    :cond_4
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 4072
    :goto_3
    invoke-direct {p0, v7, v8, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v5

    .line 4074
    .local v5, "newUidRules":I
    if-nez v5, :cond_5

    .line 4075
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_4

    .line 4077
    :cond_5
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4048
    .end local v5    # "newUidRules":I
    .end local v6    # "isUidIdle":Z
    .end local v7    # "uid":I
    .end local v8    # "oldRules":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4080
    .end local v4    # "i":I
    :cond_6
    nop

    .line 4081
    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v6, v5

    .line 4080
    :goto_5
    invoke-direct {p0, v5, v3, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 4082
    return-void
.end method

.method private updateRulesForDataUsageRestrictionsUL(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 4430
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForDataUsageRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4435
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsULInner(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4437
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4438
    nop

    .line 4439
    return-void

    .line 4437
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4438
    throw v2
.end method

.method private updateRulesForDataUsageRestrictionsULInner(I)V
    .locals 18
    .param p1, "uid"    # I

    .line 4442
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRulesUL(I)Z

    move-result v2

    const-string v3, "NetworkPolicy"

    if-nez v2, :cond_1

    .line 4443
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no need to update restrict data rules for uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4444
    :cond_0
    return-void

    .line 4447
    :cond_1
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4448
    .local v2, "uidPolicy":I
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 4449
    .local v5, "oldUidRules":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v6

    .line 4450
    .local v6, "isForeground":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedByAdminUL(I)Z

    move-result v7

    .line 4452
    .local v7, "isRestrictedByAdmin":Z
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v4

    .line 4453
    .local v8, "isBlacklisted":Z
    :goto_0
    and-int/lit8 v10, v2, 0x4

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    move v10, v4

    .line 4454
    .local v10, "isWhitelisted":Z
    :goto_1
    and-int/lit8 v11, v5, 0xf

    .line 4455
    .local v11, "oldRule":I
    const/4 v12, 0x0

    .line 4458
    .local v12, "newRule":I
    if-eqz v7, :cond_4

    .line 4459
    const/4 v12, 0x4

    goto :goto_3

    .line 4460
    :cond_4
    if-eqz v6, :cond_7

    .line 4461
    if-nez v8, :cond_6

    iget-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v13, :cond_5

    if-nez v10, :cond_5

    goto :goto_2

    .line 4463
    :cond_5
    if-eqz v10, :cond_9

    .line 4464
    const/4 v12, 0x1

    goto :goto_3

    .line 4462
    :cond_6
    :goto_2
    const/4 v12, 0x2

    goto :goto_3

    .line 4467
    :cond_7
    if-eqz v8, :cond_8

    .line 4468
    const/4 v12, 0x4

    goto :goto_3

    .line 4469
    :cond_8
    iget-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v13, :cond_9

    if-eqz v10, :cond_9

    .line 4470
    const/4 v12, 0x1

    .line 4473
    :cond_9
    :goto_3
    and-int/lit16 v13, v5, 0xf0

    or-int/2addr v13, v12

    .line 4475
    .local v13, "newUidRules":I
    sget-boolean v14, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v15, ", newRule="

    const-string v4, ", oldRule="

    const-string v9, ", isRestrictedByAdmin="

    if-eqz v14, :cond_a

    .line 4476
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    .end local v2    # "uidPolicy":I
    .local v17, "uidPolicy":I
    const-string/jumbo v2, "updateRuleForRestrictBackgroundUL("

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): isForeground="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBlacklisted="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isWhitelisted="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4481
    invoke-static {v11}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4482
    invoke-static {v12}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newUidRules="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4483
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldUidRules="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4484
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4476
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4475
    .end local v17    # "uidPolicy":I
    .restart local v2    # "uidPolicy":I
    :cond_a
    move/from16 v17, v2

    .line 4487
    .end local v2    # "uidPolicy":I
    .restart local v17    # "uidPolicy":I
    :goto_4
    if-nez v13, :cond_b

    .line 4488
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_5

    .line 4490
    :cond_b
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 4494
    :goto_5
    if-eq v12, v11, :cond_17

    .line 4495
    const/4 v2, 0x2

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 4499
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4503
    if-eqz v8, :cond_16

    .line 4504
    const/4 v14, 0x0

    invoke-direct {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_a

    .line 4506
    :cond_c
    const/4 v14, 0x0

    invoke-static {v11, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4513
    if-nez v10, :cond_d

    .line 4514
    invoke-direct {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4516
    :cond_d
    if-nez v8, :cond_e

    if-eqz v7, :cond_16

    .line 4517
    :cond_e
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_a

    .line 4519
    :cond_f
    const/4 v2, 0x4

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v16

    if-nez v16, :cond_13

    .line 4520
    invoke-static {v11, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v16

    if-eqz v16, :cond_10

    goto :goto_7

    .line 4529
    :cond_10
    const/4 v2, 0x1

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v14

    if-nez v14, :cond_12

    .line 4530
    invoke-static {v11, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_6

    .line 4535
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected change of metered UID state for "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ": foreground="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", whitelisted="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", blacklisted="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4540
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4541
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4535
    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 4532
    :cond_12
    :goto_6
    invoke-direct {v0, v1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_a

    .line 4522
    :cond_13
    :goto_7
    if-nez v8, :cond_15

    if-eqz v7, :cond_14

    goto :goto_8

    :cond_14
    move v4, v14

    goto :goto_9

    :cond_15
    :goto_8
    const/4 v4, 0x1

    :goto_9
    invoke-direct {v0, v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    .line 4523
    invoke-static {v11, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v10, :cond_16

    .line 4527
    invoke-direct {v0, v1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4545
    :cond_16
    :goto_a
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4547
    :cond_17
    return-void
.end method

.method private updateRulesForGlobalChangeAL(Z)V
    .locals 4
    .param p1, "restrictedNetworksChanged"    # Z

    .line 4090
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4091
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForGlobalChangeAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4092
    if-eqz p1, :cond_0

    const-string v3, "R"

    goto :goto_0

    :cond_0
    const-string v3, "-"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4091
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4095
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 4096
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 4097
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 4100
    if-eqz p1, :cond_2

    .line 4101
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 4102
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4105
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4106
    nop

    .line 4107
    return-void

    .line 4105
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4106
    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(IIZ)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "oldUidRules"    # I
    .param p3, "isUidIdle"    # Z

    .line 4592
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4595
    if-eqz p3, :cond_0

    const-string v3, "I"

    goto :goto_0

    :cond_0
    const-string v3, "-"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4593
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4598
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsULInner(IIZ)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4600
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4598
    return v2

    .line 4600
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4601
    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 4569
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4571
    .local v0, "oldUidRules":I
    nop

    .line 4572
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v1

    .line 4571
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v1

    .line 4574
    .local v1, "newUidRules":I
    if-nez v1, :cond_0

    .line 4575
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 4577
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4579
    :goto_0
    return-void
.end method

.method private updateRulesForPowerRestrictionsULInner(IIZ)I
    .locals 16
    .param p1, "uid"    # I
    .param p2, "oldUidRules"    # I
    .param p3, "isUidIdle"    # Z

    .line 4607
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRulesUL(I)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "NetworkPolicy"

    if-nez v4, :cond_1

    .line 4608
    sget-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no need to update restrict power rules for uid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    :cond_0
    return v5

    .line 4612
    :cond_1
    if-nez v3, :cond_2

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-nez v7, :cond_2

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_3

    :cond_2
    const/4 v5, 0x1

    .line 4613
    .local v5, "restrictMode":Z
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v7

    .line 4615
    .local v7, "isForeground":Z
    iget-boolean v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {v0, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v8

    .line 4616
    .local v8, "isWhitelisted":Z
    and-int/lit16 v9, v2, 0xf0

    .line 4617
    .local v9, "oldRule":I
    const/4 v10, 0x0

    .line 4623
    .local v10, "newRule":I
    const/16 v11, 0x20

    if-eqz v7, :cond_4

    .line 4624
    if-eqz v5, :cond_7

    .line 4625
    const/16 v10, 0x20

    goto :goto_1

    .line 4627
    :cond_4
    if-eqz v5, :cond_7

    .line 4632
    iget-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->isInEsportRestrictBackground:Z

    if-eqz v13, :cond_5

    .line 4634
    const/16 v10, 0x40

    goto :goto_1

    .line 4636
    :cond_5
    if-eqz v8, :cond_6

    move v13, v11

    goto :goto_0

    :cond_6
    const/16 v13, 0x40

    :goto_0
    move v10, v13

    .line 4641
    :cond_7
    :goto_1
    and-int/lit8 v13, v2, 0xf

    or-int/2addr v13, v10

    .line 4643
    .local v13, "newUidRules":I
    sget-boolean v14, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v15, ", newRule="

    const-string v4, ", oldRule="

    if-eqz v14, :cond_8

    .line 4644
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateRulesForPowerRestrictionsUL("

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "), isIdle: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", mRestrictPower: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", mDeviceIdleMode: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isInFnaticMode:"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->isInEsportRestrictBackground:Z

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isForeground="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isWhitelisted="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4651
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4652
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", newUidRules="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4653
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", oldUidRules="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4654
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4644
    invoke-static {v6, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4658
    :cond_8
    if-eq v10, v9, :cond_d

    .line 4659
    if-eqz v10, :cond_b

    invoke-static {v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_2

    .line 4661
    :cond_9
    const/16 v11, 0x40

    invoke-static {v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 4662
    sget-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rejecting non-metered access for UID "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4665
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected change of non-metered UID state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": foreground="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", whitelisted="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4668
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4669
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4665
    invoke-static {v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4660
    :cond_b
    :goto_2
    sget-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Allowing non-metered access for UID "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4671
    :cond_c
    :goto_3
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v1, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4674
    :cond_d
    return v13
.end method

.method private updateRulesForRestrictBackgroundUL()V
    .locals 3

    .line 4131
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictBackgroundUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4133
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4135
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4136
    nop

    .line 4137
    return-void

    .line 4135
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4136
    throw v2
.end method

.method private updateRulesForRestrictPowerUL()V
    .locals 3

    .line 4119
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictPowerUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4121
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 4122
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    .line 4123
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4125
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4126
    nop

    .line 4127
    return-void

    .line 4125
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4126
    throw v2
.end method

.method private updateRulesForTempWhitelistChangeUL(I)V
    .locals 5
    .param p1, "appId"    # I

    .line 4204
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 4205
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4206
    .local v1, "numUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4207
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4208
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4210
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4211
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4212
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4214
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4206
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4216
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V
    .locals 4
    .param p1, "uidRules"    # Landroid/util/SparseIntArray;
    .param p2, "whitelistedAppIds"    # Landroid/util/SparseBooleanArray;
    .param p3, "userId"    # I

    .line 3935
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3936
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3937
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 3938
    .local v2, "appId":I
    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3939
    .local v3, "uid":I
    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3935
    .end local v2    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3942
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(IZI)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "enabled"    # Z
    .param p3, "chain"    # I

    .line 3967
    if-eqz p2, :cond_3

    .line 3968
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v2

    .line 3970
    .local v2, "isWhitelisted":Z
    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 3973
    :cond_1
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_2

    .line 3971
    :cond_2
    :goto_1
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 3976
    .end local v2    # "isWhitelisted":Z
    :cond_3
    :goto_2
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "chain"    # I
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    .line 3900
    if-eqz p1, :cond_4

    .line 3903
    move-object v0, p3

    .line 3904
    .local v0, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 3905
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 3906
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "ui":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3907
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3908
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 3909
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 3910
    const/4 v5, 0x3

    if-ne p2, v5, :cond_0

    .line 3911
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 3906
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3915
    .end local v2    # "ui":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 3922
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/net/OpNetworkPolicyInjector;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3924
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3915
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3927
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 3928
    .end local v0    # "uidRules":Landroid/util/SparseIntArray;
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_2

    .line 3929
    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 3931
    :goto_2
    return-void
.end method

.method private updateUidStateUL(II)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .line 3782
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateUidStateUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3784
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x13

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 3785
    .local v2, "oldUidState":I
    if-eq v2, p2, :cond_3

    .line 3787
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3788
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 3797
    invoke-static {p1, v2}, Lcom/android/server/net/OpNetworkPolicyInjector;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v3

    .line 3798
    invoke-static {p1, p2}, Lcom/android/server/net/OpNetworkPolicyInjector;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v4

    if-eq v3, v4, :cond_2

    .line 3800
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 3801
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_0

    .line 3802
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 3804
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v3, :cond_1

    .line 3805
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 3807
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3809
    :cond_2
    const/4 v3, 0x1

    .line 3812
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3809
    return v3

    .line 3812
    .end local v2    # "oldUidState":I
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3813
    nop

    .line 3814
    const/4 v0, 0x0

    return v0

    .line 3812
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3813
    throw v2
.end method

.method private upgradeDefaultBackgroundDataUL()V
    .locals 3

    .line 2458
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 2459
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2458
    const-string v1, "default_restrict_background_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 2469
    return-void
.end method

.method private upgradeWifiMeteredOverrideAL()V
    .locals 10

    .line 2477
    const/4 v0, 0x0

    .line 2478
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 2479
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2480
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2481
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 2482
    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    iget-boolean v5, v4, Landroid/net/NetworkPolicy;->inferred:Z

    if-nez v5, :cond_3

    .line 2484
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2485
    const/4 v0, 0x1

    .line 2487
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2488
    .local v5, "networkId":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 2489
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; upgrading metered hint"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "NetworkPolicy"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    iget-boolean v8, v4, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v8, :cond_0

    .line 2492
    const/4 v8, 0x1

    goto :goto_2

    .line 2493
    :cond_0
    const/4 v8, 0x2

    :goto_2
    iput v8, v7, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 2494
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2496
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    goto :goto_1

    .line 2497
    .end local v5    # "networkId":Ljava/lang/String;
    :cond_2
    goto :goto_3

    .line 2498
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 2500
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :goto_3
    goto :goto_0

    .line 2501
    .end local v3    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 2502
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2504
    :cond_5
    return-void
.end method

.method private waitForAdminData()V
    .locals 4

    .line 5646
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5647
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 5650
    :cond_0
    return-void
.end method


# virtual methods
.method addDefaultRestrictBackgroundWhitelistUidsUL()Z
    .locals 6

    .line 694
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 695
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 697
    .local v1, "numberUsers":I
    const/4 v2, 0x0

    .line 698
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 699
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 700
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move v2, v5

    .line 698
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 702
    .end local v3    # "i":I
    :cond_2
    return v2
.end method

.method addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;

    .line 5290
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5291
    return-void
.end method

.method addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .line 2872
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 2873
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 2874
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 2875
    return-void
.end method

.method public addUidPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2644
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2650
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2651
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2652
    .local v1, "oldPolicy":I
    or-int/2addr p2, v1

    .line 2653
    if-eq v1, p2, :cond_0

    .line 2654
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2655
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2657
    .end local v1    # "oldPolicy":I
    :cond_0
    monitor-exit v0

    .line 2658
    return-void

    .line 2657
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2647
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .locals 1
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .line 668
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 669
    return-void
.end method

.method buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;
    .locals 17
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 2166
    move-object/from16 v1, p0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v15

    .line 2168
    .local v15, "template":Landroid/net/NetworkTemplate;
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v16

    .line 2169
    .local v16, "cycleRule":Landroid/util/RecurrenceRule;
    new-instance v0, Landroid/net/NetworkPolicy;

    .line 2170
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v4, v16

    invoke-direct/range {v2 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2172
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2173
    :try_start_0
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2174
    move/from16 v5, p1

    :try_start_1
    invoke-direct {v1, v5, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    .line 2175
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2176
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2177
    return-object v2

    .line 2175
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .end local v15    # "template":Landroid/net/NetworkTemplate;
    .end local v16    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "subId":I
    .end local p2    # "subscriberId":Ljava/lang/String;
    :try_start_4
    throw v0

    .line 2176
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    .restart local v15    # "template":Landroid/net/NetworkTemplate;
    .restart local v16    # "cycleRule":Landroid/util/RecurrenceRule;
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "subId":I
    .restart local p2    # "subscriberId":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v5, p1

    :goto_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3505
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkPolicy"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3507
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3509
    .local v0, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, p3

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 3510
    .local v1, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p3, v4

    .line 3511
    .local v5, "arg":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3510
    .end local v5    # "arg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3514
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3515
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3516
    :try_start_1
    const-string v5, "--unsnooze"

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3517
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 3518
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3517
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3521
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3523
    const-string v3, "Cleared snooze timestamps"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3524
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 3529
    :cond_3
    :try_start_3
    invoke-static {p1, p2, p3}, Lcom/android/server/net/OpNetworkPolicyInjector;->dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3530
    invoke-static {}, Lcom/android/server/net/OpNetworkPolicyInjector;->ifEnableLogDump()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 3531
    invoke-static {}, Lcom/android/server/net/OpNetworkPolicyInjector;->ifEnableLogDump()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 3532
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 3536
    :cond_4
    :try_start_5
    const-string v5, "System ready: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3537
    const-string v5, "Restrict background: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3538
    const-string v5, "Restrict power: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3539
    const-string v5, "Device idle: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3540
    const-string v5, "Metered ifaces: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3542
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3543
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRestrictBackgroundLowPowerMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3544
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRestrictBackgroundBeforeBsm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mLoadedRestrictBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3546
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mRestrictBackgroundChangedInBsm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3548
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3549
    const-string v5, "Network policies:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3550
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3551
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 3552
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3551
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3554
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3556
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3557
    const-string v5, "Subscription plans:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3558
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3559
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 3560
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3561
    .local v6, "subId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Subscriber ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3562
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3563
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 3564
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3565
    array-length v8, v7

    move v9, v3

    :goto_4
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    .line 3566
    .local v10, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3565
    .end local v10    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 3569
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3559
    nop

    .end local v6    # "subId":I
    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3571
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3573
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3574
    const-string v5, "Active subscriptions:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3575
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3576
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 3577
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3578
    .restart local v6    # "subId":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3580
    .local v7, "subscriberId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3576
    .end local v6    # "subId":I
    .end local v7    # "subscriberId":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3582
    .end local v5    # "i":I
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3584
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3585
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 3586
    .local v6, "mergedSubscribers":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Merged subscriptions: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3587
    invoke-static {v6}, Landroid/net/NetworkIdentity;->scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3586
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3588
    .end local v6    # "mergedSubscribers":[Ljava/lang/String;
    goto :goto_6

    .line 3590
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3591
    const-string v5, "Policy for UIDs:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3592
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3593
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 3594
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_7
    if-ge v6, v5, :cond_a

    .line 3595
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 3596
    .local v7, "uid":I
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 3597
    .local v8, "policy":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3598
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3599
    const-string v9, " policy="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3600
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3601
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3594
    .end local v7    # "uid":I
    .end local v8    # "policy":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 3603
    .end local v6    # "i":I
    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3605
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3606
    if-lez v5, :cond_c

    .line 3607
    const-string v6, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3608
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3609
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8
    if-ge v6, v5, :cond_b

    .line 3610
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3611
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3612
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3613
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3614
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3609
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 3616
    .end local v6    # "i":I
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3619
    :cond_c
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3620
    if-lez v5, :cond_e

    .line 3621
    const-string v6, "Power save whitelist app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3622
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3623
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_9
    if-ge v6, v5, :cond_d

    .line 3624
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3625
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3626
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3627
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3628
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3623
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 3630
    .end local v6    # "i":I
    :cond_d
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3633
    :cond_e
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3634
    if-lez v5, :cond_10

    .line 3635
    const-string v6, "App idle whitelist app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3636
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3637
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_a
    if-ge v6, v5, :cond_f

    .line 3638
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3639
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3640
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3641
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3642
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3637
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 3644
    .end local v6    # "i":I
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3647
    :cond_10
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3648
    if-lez v5, :cond_12

    .line 3649
    const-string v6, "Default restrict background whitelist uids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3650
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3651
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v5, :cond_11

    .line 3652
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3653
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3654
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3651
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 3656
    .end local v6    # "i":I
    :cond_11
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3659
    :cond_12
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3660
    if-lez v5, :cond_14

    .line 3661
    const-string v6, "Default restrict background whitelist uids revoked by users:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3662
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3663
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_c
    if-ge v6, v5, :cond_13

    .line 3664
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3665
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3666
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3663
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 3668
    .end local v6    # "i":I
    :cond_13
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3671
    :cond_14
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3672
    .local v6, "knownUids":Landroid/util/SparseBooleanArray;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3673
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3675
    const-string v7, "Status for all known UIDs:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3676
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3677
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    move v5, v7

    .line 3678
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_d
    if-ge v7, v5, :cond_17

    .line 3679
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 3680
    .local v8, "uid":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3681
    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3683
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v10, 0x13

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 3684
    .local v9, "state":I
    const-string v10, " state="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3685
    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3686
    const/4 v10, 0x2

    if-gt v9, v10, :cond_15

    .line 3687
    const-string v10, " (fg)"

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    .line 3689
    :cond_15
    const/4 v10, 0x5

    if-gt v9, v10, :cond_16

    .line 3690
    const-string v10, " (fg svc)"

    goto :goto_e

    :cond_16
    const-string v10, " (bg)"

    .line 3689
    :goto_e
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3693
    :goto_f
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 3694
    .local v10, "uidRules":I
    const-string v11, " rules="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3695
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3696
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3678
    .end local v8    # "uid":I
    .end local v9    # "state":I
    .end local v10    # "uidRules":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 3698
    .end local v7    # "i":I
    :cond_17
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3700
    const-string v7, "Status for just UIDs with rules:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3701
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3702
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move v5, v7

    .line 3703
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_10
    if-ge v7, v5, :cond_18

    .line 3704
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 3705
    .restart local v8    # "uid":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3706
    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3707
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 3708
    .local v9, "uidRules":I
    const-string v10, " rules="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3709
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3710
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3703
    .end local v8    # "uid":I
    .end local v9    # "uidRules":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 3712
    .end local v7    # "i":I
    :cond_18
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3714
    const-string v3, "Admin restricted uids for metered data:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3715
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3716
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3717
    .end local v5    # "size":I
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    if-ge v5, v3, :cond_19

    .line 3718
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3719
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3717
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 3721
    .end local v5    # "i":I
    :cond_19
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3723
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3724
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v5, v0}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3726
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v5, v0}, Lcom/android/server/net/NetworkPolicyLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3727
    .end local v3    # "size":I
    .end local v6    # "knownUids":Landroid/util/SparseBooleanArray;
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3728
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3729
    return-void

    .line 3727
    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v0    # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v1    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "writer":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_8
    throw v3

    .line 3728
    .restart local v0    # "fout":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v1    # "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "writer":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v3
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 8
    .param p1, "subscriber"    # Ljava/lang/String;

    .line 5336
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5338
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5339
    return-void

    .line 5343
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 5344
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 5345
    .local v1, "template":Landroid/net/NetworkTemplate;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 5346
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5347
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 5348
    iput-boolean v3, v5, Landroid/net/NetworkPolicy;->inferred:Z

    .line 5349
    invoke-virtual {v5}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 5345
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5352
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 5355
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 5357
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v4, "no_control_apps"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5359
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v2, v5

    .line 5360
    .local v6, "uid":I
    invoke-virtual {p0, v6, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 5359
    .end local v6    # "uid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5363
    :cond_3
    return-void
.end method

.method getAppIdleWhitelist()[I
    .locals 5

    .line 4269
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4271
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4272
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 4273
    .local v1, "len":I
    new-array v2, v1, [I

    .line 4274
    .local v2, "uids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 4275
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 4274
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4277
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 4278
    .end local v1    # "len":I
    .end local v2    # "uids":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I
    .locals 4
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackCycleDay"    # I

    .line 1615
    if-nez p1, :cond_0

    .line 1616
    return p2

    .line 1618
    :cond_0
    nop

    .line 1619
    const-string/jumbo v0, "monthly_data_cycle_day_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1620
    .local v0, "cycleDay":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1621
    return p2

    .line 1624
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1625
    .local v1, "cal":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 1626
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 1631
    :cond_2
    return v0

    .line 1627
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid date in CarrierConfigManager.KEY_MONTHLY_DATA_CYCLE_DAY_INT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    return p2
.end method

.method getHandlerForTesting()Landroid/os/Handler;
    .locals 1

    .line 1574
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .locals 5
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackLimitBytes"    # J

    .line 1680
    if-nez p1, :cond_0

    .line 1681
    return-wide p2

    .line 1683
    :cond_0
    nop

    .line 1684
    const-string v0, "data_limit_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1686
    .local v0, "limitBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    .line 1687
    return-wide v3

    .line 1688
    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    .line 1689
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v2

    return-wide v2

    .line 1690
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 1691
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value in CarrierConfigManager.KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return-wide p2

    .line 1696
    :cond_3
    return-wide v0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2879
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2891
    goto :goto_0

    .line 2884
    :catch_0
    move-exception v0

    .line 2885
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2889
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/NetworkPolicy;

    return-object v1

    .line 2893
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2894
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2895
    .local v1, "size":I
    new-array v2, v1, [Landroid/net/NetworkPolicy;

    .line 2896
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 2897
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v2, v3

    .line 2896
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2899
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0

    return-object v2

    .line 2900
    .end local v1    # "size":I
    .end local v2    # "policies":[Landroid/net/NetworkPolicy;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .locals 2
    .param p1, "state"    # Landroid/net/NetworkState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shame on UID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for calling the hidden API getNetworkQuotaInfo(). Shame!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    new-instance v0, Landroid/net/NetworkQuotaInfo;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo;-><init>()V

    return-object v0
.end method

.method public getRestrictBackground()Z
    .locals 3

    .line 3069
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3071
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3072
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v0

    return v1

    .line 3073
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .locals 8

    .line 3042
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3045
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3047
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3050
    .local v2, "token":J
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3052
    .local v4, "policy":I
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3053
    nop

    .line 3054
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 3056
    monitor-exit v1

    return v5

    .line 3058
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v7, :cond_1

    .line 3059
    monitor-exit v1

    return v6

    .line 3061
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 3062
    const/4 v5, 0x2

    goto :goto_0

    .line 3063
    :cond_2
    nop

    :goto_0
    monitor-exit v1

    .line 3061
    return v5

    .line 3052
    .end local v4    # "policy":I
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3053
    nop

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    throw v4

    .line 3064
    .end local v2    # "token":J
    .restart local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 3256
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3258
    const-string v0, "fw.fake_plan"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3259
    .local v4, "fake":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3261
    .local v0, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    const-string/jumbo v5, "month_hard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    const-wide/32 v8, 0x40000000

    const-wide v10, 0x140000000L

    if-eqz v5, :cond_0

    .line 3262
    nop

    .line 3263
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3264
    const-string v12, "G-Mobile"

    invoke-virtual {v5, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3265
    const/4 v12, 0x1

    invoke-virtual {v5, v10, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3268
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    const-wide/16 v14, 0x24

    invoke-virtual {v13, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3267
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3269
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3262
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3270
    nop

    .line 3271
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3272
    const-string v8, "G-Mobile Happy"

    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3273
    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3276
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3275
    const-wide v8, 0x140000000L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3277
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3270
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3278
    nop

    .line 3279
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3280
    const-string v6, "G-Mobile, Charged after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3281
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3284
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3283
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3285
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3278
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3286
    :cond_0
    const-string/jumbo v5, "month_soft"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x0

    const-wide/16 v11, 0x1

    const/4 v13, 0x2

    if-eqz v5, :cond_1

    .line 3287
    nop

    .line 3288
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3289
    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3290
    const-string v6, "Crazy unlimited bandwidth plan with incredibly long title that should be cut off to prevent UI from looking terrible"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3292
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3295
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3294
    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3296
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3287
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3297
    nop

    .line 3298
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3299
    const-string v6, "G-Mobile, Throttled after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3300
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3303
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3302
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3304
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3297
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3305
    nop

    .line 3306
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3307
    const-string v6, "G-Mobile, No data connection after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3308
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3311
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3310
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3312
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3305
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3314
    :cond_1
    const-string/jumbo v5, "month_over"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3315
    nop

    .line 3316
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3317
    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3318
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x180000000L

    .line 3321
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3320
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3322
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3315
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3323
    nop

    .line 3324
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3325
    const-string v6, "G-Mobile, Throttled after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3326
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3329
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3328
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3330
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3323
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3331
    nop

    .line 3332
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3333
    const-string v6, "G-Mobile, No data connection after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3334
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3337
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3336
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3338
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3331
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3340
    :cond_2
    const-string/jumbo v5, "month_none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3341
    nop

    .line 3342
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3343
    const-string v6, "G-Mobile"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3344
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3341
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3345
    :cond_3
    const-string/jumbo v5, "prepaid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/32 v6, 0x20000000

    const-wide/16 v11, 0x3

    const-wide/16 v8, 0xa

    const-wide/16 v13, 0x14

    if-eqz v5, :cond_4

    .line 3346
    nop

    .line 3347
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3348
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    .line 3347
    invoke-static {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3349
    const-string v8, "G-Mobile"

    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3350
    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3353
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3352
    const-wide/32 v8, 0x6400000

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3354
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3346
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3355
    :cond_4
    const-string/jumbo v5, "prepaid_crazy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3356
    nop

    .line 3357
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3358
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v15

    .line 3357
    invoke-static {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3359
    const-string v15, "G-Mobile Anytime"

    invoke-virtual {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3360
    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3363
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3362
    const-wide/32 v10, 0x6400000

    invoke-virtual {v5, v10, v11, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3364
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3356
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3365
    nop

    .line 3366
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3367
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3366
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3368
    const-string v6, "G-Mobile Nickel Nights"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3369
    const-string v6, "5\u00a2/GB between 1-5AM"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3370
    const/4 v6, 0x2

    const-wide v10, 0x140000000L

    invoke-virtual {v5, v10, v11, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0xf00000

    .line 3373
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v10

    const-wide/16 v11, 0x1e

    invoke-virtual {v10, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3372
    invoke-virtual {v5, v6, v7, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3374
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3365
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3375
    nop

    .line 3376
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3377
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3376
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3378
    const-string v6, "G-Mobile Bonus 3G"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3379
    const-string v6, "Unlimited 3G data"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3380
    const-wide/32 v6, 0x40000000

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x12c00000

    .line 3383
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3382
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3384
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3375
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3385
    :cond_5
    const-string/jumbo v5, "unlimited"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3386
    nop

    .line 3387
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3388
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3387
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3389
    const-string v6, "G-Mobile Awesome"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3390
    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x3200000

    .line 3393
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3392
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3394
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3386
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3396
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    return-object v5

    .line 3399
    .end local v0    # "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    :cond_7
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3403
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3404
    .local v0, "ownerPackage":Ljava/lang/String;
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 3405
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_8

    goto :goto_1

    .line 3408
    :cond_8
    const-string v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not returning plans because caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t match owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    const/4 v6, 0x0

    monitor-exit v5

    return-object v6

    .line 3406
    :cond_9
    :goto_1
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/telephony/SubscriptionPlan;

    monitor-exit v5

    return-object v6

    .line 3412
    .end local v0    # "ownerPackage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSubscriptionPlansOwner(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 3465
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3469
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3470
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3471
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3466
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .line 2729
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2732
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2733
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUidsWithPolicy(I)[I
    .locals 6
    .param p1, "policy"    # I

    .line 2738
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2740
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 2741
    .local v0, "uids":[I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2742
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2743
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 2744
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 2745
    .local v4, "uidPolicy":I
    if-nez p1, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    and-int v5, v4, p1

    if-eqz v5, :cond_2

    .line 2747
    :cond_1
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v0, v5

    .line 2742
    .end local v3    # "uid":I
    .end local v4    # "uidPolicy":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2750
    .end local v2    # "i":I
    :cond_3
    monitor-exit v1

    .line 2751
    return-object v0

    .line 2750
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .locals 5
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackWarningBytes"    # J

    .line 1647
    if-nez p1, :cond_0

    .line 1648
    return-wide p2

    .line 1650
    :cond_0
    nop

    .line 1651
    const-string v0, "data_warning_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1653
    .local v0, "warningBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    .line 1654
    return-wide v3

    .line 1655
    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    .line 1656
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v2

    return-wide v2

    .line 1657
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 1658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value in CarrierConfigManager.KEY_DATA_WARNING_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    return-wide p2

    .line 1664
    :cond_3
    return-wide v0
.end method

.method handleNetworkPoliciesUpdateAL(Z)V
    .locals 0
    .param p1, "shouldNormalizePolicies"    # Z

    .line 1744
    if-eqz p1, :cond_0

    .line 1745
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1747
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1748
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1752
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 1753
    return-void
.end method

.method handleUidChanged(IIJ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .line 4958
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "onUidStateChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4961
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4964
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger;->uidStateChanged(IIJ)V

    .line 4966
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(II)Z

    move-result v3

    .line 4968
    .local v3, "updated":Z
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4, p1, p3, p4}, Landroid/app/ActivityManagerInternal;->notifyNetworkPolicyRulesUpdated(IJ)V

    .line 4969
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4972
    if-eqz v3, :cond_0

    .line 4973
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4976
    .end local v3    # "updated":Z
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4977
    nop

    .line 4978
    return-void

    .line 4969
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uid":I
    .end local p2    # "procState":I
    .end local p3    # "procStateSeq":J
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4976
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "procState":I
    .restart local p3    # "procStateSeq":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4977
    throw v2
.end method

.method handleUidGone(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 4981
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "onUidGone"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4984
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4985
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)Z

    move-result v3

    .line 4986
    .local v3, "updated":Z
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4989
    if-eqz v3, :cond_0

    .line 4990
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4993
    .end local v3    # "updated":Z
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4994
    nop

    .line 4995
    return-void

    .line 4986
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uid":I
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4993
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4994
    throw v2
.end method

.method isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 3744
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3745
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x13

    .line 3746
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3745
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3747
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isUidIdle(I)Z
    .locals 8
    .param p1, "uid"    # I

    .line 4284
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4285
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4287
    monitor-exit v0

    return v2

    .line 4289
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4294
    const-string v0, "NetworkPolicy"

    const-string/jumbo v2, "isUidIdle() function failed due to mUsageStats is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4295
    return v1

    .line 4299
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4300
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 4302
    .local v3, "userId":I
    if-eqz v0, :cond_3

    .line 4303
    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    .line 4304
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v7, v6, p1, v3}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4305
    return v2

    .line 4303
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4309
    :cond_3
    return v1

    .line 4289
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v3    # "userId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isUidNetworkingBlocked(IZ)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "isNetworkMetered"    # Z

    .line 5367
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 5369
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.OBSERVE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5372
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5373
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 5374
    .local v3, "uidRules":I
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 5375
    .local v4, "isBackgroundRestricted":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5376
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-static {p1, v3, p2, v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidNetworkingBlockedInternal(IIZZLcom/android/server/net/NetworkPolicyLogger;)Z

    move-result v2

    .line 5379
    .local v2, "ret":Z
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 5381
    return v2

    .line 5375
    .end local v2    # "ret":Z
    .end local v3    # "uidRules":I
    .end local v4    # "isBackgroundRestricted":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public synthetic lambda$networkScoreAndNetworkManagementServiceReady$0$NetworkPolicyManagerService(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 927
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;
    .locals 3

    .line 925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    .line 926
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v1

    .line 927
    .local v0, "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 928
    return-object v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3734
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3736
    return-void
.end method

.method public opUpdateRestrictionRulesForUidUL(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 4359
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    .line 4360
    return-void
.end method

.method public opUpdateRulesForRestrictPowerUL()V
    .locals 0

    .line 4112
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 4113
    return-void
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .line 2941
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 2942
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2943
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2945
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 2946
    .local v4, "policy":Landroid/net/NetworkPolicy;
    if-eqz v4, :cond_3

    .line 2950
    const/16 v5, 0x22

    if-eq p2, v5, :cond_2

    const/16 v5, 0x23

    if-eq p2, v5, :cond_1

    const/16 v5, 0x2d

    if-ne p2, v5, :cond_0

    .line 2958
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 2959
    goto :goto_0

    .line 2961
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unexpected type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "currentTime":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "type":I
    throw v5

    .line 2955
    .restart local v0    # "currentTime":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "type":I
    :cond_1
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 2956
    goto :goto_0

    .line 2952
    :cond_2
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 2953
    nop

    .line 2964
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 2965
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2966
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2967
    return-void

    .line 2947
    .restart local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    :try_start_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to find policy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "currentTime":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "type":I
    throw v5

    .line 2965
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .restart local v0    # "currentTime":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "type":I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "currentTime":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "type":I
    :try_start_4
    throw v4

    .line 2966
    .restart local v0    # "currentTime":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "type":I
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 2842
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2843
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2844
    return-void
.end method

.method public removeUidPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2662
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2668
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2670
    .local v1, "oldPolicy":I
    not-int v2, p2

    and-int p2, v1, v2

    .line 2671
    if-eq v1, p2, :cond_0

    .line 2672
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2673
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2675
    .end local v1    # "oldPolicy":I
    :cond_0
    monitor-exit v0

    .line 2676
    return-void

    .line 2675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2665
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeUserStateUL(IZZ)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "writePolicy"    # Z
    .param p3, "updateGlobalRules"    # Z

    .line 2761
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->removingUserState(I)V

    .line 2762
    const/4 v0, 0x0

    .line 2765
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2766
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2767
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 2768
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 2769
    const/4 v0, 0x1

    .line 2765
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2774
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    new-array v3, v1, [I

    .line 2775
    .local v3, "uids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 2776
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2777
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 2778
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 2775
    .end local v5    # "uid":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2782
    .end local v4    # "i":I
    :cond_3
    array-length v4, v3

    if-lez v4, :cond_5

    .line 2783
    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_4

    aget v5, v3, v1

    .line 2784
    .restart local v5    # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2783
    .end local v5    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2786
    :cond_4
    const/4 v0, 0x1

    .line 2788
    :cond_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2789
    if-eqz p3, :cond_6

    .line 2790
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    goto :goto_3

    .line 2795
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 2792
    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    if-eqz v0, :cond_7

    .line 2793
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2795
    :cond_7
    monitor-exit v1

    .line 2796
    return v0

    .line 2795
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setAppIdleWhitelist(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "shouldWhitelist"    # Z

    .line 4242
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4244
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 4247
    monitor-exit v0

    return-void

    .line 4250
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4252
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->appIdleWlChanged(IZ)V

    .line 4253
    if-eqz p2, :cond_1

    .line 4254
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 4256
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4258
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4259
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4261
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4262
    nop

    .line 4263
    .end local v1    # "token":J
    monitor-exit v0

    .line 4264
    return-void

    .line 4261
    .restart local v1    # "token":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4262
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uid":I
    .end local p2    # "shouldWhitelist":Z
    throw v3

    .line 4263
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "shouldWhitelist":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method setDebugUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 3739
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->setDebugUid(I)V

    .line 3740
    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 3078
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setDeviceIdleMode"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3081
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3082
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-ne v3, p1, :cond_0

    .line 3083
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3105
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3083
    return-void

    .line 3085
    :cond_0
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 3086
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyLogger;->deviceIdleModeEnabled(Z)V

    .line 3087
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v3, :cond_1

    .line 3091
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-static {v3}, Lcom/android/server/net/OpNetworkPolicyInjector;->setDeviceIdleMode(Z)V

    .line 3096
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 3098
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3099
    if-eqz p1, :cond_2

    .line 3100
    :try_start_3
    const-string/jumbo v2, "net"

    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_0

    .line 3102
    :cond_2
    const-string/jumbo v2, "net"

    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3105
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3106
    nop

    .line 3107
    return-void

    .line 3098
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "enabled":Z
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3105
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "enabled":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3106
    throw v2
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 5
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 2856
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2860
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2861
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2862
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 2863
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 2864
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2865
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2867
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2868
    nop

    .line 2869
    return-void

    .line 2864
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "policies":[Landroid/net/NetworkPolicy;
    :try_start_5
    throw v4

    .line 2865
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "policies":[Landroid/net/NetworkPolicy;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "policies":[Landroid/net/NetworkPolicy;
    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2867
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "policies":[Landroid/net/NetworkPolicy;
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2868
    throw v2
.end method

.method public setRestrictBackground(Z)V
    .locals 8
    .param p1, "restrictBackground"    # Z

    .line 2971
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setRestrictBackground"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2973
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2975
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2977
    .local v3, "token":J
    :try_start_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2978
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    .line 2979
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2981
    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2982
    nop

    .line 2984
    .end local v2    # "callingUid":I
    .end local v3    # "token":J
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2985
    nop

    .line 2986
    return-void

    .line 2979
    .restart local v2    # "callingUid":I
    .restart local v3    # "token":J
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "callingUid":I
    .end local v3    # "token":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "restrictBackground":Z
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2981
    .restart local v2    # "callingUid":I
    .restart local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "restrictBackground":Z
    :catchall_1
    move-exception v5

    :try_start_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2982
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "restrictBackground":Z
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2984
    .end local v2    # "callingUid":I
    .end local v3    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "restrictBackground":Z
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2985
    throw v2
.end method

.method public setRestrictBackgroundByEsport(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 2826
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2827
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isInEsportRestrictBackground:Z

    .line 2828
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v1, :cond_0

    .line 2829
    const-string v1, "NetworkPolicy"

    const-string v2, "FnaticMode exit while in BatterySaveMode, so refix this... "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    const/4 p1, 0x1

    .line 2832
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 2833
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 2834
    monitor-exit v0

    .line 2835
    return-void

    .line 2834
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSubscriptionOverride(IIIJLjava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "overrideMask"    # I
    .param p3, "overrideValue"    # I
    .param p4, "timeoutMillis"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;

    .line 3477
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p6}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3480
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3481
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3482
    .local v1, "plan":Landroid/telephony/SubscriptionPlan;
    if-eqz v1, :cond_3

    .line 3483
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 3487
    .end local v1    # "plan":Landroid/telephony/SubscriptionPlan;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3491
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "netpolicy_override_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    .line 3493
    .local v0, "overrideEnabled":Z
    if-nez v0, :cond_1

    if-nez p3, :cond_2

    .line 3494
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3494
    const/16 v4, 0x10

    invoke-virtual {v2, v4, p2, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3496
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_2

    .line 3497
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3498
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3497
    invoke-virtual {v2, v4, p2, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3501
    :cond_2
    return-void

    .line 3484
    .end local v0    # "overrideEnabled":Z
    .restart local v1    # "plan":Landroid/telephony/SubscriptionPlan;
    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must provide valid SubscriptionPlan to enable overriding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "subId":I
    .end local p2    # "overrideMask":I
    .end local p3    # "overrideValue":I
    .end local p4    # "timeoutMillis":J
    .end local p6    # "callingPackage":Ljava/lang/String;
    throw v2

    .line 3487
    .end local v1    # "plan":Landroid/telephony/SubscriptionPlan;
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "subId":I
    .restart local p2    # "overrideMask":I
    .restart local p3    # "overrideValue":I
    .restart local p4    # "timeoutMillis":J
    .restart local p6    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;Ljava/lang/String;)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "plans"    # [Landroid/telephony/SubscriptionPlan;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3417
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3418
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanValidity([Landroid/telephony/SubscriptionPlan;)V

    .line 3420
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p2, v2

    .line 3421
    .local v3, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3420
    .end local v3    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3424
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3426
    .local v2, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3427
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3428
    :try_start_2
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3429
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3431
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3432
    .local v5, "subscriberId":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 3433
    invoke-direct {p0, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 3434
    invoke-direct {p0, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    goto :goto_1

    .line 3436
    :cond_1
    const-string v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing subscriberId for subId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    :goto_1
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3440
    .end local v5    # "subscriberId":Ljava/lang/String;
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3441
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3443
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3444
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3445
    const-string v4, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3446
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3447
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x13

    .line 3448
    invoke-virtual {v5, v6, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3447
    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3450
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3451
    nop

    .line 3452
    return-void

    .line 3440
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "subId":I
    .end local p2    # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_6
    throw v1

    .line 3441
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "subId":I
    .restart local p2    # "plans":[Landroid/telephony/SubscriptionPlan;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "subId":I
    .end local p2    # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3450
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "subId":I
    .restart local p2    # "plans":[Landroid/telephony/SubscriptionPlan;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_2
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3451
    throw v0
.end method

.method setSubscriptionPlansOwner(ILjava/lang/String;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3459
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sub_plan_owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3461
    return-void
.end method

.method public setUidPolicy(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2623
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2628
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2629
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2631
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2632
    .local v3, "oldPolicy":I
    if-eq v3, p2, :cond_0

    .line 2633
    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2634
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2637
    .end local v3    # "oldPolicy":I
    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2638
    nop

    .line 2639
    .end local v1    # "token":J
    monitor-exit v0

    .line 2640
    return-void

    .line 2637
    .restart local v1    # "token":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2638
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uid":I
    .end local p2    # "policy":I
    throw v3

    .line 2639
    .end local v1    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "policy":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 2626
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWifiMeteredOverride(Ljava/lang/String;I)V
    .locals 7
    .param p1, "networkId"    # Ljava/lang/String;
    .param p2, "meteredOverride"    # I

    .line 3111
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3114
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 3115
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 3116
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 3117
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3118
    iput p2, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 3119
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3121
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 3123
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3124
    nop

    .line 3125
    return-void

    .line 3123
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3124
    throw v2
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 2930
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2932
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2934
    .local v0, "token":J
    const/16 v2, 0x23

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2936
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2937
    nop

    .line 2938
    return-void

    .line 2936
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2937
    throw v2
.end method

.method public systemReady(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 934
    const-wide/16 v0, 0x1e

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    nop

    .line 941
    return-void

    .line 935
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service NetworkPolicy init timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v0

    .line 938
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 939
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service NetworkPolicy init interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 2850
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2851
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2852
    return-void
.end method

.method updateNetworkEnabledNL()V
    .locals 21

    .line 1761
    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v7, "NetworkPolicy"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateNetworkEnabledNL()"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_0
    const-wide/32 v8, 0x200000

    const-string/jumbo v0, "updateNetworkEnabledNL"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1767
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v10

    .line 1769
    .local v10, "startTime":J
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v12, 0x1

    sub-int/2addr v0, v12

    move v13, v0

    .local v13, "i":I
    :goto_0
    const/4 v14, 0x0

    if-ltz v13, :cond_7

    .line 1770
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/net/NetworkPolicy;

    .line 1772
    .local v15, "policy":Landroid/net/NetworkPolicy;
    iget-wide v0, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 1777
    :cond_1
    nop

    .line 1778
    invoke-static {v15}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/util/Pair;

    .line 1779
    .local v4, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 1780
    .local v2, "start":J
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 1781
    .local v0, "end":J
    iget-object v5, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-wide/from16 v16, v0

    .end local v0    # "end":J
    .local v16, "end":J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v18, v2

    .end local v2    # "start":J
    .local v18, "start":J
    move-object/from16 v20, v4

    .end local v4    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v20, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 1784
    .local v0, "totalBytes":J
    invoke-virtual {v15, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    move-wide/from16 v4, v18

    .end local v18    # "start":J
    .local v4, "start":J
    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    move v2, v12

    goto :goto_1

    .end local v4    # "start":J
    .restart local v18    # "start":J
    :cond_2
    move-wide/from16 v4, v18

    .end local v18    # "start":J
    .restart local v4    # "start":J
    :cond_3
    move v2, v14

    .line 1786
    .local v2, "overLimitWithoutSnooze":Z
    :goto_1
    if-nez v2, :cond_4

    move v14, v12

    :cond_4
    move v3, v14

    .line 1789
    .local v3, "networkEnabled":Z
    if-nez v3, :cond_5

    .line 1790
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateNetworkEnabledNL: networkEnabled "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " totaluseBytes "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " from starttime: "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " to endtime: "

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v16

    .end local v16    # "end":J
    .local v8, "end":J
    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1789
    .end local v8    # "end":J
    .restart local v16    # "end":J
    :cond_5
    move-wide/from16 v8, v16

    .line 1795
    .end local v16    # "end":J
    .restart local v8    # "end":J
    :goto_2
    iget-object v14, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_4

    .line 1773
    .end local v0    # "totalBytes":J
    .end local v2    # "overLimitWithoutSnooze":Z
    .end local v3    # "networkEnabled":Z
    .end local v4    # "start":J
    .end local v8    # "end":J
    .end local v20    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    :cond_6
    :goto_3
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 1774
    nop

    .line 1769
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    :goto_4
    add-int/lit8 v13, v13, -0x1

    const-wide/32 v8, 0x200000

    goto/16 :goto_0

    .line 1798
    .end local v13    # "i":I
    :cond_7
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, v14, v10, v11}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1799
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1800
    return-void
.end method

.method updateNetworkRulesNL()V
    .locals 44

    .line 1920
    move-object/from16 v7, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v8, "NetworkPolicy"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateNetworkRulesNL()"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_0
    const-wide/32 v9, 0x200000

    const-string/jumbo v0, "updateNetworkRulesNL"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1925
    :try_start_0
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1929
    .local v0, "states":[Landroid/net/NetworkState;
    nop

    .line 1933
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 1934
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v1

    .line 1935
    .local v11, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    array-length v1, v0

    const/4 v12, 0x0

    move v2, v12

    :goto_0
    const/4 v13, 0x1

    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1936
    .local v3, "state":Landroid/net/NetworkState;
    iget-object v4, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-eqz v4, :cond_1

    .line 1937
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    iget-object v5, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-direct {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->parseSubId(Landroid/net/NetworkState;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1939
    :cond_1
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1943
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v13, v12}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;ZI)Landroid/net/NetworkIdentity;

    move-result-object v4

    .line 1945
    .local v4, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v11, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    .end local v3    # "state":Landroid/net/NetworkState;
    .end local v4    # "ident":Landroid/net/NetworkIdentity;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1949
    :cond_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v1

    .line 1950
    .local v14, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide v1, 0x7fffffffffffffffL

    .line 1954
    .local v1, "lowestRule":J
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v3

    .line 1955
    .local v15, "matchingIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v13

    move-wide/from16 v16, v1

    move v5, v3

    .end local v1    # "lowestRule":J
    .local v5, "i":I
    .local v16, "lowestRule":J
    :goto_1
    const-wide/16 v18, -0x1

    if-ltz v5, :cond_11

    .line 1956
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/net/NetworkPolicy;

    .line 1959
    .local v6, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {v15}, Landroid/util/ArraySet;->clear()V

    .line 1960
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v13

    .local v1, "j":I
    :goto_2
    if-ltz v1, :cond_5

    .line 1961
    iget-object v2, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v3, v20

    check-cast v3, Landroid/net/NetworkIdentity;

    invoke-virtual {v2, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1962
    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkState;

    invoke-static {v15, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 1960
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1966
    .end local v1    # "j":I
    :cond_5
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v1, :cond_6

    .line 1967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to ifaces "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_6
    iget-wide v1, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_7

    move v1, v13

    goto :goto_3

    :cond_7
    move v1, v12

    :goto_3
    move/from16 v20, v1

    .line 1971
    .local v20, "hasWarning":Z
    iget-wide v1, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_8

    move v1, v13

    goto :goto_4

    :cond_8
    move v1, v12

    :goto_4
    move/from16 v18, v1

    .line 1972
    .local v18, "hasLimit":Z
    if-nez v18, :cond_a

    iget-boolean v1, v6, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v25, v5

    move-object v12, v6

    goto/16 :goto_9

    .line 1974
    :cond_a
    :goto_5
    if-eqz v18, :cond_c

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1975
    nop

    .line 1976
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/util/Pair;

    .line 1977
    .local v3, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v21

    .line 1978
    .local v21, "start":J
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v23

    .line 1979
    .local v23, "end":J
    iget-object v2, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v1, p0

    move-object/from16 v19, v3

    const-wide/16 v9, 0x1

    .end local v3    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v19, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    move-wide/from16 v3, v21

    move/from16 v25, v5

    move-object v12, v6

    .end local v5    # "i":I
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    .local v12, "policy":Landroid/net/NetworkPolicy;
    .local v25, "i":I
    move-wide/from16 v5, v23

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    .line 1981
    .local v1, "totalBytes":J
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v3, v3, v21

    if-ltz v3, :cond_b

    .line 1984
    const-wide v3, 0x7fffffffffffffffL

    .local v3, "quotaBytes":J
    goto :goto_6

    .line 1989
    .end local v3    # "quotaBytes":J
    :cond_b
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long/2addr v3, v1

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 1991
    .end local v1    # "totalBytes":J
    .end local v19    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v21    # "start":J
    .end local v23    # "end":J
    .restart local v3    # "quotaBytes":J
    :goto_6
    goto :goto_7

    .line 1974
    .end local v3    # "quotaBytes":J
    .end local v12    # "policy":Landroid/net/NetworkPolicy;
    .end local v25    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "policy":Landroid/net/NetworkPolicy;
    :cond_c
    move/from16 v25, v5

    move-object v12, v6

    .line 1994
    .end local v5    # "i":I
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    .restart local v12    # "policy":Landroid/net/NetworkPolicy;
    .restart local v25    # "i":I
    const-wide v3, 0x7fffffffffffffffL

    .line 1997
    .restart local v3    # "quotaBytes":J
    :goto_7
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-le v1, v13, :cond_d

    .line 1999
    const-string/jumbo v1, "shared quota unsupported; generating rule for each iface"

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    :cond_d
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v13

    .local v1, "j":I
    :goto_8
    if-ltz v1, :cond_e

    .line 2003
    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2004
    .local v2, "iface":Ljava/lang/String;
    invoke-direct {v7, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 2005
    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2002
    .end local v2    # "iface":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2010
    .end local v1    # "j":I
    .end local v3    # "quotaBytes":J
    :cond_e
    :goto_9
    if-eqz v20, :cond_f

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v16

    if-gez v1, :cond_f

    .line 2011
    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v16, v1

    .line 2013
    :cond_f
    if-eqz v18, :cond_10

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v16

    if-gez v1, :cond_10

    .line 2014
    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v16, v1

    .line 1955
    .end local v12    # "policy":Landroid/net/NetworkPolicy;
    .end local v18    # "hasLimit":Z
    .end local v20    # "hasWarning":Z
    :cond_10
    add-int/lit8 v5, v25, -0x1

    const-wide/32 v9, 0x200000

    const/4 v12, 0x0

    .end local v25    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_1

    :cond_11
    move/from16 v25, v5

    const-wide/16 v9, 0x1

    .line 2020
    .end local v5    # "i":I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    const-wide v5, 0x7fffffffffffffffL

    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 2021
    .local v3, "state":Landroid/net/NetworkState;
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_13

    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v3, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v8, 0xb

    .line 2022
    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2023
    invoke-virtual {v15}, Landroid/util/ArraySet;->clear()V

    .line 2024
    invoke-static {v15, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 2025
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v13

    .local v4, "j":I
    :goto_b
    if-ltz v4, :cond_13

    .line 2026
    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2027
    .local v8, "iface":Ljava/lang/String;
    invoke-virtual {v14, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 2028
    invoke-direct {v7, v8, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 2029
    invoke-virtual {v14, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2025
    .end local v8    # "iface":Ljava/lang/String;
    :cond_12
    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    .line 2020
    .end local v3    # "state":Landroid/net/NetworkState;
    .end local v4    # "j":I
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2036
    :cond_14
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v13

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_16

    .line 2037
    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2038
    .restart local v2    # "iface":Ljava/lang/String;
    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 2039
    invoke-direct {v7, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuotaAsync(Ljava/lang/String;)V

    .line 2036
    .end local v2    # "iface":Ljava/lang/String;
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 2042
    .end local v1    # "i":I
    :cond_16
    iput-object v14, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 2044
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2045
    .local v8, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "netpolicy_quota_enabled"

    invoke-static {v8, v1, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_d

    :cond_17
    const/4 v13, 0x0

    :goto_d
    move v12, v13

    .line 2047
    .local v12, "quotaEnabled":Z
    sget-wide v1, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    const-string/jumbo v3, "netpolicy_quota_unlimited"

    invoke-static {v8, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v21

    .line 2049
    .local v21, "quotaUnlimited":J
    const v1, 0x3dcccccd    # 0.1f

    const-string/jumbo v2, "netpolicy_quota_limited"

    invoke-static {v8, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v13

    .line 2053
    .local v13, "quotaLimited":F
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    .line 2054
    array-length v3, v0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1e

    aget-object v2, v0, v4

    .line 2055
    .local v2, "state":Landroid/net/NetworkState;
    if-nez v12, :cond_18

    move-object/from16 v37, v0

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    move-object/from16 v25, v8

    goto/16 :goto_10

    .line 2056
    :cond_18
    iget-object v1, v2, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-nez v1, :cond_19

    move-object/from16 v37, v0

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    move-object/from16 v25, v8

    goto/16 :goto_10

    .line 2057
    :cond_19
    iget-object v1, v2, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v1

    .line 2058
    .local v1, "subId":I
    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v20

    .line 2059
    .local v20, "plan":Landroid/telephony/SubscriptionPlan;
    if-nez v20, :cond_1a

    move-object/from16 v37, v0

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    move-object/from16 v25, v8

    goto/16 :goto_10

    .line 2062
    :cond_1a
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v23

    .line 2063
    .local v23, "limitBytes":J
    iget-object v9, v2, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v10, 0x12

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 2065
    const-wide/16 v9, 0x0

    move-object/from16 v37, v0

    move v0, v1

    move-object/from16 v30, v2

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    move-object/from16 v25, v8

    .local v9, "quotaBytes":J
    goto/16 :goto_f

    .line 2066
    .end local v9    # "quotaBytes":J
    :cond_1b
    cmp-long v9, v23, v18

    if-nez v9, :cond_1c

    .line 2067
    const-wide/16 v9, -0x1

    move-object/from16 v37, v0

    move v0, v1

    move-object/from16 v30, v2

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    move-object/from16 v25, v8

    .restart local v9    # "quotaBytes":J
    goto/16 :goto_f

    .line 2068
    .end local v9    # "quotaBytes":J
    :cond_1c
    cmp-long v9, v23, v5

    if-nez v9, :cond_1d

    .line 2070
    move-wide/from16 v9, v21

    move-object/from16 v37, v0

    move v0, v1

    move-object/from16 v30, v2

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    move-object/from16 v25, v8

    .restart local v9    # "quotaBytes":J
    goto/16 :goto_f

    .line 2073
    .end local v9    # "quotaBytes":J
    :cond_1d
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Range;

    .line 2074
    .local v9, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/time/ZonedDateTime;

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v26

    .line 2075
    .local v26, "start":J
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/time/ZonedDateTime;

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v28

    .line 2076
    .local v28, "end":J
    iget-object v10, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v10}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v10

    .line 2077
    .local v10, "now":Ljava/time/Instant;
    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v30

    check-cast v30, Ljava/time/ZonedDateTime;

    invoke-virtual/range {v30 .. v30}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v5

    invoke-static {v10, v5}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 2078
    invoke-virtual {v5, v6}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 2079
    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v33

    .line 2080
    .local v33, "startOfDay":J
    iget-object v5, v2, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 2081
    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 2080
    move v6, v1

    .end local v1    # "subId":I
    .local v6, "subId":I
    move-object/from16 v1, p0

    move-object/from16 v30, v2

    .end local v2    # "state":Landroid/net/NetworkState;
    .local v30, "state":Landroid/net/NetworkState;
    move-object v2, v5

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v3, v26

    move-object/from16 v37, v0

    move v0, v6

    const-wide v31, 0x7fffffffffffffffL

    .end local v6    # "subId":I
    .local v0, "subId":I
    .local v37, "states":[Landroid/net/NetworkState;
    move-wide/from16 v5, v33

    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    .line 2083
    .local v1, "totalBytes":J
    sub-long v3, v23, v1

    .line 2085
    .local v3, "remainingBytes":J
    nop

    .line 2086
    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    sub-long v5, v28, v5

    move-wide/from16 v38, v1

    const-wide/16 v1, 0x1

    .end local v1    # "totalBytes":J
    .local v38, "totalBytes":J
    sub-long/2addr v5, v1

    move-object/from16 v25, v8

    .end local v8    # "cr":Landroid/content/ContentResolver;
    .local v25, "cr":Landroid/content/ContentResolver;
    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v40

    div-long v5, v5, v40

    add-long/2addr v5, v1

    .line 2088
    .local v5, "remainingDays":J
    div-long v1, v3, v5

    long-to-float v1, v1

    mul-float/2addr v1, v13

    float-to-long v1, v1

    move-wide/from16 v42, v3

    const-wide/16 v3, 0x0

    .end local v3    # "remainingBytes":J
    .local v42, "remainingBytes":J
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v9, v1

    .line 2091
    .end local v5    # "remainingDays":J
    .end local v10    # "now":Ljava/time/Instant;
    .end local v26    # "start":J
    .end local v28    # "end":J
    .end local v33    # "startOfDay":J
    .end local v38    # "totalBytes":J
    .end local v42    # "remainingBytes":J
    .local v9, "quotaBytes":J
    :goto_f
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2054
    .end local v0    # "subId":I
    .end local v9    # "quotaBytes":J
    .end local v20    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v23    # "limitBytes":J
    .end local v30    # "state":Landroid/net/NetworkState;
    :goto_10
    add-int/lit8 v4, v36, 0x1

    move-object/from16 v8, v25

    move-wide/from16 v5, v31

    move/from16 v3, v35

    move-object/from16 v0, v37

    const-wide/16 v9, 0x1

    goto/16 :goto_e

    .line 2094
    .end local v25    # "cr":Landroid/content/ContentResolver;
    .end local v37    # "states":[Landroid/net/NetworkState;
    .local v0, "states":[Landroid/net/NetworkState;
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    :cond_1e
    move-object/from16 v37, v0

    .end local v0    # "states":[Landroid/net/NetworkState;
    .restart local v37    # "states":[Landroid/net/NetworkState;
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2095
    .local v0, "meteredIfaces":[Ljava/lang/String;
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2097
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2099
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2100
    return-void

    .line 1926
    .end local v0    # "meteredIfaces":[Ljava/lang/String;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v11    # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .end local v12    # "quotaEnabled":Z
    .end local v13    # "quotaLimited":F
    .end local v14    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v15    # "matchingIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "lowestRule":J
    .end local v21    # "quotaUnlimited":J
    .end local v37    # "states":[Landroid/net/NetworkState;
    :catch_0
    move-exception v0

    .line 1928
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method updateNetworks()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1564
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    .line 1565
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1566
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;

    invoke-direct {v2, v0}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1569
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1570
    return-void
.end method

.method updateNotificationsNL()V
    .locals 38

    .line 1179
    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v7, "NetworkPolicy"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateNotificationsNL()"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_0
    const-wide/32 v8, 0x200000

    const-string/jumbo v0, "updateNotificationsNL"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1183
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v10, v0

    .line 1184
    .local v10, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;>;"
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1190
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 1191
    .local v11, "now":J
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    move v14, v0

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_f

    .line 1192
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/net/NetworkPolicy;

    .line 1193
    .local v15, "policy":Landroid/net/NetworkPolicy;
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v4

    .line 1196
    .local v4, "subId":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    move/from16 v28, v14

    goto/16 :goto_6

    .line 1197
    :cond_1
    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_2

    move/from16 v28, v14

    goto/16 :goto_6

    .line 1199
    :cond_2
    nop

    .line 1200
    invoke-static {v15}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/Pair;

    .line 1201
    .local v5, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    .line 1202
    .local v16, "cycleStart":J
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    .line 1203
    .local v18, "cycleEnd":J
    iget-object v1, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    move-wide/from16 v2, v16

    move v8, v4

    move-object v9, v5

    .end local v4    # "subId":I
    .end local v5    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v8, "subId":I
    .local v9, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v2

    .line 1206
    .local v2, "totalBytes":J
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v8}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1207
    .local v1, "config":Landroid/os/PersistableBundle;
    invoke-static {v1}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1208
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "isConfigForIdentifiedCarrier returned false"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_3
    return-void

    .line 1216
    :cond_4
    const-string v0, "data_warning_notification_bool"

    invoke-static {v1, v0, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v20

    .line 1218
    .local v20, "notifyWarning":Z
    const-string v0, "data_limit_notification_bool"

    invoke-static {v1, v0, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v21

    .line 1220
    .local v21, "notifyLimit":Z
    const-string v0, "data_rapid_notification_bool"

    invoke-static {v1, v0, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v22

    .line 1224
    .local v22, "notifyRapid":Z
    const/16 v23, 0x0

    if-eqz v20, :cond_6

    .line 1225
    invoke-virtual {v15, v2, v3}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v15, v2, v3}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1226
    iget-wide v4, v15, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v4, v16

    if-ltz v0, :cond_5

    move v0, v13

    goto :goto_1

    :cond_5
    move/from16 v0, v23

    .line 1227
    .local v0, "snoozedThisCycle":Z
    :goto_1
    if-nez v0, :cond_6

    .line 1229
    const-string v4, "DataUsageAlarm due to TYPE_WARNING"

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    .end local v0    # "snoozedThisCycle":Z
    :cond_6
    if-eqz v21, :cond_a

    .line 1239
    invoke-virtual {v15, v2, v3}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1240
    iget-wide v4, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v4, v16

    if-ltz v0, :cond_7

    move v0, v13

    goto :goto_2

    :cond_7
    move/from16 v0, v23

    .line 1241
    .restart local v0    # "snoozedThisCycle":Z
    :goto_2
    if-eqz v0, :cond_8

    .line 1243
    const-string/jumbo v4, "set DataUsageAlarm due to TYPE_LIMIT_SNOOZED"

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1248
    :cond_8
    const-string v4, "DataUsageAlarm due to TYPE_LIMIT"

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v4, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitNL(Landroid/net/NetworkTemplate;)V

    .line 1254
    .end local v0    # "snoozedThisCycle":Z
    :goto_3
    goto :goto_4

    .line 1255
    :cond_9
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V

    .line 1261
    :cond_a
    :goto_4
    if-eqz v22, :cond_d

    iget-wide v4, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v24, -0x1

    cmp-long v0, v4, v24

    if-eqz v0, :cond_d

    .line 1262
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v24

    .line 1263
    .local v24, "recentDuration":J
    sub-long v26, v11, v24

    .line 1264
    .local v26, "recentStart":J
    move-wide v4, v11

    .line 1265
    .local v4, "recentEnd":J
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v29, v1

    .end local v1    # "config":Landroid/os/PersistableBundle;
    .local v29, "config":Landroid/os/PersistableBundle;
    move-object/from16 v1, v28

    move-wide/from16 v30, v2

    .end local v2    # "totalBytes":J
    .local v30, "totalBytes":J
    move-wide/from16 v2, v26

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 1267
    .local v0, "recentBytes":J
    sub-long v2, v18, v16

    .line 1268
    .local v2, "cycleDuration":J
    mul-long v32, v0, v2

    move/from16 v28, v14

    .end local v14    # "i":I
    .local v28, "i":I
    div-long v13, v32, v24

    .line 1269
    .local v13, "projectedBytes":J
    move-wide/from16 v32, v2

    .end local v2    # "cycleDuration":J
    .local v32, "cycleDuration":J
    iget-wide v2, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v34, 0x3

    mul-long v2, v2, v34

    const-wide/16 v34, 0x2

    div-long v2, v2, v34

    .line 1271
    .local v2, "alertBytes":J
    sget-boolean v34, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v34, :cond_b

    .line 1272
    move-wide/from16 v34, v4

    .end local v4    # "recentEnd":J
    .local v34, "recentEnd":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rapid usage considering recent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " projected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " alert "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1271
    .end local v34    # "recentEnd":J
    .restart local v4    # "recentEnd":J
    :cond_b
    move-wide/from16 v34, v4

    .line 1276
    .end local v4    # "recentEnd":J
    .restart local v34    # "recentEnd":J
    :goto_5
    iget-wide v4, v15, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    const-wide/32 v36, 0x5265c00

    sub-long v36, v11, v36

    cmp-long v4, v4, v36

    if-ltz v4, :cond_c

    const/16 v23, 0x1

    :cond_c
    move/from16 v4, v23

    .line 1278
    .local v4, "snoozedRecently":Z
    cmp-long v5, v13, v2

    if-lez v5, :cond_e

    if-nez v4, :cond_e

    .line 1283
    const-string/jumbo v5, "set DataUsageAlarm due to TYPE_RAPID"

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1261
    .end local v0    # "recentBytes":J
    .end local v4    # "snoozedRecently":Z
    .end local v13    # "projectedBytes":J
    .end local v24    # "recentDuration":J
    .end local v26    # "recentStart":J
    .end local v28    # "i":I
    .end local v29    # "config":Landroid/os/PersistableBundle;
    .end local v30    # "totalBytes":J
    .end local v32    # "cycleDuration":J
    .end local v34    # "recentEnd":J
    .restart local v1    # "config":Landroid/os/PersistableBundle;
    .local v2, "totalBytes":J
    .restart local v14    # "i":I
    :cond_d
    move-object/from16 v29, v1

    move-wide/from16 v30, v2

    move/from16 v28, v14

    .line 1191
    .end local v1    # "config":Landroid/os/PersistableBundle;
    .end local v2    # "totalBytes":J
    .end local v8    # "subId":I
    .end local v9    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v14    # "i":I
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    .end local v16    # "cycleStart":J
    .end local v18    # "cycleEnd":J
    .end local v20    # "notifyWarning":Z
    .end local v21    # "notifyLimit":Z
    .end local v22    # "notifyRapid":Z
    .restart local v28    # "i":I
    :cond_e
    :goto_6
    add-int/lit8 v14, v28, -0x1

    const-wide/32 v8, 0x200000

    const/4 v13, 0x1

    .end local v28    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_0

    :cond_f
    move/from16 v28, v14

    .line 1290
    .end local v14    # "i":I
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_11

    .line 1291
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1292
    .local v1, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    iget-object v2, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 1293
    invoke-direct {v6, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V

    .line 1290
    .end local v1    # "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    :cond_10
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 1297
    .end local v0    # "i":I
    :cond_11
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1298
    return-void
.end method

.method updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V
    .locals 4
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 5296
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    iget-boolean v1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-ne v0, v1, :cond_0

    .line 5298
    return-void

    .line 5300
    :cond_0
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 5302
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 5305
    .local v0, "restrictBackground":Z
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5307
    .local v1, "localRestrictBgChangedInBsm":Z
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    if-eqz v2, :cond_1

    .line 5310
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    xor-int/lit8 v2, v2, 0x1

    .line 5311
    .local v2, "shouldInvokeRestrictBackground":Z
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5312
    const/4 v1, 0x0

    goto :goto_0

    .line 5315
    .end local v2    # "shouldInvokeRestrictBackground":Z
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    xor-int/lit8 v2, v2, 0x1

    .line 5316
    .restart local v2    # "shouldInvokeRestrictBackground":Z
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5319
    :goto_0
    if-eqz v2, :cond_2

    .line 5320
    const-string/jumbo v3, "low_power"

    invoke-direct {p0, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(ZLjava/lang/String;)V

    .line 5324
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5325
    return-void
.end method

.method updateRuleForAppIdleUL(I)V
    .locals 6
    .param p1, "uid"    # I

    .line 4010
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRulesUL(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4012
    :cond_0
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRuleForAppIdleUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4016
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 4019
    .local v2, "appId":I
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "NetworkPolicy"

    if-eqz v3, :cond_2

    .line 4020
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUidFirewallRule mPowerSaveTempWhitelistAppIds = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " idle = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4021
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isUidForegroundOnRestrictPowerUL(uid) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4022
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4020
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    const/4 v5, 0x2

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4025
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4026
    invoke-direct {p0, v5, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 4027
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRuleForAppIdleUL DENY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4029
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v5, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 4030
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRuleForAppIdleUL "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to DEFAULT"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4033
    .end local v2    # "appId":I
    :cond_4
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4034
    nop

    .line 4035
    return-void

    .line 4033
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4034
    throw v2
.end method

.method updateRuleForDeviceIdleUL(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 3892
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 3893
    return-void
.end method

.method updateRuleForRestrictPowerUL(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 3876
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 3877
    return-void
.end method

.method updateRulesForAppIdleUL()V
    .locals 14

    .line 3980
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForAppIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3982
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 3983
    .local v2, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 3986
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 3987
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "ui":I
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ltz v4, :cond_2

    .line 3988
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3989
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v8

    .line 3990
    .local v8, "idleUids":[I
    array-length v9, v8

    move v10, v6

    :goto_1
    if-ge v10, v9, :cond_1

    aget v11, v8, v10

    .line 3991
    .local v11, "uid":I
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    invoke-virtual {v12, v13, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    if-nez v12, :cond_0

    .line 3995
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissionUL(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3996
    invoke-virtual {v2, v11, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3990
    .end local v11    # "uid":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3987
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "idleUids":[I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4002
    .end local v4    # "ui":I
    :cond_2
    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4004
    .end local v2    # "uidRules":Landroid/util/SparseIntArray;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4005
    nop

    .line 4006
    return-void

    .line 4004
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4005
    throw v2
.end method

.method updateRulesForDeviceIdleUL()V
    .locals 5

    .line 3881
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForDeviceIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3883
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3886
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3887
    nop

    .line 3888
    return-void

    .line 3886
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3887
    throw v2
.end method

.method updateRulesForPowerSaveUL()V
    .locals 5

    .line 3865
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForPowerSaveUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3867
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3870
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3871
    nop

    .line 3872
    return-void

    .line 3870
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3871
    throw v2
.end method

.method updateSubscriptions()V
    .locals 13

    .line 1876
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateSubscriptions()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_0
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateSubscriptions"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1879
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1880
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 1881
    .local v3, "sm":Landroid/telephony/SubscriptionManager;
    nop

    .line 1882
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 1881
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1884
    .local v4, "subList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1885
    .local v5, "mergedSubscriberIdsList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 1886
    .local v6, "subIdToSubscriberId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    .line 1887
    .local v8, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v9

    .line 1888
    .local v9, "tmSub":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v10

    .line 1889
    .local v10, "subscriberId":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1890
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v11

    invoke-virtual {v6, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 1892
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing subscriberId for subId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriptionId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "NetworkPolicy"

    invoke-static {v12, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :goto_1
    nop

    .line 1896
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getMergedImsisFromGroup()[Ljava/lang/String;

    move-result-object v11

    .line 1895
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1897
    .local v11, "mergedSubscriberId":[Ljava/lang/String;
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1898
    .end local v8    # "sub":Landroid/telephony/SubscriptionInfo;
    .end local v9    # "tmSub":Landroid/telephony/TelephonyManager;
    .end local v10    # "subscriberId":Ljava/lang/String;
    .end local v11    # "mergedSubscriberId":[Ljava/lang/String;
    goto :goto_0

    .line 1900
    :cond_2
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1901
    :try_start_0
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 1902
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1903
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 1904
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1903
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1902
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1907
    .end local v8    # "i":I
    :cond_3
    iput-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:Ljava/util/List;

    .line 1908
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1910
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1911
    return-void

    .line 1908
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method writePolicyAL()V
    .locals 23

    .line 2508
    move-object/from16 v1, p0

    const-string/jumbo v0, "subscription-plan"

    const-string/jumbo v2, "revoked-restrict-background"

    const-string/jumbo v3, "uid-policy"

    const-string/jumbo v4, "whitelist"

    const-string/jumbo v5, "network-policy"

    const-string/jumbo v6, "policy-list"

    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v7, :cond_0

    const-string v7, "NetworkPolicy"

    const-string/jumbo v8, "writePolicyAL()"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    :cond_0
    const/4 v7, 0x0

    .line 2512
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v7, v8

    .line 2514
    :try_start_1
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2515
    .local v8, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2516
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2518
    invoke-interface {v8, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2519
    const-string/jumbo v9, "version"

    const/16 v11, 0xb

    invoke-static {v8, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2520
    const-string/jumbo v9, "restrictBackground"

    iget-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v8, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2523
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const-string/jumbo v12, "limitBytes"

    const-string v13, "cyclePeriod"

    const-string v14, "cycleEnd"

    const-string v15, "cycleStart"

    if-ge v9, v11, :cond_4

    .line 2524
    :try_start_2
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/NetworkPolicy;

    .line 2525
    .local v11, "policy":Landroid/net/NetworkPolicy;
    iget-object v10, v11, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2526
    .local v10, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v16
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v16, :cond_1

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v16, v7

    goto/16 :goto_3

    .line 2528
    :cond_1
    move-object/from16 v16, v7

    const/4 v7, 0x0

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v16, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-interface {v8, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2529
    const-string/jumbo v7, "networkTemplate"

    move-object/from16 v17, v2

    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    invoke-static {v8, v7, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2530
    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 2531
    .local v2, "subscriberId":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2532
    const-string/jumbo v7, "subscriberId"

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-interface {v8, v4, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 2531
    :cond_2
    move-object/from16 v18, v4

    .line 2534
    :goto_1
    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    .line 2535
    .local v4, "networkId":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 2536
    const-string/jumbo v7, "networkId"

    move-object/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "subscriberId":Ljava/lang/String;
    .local v19, "subscriberId":Ljava/lang/String;
    invoke-interface {v8, v2, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 2535
    .end local v19    # "subscriberId":Ljava/lang/String;
    .restart local v2    # "subscriberId":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v2

    .line 2538
    .end local v2    # "subscriberId":Ljava/lang/String;
    .restart local v19    # "subscriberId":Ljava/lang/String;
    :goto_2
    iget-object v2, v11, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2539
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v2

    .line 2538
    invoke-static {v8, v15, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2540
    iget-object v2, v11, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2541
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v2

    .line 2540
    invoke-static {v8, v14, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2542
    iget-object v2, v11, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2543
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v2

    .line 2542
    invoke-static {v8, v13, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2544
    const-string/jumbo v2, "warningBytes"

    iget-wide v13, v11, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v8, v2, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2545
    iget-wide v13, v11, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v8, v12, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2546
    const-string/jumbo v2, "lastWarningSnooze"

    iget-wide v12, v11, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v8, v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2547
    const-string/jumbo v2, "lastLimitSnooze"

    iget-wide v12, v11, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v8, v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2548
    const-string/jumbo v2, "metered"

    iget-boolean v7, v11, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v8, v2, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2549
    const-string v2, "inferred"

    iget-boolean v7, v11, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v8, v2, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2550
    const/4 v2, 0x0

    invoke-interface {v8, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2523
    .end local v4    # "networkId":Ljava/lang/String;
    .end local v10    # "template":Landroid/net/NetworkTemplate;
    .end local v11    # "policy":Landroid/net/NetworkPolicy;
    .end local v19    # "subscriberId":Ljava/lang/String;
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2614
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "i":I
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    move-object/from16 v16, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_a

    .line 2523
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v9    # "i":I
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v16, v7

    .line 2554
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "i":I
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    :try_start_4
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    if-ge v2, v4, :cond_7

    .line 2555
    :try_start_5
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2556
    .local v4, "subId":I
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2557
    .local v5, "ownerPackage":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 2558
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object/from16 v22, v12

    move-object v5, v13

    goto/16 :goto_6

    .line 2560
    :cond_5
    array-length v9, v7

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_6

    aget-object v11, v7, v10

    .line 2561
    .local v11, "plan":Landroid/telephony/SubscriptionPlan;
    move-object/from16 v19, v7

    const/4 v7, 0x0

    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    .local v19, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-interface {v8, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2562
    const-string/jumbo v7, "subId"

    invoke-static {v8, v7, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2563
    const-string/jumbo v7, "ownerPackage"

    invoke-static {v8, v7, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2564
    invoke-virtual {v11}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v7

    .line 2565
    .local v7, "cycleRule":Landroid/util/RecurrenceRule;
    move/from16 v20, v4

    .end local v4    # "subId":I
    .local v20, "subId":I
    iget-object v4, v7, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2566
    invoke-static {v4}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v4

    .line 2565
    invoke-static {v8, v15, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2567
    iget-object v4, v7, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2568
    invoke-static {v4}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v4

    .line 2567
    invoke-static {v8, v14, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2569
    iget-object v4, v7, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2570
    invoke-static {v4}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v4

    .line 2569
    invoke-static {v8, v13, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2571
    const-string/jumbo v4, "title"

    move-object/from16 v21, v5

    .end local v5    # "ownerPackage":Ljava/lang/String;
    .local v21, "ownerPackage":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/telephony/SubscriptionPlan;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v8, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2572
    const-string/jumbo v4, "summary"

    invoke-virtual {v11}, Landroid/telephony/SubscriptionPlan;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v8, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2573
    invoke-virtual {v11}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v4

    invoke-static {v8, v12, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2574
    const-string/jumbo v4, "limitBehavior"

    invoke-virtual {v11}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v5

    invoke-static {v8, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2575
    const-string/jumbo v4, "usageBytes"

    move-object/from16 v22, v12

    move-object v5, v13

    invoke-virtual {v11}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v12

    invoke-static {v8, v4, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2576
    const-string/jumbo v4, "usageTime"

    invoke-virtual {v11}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v12

    invoke-static {v8, v4, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2577
    const/4 v4, 0x0

    invoke-interface {v8, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2560
    nop

    .end local v7    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v11    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v10, v10, 0x1

    move-object v13, v5

    move-object/from16 v7, v19

    move/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v12, v22

    goto/16 :goto_5

    .end local v19    # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local v20    # "subId":I
    .end local v21    # "ownerPackage":Ljava/lang/String;
    .restart local v4    # "subId":I
    .restart local v5    # "ownerPackage":Ljava/lang/String;
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    :cond_6
    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v19, v7

    move-object/from16 v22, v12

    move-object v5, v13

    .line 2554
    .end local v4    # "subId":I
    .end local v5    # "ownerPackage":Ljava/lang/String;
    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object v13, v5

    move-object/from16 v12, v22

    goto/16 :goto_4

    .line 2614
    .end local v2    # "i":I
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    move-object/from16 v7, v16

    goto/16 :goto_a

    .line 2582
    .restart local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    :try_start_6
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    const-string/jumbo v4, "uid"

    if-ge v0, v2, :cond_9

    .line 2583
    :try_start_7
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 2584
    .local v2, "uid":I
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2587
    .local v5, "policy":I
    if-nez v5, :cond_8

    goto :goto_8

    .line 2589
    :cond_8
    const/4 v7, 0x0

    invoke-interface {v8, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2590
    invoke-static {v8, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2591
    const-string/jumbo v4, "policy"

    invoke-static {v8, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2592
    const/4 v4, 0x0

    invoke-interface {v8, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2582
    .end local v2    # "uid":I
    .end local v5    # "policy":I
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2595
    .end local v0    # "i":I
    :cond_9
    const/4 v0, 0x0

    :try_start_8
    invoke-interface {v8, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2598
    move-object/from16 v2, v18

    invoke-interface {v8, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2601
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 2602
    .local v0, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_a

    .line 2603
    :try_start_9
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2604
    .local v5, "uid":I
    move-object/from16 v6, v17

    const/4 v7, 0x0

    invoke-interface {v8, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2605
    invoke-static {v8, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2606
    invoke-interface {v8, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 2602
    nop

    .end local v5    # "uid":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v17, v6

    goto :goto_9

    .line 2609
    .end local v3    # "i":I
    :cond_a
    const/4 v3, 0x0

    :try_start_a
    invoke-interface {v8, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2611
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2613
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object/from16 v3, v16

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 2618
    .end local v0    # "size":I
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    move-object v7, v3

    goto :goto_b

    .line 2614
    :catch_2
    move-exception v0

    move-object v7, v3

    goto :goto_a

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object/from16 v3, v16

    move-object v7, v3

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_a

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_a

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .line 2615
    .local v0, "e":Ljava/io/IOException;
    :goto_a
    if-eqz v7, :cond_b

    .line 2616
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2619
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_b
    return-void
.end method
