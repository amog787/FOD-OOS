.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$ChainToggleType;,
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
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

.field private static final MSG_SUBSCRIPTION_OVERRIDE:I = 0x10

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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_LIMIT_SNOOZED:I = 0x24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_RAPID:I = 0x2d
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TYPE_RESTRICT_BACKGROUND:I = 0x1

.field private static final TYPE_RESTRICT_POWER:I = 0x2

.field public static final TYPE_WARNING:I = 0x22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Ljava/time/Clock;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field volatile mDeviceIdleMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mIPm:Landroid/content/pm/IPackageManager;

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

.field private mMergedSubscriberIds:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeteredRestrictedUids:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private volatile mNetworkManagerReady:Z

.field private final mNetworkMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field final mNetworkPoliciesSecondLock:Ljava/lang/Object;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field private mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field volatile mRestrictBackground:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private mRestrictBackgroundBeforeBsm:Z

.field volatile mRestrictBackgroundChangedInBsm:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field volatile mRestrictPower:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubIdToSubscriberId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field final mSubscriptionPlans:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation
.end field

.field final mUidEventHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mUidEventHandlerCallback:Landroid/os/Handler$Callback;

.field private final mUidEventThread:Lcom/android/server/ServiceThread;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field final mUidRulesFirstLock:Ljava/lang/Object;

.field final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation
.end field

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;

.field private systemUIListener:Landroid/net/INetworkPolicyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 302
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 303
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 382
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

    .line 606
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 607
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v6

    .line 606
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V

    .line 608
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p4, "pm"    # Landroid/content/pm/IPackageManager;
    .param p5, "clock"    # Ljava/time/Clock;
    .param p6, "systemDir"    # Ljava/io/File;
    .param p7, "suppressDefaultPolicy"    # Z

    .line 621
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 428
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 429
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 442
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 447
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 451
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 454
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 458
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 462
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 464
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 466
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 468
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 470
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 474
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 486
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 494
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 497
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 504
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 510
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 518
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 523
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 526
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 530
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 534
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 538
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    .line 541
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    .line 545
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 549
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 552
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 559
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 562
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 580
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger;

    invoke-direct {v0}, Lcom/android/server/net/NetworkPolicyLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 599
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    const-string/jumbo v2, "isUidNetworkingBlocked()"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 932
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 952
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 964
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 984
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1003
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1041
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 1060
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 1074
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 1094
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 1117
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1145
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1529
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1691
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 2780
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isInEsportRestrictBackground:Z

    .line 2781
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->systemUIListener:Landroid/net/INetworkPolicyListener;

    .line 4636
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 4774
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    .line 622
    const-string/jumbo v2, "missing context"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 623
    const-string/jumbo v2, "missing activityManager"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 624
    const-string/jumbo v2, "missing networkManagement"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 625
    const-string v2, "deviceidle"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 627
    const-string/jumbo v2, "missing Clock"

    invoke-static {p5, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/Clock;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 628
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 629
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 630
    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 632
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "NetworkPolicy"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 633
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 634
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 637
    new-instance v3, Lcom/android/server/ServiceThread;

    const-string v4, "NetworkPolicy.uid"

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    .line 639
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 640
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 642
    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 644
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "netpolicy.xml"

    invoke-direct {v3, p6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "net-policy"

    invoke-direct {v0, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 646
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 649
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-direct {v3, p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-static {v0, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 654
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/android/server/net/OpNetworkPolicyInjector;->initInstance(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    .line 655
    invoke-static {p0}, Lcom/android/server/OpSmartDozeInjector;->initInstance(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 657
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 293
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeWifiMeteredOverrideAL()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .locals 1
    .param p0, "x0"    # Landroid/util/SparseBooleanArray;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/net/Network;

    .line 293
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 293
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # Z

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 293
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Boolean;

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 293
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 293
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # I

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # Z

    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V

    return-void
.end method

.method static synthetic access$3500(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 293
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 293
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->onUidDeletedUL(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v0

    return v0
.end method

.method private addDefaultRestrictBackgroundWhitelistUidsUL(I)Z
    .locals 11
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 705
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 706
    .local v0, "sysConfig":Lcom/android/server/SystemConfig;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 707
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v2

    .line 708
    .local v2, "allowDataUsage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 709
    .local v3, "changed":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 710
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 711
    .local v5, "pkg":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    const-string v7, "NetworkPolicy"

    if-eqz v6, :cond_0

    .line 712
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

    .line 716
    :cond_0
    const/high16 v6, 0x100000

    :try_start_0
    invoke-virtual {v1, v5, v6, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    .local v6, "app":Landroid/content/pm/ApplicationInfo;
    nop

    .line 722
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 723
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addDefaultRestrictBackgroundWhitelistUidsUL(): skipping non-privileged app  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    goto/16 :goto_1

    .line 727
    :cond_1
    iget v8, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 728
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 729
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_2

    .line 730
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

    .line 732
    invoke-virtual {v10, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 730
    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_2
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 734
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_3

    .line 735
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

    .line 737
    :cond_3
    const/4 v7, 0x4

    const/4 v9, 0x0

    invoke-direct {p0, v8, v7, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 738
    const/4 v3, 0x1

    goto :goto_1

    .line 717
    .end local v6    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "uid":I
    :catch_0
    move-exception v6

    .line 718
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

    .line 720
    :cond_4
    nop

    .line 709
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 741
    .end local v4    # "i":I
    :cond_6
    return v3
.end method

.method private broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "changed"    # Ljava/lang/Boolean;

    .line 4839
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4840
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4841
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 4842
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4843
    .local v2, "userId":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 4844
    .local v5, "packageName":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4846
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4847
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4848
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4843
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4851
    .end local v2    # "userId":I
    :cond_0
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .locals 2

    .line 5094
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 5112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5113
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 5114
    const v1, 0x104019b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5113
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5115
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5116
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5117
    return-object v0
.end method

.method private static buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .line 5105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5106
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5107
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5108
    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .line 5098
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5099
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5100
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5101
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 5121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5122
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 5123
    const v1, 0x1040157

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5122
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5124
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5125
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5126
    return-object v0
.end method

.method private cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V
    .locals 3
    .param p1, "notificationId"    # Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1521
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 1522
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v2

    .line 1521
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1523
    return-void
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

    .line 1845
    .local p0, "ifaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1846
    .local v0, "baseIface":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1847
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1849
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

    .line 1850
    .local v2, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 1851
    .local v3, "stackedIface":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1852
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1854
    .end local v2    # "stackedLink":Landroid/net/LinkProperties;
    .end local v3    # "stackedIface":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1855
    :cond_2
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .locals 4
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .line 5165
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 5166
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5167
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5169
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;
    .locals 1
    .param p0, "val"    # [Landroid/net/NetworkState;

    .line 5519
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

    .line 4591
    if-eqz p1, :cond_0

    .line 4593
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4595
    goto :goto_0

    .line 4594
    :catch_0
    move-exception v0

    .line 4597
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .locals 2
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    .line 4601
    if-eqz p1, :cond_1

    .line 4604
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isInEsportRestrictBackground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->systemUIListener:Landroid/net/INetworkPolicyListener;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 4605
    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "mute systemui listener by Esport!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4606
    return-void

    .line 4610
    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4612
    goto :goto_0

    .line 4611
    :catch_0
    move-exception v0

    .line 4614
    :cond_1
    :goto_0
    return-void
.end method

.method private dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "subId"    # I
    .param p3, "overrideMask"    # I
    .param p4, "overrideValue"    # I

    .line 4628
    if-eqz p1, :cond_0

    .line 4630
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Landroid/net/INetworkPolicyListener;->onSubscriptionOverride(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4632
    goto :goto_0

    .line 4631
    :catch_0
    move-exception v0

    .line 4634
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidPolicies"    # I

    .line 4618
    if-eqz p1, :cond_0

    .line 4620
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidPoliciesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4622
    goto :goto_0

    .line 4621
    :catch_0
    move-exception v0

    .line 4624
    :cond_0
    :goto_0
    return-void
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .locals 1
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    .line 4581
    if-eqz p1, :cond_0

    .line 4583
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4585
    goto :goto_0

    .line 4584
    :catch_0
    move-exception v0

    .line 4587
    :cond_0
    :goto_0
    return-void
.end method

.method private enableFirewallChainUL(IZ)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "enable"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 5024
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 5025
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 5027
    return-void

    .line 5029
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5031
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 5032
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallChainEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5035
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5033
    :catch_1
    move-exception v0

    .line 5034
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5037
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5038
    :goto_1
    return-void
.end method

.method private enforceSubscriptionPlanAccess(IILjava/lang/String;)V
    .locals 10
    .param p1, "subId"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3127
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3133
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 3134
    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 3135
    .local v2, "si":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3137
    .local v3, "config":Landroid/os/PersistableBundle;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3138
    nop

    .line 3141
    if-eqz v2, :cond_0

    .line 3142
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, p3}, Landroid/telephony/SubscriptionInfo;->canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3143
    return-void

    .line 3148
    :cond_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 3149
    nop

    .line 3150
    const-string v5, "config_plans_package_override_string"

    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3151
    .local v5, "overridePackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3152
    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3153
    return-void

    .line 3158
    .end local v5    # "overridePackage":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v5

    .line 3159
    .local v5, "defaultPackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3160
    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3161
    return-void

    .line 3165
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persist.sys.sub_plan_owner."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3166
    .local v6, "testPackage":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3167
    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3168
    return-void

    .line 3172
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fw.sub_plan_owner."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3173
    .local v4, "legacyTestPackage":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3174
    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3175
    return-void

    .line 3179
    :cond_4
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    return-void

    .line 3137
    .end local v2    # "si":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "config":Landroid/os/PersistableBundle;
    .end local v4    # "legacyTestPackage":Ljava/lang/String;
    .end local v5    # "defaultPackage":Ljava/lang/String;
    .end local v6    # "testPackage":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V
    .locals 22
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J
    .param p5, "rapidBlame"    # Landroid/content/pm/ApplicationInfo;

    .line 1384
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;I)V

    .line 1385
    .local v6, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1387
    .local v7, "builder":Landroid/app/Notification$Builder;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1388
    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1389
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1392
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1395
    .local v9, "res":Landroid/content/res/Resources;
    const/16 v10, 0x2d

    const/4 v13, 0x0

    if-eq v2, v10, :cond_7

    const/4 v10, 0x4

    const/16 v14, 0x8

    packed-switch v2, :pswitch_data_0

    .line 1506
    return-void

    .line 1448
    :pswitch_0
    iget-object v15, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v15}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v15

    if-eq v15, v8, :cond_1

    if-eq v15, v10, :cond_0

    .line 1456
    return-void

    .line 1453
    :cond_0
    const v10, 0x10401d4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1454
    .local v10, "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 1450
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_1
    const v10, 0x10401cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1451
    .restart local v10    # "title":Ljava/lang/CharSequence;
    nop

    .line 1458
    :goto_0
    iget-wide v11, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v11, v3, v11

    .line 1459
    .local v11, "overBytes":J
    new-array v15, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1460
    invoke-static {v8, v11, v12, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v15, v13

    .line 1459
    const v8, 0x10401ca

    invoke-virtual {v9, v8, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1462
    .local v8, "body":Ljava/lang/CharSequence;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1463
    const v14, 0x1080078

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1464
    sget-object v14, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-virtual {v7, v14}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1466
    iget-object v14, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v14

    .line 1468
    .local v14, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1469
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

    .line 1473
    :cond_2
    iget-object v15, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v15, v13, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1476
    goto/16 :goto_3

    .line 1420
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

    .line 1428
    return-void

    .line 1425
    :cond_3
    const v2, 0x10401d5

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1426
    .local v2, "title":Ljava/lang/CharSequence;
    move-object v10, v2

    goto :goto_1

    .line 1422
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_4
    const v2, 0x10401cc

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1423
    .restart local v2    # "title":Ljava/lang/CharSequence;
    move-object v10, v2

    .line 1430
    .end local v2    # "title":Ljava/lang/CharSequence;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    :goto_1
    const v2, 0x10401c9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1432
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1433
    const v2, 0x10807e5

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1435
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1437
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1438
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

    .line 1442
    :cond_5
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1445
    goto/16 :goto_3

    .line 1397
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    const v2, 0x10401d3

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1398
    .restart local v10    # "title":Ljava/lang/CharSequence;
    const v2, 0x10401d2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1399
    invoke-static {v11, v3, v4, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v13

    .line 1398
    invoke-virtual {v9, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1401
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1403
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1404
    .local v2, "snoozeIntent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1407
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1409
    .local v11, "viewIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1410
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

    .line 1414
    :cond_6
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v11, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1417
    goto :goto_3

    .line 1479
    .end local v2    # "snoozeIntent":Landroid/content/Intent;
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v11    # "viewIntent":Landroid/content/Intent;
    :cond_7
    const v2, 0x10401cf

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1480
    .restart local v10    # "title":Ljava/lang/CharSequence;
    if-eqz v5, :cond_8

    .line 1481
    const v2, 0x10401cd

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1482
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v8, v13

    .line 1481
    invoke-virtual {v9, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .local v2, "body":Ljava/lang/CharSequence;
    goto :goto_2

    .line 1484
    .end local v2    # "body":Ljava/lang/CharSequence;
    :cond_8
    const v2, 0x10401ce

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 1487
    .restart local v8    # "body":Ljava/lang/CharSequence;
    :goto_2
    const v2, 0x1080078

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1489
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1490
    .local v2, "snoozeIntent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1493
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1495
    .restart local v11    # "viewIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isHeadlessSystemUserBuild()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1496
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

    .line 1500
    :cond_9
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v14, 0x8000000

    invoke-static {v12, v13, v11, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1503
    nop

    .line 1510
    .end local v2    # "snoozeIntent":Landroid/content/Intent;
    .end local v11    # "viewIntent":Landroid/content/Intent;
    :goto_3
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1511
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1512
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1513
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1515
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v11, Landroid/app/NotificationManager;

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 1516
    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v12

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1515
    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1517
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1518
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2089
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string v1, "ensureActiveMobilePolicyAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v0, :cond_1

    return-void

    .line 2092
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2093
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2094
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2096
    .local v2, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 2092
    .end local v1    # "subId":I
    .end local v2    # "subscriberId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2098
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private ensureActiveMobilePolicyAL(ILjava/lang/String;)Z
    .locals 9
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2111
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

    .line 2113
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

    .line 2114
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    .line 2115
    .local v4, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v4, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2116
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v2, :cond_0

    .line 2117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found template "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " which matches subscriber "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    invoke-static {p2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2117
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2113
    .end local v4    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2124
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

    .line 2126
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2127
    .local v1, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V

    .line 2128
    return v2
.end method

.method private findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;
    .locals 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 1300
    move-object v1, p0

    const-wide/16 v2, 0x0

    .line 1301
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    .line 1302
    .local v4, "maxBytes":J
    const/4 v0, 0x0

    .line 1304
    .local v0, "maxUid":I
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1305
    .local v6, "stats":Landroid/net/NetworkStats;
    const/4 v7, 0x0

    .line 1306
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    move v9, v0

    .end local v0    # "maxUid":I
    .local v8, "i":I
    .local v9, "maxUid":I
    :goto_0
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 1307
    invoke-virtual {v6, v8, v7}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 1308
    iget-wide v10, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    .line 1309
    .local v10, "bytes":J
    add-long/2addr v2, v10

    .line 1310
    cmp-long v0, v10, v4

    if-lez v0, :cond_0

    .line 1311
    move-wide v4, v10

    .line 1312
    iget v0, v7, Landroid/net/NetworkStats$Entry;->uid:I

    move v9, v0

    .line 1306
    .end local v10    # "bytes":J
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1318
    .end local v8    # "i":I
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-lez v0, :cond_2

    const-wide/16 v10, 0x2

    div-long v10, v2, v10

    cmp-long v0, v4, v10

    if-lez v0, :cond_2

    .line 1319
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 1320
    .local v8, "packageNames":[Ljava/lang/String;
    if-eqz v8, :cond_2

    array-length v0, v8

    const/4 v10, 0x1

    if-ne v0, v10, :cond_2

    .line 1322
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v10, 0x0

    aget-object v10, v8, v10

    const v11, 0x4c2200

    invoke-virtual {v0, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1325
    :catch_0
    move-exception v0

    .line 1330
    .end local v8    # "packageNames":[Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I
    .locals 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1345
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1346
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1347
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1348
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

    .line 1351
    .local v3, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1352
    return v1

    .line 1345
    .end local v1    # "subId":I
    .end local v2    # "subscriberId":Ljava/lang/String;
    .end local v3    # "probeIdent":Landroid/net/NetworkIdentity;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1355
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

    .line 5524
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

    .line 615
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 616
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 615
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    .line 611
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

    .line 5065
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

    .line 5066
    :catch_0
    move-exception v0

    .line 5067
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

    .line 5068
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 5074
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

    .line 5075
    :catch_0
    move-exception v0

    .line 5076
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

    .line 5077
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getPlatformDefaultLimitBytes()J
    .locals 2

    .line 2142
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getPlatformDefaultWarningBytes()J
    .locals 5

    .line 2132
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2134
    .local v0, "dataWarningConfig":I
    int-to-long v1, v0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2135
    return-wide v3

    .line 2137
    :cond_0
    int-to-long v1, v0

    const-wide/32 v3, 0x100000

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;
    .locals 6
    .param p1, "subId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 5456
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 5457
    .local v0, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5458
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 5459
    .local v3, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/RecurrenceRule;->isRecurring()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5461
    return-object v3

    .line 5464
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 5465
    .local v4, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-static {v5}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5466
    return-object v3

    .line 5458
    .end local v3    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v4    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5471
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSubIdLocked(Landroid/net/Network;)I
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 5451
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

    .line 5060
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5426
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

    .line 5428
    :catch_0
    move-exception v0

    .line 5429
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

    .line 5486
    .local p1, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    if-nez v0, :cond_0

    .line 5487
    return-void

    .line 5489
    :cond_0
    if-nez p1, :cond_2

    .line 5490
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

    .line 5491
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5492
    .end local v1    # "uid":I
    goto :goto_0

    .line 5493
    :cond_1
    return-void

    .line 5495
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

    .line 5496
    .restart local v1    # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5497
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5499
    .end local v1    # "uid":I
    :cond_3
    goto :goto_1

    .line 5500
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

    .line 5501
    .restart local v1    # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5502
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5504
    .end local v1    # "uid":I
    :cond_5
    goto :goto_2

    .line 5505
    :cond_6
    return-void
.end method

.method private hasInternetPermissions(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 4209
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 4211
    const/4 v0, 0x0

    return v0

    .line 4214
    :cond_0
    goto :goto_0

    .line 4213
    :catch_0
    move-exception v0

    .line 4215
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static hasRule(II)Z
    .locals 1
    .param p0, "uidRules"    # I
    .param p1, "rule"    # I

    .line 5515
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

    .line 745
    move-object/from16 v1, p0

    const-wide/32 v2, 0x200000

    const-string/jumbo v0, "systemReady"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 746
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    .line 749
    .local v4, "oldPriority":I
    const/4 v0, -0x2

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 750
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    const-string v0, "NetworkPolicy"

    const-string v5, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 908
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 909
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 752
    return-void

    .line 755
    :cond_0
    :try_start_1
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 756
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    .line 758
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 759
    :try_start_2
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 760
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    .line 761
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 762
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 783
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 786
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 788
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->waitForAdminData()V

    .line 791
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 794
    iget-boolean v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    iput-boolean v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 795
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v9, 0xa

    .line 796
    invoke-virtual {v8, v9}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    .line 797
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    iget-boolean v8, v8, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 799
    .local v8, "localRestrictBackground":Z
    if-eqz v8, :cond_1

    iget-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    if-nez v9, :cond_1

    .line 800
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 802
    :cond_1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v9, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v9, v1}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v9}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 817
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 821
    :cond_2
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 822
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 826
    .end local v8    # "localRestrictBackground":Z
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 827
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 829
    :try_start_5
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 831
    :try_start_6
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v6, 0x3

    const-string v8, "android"

    invoke-interface {v0, v5, v6, v7, v8}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 834
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v5}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 837
    goto :goto_0

    .line 835
    :catch_0
    move-exception v0

    .line 840
    :goto_0
    :try_start_7
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 842
    .local v0, "whitelistFilter":Landroid/content/IntentFilter;
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 845
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 846
    .local v5, "connFilter":Landroid/content/IntentFilter;
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v9, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v5, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 849
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 850
    .local v6, "packageFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    const-string/jumbo v7, "package"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 852
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v6, v8, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 855
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "android.intent.action.UID_REMOVED"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 859
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 860
    .local v7, "userFilter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.USER_ADDED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    const-string v9, "android.intent.action.USER_REMOVED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v7, v8, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 865
    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 866
    .local v9, "statsFilter":Landroid/content/IntentFilter;
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v12, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 870
    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 871
    .local v10, "allowFilter":Landroid/content/IntentFilter;
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v13, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 874
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 876
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 880
    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 882
    .local v11, "wifiFilter":Landroid/content/IntentFilter;
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v11, v8, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 885
    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 887
    .local v12, "carrierConfigFilter":Landroid/content/IntentFilter;
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v14, v12, v8, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 890
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v14, Landroid/net/ConnectivityManager;

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    new-instance v14, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v14}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 891
    invoke-virtual {v14}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 890
    invoke-virtual {v13, v14, v15}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 893
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v14, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    invoke-direct {v14, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-virtual {v13, v14}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 896
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v13, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionManager;

    new-instance v13, Lcom/android/server/net/NetworkPolicyManagerService$3;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 897
    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Looper;)V

    .line 896
    invoke-virtual {v8, v13}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 905
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 908
    .end local v0    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v5    # "connFilter":Landroid/content/IntentFilter;
    .end local v6    # "packageFilter":Landroid/content/IntentFilter;
    .end local v7    # "userFilter":Landroid/content/IntentFilter;
    .end local v9    # "statsFilter":Landroid/content/IntentFilter;
    .end local v10    # "allowFilter":Landroid/content/IntentFilter;
    .end local v11    # "wifiFilter":Landroid/content/IntentFilter;
    .end local v12    # "carrierConfigFilter":Landroid/content/IntentFilter;
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 909
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 910
    nop

    .line 911
    return-void

    .line 826
    :catchall_0
    move-exception v0

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v4    # "oldPriority":I
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :try_start_9
    throw v0

    .line 827
    .restart local v4    # "oldPriority":I
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v4    # "oldPriority":I
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 908
    .restart local v4    # "oldPriority":I
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catchall_2
    move-exception v0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 909
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .line 5082
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5084
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5089
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5084
    return v2

    .line 5089
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5085
    :catch_0
    move-exception v2

    .line 5087
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 5089
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5087
    return v3
.end method

.method private static isHeadlessSystemUserBuild()Z
    .locals 1

    .line 5528
    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    return v0
.end method

.method private isRestrictedByAdminUL(I)Z
    .locals 2
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 5509
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 5510
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5509
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 5511
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

    .line 5222
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSystemUI(I)Z
    .locals 7
    .param p1, "uid"    # I

    .line 2783
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2784
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2786
    .local v1, "userId":I
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2787
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 2788
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "com.android.systemui"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2789
    const/4 v2, 0x1

    return v2

    .line 2787
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2793
    :cond_1
    return v2
.end method

.method private isUidForegroundOnRestrictBackgroundUL(I)Z
    .locals 2
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3664
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3665
    .local v0, "procState":I
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundOnRestrictPowerUL(I)Z
    .locals 2
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3670
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3678
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

    .line 5229
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5230
    const/4 v0, 0x7

    .local v0, "reason":I
    goto :goto_0

    .line 5232
    .end local v0    # "reason":I
    :cond_0
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5233
    const/4 v0, 0x0

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5235
    .end local v0    # "reason":I
    :cond_1
    if-nez p2, :cond_2

    .line 5236
    const/4 v0, 0x1

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5238
    .end local v0    # "reason":I
    :cond_2
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5239
    const/4 v0, 0x2

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5241
    .end local v0    # "reason":I
    :cond_3
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5242
    const/4 v0, 0x3

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5244
    .end local v0    # "reason":I
    :cond_4
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5245
    const/4 v0, 0x4

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5247
    .end local v0    # "reason":I
    :cond_5
    if-eqz p3, :cond_6

    .line 5248
    const/4 v0, 0x5

    .restart local v0    # "reason":I
    goto :goto_0

    .line 5251
    .end local v0    # "reason":I
    :cond_6
    const/4 v0, 0x6

    .line 5255
    .restart local v0    # "reason":I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 5269
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 5261
    :pswitch_0
    const/4 v1, 0x0

    .line 5262
    .local v1, "blocked":Z
    goto :goto_1

    .line 5266
    .end local v1    # "blocked":Z
    :pswitch_1
    const/4 v1, 0x1

    .line 5267
    .restart local v1    # "blocked":Z
    nop

    .line 5271
    :goto_1
    if-eqz p4, :cond_7

    .line 5272
    invoke-virtual {p4, p0, v0}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5275
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

    .line 3684
    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUidValidForBlacklistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 4122
    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3fb

    if-eq p1, v0, :cond_1

    .line 4123
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4127
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4124
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isUidValidForWhitelistRules(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 4131
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3868
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 3869
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 3870
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

    .line 3871
    .local v1, "isWhitelisted":Z
    :goto_1
    if-nez p2, :cond_4

    .line 3872
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    move v1, v2

    .line 3874
    :cond_4
    return v1
.end method

.method static synthetic lambda$updateNetworks$1(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 1561
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1562
    return-void
.end method

.method private maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z
    .locals 10
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1575
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "maybeUpdateMobilePolicyCycleAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_0
    const/4 v0, 0x0

    .line 1579
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

    .line 1581
    .local v1, "probeIdent":Landroid/net/NetworkIdentity;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1582
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 1583
    .local v3, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1584
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 1585
    .local v4, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1581
    .end local v3    # "template":Landroid/net/NetworkTemplate;
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1588
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private normalizePoliciesNL()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2885
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 2886
    return-void
.end method

.method private normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .locals 6
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2890
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2891
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    .line 2892
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_0

    .line 2893
    goto :goto_1

    .line 2897
    :cond_0
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2898
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 2899
    .local v3, "existing":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v4

    if-lez v4, :cond_3

    .line 2900
    :cond_1
    if-eqz v3, :cond_2

    .line 2901
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

    .line 2903
    :cond_2
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2891
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .end local v3    # "existing":Landroid/net/NetworkPolicy;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2906
    :cond_4
    return-void
.end method

.method private notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1364
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1371
    :cond_0
    return-void
.end method

.method private notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .locals 1
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1375
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1376
    return-void
.end method

.method private onUidDeletedUL(I)V
    .locals 3
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4224
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4225
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4226
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4227
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4228
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4229
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4230
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4231
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4232
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4235
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4236
    return-void
.end method

.method private parseSubId(Landroid/net/NetworkState;)I
    .locals 3
    .param p1, "state"    # Landroid/net/NetworkState;

    .line 5435
    const/4 v0, -0x1

    .line 5436
    .local v0, "subId":I
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    .line 5437
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5438
    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    .line 5439
    .local v1, "spec":Landroid/net/NetworkSpecifier;
    instance-of v2, v1, Landroid/net/StringNetworkSpecifier;

    if-eqz v2, :cond_0

    .line 5441
    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/net/StringNetworkSpecifier;

    iget-object v2, v2, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 5443
    goto :goto_0

    .line 5442
    :catch_0
    move-exception v2

    .line 5446
    .end local v1    # "spec":Landroid/net/NetworkSpecifier;
    :cond_0
    :goto_0
    return v0
.end method

.method private readPolicyAL()V
    .locals 36
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2226
    move-object/from16 v1, p0

    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v3, "NetworkPolicy"

    if-eqz v2, :cond_0

    const-string/jumbo v2, "readPolicyAL()"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    :cond_0
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 2230
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 2231
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 2232
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 2234
    const/4 v2, 0x0

    .line 2236
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v4

    .line 2237
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2238
    .local v4, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2242
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2245
    .local v5, "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    const/4 v6, 0x1

    .line 2246
    .local v6, "version":I
    const/4 v7, 0x0

    move v8, v7

    .line 2247
    .local v8, "insideWhitelist":Z
    :goto_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    const/4 v11, 0x1

    if-eq v9, v11, :cond_1b

    .line 2248
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2249
    .local v9, "tag":Ljava/lang/String;
    const-string/jumbo v12, "whitelist"

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-ne v10, v14, :cond_19

    .line 2250
    :try_start_2
    const-string/jumbo v15, "policy-list"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_2

    .line 2251
    :try_start_3
    iget-boolean v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2252
    .local v12, "oldValue":Z
    const-string/jumbo v14, "version"

    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v14

    move v6, v14

    .line 2253
    if-lt v6, v13, :cond_1

    const-string/jumbo v13, "restrictBackground"

    .line 2254
    invoke-static {v4, v13}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_1

    :cond_1
    move v11, v7

    :goto_1
    iput-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2255
    .end local v12    # "oldValue":Z
    move-object/from16 v19, v2

    move v2, v10

    goto/16 :goto_f

    :cond_2
    :try_start_4
    const-string/jumbo v13, "network-policy"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v15, "cyclePeriod"

    const-string v7, "cycleEnd"

    const-string v11, "cycleStart"

    if-eqz v13, :cond_d

    .line 2256
    :try_start_5
    const-string/jumbo v12, "networkTemplate"

    invoke-static {v4, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    .line 2257
    .local v12, "networkTemplate":I
    const-string/jumbo v13, "subscriberId"

    const/4 v14, 0x0

    invoke-interface {v4, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2259
    .local v13, "subscriberId":Ljava/lang/String;
    const/16 v14, 0x9

    if-lt v6, v14, :cond_3

    .line 2260
    const-string/jumbo v14, "networkId"
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v19, "fis":Ljava/io/FileInputStream;
    :try_start_6
    invoke-interface {v4, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v2, v14

    .local v2, "networkId":Ljava/lang/String;
    goto :goto_2

    .line 2262
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :cond_3
    move-object/from16 v19, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 2265
    .local v2, "networkId":Ljava/lang/String;
    :goto_2
    const/16 v14, 0xb

    if-lt v6, v14, :cond_4

    .line 2266
    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2267
    .local v11, "start":Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2268
    .local v7, "end":Ljava/lang/String;
    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2269
    .local v14, "period":Ljava/lang/String;
    new-instance v15, Landroid/util/RecurrenceRule;

    .line 2270
    move/from16 v20, v10

    .end local v10    # "type":I
    .local v20, "type":I
    invoke-static {v11}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v10

    .line 2271
    move-object/from16 v18, v11

    .end local v11    # "start":Ljava/lang/String;
    .local v18, "start":Ljava/lang/String;
    invoke-static {v7}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v11

    .line 2272
    move-object/from16 v21, v7

    .end local v7    # "end":Ljava/lang/String;
    .local v21, "end":Ljava/lang/String;
    invoke-static {v14}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v7

    invoke-direct {v15, v10, v11, v7}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    move-object v7, v15

    .line 2273
    .end local v14    # "period":Ljava/lang/String;
    .end local v18    # "start":Ljava/lang/String;
    .end local v21    # "end":Ljava/lang/String;
    .local v7, "cycleRule":Landroid/util/RecurrenceRule;
    goto :goto_4

    .line 2274
    .end local v7    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v20    # "type":I
    .restart local v10    # "type":I
    :cond_4
    move/from16 v20, v10

    .end local v10    # "type":I
    .restart local v20    # "type":I
    const-string v7, "cycleDay"

    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 2276
    .local v7, "cycleDay":I
    const/4 v10, 0x6

    if-lt v6, v10, :cond_5

    .line 2277
    const-string v10, "cycleTimezone"

    const/4 v11, 0x0

    invoke-interface {v4, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "cycleTimezone":Ljava/lang/String;
    goto :goto_3

    .line 2279
    .end local v10    # "cycleTimezone":Ljava/lang/String;
    :cond_5
    const-string v10, "UTC"

    .line 2281
    .restart local v10    # "cycleTimezone":Ljava/lang/String;
    :goto_3
    invoke-static {v10}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v11

    move-object v7, v11

    .line 2283
    .end local v10    # "cycleTimezone":Ljava/lang/String;
    .local v7, "cycleRule":Landroid/util/RecurrenceRule;
    :goto_4
    const-string/jumbo v10, "warningBytes"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v24

    .line 2284
    .local v24, "warningBytes":J
    const-string/jumbo v10, "limitBytes"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v26

    .line 2286
    .local v26, "limitBytes":J
    const/4 v10, 0x5

    if-lt v6, v10, :cond_6

    .line 2287
    const-string/jumbo v10, "lastLimitSnooze"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .local v10, "lastLimitSnooze":J
    goto :goto_5

    .line 2288
    .end local v10    # "lastLimitSnooze":J
    :cond_6
    const/4 v10, 0x2

    if-lt v6, v10, :cond_7

    .line 2289
    const-string/jumbo v10, "lastSnooze"

    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v10

    .restart local v10    # "lastLimitSnooze":J
    goto :goto_5

    .line 2291
    .end local v10    # "lastLimitSnooze":J
    :cond_7
    const-wide/16 v10, -0x1

    .line 2294
    .restart local v10    # "lastLimitSnooze":J
    :goto_5
    const/4 v14, 0x4

    if-lt v6, v14, :cond_8

    .line 2295
    const-string/jumbo v14, "metered"

    invoke-static {v4, v14}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    .local v14, "metered":Z
    goto :goto_6

    .line 2297
    .end local v14    # "metered":Z
    :cond_8
    const/4 v14, 0x1

    if-eq v12, v14, :cond_9

    .line 2302
    const/4 v14, 0x0

    .restart local v14    # "metered":Z
    goto :goto_6

    .line 2299
    .end local v14    # "metered":Z
    :cond_9
    const/4 v14, 0x1

    .line 2300
    .restart local v14    # "metered":Z
    nop

    .line 2306
    :goto_6
    const/4 v15, 0x5

    if-lt v6, v15, :cond_a

    .line 2307
    const-string/jumbo v15, "lastWarningSnooze"

    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v16

    .local v16, "lastWarningSnooze":J
    goto :goto_7

    .line 2309
    .end local v16    # "lastWarningSnooze":J
    :cond_a
    const-wide/16 v16, -0x1

    .line 2312
    .restart local v16    # "lastWarningSnooze":J
    :goto_7
    const/4 v15, 0x7

    if-lt v6, v15, :cond_b

    .line 2313
    const-string v15, "inferred"

    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    .local v15, "inferred":Z
    goto :goto_8

    .line 2315
    .end local v15    # "inferred":Z
    :cond_b
    const/4 v15, 0x0

    move/from16 v18, v15

    .line 2318
    .restart local v15    # "inferred":Z
    :goto_8
    move/from16 v18, v6

    .end local v6    # "version":I
    .local v18, "version":I
    new-instance v6, Landroid/net/NetworkTemplate;

    invoke-direct {v6, v12, v13, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2320
    .local v6, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 2321
    move-object/from16 v34, v2

    .end local v2    # "networkId":Ljava/lang/String;
    .local v34, "networkId":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    move/from16 v35, v12

    .end local v12    # "networkTemplate":I
    .local v35, "networkTemplate":I
    new-instance v12, Landroid/net/NetworkPolicy;

    move-object/from16 v21, v12

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v28, v16

    move-wide/from16 v30, v10

    move/from16 v32, v14

    move/from16 v33, v15

    invoke-direct/range {v21 .. v33}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    invoke-virtual {v2, v6, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2320
    .end local v34    # "networkId":Ljava/lang/String;
    .end local v35    # "networkTemplate":I
    .restart local v2    # "networkId":Ljava/lang/String;
    .restart local v12    # "networkTemplate":I
    :cond_c
    move-object/from16 v34, v2

    move/from16 v35, v12

    .line 2326
    .end local v2    # "networkId":Ljava/lang/String;
    .end local v6    # "template":Landroid/net/NetworkTemplate;
    .end local v7    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v10    # "lastLimitSnooze":J
    .end local v12    # "networkTemplate":I
    .end local v13    # "subscriberId":Ljava/lang/String;
    .end local v14    # "metered":Z
    .end local v15    # "inferred":Z
    .end local v16    # "lastWarningSnooze":J
    .end local v24    # "warningBytes":J
    .end local v26    # "limitBytes":J
    :goto_9
    move/from16 v2, v20

    goto/16 :goto_e

    .end local v18    # "version":I
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "type":I
    .local v2, "fis":Ljava/io/FileInputStream;
    .local v6, "version":I
    .local v10, "type":I
    :cond_d
    move-object/from16 v19, v2

    move/from16 v18, v6

    move/from16 v20, v10

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "version":I
    .end local v10    # "type":I
    .restart local v18    # "version":I
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "type":I
    const-string/jumbo v2, "subscription-plan"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2327
    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2328
    .local v2, "start":Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2329
    .local v6, "end":Ljava/lang/String;
    invoke-static {v4, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2330
    .local v7, "period":Ljava/lang/String;
    new-instance v10, Landroid/telephony/SubscriptionPlan$Builder;

    .line 2331
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v11

    .line 2332
    invoke-static {v6}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v12

    .line 2333
    invoke-static {v7}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 2334
    .local v10, "builder":Landroid/telephony/SubscriptionPlan$Builder;
    const-string/jumbo v11, "title"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2335
    const-string/jumbo v11, "summary"

    invoke-static {v4, v11}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2337
    const-string/jumbo v11, "limitBytes"

    const-wide/16 v12, -0x1

    invoke-static {v4, v11, v12, v13}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    .line 2339
    .local v14, "limitBytes":J
    const-string/jumbo v11, "limitBehavior"

    const/4 v12, -0x1

    invoke-static {v4, v11, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 2341
    .local v11, "limitBehavior":I
    const-wide/16 v12, -0x1

    cmp-long v21, v14, v12

    if-eqz v21, :cond_e

    const/4 v12, -0x1

    if-eq v11, v12, :cond_e

    .line 2343
    invoke-virtual {v10, v14, v15, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2346
    :cond_e
    const-string/jumbo v12, "usageBytes"

    move-object v13, v6

    move-object/from16 v21, v7

    const-wide/16 v6, -0x1

    .end local v6    # "end":Ljava/lang/String;
    .end local v7    # "period":Ljava/lang/String;
    .local v13, "end":Ljava/lang/String;
    .local v21, "period":Ljava/lang/String;
    invoke-static {v4, v12, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v22, v16

    .line 2348
    .local v22, "usageBytes":J
    const-string/jumbo v12, "usageTime"

    invoke-static {v4, v12, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v24, v16

    .line 2350
    .local v24, "usageTime":J
    move/from16 v16, v11

    move-wide/from16 v11, v22

    .end local v22    # "usageBytes":J
    .local v11, "usageBytes":J
    .local v16, "limitBehavior":I
    cmp-long v17, v11, v6

    if-eqz v17, :cond_f

    move-wide/from16 v22, v14

    move-object v15, v13

    move-wide/from16 v13, v24

    .end local v14    # "limitBytes":J
    .end local v24    # "usageTime":J
    .local v13, "usageTime":J
    .local v15, "end":Ljava/lang/String;
    .local v22, "limitBytes":J
    cmp-long v6, v13, v6

    if-eqz v6, :cond_10

    .line 2352
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    goto :goto_a

    .line 2350
    .end local v15    # "end":Ljava/lang/String;
    .end local v22    # "limitBytes":J
    .local v13, "end":Ljava/lang/String;
    .restart local v14    # "limitBytes":J
    .restart local v24    # "usageTime":J
    :cond_f
    move-wide/from16 v22, v14

    move-object v15, v13

    move-wide/from16 v13, v24

    .line 2355
    .end local v14    # "limitBytes":J
    .end local v24    # "usageTime":J
    .local v13, "usageTime":J
    .restart local v15    # "end":Ljava/lang/String;
    .restart local v22    # "limitBytes":J
    :cond_10
    :goto_a
    const-string/jumbo v6, "subId"

    invoke-static {v4, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 2356
    .local v6, "subId":I
    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v7

    .line 2357
    .local v7, "plan":Landroid/telephony/SubscriptionPlan;
    move-object/from16 v17, v2

    .end local v2    # "start":Ljava/lang/String;
    .local v17, "start":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    move-object/from16 v24, v10

    .end local v10    # "builder":Landroid/telephony/SubscriptionPlan$Builder;
    .local v24, "builder":Landroid/telephony/SubscriptionPlan$Builder;
    const-class v10, Landroid/telephony/SubscriptionPlan;

    move-wide/from16 v25, v11

    .end local v11    # "usageBytes":J
    .local v25, "usageBytes":J
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 2358
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/telephony/SubscriptionPlan;

    .line 2357
    invoke-static {v10, v11, v7}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/telephony/SubscriptionPlan;

    invoke-virtual {v2, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2360
    const-string/jumbo v2, "ownerPackage"

    invoke-static {v4, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2361
    .local v2, "ownerPackage":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2363
    .end local v2    # "ownerPackage":Ljava/lang/String;
    .end local v6    # "subId":I
    .end local v7    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v13    # "usageTime":J
    .end local v15    # "end":Ljava/lang/String;
    .end local v16    # "limitBehavior":I
    .end local v17    # "start":Ljava/lang/String;
    .end local v21    # "period":Ljava/lang/String;
    .end local v22    # "limitBytes":J
    .end local v24    # "builder":Landroid/telephony/SubscriptionPlan$Builder;
    .end local v25    # "usageBytes":J
    move/from16 v2, v20

    goto/16 :goto_e

    :cond_11
    const-string/jumbo v2, "uid-policy"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-string/jumbo v6, "unable to apply policy to UID "

    const-string/jumbo v7, "policy"

    const-string/jumbo v10, "uid"

    if-eqz v2, :cond_13

    .line 2364
    :try_start_7
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 2365
    .local v2, "uid":I
    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 2367
    .local v7, "policy":I
    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 2368
    const/4 v6, 0x0

    invoke-direct {v1, v2, v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_b

    .line 2370
    :cond_12
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; ignoring"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    .end local v2    # "uid":I
    .end local v7    # "policy":I
    :goto_b
    move/from16 v2, v20

    goto/16 :goto_e

    :cond_13
    const-string v2, "app-policy"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2373
    const-string v2, "appId"

    invoke-static {v4, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 2374
    .local v2, "appId":I
    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v7

    .line 2378
    .restart local v7    # "policy":I
    const/4 v10, 0x0

    invoke-static {v10, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    .line 2379
    .local v11, "uid":I
    invoke-static {v11}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 2380
    invoke-direct {v1, v11, v7, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_c

    .line 2382
    :cond_14
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; ignoring"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    .end local v2    # "appId":I
    .end local v7    # "policy":I
    .end local v11    # "uid":I
    :goto_c
    move/from16 v2, v20

    goto :goto_e

    :cond_15
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2385
    const/4 v2, 0x1

    move v8, v2

    move/from16 v6, v18

    move/from16 v2, v20

    .end local v8    # "insideWhitelist":Z
    .local v2, "insideWhitelist":Z
    goto :goto_f

    .line 2386
    .end local v2    # "insideWhitelist":Z
    .restart local v8    # "insideWhitelist":Z
    :cond_16
    const-string/jumbo v2, "restrict-background"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v8, :cond_17

    .line 2387
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 2388
    .local v2, "uid":I
    const/4 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .end local v2    # "uid":I
    goto :goto_d

    .line 2389
    :cond_17
    const-string/jumbo v2, "revoked-restrict-background"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    if-eqz v8, :cond_18

    .line 2390
    invoke-static {v4, v10}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    .line 2391
    .restart local v2    # "uid":I
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2392
    .end local v2    # "uid":I
    move/from16 v2, v20

    goto :goto_e

    .line 2389
    :cond_18
    :goto_d
    move/from16 v2, v20

    goto :goto_e

    .line 2393
    .end local v18    # "version":I
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .end local v20    # "type":I
    .local v2, "fis":Ljava/io/FileInputStream;
    .local v6, "version":I
    .local v10, "type":I
    :cond_19
    move-object/from16 v19, v2

    move/from16 v18, v6

    move/from16 v20, v10

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "version":I
    .end local v10    # "type":I
    .restart local v18    # "version":I
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v20    # "type":I
    move/from16 v2, v20

    .end local v20    # "type":I
    .local v2, "type":I
    if-ne v2, v13, :cond_1a

    .line 2394
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 2395
    const/4 v6, 0x0

    move v8, v6

    move/from16 v6, v18

    .end local v8    # "insideWhitelist":Z
    .local v6, "insideWhitelist":Z
    goto :goto_f

    .line 2399
    .end local v6    # "insideWhitelist":Z
    .end local v9    # "tag":Ljava/lang/String;
    .restart local v8    # "insideWhitelist":Z
    :cond_1a
    :goto_e
    move/from16 v6, v18

    .end local v18    # "version":I
    .local v6, "version":I
    :goto_f
    move-object/from16 v2, v19

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2401
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    .restart local v10    # "type":I
    :cond_1b
    move-object/from16 v19, v2

    move/from16 v18, v6

    move v2, v10

    .end local v6    # "version":I
    .end local v10    # "type":I
    .local v2, "type":I
    .restart local v18    # "version":I
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    .line 2402
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_10
    if-ge v7, v6, :cond_1f

    .line 2403
    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    .line 2404
    .local v9, "uid":I
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v10, v9, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 2405
    .local v10, "policy":I
    and-int/lit8 v11, v10, 0x1

    if-eqz v11, :cond_1c

    .line 2406
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ignoring restrict-background-whitelist for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " because its policy is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2406
    invoke-static {v3, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    const/4 v12, 0x0

    goto :goto_11

    .line 2410
    :cond_1c
    invoke-static {v9}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_1e

    .line 2411
    or-int/lit8 v11, v10, 0x4

    .line 2412
    .local v11, "newPolicy":I
    sget-boolean v12, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v12, :cond_1d

    .line 2413
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

    .line 2414
    :cond_1d
    const/4 v12, 0x0

    invoke-direct {v1, v9, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2415
    .end local v11    # "newPolicy":I
    goto :goto_11

    .line 2416
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
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2402
    .end local v9    # "uid":I
    .end local v10    # "policy":I
    :goto_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .end local v2    # "type":I
    .end local v4    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .end local v6    # "size":I
    .end local v7    # "i":I
    .end local v8    # "insideWhitelist":Z
    .end local v18    # "version":I
    :cond_1f
    goto :goto_14

    .line 2423
    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_12

    .line 2420
    :catch_1
    move-exception v0

    move-object v2, v0

    goto :goto_13

    .line 2426
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    goto :goto_16

    .line 2423
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    goto :goto_12

    .line 2420
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    goto :goto_13

    .line 2426
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    goto :goto_16

    .line 2423
    :catch_4
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    .line 2424
    .local v2, "e":Ljava/lang/Exception;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    :goto_12
    :try_start_8
    const-string/jumbo v4, "problem reading network policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2426
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_15

    .line 2420
    .end local v19    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    move-object/from16 v19, v2

    move-object v2, v0

    .line 2422
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v19    # "fis":Ljava/io/FileInputStream;
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeDefaultBackgroundDataUL()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2426
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_14
    nop

    :goto_15
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2427
    nop

    .line 2428
    return-void

    .line 2426
    :catchall_2
    move-exception v0

    move-object v2, v0

    :goto_16
    invoke-static/range {v19 .. v19}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 4875
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4878
    :catch_0
    move-exception v0

    goto :goto_1

    .line 4876
    :catch_1
    move-exception v0

    .line 4877
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4880
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 4881
    :goto_1
    return-void
.end method

.method private removeInterfaceQuotaAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 4870
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4871
    return-void
.end method

.method private removeUidStateUL(I)Z
    .locals 3
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3731
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 3732
    .local v0, "index":I
    if-ltz v0, :cond_2

    .line 3733
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 3734
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 3735
    const/16 v2, 0x14

    if-eq v1, v2, :cond_2

    .line 3736
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 3738
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_0

    .line 3739
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 3741
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v2, :cond_1

    .line 3742
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 3744
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 3745
    const/4 v2, 0x1

    return v2

    .line 3748
    .end local v1    # "oldUidState":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private resetUidFirewallRules(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 5045
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5046
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5047
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x3

    .line 5048
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5049
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 5050
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5053
    :catch_0
    move-exception v0

    goto :goto_1

    .line 5051
    :catch_1
    move-exception v0

    .line 5052
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

    .line 5055
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 5056
    :goto_1
    return-void
.end method

.method private sendRestrictBackgroundChangedMsg()V
    .locals 4

    .line 3025
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3026
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3027
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3028
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 4861
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4864
    :catch_0
    move-exception v0

    goto :goto_1

    .line 4862
    :catch_1
    move-exception v0

    .line 4863
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4866
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 4867
    :goto_1
    return-void
.end method

.method private setInterfaceQuotaAsync(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 4855
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

    .line 4856
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4857
    return-void
.end method

.method private setMeteredNetworkBlacklist(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 4884
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

    .line 4886
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4889
    :catch_0
    move-exception v0

    goto :goto_1

    .line 4887
    :catch_1
    move-exception v0

    .line 4888
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

    .line 4891
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 4892
    :goto_1
    return-void
.end method

.method private setMeteredNetworkWhitelist(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 4895
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

    .line 4897
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4900
    :catch_0
    move-exception v0

    goto :goto_1

    .line 4898
    :catch_1
    move-exception v0

    .line 4899
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

    .line 4902
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 4903
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

    .line 5409
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5410
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5411
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

    .line 5412
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidForPackage(Ljava/lang/String;I)I

    move-result v4

    .line 5413
    .local v4, "uid":I
    if-ltz v4, :cond_0

    .line 5414
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5416
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_0
    goto :goto_0

    .line 5417
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 5418
    .local v2, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5419
    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V

    .line 5420
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meteredRestrictedPkgsChanged(Ljava/util/Set;)V

    .line 5421
    .end local v1    # "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 5422
    return-void

    .line 5421
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

    .line 1798
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1799
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1800
    return-void
.end method

.method private setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V
    .locals 13
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .line 1806
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1810
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 1811
    .local v0, "matchingSubIds":Landroid/util/IntArray;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1812
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1813
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1814
    .local v3, "subId":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 1816
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

    .line 1820
    .local v4, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v4}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1821
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    .line 1812
    .end local v3    # "subId":I
    .end local v4    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v8    # "subscriberId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1824
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1827
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1828
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1829
    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 1832
    .restart local v3    # "subId":I
    if-nez p2, :cond_2

    .line 1833
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

    .line 1836
    :cond_2
    invoke-virtual {v1, p2, v3}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(ZI)V

    .line 1828
    .end local v3    # "subId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1824
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "i":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1839
    .end local v0    # "matchingSubIds":Landroid/util/IntArray;
    :cond_3
    return-void
.end method

.method private setRestrictBackgroundUL(Z)V
    .locals 6
    .param p1, "restrictBackground"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 2980
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setRestrictBackgroundUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2982
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v2, :cond_0

    .line 2984
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

    .line 3020
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2985
    return-void

    .line 2987
    :cond_0
    :try_start_1
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2989
    .local v2, "oldRestrictBackground":Z
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2993
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2995
    :try_start_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2996
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

    .line 2998
    iput-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3020
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3001
    return-void

    .line 3005
    :cond_1
    goto :goto_0

    .line 3003
    :catch_0
    move-exception v3

    .line 3007
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendRestrictBackgroundChangedMsg()V

    .line 3008
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v2, v4}, Lcom/android/server/net/NetworkPolicyLogger;->restrictBackgroundChanged(ZZ)V

    .line 3010
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    iget-boolean v3, v3, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    if-eqz v3, :cond_2

    .line 3011
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 3013
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3017
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3018
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3020
    .end local v2    # "oldRestrictBackground":Z
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3021
    nop

    .line 3022
    return-void

    .line 3018
    .restart local v2    # "oldRestrictBackground":Z
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "restrictBackground":Z
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3020
    .end local v2    # "oldRestrictBackground":Z
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "restrictBackground":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private setUidFirewallRule(III)V
    .locals 5
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 4982
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4983
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

    .line 4987
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 4988
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 5015
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 4989
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 4990
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 4991
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 4992
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4997
    :cond_3
    :goto_0
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "NetworkPolicy"

    if-eqz v2, :cond_4

    .line 4998
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

    .line 5002
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5003
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 5010
    :catch_0
    move-exception v2

    .line 5011
    .local v2, "oobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_3
    const-string/jumbo v4, "problem setting firewall uid rules "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 5006
    .end local v2    # "oobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_1
    move-exception v2

    .line 5013
    :goto_1
    goto :goto_2

    .line 5004
    :catch_2
    move-exception v2

    .line 5005
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "problem setting firewall uid rules"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5013
    nop

    .line 5015
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5016
    nop

    .line 5017
    return-void

    .line 5015
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V
    .locals 7
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .line 4956
    const-string v0, "NetworkPolicy"

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/net/OpNetworkPolicyInjector;->adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 4958
    .local v1, "uidRulesTemp":Landroid/util/SparseIntArray;
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 4959
    .local v2, "size":I
    new-array v3, v2, [I

    .line 4960
    .local v3, "uids":[I
    new-array v4, v2, [I

    .line 4961
    .local v4, "rules":[I
    add-int/lit8 v5, v2, -0x1

    .local v5, "index":I
    :goto_0
    if-ltz v5, :cond_0

    .line 4962
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    aput v6, v3, v5

    .line 4963
    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    aput v6, v4, v5

    .line 4961
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 4966
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

    .line 4969
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v5, p1, v3, v4}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V

    .line 4970
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

    .line 4973
    :catch_0
    move-exception v0

    goto :goto_2

    .line 4971
    :catch_1
    move-exception v1

    .line 4972
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "problem setting firewall uid rules"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4975
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    nop

    .line 4976
    :goto_2
    return-void
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    .locals 1
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;
    .param p3, "toggle"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4928
    if-eqz p2, :cond_0

    .line 4929
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    .line 4931
    :cond_0
    if-eqz p3, :cond_2

    .line 4932
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 4934
    :cond_2
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIIZ)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "policy"    # I
    .param p4, "persist"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 2661
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2664
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2665
    const/4 v0, 0x0

    .local v0, "notifyApp":Z
    goto/16 :goto_8

    .line 2667
    .end local v0    # "notifyApp":Z
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 2668
    .local v2, "wasBlacklisted":Z
    :goto_0
    if-ne p3, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 2669
    .local v3, "isBlacklisted":Z
    :goto_1
    const/4 v4, 0x4

    if-ne p2, v4, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v0

    .line 2670
    .local v5, "wasWhitelisted":Z
    :goto_2
    if-ne p3, v4, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v0

    .line 2671
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

    .line 2672
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

    .line 2673
    .local v7, "isBlocked":Z
    :goto_7
    if-eqz v5, :cond_b

    if-eqz v4, :cond_9

    if-eqz v3, :cond_b

    :cond_9
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 2674
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2675
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_b

    .line 2676
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_a

    .line 2677
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

    .line 2678
    :cond_a
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2680
    :cond_b
    if-eq v6, v7, :cond_c

    move v0, v1

    .line 2682
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

    .line 2683
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2684
    if-eqz p4, :cond_d

    .line 2685
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2686
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2687
    monitor-exit v1

    goto :goto_9

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2689
    :cond_d
    :goto_9
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 2693
    if-nez p2, :cond_0

    .line 2694
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 2696
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2700
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 2701
    if-eqz p3, :cond_1

    .line 2702
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2703
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2704
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2706
    :cond_1
    :goto_1
    return-void
.end method

.method private static updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .locals 3
    .param p0, "lastValues"    # Landroid/util/SparseBooleanArray;
    .param p1, "newValue"    # Z
    .param p2, "network"    # Landroid/net/Network;

    .line 1109
    iget v0, p2, Landroid/net/Network;->netId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1110
    .local v0, "lastValue":Z
    if-ne v0, p1, :cond_0

    iget v2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1111
    .local v1, "changed":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 1112
    iget v2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1114
    :cond_2
    return v1
.end method

.method private updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z
    .locals 19
    .param p1, "subId"    # I
    .param p2, "policy"    # Landroid/net/NetworkPolicy;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2170
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->inferred:Z

    const-string v4, "NetworkPolicy"

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 2171
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

    .line 2172
    :cond_0
    return v5

    .line 2175
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

    .line 2179
    .local v3, "original":Landroid/net/NetworkPolicy;
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    .line 2180
    .local v5, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_5

    .line 2181
    const/4 v6, 0x0

    aget-object v8, v5, v6

    .line 2182
    .local v8, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v8}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v6

    iput-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2183
    invoke-virtual {v8}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v9

    .line 2184
    .local v9, "planLimitBytes":J
    const-wide/16 v11, -0x1

    cmp-long v6, v9, v11

    if-nez v6, :cond_2

    .line 2185
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v11

    iput-wide v11, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2186
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v11

    iput-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    .line 2187
    :cond_2
    const-wide v13, 0x7fffffffffffffffL

    cmp-long v6, v9, v13

    if-nez v6, :cond_3

    .line 2188
    iput-wide v11, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2189
    iput-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    .line 2191
    :cond_3
    const-wide/16 v13, 0x9

    mul-long/2addr v13, v9

    const-wide/16 v15, 0xa

    div-long/2addr v13, v15

    iput-wide v13, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2192
    invoke-virtual {v8}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v6

    if-eqz v6, :cond_4

    if-eq v6, v7, :cond_4

    .line 2198
    iput-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_0

    .line 2195
    :cond_4
    iput-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2196
    nop

    .line 2202
    .end local v8    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v9    # "planLimitBytes":J
    :goto_0
    goto :goto_2

    .line 2203
    :cond_5
    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v6, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 2205
    .local v6, "config":Landroid/os/PersistableBundle;
    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v8}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2206
    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v8, v8, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v8

    .local v8, "currentCycleDay":I
    goto :goto_1

    .line 2208
    .end local v8    # "currentCycleDay":I
    :cond_6
    const/4 v8, -0x1

    .line 2210
    .restart local v8    # "currentCycleDay":I
    :goto_1
    invoke-virtual {v0, v6, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I

    move-result v9

    .line 2211
    .local v9, "cycleDay":I
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v10

    iput-object v10, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2212
    iget-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v6, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2213
    iget-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v6, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v10

    iput-wide v10, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2216
    .end local v6    # "config":Landroid/os/PersistableBundle;
    .end local v8    # "currentCycleDay":I
    .end local v9    # "cycleDay":I
    :goto_2
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2217
    const/4 v4, 0x0

    return v4

    .line 2219
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

    .line 2220
    return v7
.end method

.method private updateNetworkStats(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .line 3753
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3755
    if-eqz p2, :cond_0

    const-string v3, "F"

    goto :goto_0

    :cond_0
    const-string v3, "B"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3754
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3758
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/net/NetworkStatsManagerInternal;->setUidForeground(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3760
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3761
    nop

    .line 3762
    return-void

    .line 3760
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateNetworksInternal()V
    .locals 3

    .line 1541
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 1543
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1544
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1545
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL()V

    .line 1546
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1547
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1548
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1552
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1553
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1554
    return-void

    .line 1552
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_4
    throw v2

    .line 1553
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .line 3766
    nop

    .line 3767
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    .line 3768
    .local v0, "oldForeground":Z
    nop

    .line 3769
    invoke-static {p3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    .line 3770
    .local v1, "newForeground":Z
    if-eq v0, v1, :cond_0

    .line 3771
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 3773
    :cond_0
    return-void
.end method

.method private updateRestrictionRulesForUidUL(I)V
    .locals 0
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4269
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4270
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4271
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4274
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4277
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4278
    return-void
.end method

.method private updateRulesForAllAppsUL(I)V
    .locals 16
    .param p1, "type"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4052
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRulesForRestrictPowerUL-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4058
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v5, v0

    .line 4062
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v0, "list-users"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4064
    :try_start_1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v0

    .line 4066
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4067
    nop

    .line 4068
    const-string/jumbo v0, "list-uids"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 4070
    const v0, 0x4c0200

    :try_start_3
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4075
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4076
    nop

    .line 4078
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 4079
    .local v7, "usersSize":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 4080
    .local v8, "appsSize":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_4

    .line 4081
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    .line 4082
    .local v10, "user":Landroid/content/pm/UserInfo;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v8, :cond_3

    .line 4083
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    .line 4084
    .local v12, "app":Landroid/content/pm/ApplicationInfo;
    iget v13, v10, Landroid/content/pm/UserInfo;->id:I

    iget v14, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 4085
    .local v13, "uid":I
    const/4 v14, 0x1

    if-eq v2, v14, :cond_2

    const/4 v14, 0x2

    if-eq v2, v14, :cond_1

    .line 4093
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

    .line 4090
    :cond_1
    invoke-direct {v1, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4091
    goto :goto_2

    .line 4087
    :cond_2
    invoke-direct {v1, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4088
    nop

    .line 4082
    .end local v12    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "uid":I
    :goto_2
    add-int/lit8 v11, v11, 0x1

    const-wide/32 v3, 0x200000

    goto :goto_1

    .line 4080
    .end local v10    # "user":Landroid/content/pm/UserInfo;
    .end local v11    # "j":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    const-wide/32 v3, 0x200000

    goto :goto_0

    .line 4098
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "usersSize":I
    .end local v8    # "appsSize":I
    .end local v9    # "i":I
    :cond_4
    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4099
    nop

    .line 4100
    return-void

    .line 4075
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v0

    move-object v3, v0

    const-wide/32 v7, 0x200000

    :try_start_5
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "type":I
    throw v3

    .line 4066
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "type":I
    :catchall_1
    move-exception v0

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "type":I
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4098
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "type":I
    :catchall_2
    move-exception v0

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateRulesForDataUsageRestrictionsUL(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 4320
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForDataUsageRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4325
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsULInner(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4327
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4328
    nop

    .line 4329
    return-void

    .line 4327
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForDataUsageRestrictionsULInner(I)V
    .locals 18
    .param p1, "uid"    # I

    .line 4332
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v2

    const-string v3, "NetworkPolicy"

    if-nez v2, :cond_1

    .line 4333
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

    .line 4334
    :cond_0
    return-void

    .line 4337
    :cond_1
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4338
    .local v2, "uidPolicy":I
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 4339
    .local v5, "oldUidRules":I
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v6

    .line 4340
    .local v6, "isForeground":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedByAdminUL(I)Z

    move-result v7

    .line 4342
    .local v7, "isRestrictedByAdmin":Z
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v4

    .line 4343
    .local v8, "isBlacklisted":Z
    :goto_0
    and-int/lit8 v10, v2, 0x4

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    move v10, v4

    .line 4344
    .local v10, "isWhitelisted":Z
    :goto_1
    and-int/lit8 v11, v5, 0xf

    .line 4345
    .local v11, "oldRule":I
    const/4 v12, 0x0

    .line 4348
    .local v12, "newRule":I
    if-eqz v7, :cond_4

    .line 4349
    const/4 v12, 0x4

    goto :goto_3

    .line 4350
    :cond_4
    if-eqz v6, :cond_7

    .line 4351
    if-nez v8, :cond_6

    iget-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v13, :cond_5

    if-nez v10, :cond_5

    goto :goto_2

    .line 4353
    :cond_5
    if-eqz v10, :cond_9

    .line 4354
    const/4 v12, 0x1

    goto :goto_3

    .line 4352
    :cond_6
    :goto_2
    const/4 v12, 0x2

    goto :goto_3

    .line 4357
    :cond_7
    if-eqz v8, :cond_8

    .line 4358
    const/4 v12, 0x4

    goto :goto_3

    .line 4359
    :cond_8
    iget-boolean v13, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v13, :cond_9

    if-eqz v10, :cond_9

    .line 4360
    const/4 v12, 0x1

    .line 4363
    :cond_9
    :goto_3
    and-int/lit16 v13, v5, 0xf0

    or-int/2addr v13, v12

    .line 4365
    .local v13, "newUidRules":I
    sget-boolean v14, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v15, ", newRule="

    const-string v4, ", oldRule="

    const-string v9, ", isRestrictedByAdmin="

    if-eqz v14, :cond_a

    .line 4366
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

    .line 4371
    invoke-static {v11}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4372
    invoke-static {v12}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newUidRules="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4373
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldUidRules="

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4374
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4366
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4365
    .end local v17    # "uidPolicy":I
    .restart local v2    # "uidPolicy":I
    :cond_a
    move/from16 v17, v2

    .line 4377
    .end local v2    # "uidPolicy":I
    .restart local v17    # "uidPolicy":I
    :goto_4
    if-nez v13, :cond_b

    .line 4378
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_5

    .line 4380
    :cond_b
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 4384
    :goto_5
    if-eq v12, v11, :cond_17

    .line 4385
    const/4 v2, 0x2

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 4389
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4393
    if-eqz v8, :cond_16

    .line 4394
    const/4 v14, 0x0

    invoke-direct {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_8

    .line 4396
    :cond_c
    const/4 v14, 0x0

    invoke-static {v11, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4403
    if-nez v10, :cond_d

    .line 4404
    invoke-direct {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4406
    :cond_d
    if-nez v8, :cond_e

    if-eqz v7, :cond_16

    .line 4407
    :cond_e
    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_8

    .line 4409
    :cond_f
    const/4 v2, 0x4

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v16

    if-nez v16, :cond_13

    .line 4410
    invoke-static {v11, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v16

    if-eqz v16, :cond_10

    goto :goto_7

    .line 4419
    :cond_10
    const/4 v2, 0x1

    invoke-static {v12, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v14

    if-nez v14, :cond_12

    .line 4420
    invoke-static {v11, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_6

    .line 4425
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

    .line 4430
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4431
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4425
    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4422
    :cond_12
    :goto_6
    invoke-direct {v0, v1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_8

    .line 4412
    :cond_13
    :goto_7
    if-nez v8, :cond_14

    if-eqz v7, :cond_15

    :cond_14
    const/4 v14, 0x1

    :cond_15
    invoke-direct {v0, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    .line 4413
    invoke-static {v11, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v10, :cond_16

    .line 4417
    invoke-direct {v0, v1, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4435
    :cond_16
    :goto_8
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4437
    :cond_17
    return-void
.end method

.method private updateRulesForGlobalChangeAL(Z)V
    .locals 4
    .param p1, "restrictedNetworksChanged"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 3990
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForGlobalChangeAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3992
    if-eqz p1, :cond_0

    const-string v3, "R"

    goto :goto_0

    :cond_0
    const-string v3, "-"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3991
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3995
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 3996
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 3997
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 4000
    if-eqz p1, :cond_2

    .line 4001
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 4002
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4005
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4006
    nop

    .line 4007
    return-void

    .line 4005
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(IIZ)I
    .locals 4
    .param p1, "uid"    # I
    .param p2, "oldUidRules"    # I
    .param p3, "paroled"    # Z

    .line 4480
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4481
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4483
    if-eqz p3, :cond_0

    const-string v3, "P"

    goto :goto_0

    :cond_0
    const-string v3, "-"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4481
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4486
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsULInner(IIZ)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4488
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4486
    return v2

    .line 4488
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(I)V
    .locals 3
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4459
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4461
    .local v0, "oldUidRules":I
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v1

    .line 4463
    .local v1, "newUidRules":I
    if-nez v1, :cond_0

    .line 4464
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 4466
    :cond_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4468
    :goto_0
    return-void
.end method

.method private updateRulesForPowerRestrictionsULInner(IIZ)I
    .locals 16
    .param p1, "uid"    # I
    .param p2, "oldUidRules"    # I
    .param p3, "paroled"    # Z

    .line 4493
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "NetworkPolicy"

    if-nez v3, :cond_1

    .line 4494
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no need to update restrict power rules for uid "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4495
    :cond_0
    return v4

    .line 4498
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v4

    .line 4499
    .local v6, "isIdle":Z
    :goto_0
    if-nez v6, :cond_3

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-nez v7, :cond_3

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 4500
    .local v4, "restrictMode":Z
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v7

    .line 4502
    .local v7, "isForeground":Z
    iget-boolean v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {v0, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedFromPowerSaveUL(IZ)Z

    move-result v8

    .line 4503
    .local v8, "isWhitelisted":Z
    and-int/lit16 v9, v2, 0xf0

    .line 4504
    .local v9, "oldRule":I
    const/4 v10, 0x0

    .line 4510
    .local v10, "newRule":I
    const/16 v11, 0x20

    if-eqz v7, :cond_5

    .line 4511
    if-eqz v4, :cond_7

    .line 4512
    const/16 v10, 0x20

    goto :goto_2

    .line 4514
    :cond_5
    if-eqz v4, :cond_7

    .line 4515
    if-eqz v8, :cond_6

    move v13, v11

    goto :goto_1

    :cond_6
    const/16 v13, 0x40

    :goto_1
    move v10, v13

    .line 4518
    :cond_7
    :goto_2
    and-int/lit8 v13, v2, 0xf

    or-int/2addr v13, v10

    .line 4520
    .local v13, "newUidRules":I
    sget-boolean v14, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v15, ", newRule="

    const-string v3, ", oldRule="

    if-eqz v14, :cond_8

    .line 4521
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateRulesForPowerRestrictionsUL("

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "), isIdle: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", mRestrictPower: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", mDeviceIdleMode: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isForeground="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isWhitelisted="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4527
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4528
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", newUidRules="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4529
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", oldUidRules="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4530
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4521
    invoke-static {v5, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4534
    :cond_8
    if-eq v10, v9, :cond_d

    .line 4535
    if-eqz v10, :cond_b

    invoke-static {v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3

    .line 4537
    :cond_9
    const/16 v11, 0x40

    invoke-static {v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 4538
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Rejecting non-metered access for UID "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4541
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

    .line 4544
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4545
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4541
    invoke-static {v5, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4536
    :cond_b
    :goto_3
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Allowing non-metered access for UID "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    :cond_c
    :goto_4
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v1, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 4550
    :cond_d
    return v13
.end method

.method private updateRulesForRestrictBackgroundUL()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4031
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictBackgroundUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4033
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4035
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4036
    nop

    .line 4037
    return-void

    .line 4035
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForRestrictPowerUL()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4019
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForRestrictPowerUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4021
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 4022
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    .line 4023
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4025
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4026
    nop

    .line 4027
    return-void

    .line 4025
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForTempWhitelistChangeUL(I)V
    .locals 5
    .param p1, "appId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 4104
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 4105
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4106
    .local v1, "numUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4107
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4108
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4110
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4111
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4112
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4114
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4106
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4116
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V
    .locals 4
    .param p1, "uidRules"    # Landroid/util/SparseIntArray;
    .param p2, "whitelistedAppIds"    # Landroid/util/SparseBooleanArray;
    .param p3, "userId"    # I

    .line 3849
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3850
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3851
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 3852
    .local v2, "appId":I
    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 3853
    .local v3, "uid":I
    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3849
    .end local v2    # "appId":I
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3856
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(IZI)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "enabled"    # Z
    .param p3, "chain"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3881
    if-eqz p2, :cond_3

    .line 3882
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

    .line 3884
    .local v2, "isWhitelisted":Z
    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 3887
    :cond_1
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_2

    .line 3885
    :cond_2
    :goto_1
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 3890
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3812
    if-eqz p1, :cond_4

    .line 3815
    move-object v0, p3

    .line 3816
    .local v0, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 3817
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 3818
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "ui":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3819
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 3820
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 3821
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 3822
    const/4 v5, 0x3

    if-ne p2, v5, :cond_0

    .line 3823
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 3827
    :cond_0
    invoke-static {v0}, Lcom/android/server/OpSmartDozeInjector;->updateRulesForSmartDozeWhitelistedAppIds(Landroid/util/SparseIntArray;)V

    .line 3818
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3829
    .end local v2    # "ui":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    .line 3836
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/net/OpNetworkPolicyInjector;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3838
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3829
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3841
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 3842
    .end local v0    # "uidRules":Landroid/util/SparseIntArray;
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_2

    .line 3843
    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 3845
    :goto_2
    return-void
.end method

.method private updateUidStateUL(II)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "uidState"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3694
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateUidStateUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3696
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x14

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 3697
    .local v2, "oldUidState":I
    if-eq v2, p2, :cond_3

    .line 3699
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3700
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 3709
    invoke-static {p1, v2}, Lcom/android/server/net/OpNetworkPolicyInjector;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v3

    .line 3710
    invoke-static {p1, p2}, Lcom/android/server/net/OpNetworkPolicyInjector;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v4

    if-eq v3, v4, :cond_2

    .line 3712
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 3713
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_0

    .line 3714
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 3716
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v3, :cond_1

    .line 3717
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 3719
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3721
    :cond_2
    const/4 v3, 0x1

    .line 3724
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3721
    return v3

    .line 3724
    .end local v2    # "oldUidState":I
    :cond_3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3725
    nop

    .line 3726
    const/4 v0, 0x0

    return v0

    .line 3724
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private upgradeDefaultBackgroundDataUL()V
    .locals 3

    .line 2439
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 2440
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2439
    const/4 v1, 0x0

    const-string v2, "default_restrict_background_data"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 2450
    return-void
.end method

.method private upgradeWifiMeteredOverrideAL()V
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock",
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 2458
    const/4 v0, 0x0

    .line 2459
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 2460
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2461
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2462
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 2463
    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    iget-boolean v5, v4, Landroid/net/NetworkPolicy;->inferred:Z

    if-nez v5, :cond_3

    .line 2465
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2466
    const/4 v0, 0x1

    .line 2468
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2469
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

    .line 2470
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2471
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

    .line 2472
    iget-boolean v8, v4, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v8, :cond_0

    .line 2473
    const/4 v8, 0x1

    goto :goto_2

    .line 2474
    :cond_0
    const/4 v8, 0x2

    :goto_2
    iput v8, v7, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 2475
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2477
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    goto :goto_1

    .line 2478
    .end local v5    # "networkId":Ljava/lang/String;
    :cond_2
    goto :goto_3

    .line 2479
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 2481
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :goto_3
    goto :goto_0

    .line 2482
    .end local v3    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 2483
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2485
    :cond_5
    return-void
.end method

.method private waitForAdminData()V
    .locals 4

    .line 5478
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5479
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 5482
    :cond_0
    return-void
.end method


# virtual methods
.method addDefaultRestrictBackgroundWhitelistUidsUL()Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 692
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 693
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 695
    .local v1, "numberUsers":I
    const/4 v2, 0x0

    .line 696
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 697
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 698
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

    .line 696
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 700
    .end local v3    # "i":I
    :cond_2
    return v2
.end method

.method addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5131
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5132
    return-void
.end method

.method addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V
    .locals 2
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .line 2852
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 2853
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 2854
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 2855
    return-void
.end method

.method public addUidPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2625
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2631
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2632
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2633
    .local v1, "oldPolicy":I
    or-int/2addr p2, v1

    .line 2634
    if-eq v1, p2, :cond_0

    .line 2635
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2636
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2638
    .end local v1    # "oldPolicy":I
    :cond_0
    monitor-exit v0

    .line 2639
    return-void

    .line 2638
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2628
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

    .line 660
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 661
    return-void
.end method

.method buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;
    .locals 17
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2147
    move-object/from16 v1, p0

    invoke-static/range {p2 .. p2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v15

    .line 2149
    .local v15, "template":Landroid/net/NetworkTemplate;
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v16

    .line 2150
    .local v16, "cycleRule":Landroid/util/RecurrenceRule;
    new-instance v0, Landroid/net/NetworkPolicy;

    .line 2151
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

    .line 2153
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2154
    :try_start_0
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2155
    move/from16 v5, p1

    :try_start_1
    invoke-direct {v1, v5, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    .line 2156
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2157
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2158
    return-object v2

    .line 2156
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

    .line 2157
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

    .line 3429
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkPolicy"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3431
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3433
    .local v0, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, p3

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 3434
    .local v1, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p3, v4

    .line 3435
    .local v5, "arg":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3434
    .end local v5    # "arg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3438
    :cond_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3439
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3440
    :try_start_1
    const-string v5, "--unsnooze"

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3441
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_2

    .line 3442
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3441
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3445
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3447
    const-string v3, "Cleared snooze timestamps"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3448
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 3453
    :cond_3
    :try_start_3
    invoke-static {p1, p2, p3}, Lcom/android/server/net/OpNetworkPolicyInjector;->dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3454
    invoke-static {}, Lcom/android/server/net/OpNetworkPolicyInjector;->ifEnableLogDump()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 3455
    invoke-static {}, Lcom/android/server/net/OpNetworkPolicyInjector;->ifEnableLogDump()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 3456
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    .line 3460
    :cond_4
    :try_start_5
    const-string v5, "System ready: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3461
    const-string v5, "Restrict background: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3462
    const-string v5, "Restrict power: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3463
    const-string v5, "Device idle: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3464
    const-string v5, "Metered ifaces: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3466
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3467
    const-string v5, "Network policies:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3468
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3469
    move v5, v3

    .local v5, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 3470
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3469
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3472
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3474
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3475
    const-string v5, "Subscription plans:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3476
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3477
    move v5, v3

    .restart local v5    # "i":I
    :goto_3
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 3478
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3479
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

    .line 3480
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3481
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 3482
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3483
    array-length v8, v7

    move v9, v3

    :goto_4
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    .line 3484
    .local v10, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3483
    .end local v10    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 3487
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3477
    nop

    .end local v6    # "subId":I
    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3489
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3491
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3492
    const-string v5, "Active subscriptions:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3493
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3494
    move v5, v3

    .restart local v5    # "i":I
    :goto_5
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 3495
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3496
    .restart local v6    # "subId":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3498
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

    .line 3494
    .end local v6    # "subId":I
    .end local v7    # "subscriberId":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3500
    .end local v5    # "i":I
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3502
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Merged subscriptions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 3504
    invoke-static {v6}, Landroid/net/NetworkIdentity;->scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3503
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3506
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3507
    const-string v5, "Policy for UIDs:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3508
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3509
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 3510
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v5, :cond_9

    .line 3511
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 3512
    .local v7, "uid":I
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 3513
    .local v8, "policy":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3514
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3515
    const-string v9, " policy="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3516
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3517
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3510
    .end local v7    # "uid":I
    .end local v8    # "policy":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 3519
    .end local v6    # "i":I
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3521
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3522
    if-lez v5, :cond_b

    .line 3523
    const-string v6, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3524
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3525
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    if-ge v6, v5, :cond_a

    .line 3526
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3527
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3528
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3529
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3530
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3525
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 3532
    .end local v6    # "i":I
    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3535
    :cond_b
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3536
    if-lez v5, :cond_d

    .line 3537
    const-string v6, "Power save whitelist app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3538
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3539
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8
    if-ge v6, v5, :cond_c

    .line 3540
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3541
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3542
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3543
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3544
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3539
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 3546
    .end local v6    # "i":I
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3549
    :cond_d
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3550
    if-lez v5, :cond_f

    .line 3551
    const-string v6, "App idle whitelist app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3552
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3553
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_9
    if-ge v6, v5, :cond_e

    .line 3554
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3555
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3556
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3557
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3558
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3553
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 3560
    .end local v6    # "i":I
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3563
    :cond_f
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3564
    if-lez v5, :cond_11

    .line 3565
    const-string v6, "Default restrict background whitelist uids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3566
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3567
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_a
    if-ge v6, v5, :cond_10

    .line 3568
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3569
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3570
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3567
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 3572
    .end local v6    # "i":I
    :cond_10
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3575
    :cond_11
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3576
    if-lez v5, :cond_13

    .line 3577
    const-string v6, "Default restrict background whitelist uids revoked by users:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3578
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3579
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v5, :cond_12

    .line 3580
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3581
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3582
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3579
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 3584
    .end local v6    # "i":I
    :cond_12
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3587
    :cond_13
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3588
    .local v6, "knownUids":Landroid/util/SparseBooleanArray;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3589
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3591
    const-string v7, "Status for all known UIDs:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3592
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3593
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    move v5, v7

    .line 3594
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_c
    if-ge v7, v5, :cond_16

    .line 3595
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 3596
    .local v8, "uid":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3597
    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3599
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v10, 0x14

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 3600
    .local v9, "state":I
    const-string v10, " state="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3601
    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3602
    const/4 v10, 0x2

    if-gt v9, v10, :cond_14

    .line 3603
    const-string v10, " (fg)"

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_e

    .line 3605
    :cond_14
    const/4 v10, 0x6

    if-gt v9, v10, :cond_15

    .line 3606
    const-string v10, " (fg svc)"

    goto :goto_d

    :cond_15
    const-string v10, " (bg)"

    .line 3605
    :goto_d
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3609
    :goto_e
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 3610
    .local v10, "uidRules":I
    const-string v11, " rules="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3611
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3612
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3594
    .end local v8    # "uid":I
    .end local v9    # "state":I
    .end local v10    # "uidRules":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 3614
    .end local v7    # "i":I
    :cond_16
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3616
    const-string v7, "Status for just UIDs with rules:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3617
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3618
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move v5, v7

    .line 3619
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_f
    if-ge v7, v5, :cond_17

    .line 3620
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 3621
    .restart local v8    # "uid":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3622
    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3623
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 3624
    .local v9, "uidRules":I
    const-string v10, " rules="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3625
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3626
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3619
    .end local v8    # "uid":I
    .end local v9    # "uidRules":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 3628
    .end local v7    # "i":I
    :cond_17
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3630
    const-string v3, "Admin restricted uids for metered data:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3631
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3632
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3633
    .end local v5    # "size":I
    .local v3, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10
    if-ge v5, v3, :cond_18

    .line 3634
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

    .line 3635
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3633
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 3637
    .end local v5    # "i":I
    :cond_18
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3639
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3640
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v5, v0}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3642
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v5, v0}, Lcom/android/server/net/NetworkPolicyLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3643
    .end local v3    # "size":I
    .end local v6    # "knownUids":Landroid/util/SparseBooleanArray;
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3644
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3645
    return-void

    .line 3643
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

    .line 3644
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

    .line 5173
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5175
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5176
    return-void

    .line 5180
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 5181
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 5182
    .local v1, "template":Landroid/net/NetworkTemplate;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 5183
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5184
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 5185
    iput-boolean v3, v5, Landroid/net/NetworkPolicy;->inferred:Z

    .line 5186
    invoke-virtual {v5}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 5182
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5189
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 5192
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 5194
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v4, "no_control_apps"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5196
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v2, v5

    .line 5197
    .local v6, "uid":I
    invoke-virtual {p0, v6, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 5196
    .end local v6    # "uid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5200
    :cond_3
    return-void
.end method

.method getAppIdleWhitelist()[I
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4167
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4169
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4170
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 4171
    .local v1, "len":I
    new-array v2, v1, [I

    .line 4172
    .local v2, "uids":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 4173
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    .line 4172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4175
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    return-object v2

    .line 4176
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1604
    if-nez p1, :cond_0

    .line 1605
    return p2

    .line 1607
    :cond_0
    nop

    .line 1608
    const-string/jumbo v0, "monthly_data_cycle_day_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1609
    .local v0, "cycleDay":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1610
    return p2

    .line 1613
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1614
    .local v1, "cal":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 1615
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    if-le v0, v2, :cond_2

    goto :goto_0

    .line 1620
    :cond_2
    return v0

    .line 1616
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

    .line 1618
    return p2
.end method

.method getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .locals 5
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackLimitBytes"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1669
    if-nez p1, :cond_0

    .line 1670
    return-wide p2

    .line 1672
    :cond_0
    nop

    .line 1673
    const-string v0, "data_limit_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1675
    .local v0, "limitBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    .line 1676
    return-wide v3

    .line 1677
    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    .line 1678
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v2

    return-wide v2

    .line 1679
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 1680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value in CarrierConfigManager.KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    return-wide p2

    .line 1685
    :cond_3
    return-wide v0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 2859
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2871
    goto :goto_0

    .line 2864
    :catch_0
    move-exception v0

    .line 2865
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2869
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/net/NetworkPolicy;

    return-object v1

    .line 2873
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2874
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 2875
    .local v1, "size":I
    new-array v2, v1, [Landroid/net/NetworkPolicy;

    .line 2876
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 2877
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v2, v3

    .line 2876
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2879
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0

    return-object v2

    .line 2880
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

    .line 3120
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

    .line 3122
    new-instance v0, Landroid/net/NetworkQuotaInfo;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo;-><init>()V

    return-object v0
.end method

.method public getRestrictBackground()Z
    .locals 3

    .line 3059
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3062
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v0

    return v1

    .line 3063
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .locals 8

    .line 3032
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3033
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3035
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3037
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3040
    .local v2, "token":J
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3042
    .local v4, "policy":I
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3043
    nop

    .line 3044
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 3046
    monitor-exit v1

    return v5

    .line 3048
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v7, :cond_1

    .line 3049
    monitor-exit v1

    return v6

    .line 3051
    :cond_1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 3052
    const/4 v5, 0x2

    goto :goto_0

    .line 3053
    :cond_2
    nop

    :goto_0
    monitor-exit v1

    .line 3051
    return v5

    .line 3042
    .end local v4    # "policy":I
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "uid":I
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    throw v4

    .line 3054
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

    .line 3184
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3186
    const-string v0, "fw.fake_plan"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3187
    .local v4, "fake":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3189
    .local v0, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    const-string/jumbo v5, "month_hard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    const-wide/32 v8, 0x40000000

    const-wide v10, 0x140000000L

    if-eqz v5, :cond_0

    .line 3190
    nop

    .line 3191
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3192
    const-string v12, "G-Mobile"

    invoke-virtual {v5, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3193
    const/4 v12, 0x1

    invoke-virtual {v5, v10, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3196
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    const-wide/16 v14, 0x24

    invoke-virtual {v13, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3195
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3197
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3190
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3198
    nop

    .line 3199
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3200
    const-string v8, "G-Mobile Happy"

    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3201
    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3204
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3203
    const-wide v8, 0x140000000L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3205
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3198
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3206
    nop

    .line 3207
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3208
    const-string v6, "G-Mobile, Charged after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3209
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3212
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3211
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3213
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3206
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3214
    :cond_0
    const-string/jumbo v5, "month_soft"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x0

    const-wide/16 v11, 0x1

    const/4 v13, 0x2

    if-eqz v5, :cond_1

    .line 3215
    nop

    .line 3216
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3217
    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3218
    const-string v6, "Crazy unlimited bandwidth plan with incredibly long title that should be cut off to prevent UI from looking terrible"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3220
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3223
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3222
    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3224
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3215
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3225
    nop

    .line 3226
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3227
    const-string v6, "G-Mobile, Throttled after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3228
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3231
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3230
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3232
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3225
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3233
    nop

    .line 3234
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3235
    const-string v6, "G-Mobile, No data connection after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3236
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3239
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3238
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3240
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3233
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3242
    :cond_1
    const-string/jumbo v5, "month_over"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3243
    nop

    .line 3244
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3245
    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3246
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x180000000L

    .line 3249
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3248
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3250
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3243
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3251
    nop

    .line 3252
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3253
    const-string v6, "G-Mobile, Throttled after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3254
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3257
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3256
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3258
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3251
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3259
    nop

    .line 3260
    const-string v5, "2017-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3261
    const-string v6, "G-Mobile, No data connection after limit"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3262
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3265
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3264
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3266
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3259
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3268
    :cond_2
    const-string/jumbo v5, "month_none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3269
    nop

    .line 3270
    const-string v5, "2007-03-14T00:00:00.000Z"

    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3271
    const-string v6, "G-Mobile"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3272
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3269
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3273
    :cond_3
    const-string/jumbo v5, "prepaid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/32 v6, 0x20000000

    const-wide/16 v11, 0x3

    const-wide/16 v8, 0xa

    const-wide/16 v13, 0x14

    if-eqz v5, :cond_4

    .line 3274
    nop

    .line 3275
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3276
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    .line 3275
    invoke-static {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3277
    const-string v8, "G-Mobile"

    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3278
    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3281
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3280
    const-wide/32 v8, 0x6400000

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3282
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3274
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3283
    :cond_4
    const-string/jumbo v5, "prepaid_crazy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3284
    nop

    .line 3285
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3286
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v15

    .line 3285
    invoke-static {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3287
    const-string v15, "G-Mobile Anytime"

    invoke-virtual {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3288
    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3291
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3290
    const-wide/32 v10, 0x6400000

    invoke-virtual {v5, v10, v11, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3292
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3284
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3293
    nop

    .line 3294
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3295
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3294
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3296
    const-string v6, "G-Mobile Nickel Nights"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3297
    const-string v6, "5\u00a2/GB between 1-5AM"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3298
    const/4 v6, 0x2

    const-wide v10, 0x140000000L

    invoke-virtual {v5, v10, v11, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0xf00000

    .line 3301
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v10

    const-wide/16 v11, 0x1e

    invoke-virtual {v10, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3300
    invoke-virtual {v5, v6, v7, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3302
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3293
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3303
    nop

    .line 3304
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3305
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3304
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3306
    const-string v6, "G-Mobile Bonus 3G"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3307
    const-string v6, "Unlimited 3G data"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3308
    const-wide/32 v6, 0x40000000

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x12c00000

    .line 3311
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

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

    .line 3303
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3313
    :cond_5
    const-string/jumbo v5, "unlimited"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3314
    nop

    .line 3315
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3316
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3315
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3317
    const-string v6, "G-Mobile Awesome"

    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3318
    const-wide v6, 0x7fffffffffffffffL

    const/4 v8, 0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x3200000

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

    .line 3314
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3324
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    return-object v5

    .line 3327
    .end local v0    # "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    :cond_7
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3331
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3332
    .local v0, "ownerPackage":Ljava/lang/String;
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 3333
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_8

    goto :goto_1

    .line 3336
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

    .line 3338
    const/4 v6, 0x0

    monitor-exit v5

    return-object v6

    .line 3334
    :cond_9
    :goto_1
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/telephony/SubscriptionPlan;

    monitor-exit v5

    return-object v6

    .line 3340
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

    .line 3389
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 3393
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3394
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3390
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public getUidPolicy(I)I
    .locals 3
    .param p1, "uid"    # I

    .line 2710
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2713
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2714
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUidRulesFirstLock()Ljava/lang/Object;
    .locals 1

    .line 4249
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getUidsWithPolicy(I)[I
    .locals 6
    .param p1, "policy"    # I

    .line 2719
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 2722
    .local v1, "uids":[I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2723
    nop

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 2724
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 2725
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 2726
    .local v4, "uidPolicy":I
    if-nez p1, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    and-int v5, v4, p1

    if-eqz v5, :cond_2

    .line 2728
    :cond_1
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v1, v5

    .line 2723
    .end local v3    # "uid":I
    .end local v4    # "uidPolicy":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2731
    .end local v0    # "i":I
    :cond_3
    monitor-exit v2

    .line 2732
    return-object v1

    .line 2731
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .locals 5
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackWarningBytes"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1636
    if-nez p1, :cond_0

    .line 1637
    return-wide p2

    .line 1639
    :cond_0
    nop

    .line 1640
    const-string v0, "data_warning_threshold_bytes_long"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1642
    .local v0, "warningBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_1

    .line 1643
    return-wide v3

    .line 1644
    :cond_1
    cmp-long v2, v0, v3

    if-nez v2, :cond_2

    .line 1645
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v2

    return-wide v2

    .line 1646
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 1647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value in CarrierConfigManager.KEY_DATA_WARNING_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    return-wide p2

    .line 1653
    :cond_3
    return-wide v0
.end method

.method handleNetworkPoliciesUpdateAL(Z)V
    .locals 0
    .param p1, "shouldNormalizePolicies"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1733
    if-eqz p1, :cond_0

    .line 1734
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1736
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1741
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 1742
    return-void
.end method

.method handleUidChanged(IIJ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .line 4799
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "onUidStateChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4802
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4805
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger;->uidStateChanged(IIJ)V

    .line 4807
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(II)Z

    move-result v3

    .line 4809
    .local v3, "updated":Z
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4, p1, p3, p4}, Landroid/app/ActivityManagerInternal;->notifyNetworkPolicyRulesUpdated(IJ)V

    .line 4810
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4813
    if-eqz v3, :cond_0

    .line 4814
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4817
    .end local v3    # "updated":Z
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4818
    nop

    .line 4819
    return-void

    .line 4810
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

    .line 4817
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "procState":I
    .restart local p3    # "procStateSeq":J
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method handleUidGone(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 4822
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "onUidGone"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4825
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4826
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)Z

    move-result v3

    .line 4827
    .local v3, "updated":Z
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4830
    if-eqz v3, :cond_0

    .line 4831
    const/4 v2, 0x0

    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4834
    .end local v3    # "updated":Z
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4835
    nop

    .line 4836
    return-void

    .line 4827
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

    .line 4834
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "uid":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method isUidForeground(I)Z
    .locals 3
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3656
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3657
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x14

    .line 3658
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3657
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3659
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isUidIdle(I)Z
    .locals 7
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4182
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4185
    monitor-exit v0

    return v2

    .line 4187
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4189
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4190
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4192
    .local v1, "userId":I
    if-eqz v0, :cond_2

    .line 4193
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 4194
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v5, p1, v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 4195
    return v2

    .line 4193
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4199
    :cond_2
    const/4 v2, 0x1

    return v2

    .line 4187
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v1    # "userId":I
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

    .line 5204
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 5206
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5209
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5210
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 5211
    .local v3, "uidRules":I
    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 5212
    .local v4, "isBackgroundRestricted":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5213
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-static {p1, v3, p2, v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidNetworkingBlockedInternal(IIZZLcom/android/server/net/NetworkPolicyLogger;)Z

    move-result v2

    .line 5216
    .local v2, "ret":Z
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 5218
    return v2

    .line 5212
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

    .line 916
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;
    .locals 3

    .line 914
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManagerReady:Z

    .line 915
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v0, v1

    .line 916
    .local v0, "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 917
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

    .line 3650
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

    .line 3652
    return-void
.end method

.method public onTetheringChanged(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "tethering"    # Z

    .line 2952
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2953
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 2954
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethering on ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "); disable Data Saver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 2957
    :cond_0
    monitor-exit v0

    .line 2958
    return-void

    .line 2957
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public opUpdateRestrictionRulesForUidUL(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 4241
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    .line 4242
    return-void
.end method

.method public opUpdateRulesForRestrictPowerUL()V
    .locals 0

    .line 4012
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 4013
    return-void
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .locals 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .line 2921
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 2922
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2923
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2925
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 2926
    .local v4, "policy":Landroid/net/NetworkPolicy;
    if-eqz v4, :cond_3

    .line 2930
    const/16 v5, 0x22

    if-eq p2, v5, :cond_2

    const/16 v5, 0x23

    if-eq p2, v5, :cond_1

    const/16 v5, 0x2d

    if-ne p2, v5, :cond_0

    .line 2938
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 2939
    goto :goto_0

    .line 2941
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unexpected type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "currentTime":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "template":Landroid/net/NetworkTemplate;
    .end local p2    # "type":I
    throw v5

    .line 2935
    .restart local v0    # "currentTime":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "template":Landroid/net/NetworkTemplate;
    .restart local p2    # "type":I
    :cond_1
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 2936
    goto :goto_0

    .line 2932
    :cond_2
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 2933
    nop

    .line 2944
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 2945
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2946
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2947
    return-void

    .line 2927
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

    .line 2945
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

    .line 2946
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
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 2815
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2821
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystemUI(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2822
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->systemUIListener:Landroid/net/INetworkPolicyListener;

    .line 2825
    :cond_0
    return-void
.end method

.method public removeUidPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2643
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2649
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2650
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2651
    .local v1, "oldPolicy":I
    not-int v2, p2

    and-int p2, v1, v2

    .line 2652
    if-eq v1, p2, :cond_0

    .line 2653
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2654
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2656
    .end local v1    # "oldPolicy":I
    :cond_0
    monitor-exit v0

    .line 2657
    return-void

    .line 2656
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2646
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

.method removeUserStateUL(IZ)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "writePolicy"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 2742
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->removingUserState(I)V

    .line 2743
    const/4 v0, 0x0

    .line 2746
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2747
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2748
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 2749
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 2750
    const/4 v0, 0x1

    .line 2746
    .end local v3    # "uid":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2755
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    new-array v3, v1, [I

    .line 2756
    .local v3, "uids":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 2757
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2758
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 2759
    invoke-static {v3, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    .line 2756
    .end local v5    # "uid":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2763
    .end local v4    # "i":I
    :cond_3
    array-length v4, v3

    if-lez v4, :cond_5

    .line 2764
    array-length v4, v3

    :goto_2
    if-ge v1, v4, :cond_4

    aget v5, v3, v1

    .line 2765
    .restart local v5    # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2764
    .end local v5    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2767
    :cond_4
    const/4 v0, 0x1

    .line 2769
    :cond_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2770
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 2771
    if-eqz p2, :cond_6

    if-eqz v0, :cond_6

    .line 2772
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2774
    :cond_6
    monitor-exit v1

    .line 2775
    return v0

    .line 2774
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setAppIdleWhitelist(IZ)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "shouldWhitelist"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4140
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4142
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4143
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-ne v1, p2, :cond_0

    .line 4145
    monitor-exit v0

    return-void

    .line 4148
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4150
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->appIdleWlChanged(IZ)V

    .line 4151
    if-eqz p2, :cond_1

    .line 4152
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 4154
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppIdleTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4156
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4157
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4159
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4160
    nop

    .line 4161
    .end local v1    # "token":J
    monitor-exit v0

    .line 4162
    return-void

    .line 4159
    .restart local v1    # "token":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uid":I
    .end local p2    # "shouldWhitelist":Z
    throw v3

    .line 4161
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

.method public setDeviceIdleMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 3068
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setDeviceIdleMode"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3071
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3072
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-ne v3, p1, :cond_0

    .line 3073
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3095
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3073
    return-void

    .line 3075
    :cond_0
    :try_start_2
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 3076
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyLogger;->deviceIdleModeEnabled(Z)V

    .line 3077
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v3, :cond_1

    .line 3081
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-static {v3}, Lcom/android/server/net/OpNetworkPolicyInjector;->setDeviceIdleMode(Z)V

    .line 3086
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 3088
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3089
    if-eqz p1, :cond_2

    .line 3090
    :try_start_3
    const-string/jumbo v2, "net"

    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_0

    .line 3092
    :cond_2
    const-string/jumbo v2, "net"

    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3095
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3096
    nop

    .line 3097
    return-void

    .line 3088
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

    .line 3095
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "enabled":Z
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .locals 5
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 2836
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2840
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2841
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2842
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 2843
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 2844
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2845
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2847
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2848
    nop

    .line 2849
    return-void

    .line 2844
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

    .line 2845
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

    .line 2847
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "policies":[Landroid/net/NetworkPolicy;
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRestrictBackground(Z)V
    .locals 6
    .param p1, "restrictBackground"    # Z

    .line 2962
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "setRestrictBackground"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2964
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2967
    .local v2, "token":J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2968
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 2969
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2971
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2972
    nop

    .line 2974
    .end local v2    # "token":J
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2975
    nop

    .line 2976
    return-void

    .line 2969
    .restart local v2    # "token":J
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "restrictBackground":Z
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2971
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "restrictBackground":Z
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "restrictBackground":Z
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2974
    .end local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "restrictBackground":Z
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public setRestrictBackgroundByEsport(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 2797
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isInEsportRestrictBackground:Z

    .line 2799
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v0, :cond_0

    .line 2800
    const-string v0, "NetworkPolicy"

    const-string v1, "FnaticMode skip restrict background data in BatterySaveMode... "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    return-void

    .line 2803
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2804
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eq v1, p1, :cond_1

    .line 2805
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 2806
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 2808
    :cond_1
    monitor-exit v0

    .line 2809
    return-void

    .line 2808
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSubscriptionOverride(IIIJLjava/lang/String;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "overrideMask"    # I
    .param p3, "overrideValue"    # I
    .param p4, "timeoutMillis"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;

    .line 3401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p6}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3404
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3405
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3406
    .local v1, "plan":Landroid/telephony/SubscriptionPlan;
    if-eqz v1, :cond_3

    .line 3407
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 3411
    .end local v1    # "plan":Landroid/telephony/SubscriptionPlan;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3415
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "netpolicy_override_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    .line 3417
    .local v0, "overrideEnabled":Z
    if-nez v0, :cond_1

    if-nez p3, :cond_2

    .line 3418
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3419
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3418
    const/16 v4, 0x10

    invoke-virtual {v1, v4, p2, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3420
    const-wide/16 v5, 0x0

    cmp-long v1, p4, v5

    if-lez v1, :cond_2

    .line 3421
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3422
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3421
    invoke-virtual {v1, v4, p2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3425
    :cond_2
    return-void

    .line 3408
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

    .line 3411
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
    .locals 8
    .param p1, "subId"    # I
    .param p2, "plans"    # [Landroid/telephony/SubscriptionPlan;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3345
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3347
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 3348
    .local v2, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3347
    .end local v2    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3351
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3353
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3354
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3355
    :try_start_2
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3356
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3358
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3359
    .local v4, "subscriberId":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3360
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 3361
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    goto :goto_1

    .line 3363
    :cond_1
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing subscriberId for subId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3367
    .end local v4    # "subscriberId":Ljava/lang/String;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3368
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3370
    :try_start_4
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3371
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3372
    const-string v3, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3373
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3375
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3376
    nop

    .line 3377
    return-void

    .line 3367
    :catchall_0
    move-exception v4

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "subId":I
    .end local p2    # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_6
    throw v4

    .line 3368
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "subId":I
    .restart local p2    # "plans":[Landroid/telephony/SubscriptionPlan;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "subId":I
    .end local p2    # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3375
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "subId":I
    .restart local p2    # "plans":[Landroid/telephony/SubscriptionPlan;
    .restart local p3    # "callingPackage":Ljava/lang/String;
    :catchall_2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setSubscriptionPlansOwner(ILjava/lang/String;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sub_plan_owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3385
    return-void
.end method

.method public setUidPolicy(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2604
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2609
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2610
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2612
    .local v1, "token":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2613
    .local v3, "oldPolicy":I
    if-eq v3, p2, :cond_0

    .line 2614
    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2615
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2618
    .end local v3    # "oldPolicy":I
    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2619
    nop

    .line 2620
    .end local v1    # "token":J
    monitor-exit v0

    .line 2621
    return-void

    .line 2618
    .restart local v1    # "token":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "uid":I
    .end local p2    # "policy":I
    throw v3

    .line 2620
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

    .line 2607
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

    .line 3101
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3104
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 3105
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 3106
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

    .line 3107
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3108
    iput p2, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 3109
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3111
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 3113
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3114
    nop

    .line 3115
    return-void

    .line 3113
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .locals 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 2910
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2914
    .local v0, "token":J
    const/16 v2, 0x23

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2916
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2917
    nop

    .line 2918
    return-void

    .line 2916
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 923
    const-wide/16 v0, 0x1e

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    nop

    .line 930
    return-void

    .line 924
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service NetworkPolicy init timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local p1    # "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    :catch_0
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 928
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service NetworkPolicy init interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 2830
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2832
    return-void
.end method

.method updateNetworkEnabledNL()V
    .locals 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1750
    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v7, "NetworkPolicy"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateNetworkEnabledNL()"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_0
    const-wide/32 v8, 0x200000

    const-string/jumbo v0, "updateNetworkEnabledNL"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1756
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v10

    .line 1758
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

    .line 1759
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/net/NetworkPolicy;

    .line 1761
    .local v15, "policy":Landroid/net/NetworkPolicy;
    iget-wide v0, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 1766
    :cond_1
    nop

    .line 1767
    invoke-static {v15}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/util/Pair;

    .line 1768
    .local v4, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 1769
    .local v2, "start":J
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 1770
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

    .line 1773
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

    .line 1775
    .local v2, "overLimitWithoutSnooze":Z
    :goto_1
    if-nez v2, :cond_4

    move v14, v12

    :cond_4
    move v3, v14

    .line 1778
    .local v3, "networkEnabled":Z
    if-nez v3, :cond_5

    .line 1779
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

    .line 1778
    .end local v8    # "end":J
    .restart local v16    # "end":J
    :cond_5
    move-wide/from16 v8, v16

    .line 1784
    .end local v16    # "end":J
    .restart local v8    # "end":J
    :goto_2
    iget-object v14, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    goto :goto_4

    .line 1762
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

    .line 1763
    nop

    .line 1758
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    :goto_4
    add-int/lit8 v13, v13, -0x1

    const-wide/32 v8, 0x200000

    goto/16 :goto_0

    .line 1787
    .end local v13    # "i":I
    :cond_7
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, v14, v10, v11}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1788
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1789
    return-void
.end method

.method updateNetworkRulesNL()V
    .locals 44
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1904
    move-object/from16 v7, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v8, "NetworkPolicy"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateNetworkRulesNL()"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_0
    const-wide/32 v9, 0x200000

    const-string/jumbo v0, "updateNetworkRulesNL"

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1909
    :try_start_0
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1913
    .local v0, "states":[Landroid/net/NetworkState;
    nop

    .line 1917
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 1918
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v1

    .line 1919
    .local v11, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v13, 0x1

    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1920
    .local v3, "state":Landroid/net/NetworkState;
    iget-object v4, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-eqz v4, :cond_1

    .line 1921
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    iget-object v5, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-direct {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->parseSubId(Landroid/net/NetworkState;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1923
    :cond_1
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1924
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v13}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;Z)Landroid/net/NetworkIdentity;

    move-result-object v4

    .line 1926
    .local v4, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v11, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1919
    .end local v3    # "state":Landroid/net/NetworkState;
    .end local v4    # "ident":Landroid/net/NetworkIdentity;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1930
    :cond_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v1

    .line 1931
    .local v14, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide v1, 0x7fffffffffffffffL

    .line 1935
    .local v1, "lowestRule":J
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v3

    .line 1936
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

    .line 1937
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/net/NetworkPolicy;

    .line 1940
    .local v6, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {v15}, Landroid/util/ArraySet;->clear()V

    .line 1941
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v13

    .local v1, "j":I
    :goto_2
    if-ltz v1, :cond_5

    .line 1942
    iget-object v2, v6, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v3, v20

    check-cast v3, Landroid/net/NetworkIdentity;

    invoke-virtual {v2, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1943
    invoke-virtual {v11, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkState;

    invoke-static {v15, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 1941
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1947
    .end local v1    # "j":I
    :cond_5
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v1, :cond_6

    .line 1948
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

    .line 1951
    :cond_6
    iget-wide v1, v6, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_7

    move v1, v13

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    move/from16 v20, v1

    .line 1952
    .local v20, "hasWarning":Z
    iget-wide v1, v6, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_8

    move v1, v13

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    move/from16 v18, v1

    .line 1953
    .local v18, "hasLimit":Z
    if-nez v18, :cond_a

    iget-boolean v1, v6, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v25, v5

    move-object v12, v6

    goto/16 :goto_9

    .line 1955
    :cond_a
    :goto_5
    if-eqz v18, :cond_c

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1956
    nop

    .line 1957
    invoke-static {v6}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/util/Pair;

    .line 1958
    .local v3, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v21

    .line 1959
    .local v21, "start":J
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v23

    .line 1960
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

    .line 1962
    .local v1, "totalBytes":J
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v3, v3, v21

    if-ltz v3, :cond_b

    .line 1965
    const-wide v3, 0x7fffffffffffffffL

    .local v3, "quotaBytes":J
    goto :goto_6

    .line 1970
    .end local v3    # "quotaBytes":J
    :cond_b
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long/2addr v3, v1

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 1972
    .end local v1    # "totalBytes":J
    .end local v19    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v21    # "start":J
    .end local v23    # "end":J
    .restart local v3    # "quotaBytes":J
    :goto_6
    goto :goto_7

    .line 1955
    .end local v3    # "quotaBytes":J
    .end local v12    # "policy":Landroid/net/NetworkPolicy;
    .end local v25    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "policy":Landroid/net/NetworkPolicy;
    :cond_c
    move/from16 v25, v5

    move-object v12, v6

    .line 1975
    .end local v5    # "i":I
    .end local v6    # "policy":Landroid/net/NetworkPolicy;
    .restart local v12    # "policy":Landroid/net/NetworkPolicy;
    .restart local v25    # "i":I
    const-wide v3, 0x7fffffffffffffffL

    .line 1978
    .restart local v3    # "quotaBytes":J
    :goto_7
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-le v1, v13, :cond_d

    .line 1980
    const-string/jumbo v1, "shared quota unsupported; generating rule for each iface"

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    :cond_d
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v13

    .local v1, "j":I
    :goto_8
    if-ltz v1, :cond_e

    .line 1984
    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1985
    .local v2, "iface":Ljava/lang/String;
    invoke-direct {v7, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 1986
    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1983
    .end local v2    # "iface":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1991
    .end local v1    # "j":I
    .end local v3    # "quotaBytes":J
    :cond_e
    :goto_9
    if-eqz v20, :cond_f

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v16

    if-gez v1, :cond_f

    .line 1992
    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v16, v1

    .line 1994
    :cond_f
    if-eqz v18, :cond_10

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v16

    if-gez v1, :cond_10

    .line 1995
    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v16, v1

    .line 1936
    .end local v12    # "policy":Landroid/net/NetworkPolicy;
    .end local v18    # "hasLimit":Z
    .end local v20    # "hasWarning":Z
    :cond_10
    add-int/lit8 v5, v25, -0x1

    const-wide/32 v9, 0x200000

    .end local v25    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_1

    :cond_11
    move/from16 v25, v5

    const-wide/16 v9, 0x1

    .line 2001
    .end local v5    # "i":I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    const-wide v5, 0x7fffffffffffffffL

    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 2002
    .local v3, "state":Landroid/net/NetworkState;
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_13

    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v3, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v8, 0xb

    .line 2003
    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2004
    invoke-virtual {v15}, Landroid/util/ArraySet;->clear()V

    .line 2005
    invoke-static {v15, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 2006
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v13

    .local v4, "j":I
    :goto_b
    if-ltz v4, :cond_13

    .line 2007
    invoke-virtual {v15, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2008
    .local v8, "iface":Ljava/lang/String;
    invoke-virtual {v14, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 2009
    invoke-direct {v7, v8, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 2010
    invoke-virtual {v14, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2006
    .end local v8    # "iface":Ljava/lang/String;
    :cond_12
    add-int/lit8 v4, v4, -0x1

    goto :goto_b

    .line 2001
    .end local v3    # "state":Landroid/net/NetworkState;
    .end local v4    # "j":I
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2017
    :cond_14
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v13

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_16

    .line 2018
    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2019
    .restart local v2    # "iface":Ljava/lang/String;
    invoke-virtual {v14, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 2020
    invoke-direct {v7, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuotaAsync(Ljava/lang/String;)V

    .line 2017
    .end local v2    # "iface":Ljava/lang/String;
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 2023
    .end local v1    # "i":I
    :cond_16
    iput-object v14, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 2025
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2026
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

    .line 2028
    .local v12, "quotaEnabled":Z
    sget-wide v1, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    const-string/jumbo v3, "netpolicy_quota_unlimited"

    invoke-static {v8, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v21

    .line 2030
    .local v21, "quotaUnlimited":J
    const v1, 0x3dcccccd    # 0.1f

    const-string/jumbo v2, "netpolicy_quota_limited"

    invoke-static {v8, v2, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v13

    .line 2034
    .local v13, "quotaLimited":F
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    .line 2035
    array-length v3, v0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_1e

    aget-object v2, v0, v4

    .line 2036
    .local v2, "state":Landroid/net/NetworkState;
    if-nez v12, :cond_18

    move-object/from16 v37, v0

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    move-object/from16 v25, v8

    goto/16 :goto_10

    .line 2037
    :cond_18
    iget-object v1, v2, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-nez v1, :cond_19

    move-object/from16 v37, v0

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    move-object/from16 v25, v8

    goto/16 :goto_10

    .line 2038
    :cond_19
    iget-object v1, v2, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v1

    .line 2039
    .local v1, "subId":I
    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v20

    .line 2040
    .local v20, "plan":Landroid/telephony/SubscriptionPlan;
    if-nez v20, :cond_1a

    move-object/from16 v37, v0

    move/from16 v35, v3

    move/from16 v36, v4

    move-wide/from16 v31, v5

    move-object/from16 v25, v8

    goto/16 :goto_10

    .line 2043
    :cond_1a
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v23

    .line 2044
    .local v23, "limitBytes":J
    iget-object v9, v2, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v10, 0x12

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 2046
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

    .line 2047
    .end local v9    # "quotaBytes":J
    :cond_1b
    cmp-long v9, v23, v18

    if-nez v9, :cond_1c

    .line 2048
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

    .line 2049
    .end local v9    # "quotaBytes":J
    :cond_1c
    cmp-long v9, v23, v5

    if-nez v9, :cond_1d

    .line 2051
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

    .line 2054
    .end local v9    # "quotaBytes":J
    :cond_1d
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Range;

    .line 2055
    .local v9, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/time/ZonedDateTime;

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v26

    .line 2056
    .local v26, "start":J
    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/time/ZonedDateTime;

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v28

    .line 2057
    .local v28, "end":J
    iget-object v10, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v10}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v10

    .line 2058
    .local v10, "now":Ljava/time/Instant;
    invoke-virtual {v9}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v30

    check-cast v30, Ljava/time/ZonedDateTime;

    invoke-virtual/range {v30 .. v30}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v5

    invoke-static {v10, v5}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 2059
    invoke-virtual {v5, v6}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 2060
    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v33

    .line 2061
    .local v33, "startOfDay":J
    iget-object v5, v2, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 2062
    invoke-static {v5}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    .line 2061
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

    .line 2064
    .local v1, "totalBytes":J
    sub-long v3, v23, v1

    .line 2066
    .local v3, "remainingBytes":J
    nop

    .line 2067
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

    .line 2069
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

    move-result-wide v9

    .line 2072
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

    .line 2035
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

    .line 2075
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

    .line 2076
    .local v0, "meteredIfaces":[Ljava/lang/String;
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2078
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2080
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2081
    return-void

    .line 1910
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

    .line 1912
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method updateNetworks()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1558
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    .line 1559
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1560
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;

    invoke-direct {v2, v0}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1563
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1564
    return-void
.end method

.method updateNotificationsNL()V
    .locals 38
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 1164
    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    const-string v7, "NetworkPolicy"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateNotificationsNL()"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    :cond_0
    const-wide/32 v8, 0x200000

    const-string/jumbo v0, "updateNotificationsNL"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1168
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v10, v0

    .line 1169
    .local v10, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;>;"
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1175
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 1177
    .local v11, "now":J
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v13, 0x1

    sub-int/2addr v0, v13

    move v14, v0

    .local v14, "i":I
    :goto_0
    if-ltz v14, :cond_11

    .line 1178
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/net/NetworkPolicy;

    .line 1179
    .local v15, "policy":Landroid/net/NetworkPolicy;
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v4

    .line 1182
    .local v4, "subId":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    move/from16 v23, v14

    goto/16 :goto_7

    .line 1183
    :cond_1
    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_2

    move/from16 v23, v14

    goto/16 :goto_7

    .line 1185
    :cond_2
    nop

    .line 1186
    invoke-static {v15}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/Pair;

    .line 1187
    .local v5, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    .line 1188
    .local v16, "cycleStart":J
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    .line 1189
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

    .line 1194
    .local v2, "totalBytes":J
    const/16 v0, 0x2648

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V

    .line 1196
    iget-object v4, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v4, v8}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 1199
    .local v4, "config":Landroid/os/PersistableBundle;
    invoke-static {v0}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V

    .line 1201
    invoke-static {v4}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1202
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_3

    const-string v0, "isConfigForIdentifiedCarrier returned false"

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_3
    return-void

    .line 1210
    :cond_4
    const-string v0, "data_warning_notification_bool"

    invoke-static {v4, v0, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v20

    .line 1212
    .local v20, "notifyWarning":Z
    const-string v0, "data_limit_notification_bool"

    invoke-static {v4, v0, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v21

    .line 1214
    .local v21, "notifyLimit":Z
    const-string v0, "data_rapid_notification_bool"

    invoke-static {v4, v0, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v22

    .line 1218
    .local v22, "notifyRapid":Z
    if-eqz v20, :cond_7

    .line 1219
    invoke-virtual {v15, v2, v3}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v15, v2, v3}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1220
    move/from16 v23, v14

    .end local v14    # "i":I
    .local v23, "i":I
    iget-wide v13, v15, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v13, v16

    if-ltz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 1221
    .local v0, "snoozedThisCycle":Z
    :goto_1
    if-nez v0, :cond_8

    .line 1223
    const-string v5, "DataUsageAlarm due to TYPE_WARNING"

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1219
    .end local v0    # "snoozedThisCycle":Z
    .end local v23    # "i":I
    .restart local v14    # "i":I
    :cond_6
    move/from16 v23, v14

    .end local v14    # "i":I
    .restart local v23    # "i":I
    goto :goto_2

    .line 1218
    .end local v23    # "i":I
    .restart local v14    # "i":I
    :cond_7
    move/from16 v23, v14

    .line 1232
    .end local v14    # "i":I
    .restart local v23    # "i":I
    :cond_8
    :goto_2
    if-eqz v21, :cond_c

    .line 1233
    invoke-virtual {v15, v2, v3}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1234
    iget-wide v13, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v13, v16

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    move v0, v1

    .line 1235
    .restart local v0    # "snoozedThisCycle":Z
    :goto_3
    if-eqz v0, :cond_a

    .line 1237
    const-string/jumbo v5, "set DataUsageAlarm due to TYPE_LIMIT_SNOOZED"

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1242
    :cond_a
    const-string v5, "DataUsageAlarm due to TYPE_LIMIT"

    invoke-static {v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v5, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitNL(Landroid/net/NetworkTemplate;)V

    .line 1248
    .end local v0    # "snoozedThisCycle":Z
    :goto_4
    goto :goto_5

    .line 1249
    :cond_b
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V

    .line 1255
    :cond_c
    :goto_5
    if-eqz v22, :cond_f

    iget-wide v13, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v24, -0x1

    cmp-long v0, v13, v24

    if-eqz v0, :cond_f

    .line 1256
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x4

    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    .line 1257
    .local v13, "recentDuration":J
    sub-long v24, v11, v13

    .line 1258
    .local v24, "recentStart":J
    move-object/from16 v26, v4

    .end local v4    # "config":Landroid/os/PersistableBundle;
    .local v26, "config":Landroid/os/PersistableBundle;
    move-wide v4, v11

    .line 1259
    .local v4, "recentEnd":J
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v28, v1

    move-object/from16 v1, v27

    move-wide/from16 v29, v2

    .end local v2    # "totalBytes":J
    .local v29, "totalBytes":J
    move-wide/from16 v2, v24

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 1261
    .local v0, "recentBytes":J
    sub-long v2, v18, v16

    .line 1262
    .local v2, "cycleDuration":J
    mul-long v31, v0, v2

    move-wide/from16 v33, v2

    .end local v2    # "cycleDuration":J
    .local v33, "cycleDuration":J
    div-long v2, v31, v13

    .line 1263
    .local v2, "projectedBytes":J
    move-wide/from16 v31, v4

    .end local v4    # "recentEnd":J
    .local v31, "recentEnd":J
    iget-wide v4, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v35, 0x3

    mul-long v4, v4, v35

    const-wide/16 v35, 0x2

    div-long v4, v4, v35

    .line 1265
    .local v4, "alertBytes":J
    sget-boolean v27, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v27, :cond_d

    .line 1266
    move/from16 v27, v8

    .end local v8    # "subId":I
    .local v27, "subId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v9

    .end local v9    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v35, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    const-string v9, "Rapid usage considering recent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " projected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " alert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1265
    .end local v27    # "subId":I
    .end local v35    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .restart local v8    # "subId":I
    .restart local v9    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    :cond_d
    move/from16 v27, v8

    move-object/from16 v35, v9

    .line 1270
    .end local v8    # "subId":I
    .end local v9    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .restart local v27    # "subId":I
    .restart local v35    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    :goto_6
    iget-wide v8, v15, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    const-wide/32 v36, 0x5265c00

    sub-long v36, v11, v36

    cmp-long v8, v8, v36

    if-ltz v8, :cond_e

    const/16 v28, 0x1

    :cond_e
    move/from16 v8, v28

    .line 1272
    .local v8, "snoozedRecently":Z
    cmp-long v9, v2, v4

    if-lez v9, :cond_10

    if-nez v8, :cond_10

    .line 1277
    const-string/jumbo v9, "set DataUsageAlarm due to TYPE_RAPID"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1255
    .end local v0    # "recentBytes":J
    .end local v13    # "recentDuration":J
    .end local v24    # "recentStart":J
    .end local v26    # "config":Landroid/os/PersistableBundle;
    .end local v27    # "subId":I
    .end local v29    # "totalBytes":J
    .end local v31    # "recentEnd":J
    .end local v33    # "cycleDuration":J
    .end local v35    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v2, "totalBytes":J
    .local v4, "config":Landroid/os/PersistableBundle;
    .local v8, "subId":I
    .restart local v9    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    :cond_f
    move-wide/from16 v29, v2

    move-object/from16 v26, v4

    move/from16 v27, v8

    move-object/from16 v35, v9

    .line 1177
    .end local v2    # "totalBytes":J
    .end local v4    # "config":Landroid/os/PersistableBundle;
    .end local v8    # "subId":I
    .end local v9    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    .end local v16    # "cycleStart":J
    .end local v18    # "cycleEnd":J
    .end local v20    # "notifyWarning":Z
    .end local v21    # "notifyLimit":Z
    .end local v22    # "notifyRapid":Z
    :cond_10
    :goto_7
    add-int/lit8 v14, v23, -0x1

    const-wide/32 v8, 0x200000

    const/4 v13, 0x1

    .end local v23    # "i":I
    .restart local v14    # "i":I
    goto/16 :goto_0

    :cond_11
    move/from16 v23, v14

    .line 1284
    .end local v14    # "i":I
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_13

    .line 1285
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1286
    .local v1, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    iget-object v2, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1287
    invoke-direct {v6, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V

    .line 1284
    .end local v1    # "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    :cond_12
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1291
    .end local v0    # "i":I
    :cond_13
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1292
    return-void
.end method

.method updatePowerSaveWhitelistUL()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 666
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v0

    .line 667
    .local v0, "whitelist":[I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 668
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 669
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v0, v4

    .line 670
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 669
    .end local v5    # "uid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 673
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v3}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v3

    move-object v0, v3

    .line 674
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 675
    if-eqz v0, :cond_1

    .line 676
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget v4, v0, v1

    .line 677
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v4    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 681
    .end local v0    # "whitelist":[I
    :cond_1
    goto :goto_2

    .line 680
    :catch_0
    move-exception v0

    .line 682
    :goto_2
    return-void
.end method

.method updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V
    .locals 4
    .param p1, "result"    # Landroid/os/PowerSaveState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5137
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    .line 5139
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 5142
    .local v0, "restrictBackground":Z
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5144
    .local v1, "localRestrictBgChangedInBsm":Z
    iget-boolean v2, p1, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 5147
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 5148
    .local v2, "shouldInvokeRestrictBackground":Z
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5149
    const/4 v1, 0x0

    goto :goto_1

    .line 5152
    .end local v2    # "shouldInvokeRestrictBackground":Z
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    xor-int/2addr v2, v3

    .line 5153
    .restart local v2    # "shouldInvokeRestrictBackground":Z
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5156
    :goto_1
    if-eqz v2, :cond_2

    .line 5157
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 5161
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5162
    return-void
.end method

.method updateRuleForAppIdleUL(I)V
    .locals 6
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3924
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3926
    :cond_0
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRuleForAppIdleUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3930
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 3933
    .local v2, "appId":I
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "NetworkPolicy"

    if-eqz v3, :cond_2

    .line 3934
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

    .line 3935
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isUidForegroundOnRestrictPowerUL(uid) = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3936
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3934
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3938
    :cond_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    const/4 v5, 0x2

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3939
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3940
    invoke-direct {p0, v5, p1, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 3941
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

    .line 3943
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v5, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 3944
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

    .line 3947
    .end local v2    # "appId":I
    :cond_4
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3948
    nop

    .line 3949
    return-void

    .line 3947
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateRuleForDeviceIdleUL(I)V
    .locals 2
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3804
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 3805
    return-void
.end method

.method updateRuleForRestrictPowerUL(I)V
    .locals 2
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3788
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 3789
    return-void
.end method

.method updateRulesForAppIdleParoleUL()V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3957
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v0

    .line 3958
    .local v0, "paroled":Z
    xor-int/lit8 v1, v0, 0x1

    .line 3959
    .local v1, "enableChain":Z
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 3961
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 3962
    .local v2, "ruleCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 3963
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 3964
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 3965
    .local v5, "oldRules":I
    if-eqz v1, :cond_0

    .line 3970
    and-int/lit8 v5, v5, 0xf

    goto :goto_1

    .line 3973
    :cond_0
    and-int/lit16 v6, v5, 0xf0

    if-nez v6, :cond_1

    goto :goto_2

    .line 3975
    :cond_1
    :goto_1
    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v6

    .line 3976
    .local v6, "newUidRules":I
    if-nez v6, :cond_2

    .line 3977
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_2

    .line 3979
    :cond_2
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 3962
    .end local v4    # "uid":I
    .end local v5    # "oldRules":I
    .end local v6    # "newUidRules":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3982
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method updateRulesForAppIdleUL()V
    .locals 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3894
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForAppIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3896
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 3897
    .local v2, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 3900
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 3901
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "ui":I
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ltz v4, :cond_2

    .line 3902
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 3903
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v8

    .line 3904
    .local v8, "idleUids":[I
    array-length v9, v8

    move v10, v6

    :goto_1
    if-ge v10, v9, :cond_1

    aget v11, v8, v10

    .line 3905
    .local v11, "uid":I
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    invoke-virtual {v12, v13, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    if-nez v12, :cond_0

    .line 3909
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3910
    invoke-virtual {v2, v11, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 3904
    .end local v11    # "uid":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3901
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "idleUids":[I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3916
    .end local v4    # "ui":I
    :cond_2
    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3918
    .end local v2    # "uidRules":Landroid/util/SparseIntArray;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3919
    nop

    .line 3920
    return-void

    .line 3918
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateRulesForDeviceIdleUL()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3793
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForDeviceIdleUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3795
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3798
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3799
    nop

    .line 3800
    return-void

    .line 3798
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateRulesForPowerSaveUL()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock"
        }
    .end annotation

    .line 3777
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateRulesForPowerSaveUL"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3779
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3782
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 3783
    nop

    .line 3784
    return-void

    .line 3782
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateSubscriptions()V
    .locals 14

    .line 1865
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateSubscriptions()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    :cond_0
    const-wide/32 v0, 0x200000

    const-string/jumbo v2, "updateSubscriptions"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1868
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1869
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 1871
    .local v3, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([I)[I

    move-result-object v4

    .line 1872
    .local v4, "subIds":[I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1874
    .local v5, "mergedSubscriberIds":[Ljava/lang/String;
    new-instance v6, Landroid/util/SparseArray;

    array-length v7, v4

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 1875
    .local v6, "subIdToSubscriberId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    array-length v7, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_2

    aget v10, v4, v9

    .line 1876
    .local v10, "subId":I
    invoke-virtual {v2, v10}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v11

    .line 1877
    .local v11, "subscriberId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1878
    invoke-virtual {v6, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 1880
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing subscriberId for subId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "NetworkPolicy"

    invoke-static {v13, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    .end local v10    # "subId":I
    .end local v11    # "subscriberId":Ljava/lang/String;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1884
    :cond_2
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1885
    :try_start_0
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 1886
    nop

    .local v8, "i":I
    :goto_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1887
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 1888
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1887
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1886
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1891
    .end local v8    # "i":I
    :cond_3
    iput-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 1892
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1895
    return-void

    .line 1892
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mUidRulesFirstLock",
            "mNetworkPoliciesSecondLock"
        }
    .end annotation

    .line 2489
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

    .line 2491
    :cond_0
    const/4 v7, 0x0

    .line 2493
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-object v7, v8

    .line 2495
    :try_start_1
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2496
    .local v8, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2497
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2499
    invoke-interface {v8, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2500
    const-string/jumbo v9, "version"

    const/16 v11, 0xb

    invoke-static {v8, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2501
    const-string/jumbo v9, "restrictBackground"

    iget-boolean v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v8, v9, v11}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2504
    const/4 v9, 0x0

    move v11, v9

    .local v11, "i":I
    :goto_0
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const-string/jumbo v13, "limitBytes"

    const-string v14, "cyclePeriod"

    const-string v15, "cycleEnd"

    const-string v9, "cycleStart"

    if-ge v11, v12, :cond_4

    .line 2505
    :try_start_2
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkPolicy;

    .line 2506
    .local v12, "policy":Landroid/net/NetworkPolicy;
    iget-object v10, v12, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2507
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

    .line 2509
    :cond_1
    move-object/from16 v16, v7

    const/4 v7, 0x0

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v16, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-interface {v8, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2510
    const-string/jumbo v7, "networkTemplate"

    move-object/from16 v17, v2

    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    invoke-static {v8, v7, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2511
    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 2512
    .local v2, "subscriberId":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2513
    const-string/jumbo v7, "subscriberId"

    move-object/from16 v18, v4

    const/4 v4, 0x0

    invoke-interface {v8, v4, v7, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 2512
    :cond_2
    move-object/from16 v18, v4

    .line 2515
    :goto_1
    invoke-virtual {v10}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    .line 2516
    .local v4, "networkId":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 2517
    const-string/jumbo v7, "networkId"

    move-object/from16 v19, v2

    const/4 v2, 0x0

    .end local v2    # "subscriberId":Ljava/lang/String;
    .local v19, "subscriberId":Ljava/lang/String;
    invoke-interface {v8, v2, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 2516
    .end local v19    # "subscriberId":Ljava/lang/String;
    .restart local v2    # "subscriberId":Ljava/lang/String;
    :cond_3
    move-object/from16 v19, v2

    .line 2519
    .end local v2    # "subscriberId":Ljava/lang/String;
    .restart local v19    # "subscriberId":Ljava/lang/String;
    :goto_2
    iget-object v2, v12, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2520
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v2

    .line 2519
    invoke-static {v8, v9, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2521
    iget-object v2, v12, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2522
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v2

    .line 2521
    invoke-static {v8, v15, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2523
    iget-object v2, v12, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v2, v2, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2524
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v2

    .line 2523
    invoke-static {v8, v14, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2525
    const-string/jumbo v2, "warningBytes"

    iget-wide v14, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v8, v2, v14, v15}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2526
    iget-wide v14, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v8, v13, v14, v15}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2527
    const-string/jumbo v2, "lastWarningSnooze"

    iget-wide v13, v12, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v8, v2, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2528
    const-string/jumbo v2, "lastLimitSnooze"

    iget-wide v13, v12, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v8, v2, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2529
    const-string/jumbo v2, "metered"

    iget-boolean v7, v12, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v8, v2, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2530
    const-string v2, "inferred"

    iget-boolean v7, v12, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v8, v2, v7}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2531
    const/4 v2, 0x0

    invoke-interface {v8, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2504
    .end local v4    # "networkId":Ljava/lang/String;
    .end local v10    # "template":Landroid/net/NetworkTemplate;
    .end local v12    # "policy":Landroid/net/NetworkPolicy;
    .end local v19    # "subscriberId":Ljava/lang/String;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, v16

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    const/4 v9, 0x0

    const/4 v10, 0x0

    goto/16 :goto_0

    .line 2595
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v11    # "i":I
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    move-object/from16 v16, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_a

    .line 2504
    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v11    # "i":I
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v16, v7

    .line 2535
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "i":I
    .restart local v16    # "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    move v4, v2

    .local v4, "i":I
    :goto_4
    :try_start_4
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    if-ge v4, v2, :cond_7

    .line 2536
    :try_start_5
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2537
    .local v2, "subId":I
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2538
    .local v5, "ownerPackage":Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 2539
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v2, v9

    move-object/from16 v22, v13

    move-object v10, v14

    goto/16 :goto_6

    .line 2541
    :cond_5
    array-length v10, v7

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_6

    aget-object v12, v7, v11

    .line 2542
    .local v12, "plan":Landroid/telephony/SubscriptionPlan;
    move-object/from16 v19, v7

    const/4 v7, 0x0

    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    .local v19, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-interface {v8, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2543
    const-string/jumbo v7, "subId"

    invoke-static {v8, v7, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2544
    const-string/jumbo v7, "ownerPackage"

    invoke-static {v8, v7, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2545
    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v7

    .line 2546
    .local v7, "cycleRule":Landroid/util/RecurrenceRule;
    move/from16 v20, v2

    .end local v2    # "subId":I
    .local v20, "subId":I
    iget-object v2, v7, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2547
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v2

    .line 2546
    invoke-static {v8, v9, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2548
    iget-object v2, v7, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2549
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v2

    .line 2548
    invoke-static {v8, v15, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2550
    iget-object v2, v7, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2551
    invoke-static {v2}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v2

    .line 2550
    invoke-static {v8, v14, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2552
    const-string/jumbo v2, "title"

    move-object/from16 v21, v5

    .end local v5    # "ownerPackage":Ljava/lang/String;
    .local v21, "ownerPackage":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v8, v2, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2553
    const-string/jumbo v2, "summary"

    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v8, v2, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2554
    move-object v2, v9

    move v5, v10

    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v9

    invoke-static {v8, v13, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2555
    const-string/jumbo v9, "limitBehavior"

    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v10

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2556
    const-string/jumbo v9, "usageBytes"

    move-object/from16 v22, v13

    move-object v10, v14

    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v13

    invoke-static {v8, v9, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2557
    const-string/jumbo v9, "usageTime"

    invoke-virtual {v12}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v13

    invoke-static {v8, v9, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2558
    const/4 v9, 0x0

    invoke-interface {v8, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2541
    nop

    .end local v7    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v12    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v11, v11, 0x1

    move-object v9, v2

    move-object v14, v10

    move-object/from16 v7, v19

    move/from16 v2, v20

    move-object/from16 v13, v22

    move v10, v5

    move-object/from16 v5, v21

    goto/16 :goto_5

    .end local v19    # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local v20    # "subId":I
    .end local v21    # "ownerPackage":Ljava/lang/String;
    .restart local v2    # "subId":I
    .restart local v5    # "ownerPackage":Ljava/lang/String;
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    :cond_6
    move/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v19, v7

    move-object v2, v9

    move-object/from16 v22, v13

    move-object v10, v14

    .line 2535
    .end local v2    # "subId":I
    .end local v5    # "ownerPackage":Ljava/lang/String;
    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object v9, v2

    move-object v14, v10

    move-object/from16 v13, v22

    goto/16 :goto_4

    .line 2595
    .end local v4    # "i":I
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v0

    move-object/from16 v7, v16

    goto/16 :goto_a

    .line 2563
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

    .line 2564
    :try_start_7
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 2565
    .local v2, "uid":I
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    .line 2568
    .local v5, "policy":I
    if-nez v5, :cond_8

    goto :goto_8

    .line 2570
    :cond_8
    const/4 v7, 0x0

    invoke-interface {v8, v7, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2571
    invoke-static {v8, v4, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2572
    const-string/jumbo v4, "policy"

    invoke-static {v8, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2573
    const/4 v4, 0x0

    invoke-interface {v8, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 2563
    .end local v2    # "uid":I
    .end local v5    # "policy":I
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2576
    .end local v0    # "i":I
    :cond_9
    const/4 v0, 0x0

    :try_start_8
    invoke-interface {v8, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2579
    move-object/from16 v2, v18

    invoke-interface {v8, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2582
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 2583
    .local v0, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    if-ge v3, v0, :cond_a

    .line 2584
    :try_start_9
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2585
    .local v5, "uid":I
    move-object/from16 v6, v17

    const/4 v7, 0x0

    invoke-interface {v8, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2586
    invoke-static {v8, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2587
    invoke-interface {v8, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 2583
    nop

    .end local v5    # "uid":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v17, v6

    goto :goto_9

    .line 2590
    .end local v3    # "i":I
    :cond_a
    const/4 v3, 0x0

    :try_start_a
    invoke-interface {v8, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2592
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2594
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

    .line 2599
    .end local v0    # "size":I
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    goto :goto_b

    .line 2595
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

    .line 2596
    .local v0, "e":Ljava/io/IOException;
    :goto_a
    if-eqz v7, :cond_b

    .line 2597
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v7}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2600
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    move-object v3, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_b
    return-void
.end method
