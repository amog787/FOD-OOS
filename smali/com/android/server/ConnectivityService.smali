.class public Lcom/android/server/ConnectivityService;
.super Landroid/net/IConnectivityManager$Stub;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$ConnectivityReportEvent;,
        Lcom/android/server/ConnectivityService$NetworkTestedResults;,
        Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;,
        Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;,
        Lcom/android/server/ConnectivityService$ShellCmd;,
        Lcom/android/server/ConnectivityService$NetworkReassignment;,
        Lcom/android/server/ConnectivityService$NetworkRequestInfo;,
        Lcom/android/server/ConnectivityService$NetworkProviderInfo;,
        Lcom/android/server/ConnectivityService$SettingsObserver;,
        Lcom/android/server/ConnectivityService$InternalHandler;,
        Lcom/android/server/ConnectivityService$CaptivePortalImpl;,
        Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;,
        Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;,
        Lcom/android/server/ConnectivityService$Dependencies;,
        Lcom/android/server/ConnectivityService$LegacyTypeTracker;,
        Lcom/android/server/ConnectivityService$UnneededFor;,
        Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
    }
.end annotation


# static fields
.field private static final ATTR_MCC:Ljava/lang/String; = "mcc"

.field private static final ATTR_MNC:Ljava/lang/String; = "mnc"

.field private static final DBG:Z = true

.field private static final DDBG:Z

.field private static final DEBUG_DNS_CHECK_RTT_PROPERTY:Ljava/lang/String; = "persist.radio.debug.dns.rtt"

.field private static final DEBUG_TCP_CHECK_RTT_PROPERTY:Ljava/lang/String; = "persist.radio.debug.tcp.rtt"

.field private static final DEFAULT_CAPTIVE_PORTAL_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_DNS_TCP_CHECK_RTT_MS:I = 0x3e8

.field private static final DEFAULT_LINGER_DELAY_MS:I = 0x7530

.field protected static final DEFAULT_TCP_BUFFER_SIZES:Ljava/lang/String; = "4096,87380,110208,4096,16384,110208"

.field private static final DIAG_ARG:Ljava/lang/String; = "--diag"

.field private static final DNS_RTT_CHECK_VALUE:I

.field private static final EVENT_APPLY_GLOBAL_HTTP_PROXY:I = 0x9

.field private static final EVENT_CAPPORT_DATA_CHANGED:I = 0x2e

.field private static final EVENT_CLEAR_NET_TRANSITION_WAKELOCK:I = 0x8

.field private static final EVENT_CONFIGURE_ALWAYS_ON_NETWORKS:I = 0x1e

.field private static final EVENT_DATA_SAVER_CHANGED:I = 0x28

.field private static final EVENT_EXPIRE_NET_TRANSITION_WAKELOCK:I = 0x18

.field private static final EVENT_NETWORK_TESTED:I = 0x29

.field private static final EVENT_OP_TCP_TIMESTAMPS_VALUE_CHANGED:I = 0x65

.field private static final EVENT_PRIVATE_DNS_CONFIG_RESOLVED:I = 0x2a

.field private static final EVENT_PRIVATE_DNS_SETTINGS_CHANGED:I = 0x25

.field private static final EVENT_PRIVATE_DNS_VALIDATION_UPDATE:I = 0x26

.field public static final EVENT_PROBE_STATUS_CHANGED:I = 0x2d

.field private static final EVENT_PROMPT_UNVALIDATED:I = 0x1d

.field private static final EVENT_PROVISIONING_NOTIFICATION:I = 0x2b

.field private static final EVENT_PROXY_HAS_CHANGED:I = 0x10

.field private static final EVENT_REGISTER_NETWORK_AGENT:I = 0x12

.field private static final EVENT_REGISTER_NETWORK_LISTENER:I = 0x15

.field private static final EVENT_REGISTER_NETWORK_LISTENER_WITH_INTENT:I = 0x1f

.field private static final EVENT_REGISTER_NETWORK_PROVIDER:I = 0x11

.field private static final EVENT_REGISTER_NETWORK_REQUEST:I = 0x13

.field private static final EVENT_REGISTER_NETWORK_REQUEST_WITH_INTENT:I = 0x1a

.field private static final EVENT_RELEASE_NETWORK_REQUEST:I = 0x16

.field private static final EVENT_RELEASE_NETWORK_REQUEST_WITH_INTENT:I = 0x1b

.field private static final EVENT_REVALIDATE_NETWORK:I = 0x24

.field private static final EVENT_SET_ACCEPT_PARTIAL_CONNECTIVITY:I = 0x2c

.field private static final EVENT_SET_ACCEPT_UNVALIDATED:I = 0x1c

.field private static final EVENT_SET_AVOID_UNVALIDATED:I = 0x23

.field private static final EVENT_START_DNS_TIME_OUT_STATE_CHANGED:I = 0x66

.field private static final EVENT_SYSTEM_READY:I = 0x19

.field private static final EVENT_TIMEOUT_NETWORK_REQUEST:I = 0x14

.field private static final EVENT_UID_RULES_CHANGED:I = 0x27

.field private static final EVENT_UNREGISTER_NETWORK_PROVIDER:I = 0x17

.field private static final EVENT_UPDATE_ACTIVE_DATA_SUBID:I = 0xa1

.field private static final EVENT_WIFI_AUTO_CHANGE_TO_MOBILE_DATA_CHANGED:I = 0x64

.field private static final LINGER_DELAY_PROPERTY:Ljava/lang/String; = "persist.netmon.linger"

.field private static final LOGD_BLOCKED_NETWORKINFO:Z = true

.field private static final MAX_NETWORK_INFO_LOGS:I = 0x28

.field private static final MAX_NETWORK_REQUESTS_PER_UID:I = 0x64

.field private static final MAX_NETWORK_REQUEST_LOGS:I = 0x14

.field private static final MAX_WAKELOCK_LOGS:I = 0x14

.field private static final NETWORK_ARG:Ljava/lang/String; = "networks"

.field private static final NETWORK_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final OP_START_DNS_TIME_OUT_MONITER_STATE:Ljava/lang/String; = "start_dns_time_out_monitor"

.field private static final OP_TCP_TIMESTAMPS_VALUE:Ljava/lang/String; = "op_tcp_timestamps_value"

.field private static final PROMPT_UNVALIDATED_DELAY_MS:I = 0x1f40

.field private static final PROVISIONING_NOTIFICATION_HIDE:I = 0x0

.field private static final PROVISIONING_NOTIFICATION_SHOW:I = 0x1

.field private static final PROVISIONING_URL_PATH:Ljava/lang/String; = "/data/misc/radio/provisioning_urls.xml"

.field private static final REQUEST_ARG:Ljava/lang/String; = "requests"

.field private static final RESTORE_DEFAULT_NETWORK_DELAY:I = 0xea60

.field public static final SHORT_ARG:Ljava/lang/String; = "--short"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_PROVISIONING_URL:Ljava/lang/String; = "provisioningUrl"

.field private static final TAG_PROVISIONING_URLS:Ljava/lang/String; = "provisioningUrls"

.field private static final TCP_RTT_CHECK_VALUE:I

.field private static final VDBG:Z

.field private static final mIsH2Version:Z

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mBandwidthRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlockedAppUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mConnectivityDiagnosticsCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mConnectivityDiagnosticsHandler:Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTcpBufferSizes:Ljava/lang/String;

.field private mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

.field private mDefaultInetConditionPublished:I

.field private final mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

.field private volatile mDefaultNetworkNai:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultWifiRequest:Landroid/net/NetworkRequest;

.field private final mDeps:Lcom/android/server/ConnectivityService$Dependencies;

.field private final mDnsManager:Lcom/android/server/connectivity/DnsManager;

.field protected mDnsResolver:Landroid/net/IDnsResolver;

.field private final mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

.field protected final mHandlerThread:Landroid/os/HandlerThread;

.field private mInitialBroadcast:Landroid/content/Intent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLastWakeLockAcquireTimestamp:J

.field private final mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

.field protected mLingerDelayMs:I

.field private mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

.field private final mLocationPermissionChecker:Lcom/android/internal/util/LocationPermissionChecker;

.field private mLockdownEnabled:Z

.field private mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field private mMaxWakelockDurationMs:J

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field final mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

.field final mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

.field private mNMS:Landroid/os/INetworkManagementService;

.field private mNetConfigs:[Landroid/net/NetworkConfig;

.field private final mNetIdManager:Lcom/android/server/NetIdManager;

.field private mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mNetTransitionWakeLockTimeout:I

.field protected mNetd:Landroid/net/INetd;

.field private final mNetdDnsEventCallback:Landroid/net/INetdEventCallback;

.field protected final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field private final mNetworkAgentInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkForNetId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

.field private final mNetworkProviderInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/ConnectivityService$NetworkProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkRanker:Lcom/android/server/connectivity/NetworkRanker;

.field private final mNetworkRequestInfoLogs:Landroid/util/LocalLog;

.field private final mNetworkRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/NetworkRequest;",
            "Lcom/android/server/ConnectivityService$NetworkRequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworksDefined:I

.field private final mNextNetworkProviderId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mNextNetworkRequestId:I

.field protected mNonDefaultSubscriptionLingerDelayMs:I

.field private mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private mOpWifiManager:Lcom/oneplus/android/wifi/IOpWifiManager;

.field private final mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

.field private mPreferredSubId:I

.field private final mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

.field private mProtectedNetworks:Ljava/util/List;

.field private final mProvisioningUrlFile:Ljava/io/File;

.field protected final mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

.field private final mReleasePendingIntentDelayMs:I

.field private mRestrictBackground:Z

.field private final mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

.field private mStartDnsTimeOutMonitor:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private mSystemReady:Z

.field private mTNS:Lcom/android/server/TestNetworkService;

.field private final mTNSLock:Ljava/lang/Object;

.field private mTcpTimestampsFlag:I

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTotalWakelockAcquisitions:I

.field private mTotalWakelockDurationMs:J

.field private mTotalWakelockReleases:I

.field private final mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

.field private mUidRules:Landroid/util/SparseIntArray;

.field private final mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field protected final mVpns:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/connectivity/Vpn;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakelockLogs:Landroid/util/LocalLog;

.field private mWifiAutoChangeMobile:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWolSupportedInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 280
    const-class v0, Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    .line 288
    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ConnectivityService;->DDBG:Z

    .line 289
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    .line 320
    const-string/jumbo v1, "persist.radio.debug.dns.rtt"

    const/16 v4, 0x3e8

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/ConnectivityService;->DNS_RTT_CHECK_VALUE:I

    .line 321
    const-string/jumbo v1, "persist.radio.debug.tcp.rtt"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/ConnectivityService;->TCP_RTT_CHECK_VALUE:I

    .line 391
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Lcom/android/internal/util/AsyncChannel;

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const/4 v4, 0x1

    aput-object v0, v1, v4

    const-class v0, Landroid/net/NetworkAgent;

    aput-object v0, v1, v3

    const-class v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 729
    new-array v0, v4, [I

    aput v5, v0, v5

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ConnectivityService;->mIsH2Version:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;

    .line 1044
    invoke-static {}, Lcom/android/server/ConnectivityService;->getDnsResolver()Landroid/net/IDnsResolver;

    move-result-object v5

    new-instance v6, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v6}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    .line 1045
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v7

    new-instance v8, Lcom/android/server/ConnectivityService$Dependencies;

    invoke-direct {v8}, Lcom/android/server/ConnectivityService$Dependencies;-><init>()V

    .line 1044
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/IDnsResolver;Landroid/net/metrics/IpConnectivityLog;Landroid/net/INetd;Lcom/android/server/ConnectivityService$Dependencies;)V

    .line 1046
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/net/IDnsResolver;Landroid/net/metrics/IpConnectivityLog;Landroid/net/INetd;Lcom/android/server/ConnectivityService$Dependencies;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .param p3, "statsService"    # Landroid/net/INetworkStatsService;
    .param p4, "policyManager"    # Landroid/net/INetworkPolicyManager;
    .param p5, "dnsresolver"    # Landroid/net/IDnsResolver;
    .param p6, "logger"    # Landroid/net/metrics/IpConnectivityLog;
    .param p7, "netd"    # Landroid/net/INetd;
    .param p8, "deps"    # Lcom/android/server/ConnectivityService$Dependencies;

    .line 1051
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    invoke-direct/range {p0 .. p0}, Landroid/net/IConnectivityManager$Stub;-><init>()V

    .line 342
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    .line 357
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 364
    const/4 v8, 0x0

    iput v8, v1, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 382
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTNSLock:Ljava/lang/Object;

    .line 640
    new-instance v0, Lcom/android/server/ConnectivityService$1;

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$1;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 649
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/ConnectivityService;->mPreferredSubId:I

    .line 700
    const/4 v9, 0x1

    iput v9, v1, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    .line 703
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mNextNetworkProviderId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 708
    new-instance v10, Landroid/util/LocalLog;

    const/16 v11, 0x14

    invoke-direct {v10, v11}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    .line 712
    new-instance v10, Landroid/util/LocalLog;

    const/16 v12, 0x28

    invoke-direct {v10, v12}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    .line 715
    new-instance v10, Landroid/util/LocalLog;

    invoke-direct {v10, v11}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    .line 716
    iput v8, v1, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    .line 717
    iput v8, v1, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    .line 718
    const-wide/16 v10, 0x0

    iput-wide v10, v1, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    .line 719
    iput-wide v10, v1, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    .line 720
    iput-wide v10, v1, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    .line 726
    iput-boolean v8, v1, Lcom/android/server/ConnectivityService;->mWifiAutoChangeMobile:Z

    .line 730
    iput v8, v1, Lcom/android/server/ConnectivityService;->mTcpTimestampsFlag:I

    .line 737
    iput-boolean v8, v1, Lcom/android/server/ConnectivityService;->mStartDnsTimeOutMonitor:Z

    .line 740
    new-instance v10, Landroid/util/SparseArray;

    const/16 v11, 0xa

    invoke-direct {v10, v11}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    .line 749
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsCallbacks:Ljava/util/Map;

    .line 934
    new-instance v10, Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-direct {v10, v1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    .line 940
    new-instance v10, Lcom/android/server/ConnectivityService$2;

    invoke-direct {v10, v1}, Lcom/android/server/ConnectivityService$2;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    .line 1965
    new-instance v10, Lcom/android/server/ConnectivityService$3;

    invoke-direct {v10, v1}, Lcom/android/server/ConnectivityService$3;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    .line 2090
    new-instance v10, Lcom/android/server/ConnectivityService$4;

    invoke-direct {v10, v1}, Lcom/android/server/ConnectivityService$4;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 2145
    new-instance v10, Lcom/android/server/ConnectivityService$5;

    invoke-direct {v10, v1}, Lcom/android/server/ConnectivityService$5;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 5343
    new-instance v10, Ljava/io/File;

    const-string v11, "/data/misc/radio/provisioning_urls.xml"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    .line 5570
    new-instance v10, Lcom/android/server/ConnectivityService$6;

    invoke-direct {v10, v1}, Lcom/android/server/ConnectivityService$6;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5604
    new-instance v10, Lcom/android/server/ConnectivityService$7;

    invoke-direct {v10, v1}, Lcom/android/server/ConnectivityService$7;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    .line 5614
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    .line 5615
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    .line 5619
    new-instance v10, Landroid/util/SparseIntArray;

    invoke-direct {v10}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    .line 6166
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    .line 6176
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    .line 6178
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    .line 6185
    const/4 v10, 0x0

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mDefaultNetworkNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 8862
    new-instance v11, Lcom/android/server/ConnectivityService$8;

    invoke-direct {v11, v1}, Lcom/android/server/ConnectivityService$8;-><init>(Lcom/android/server/ConnectivityService;)V

    iput-object v11, v1, Lcom/android/server/ConnectivityService;->mNetdDnsEventCallback:Landroid/net/INetdEventCallback;

    .line 1052
    const-string v11, "ConnectivityService starting up"

    invoke-static {v11}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1054
    const-string/jumbo v11, "missing Dependencies"

    invoke-static {v7, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v11, v7

    check-cast v11, Lcom/android/server/ConnectivityService$Dependencies;

    iput-object v11, v1, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    .line 1055
    invoke-virtual {v11}, Lcom/android/server/ConnectivityService$Dependencies;->getSystemProperties()Lcom/android/server/connectivity/MockableSystemProperties;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 1056
    iget-object v11, v1, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    invoke-virtual {v11}, Lcom/android/server/ConnectivityService$Dependencies;->makeNetIdManager()Lcom/android/server/NetIdManager;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/ConnectivityService;->mNetIdManager:Lcom/android/server/NetIdManager;

    .line 1057
    const-string/jumbo v11, "missing Context"

    invoke-static {v2, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Landroid/content/Context;

    iput-object v11, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1059
    move-object/from16 v11, p6

    iput-object v11, v1, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 1060
    sget-object v12, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-direct {v1, v0, v12}, Lcom/android/server/ConnectivityService;->createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 1061
    new-instance v0, Lcom/android/server/connectivity/NetworkRanker;

    invoke-direct {v0}, Lcom/android/server/connectivity/NetworkRanker;-><init>()V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetworkRanker:Lcom/android/server/connectivity/NetworkRanker;

    .line 1062
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v12, v1, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    new-instance v13, Landroid/os/Binder;

    invoke-direct {v13}, Landroid/os/Binder;-><init>()V

    invoke-direct {v0, v1, v10, v12, v13}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    move-object v12, v0

    .line 1063
    .local v12, "defaultNRI":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "REGISTER "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1066
    sget-object v0, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-direct {v1, v8, v0}, Lcom/android/server/ConnectivityService;->createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    .line 1072
    sget-object v0, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-direct {v1, v9, v0}, Lcom/android/server/ConnectivityService;->createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDefaultWifiRequest:Landroid/net/NetworkRequest;

    .line 1075
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$Dependencies;->makeHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1076
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1077
    new-instance v0, Lcom/android/server/ConnectivityService$InternalHandler;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v0, v1, v13}, Lcom/android/server/ConnectivityService$InternalHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 1078
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v0, v1, v13}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    .line 1079
    new-instance v0, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1080
    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v0, v1, v13, v10}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;Lcom/android/server/ConnectivityService$1;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsHandler:Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    .line 1082
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "connectivity_release_pending_intent_delay_ms"

    const/16 v13, 0x1388

    invoke-static {v0, v10, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    .line 1085
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v10, "persist.netmon.linger"

    const/16 v14, 0x7530

    invoke-virtual {v0, v10, v14}, Lcom/android/server/connectivity/MockableSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    .line 1086
    iput v13, v1, Lcom/android/server/ConnectivityService;->mNonDefaultSubscriptionLingerDelayMs:I

    .line 1088
    const-string/jumbo v0, "missing INetworkManagementService"

    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    .line 1089
    const-string/jumbo v0, "missing INetworkStatsService"

    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, Landroid/net/INetworkStatsService;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 1090
    const-string/jumbo v0, "missing INetworkPolicyManager"

    invoke-static {v5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, Landroid/net/INetworkPolicyManager;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    .line 1091
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 1092
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 1091
    const-string/jumbo v10, "missing NetworkPolicyManagerInternal"

    invoke-static {v0, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 1094
    const-string/jumbo v0, "missing IDnsResolver"

    invoke-static {v6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Landroid/net/IDnsResolver;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 1095
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    iget-object v10, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v0, v10, v13}, Lcom/android/server/ConnectivityService$Dependencies;->makeProxyTracker(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/connectivity/ProxyTracker;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    .line 1097
    move-object/from16 v10, p7

    iput-object v10, v1, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    .line 1098
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    .line 1099
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "phone"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1100
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v13, "appops"

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1101
    new-instance v0, Lcom/android/internal/util/LocationPermissionChecker;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v13}, Lcom/android/internal/util/LocationPermissionChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mLocationPermissionChecker:Lcom/android/internal/util/LocationPermissionChecker;

    .line 1102
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1103
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/high16 v14, 0x400000

    invoke-virtual {v0, v13, v14}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1109
    :try_start_0
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    iget-object v13, v1, Lcom/android/server/ConnectivityService;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-interface {v0, v13}, Landroid/net/INetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1112
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unable to register INetworkPolicyListener"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1115
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string/jumbo v0, "power"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/PowerManager;

    .line 1117
    .local v13, "powerManager":Landroid/os/PowerManager;
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v9, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1118
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x10e0094

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    .line 1120
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-virtual {v13, v9, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1122
    const/16 v0, 0x13

    new-array v0, v0, [Landroid/net/NetworkConfig;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    .line 1125
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v14, "ro.radio.noril"

    invoke-virtual {v0, v14, v8}, Lcom/android/server/connectivity/MockableSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 1126
    .local v14, "wifiOnly":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "wifiOnly="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v15, 0x1070097

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 1129
    .local v15, "naStrings":[Ljava/lang/String;
    array-length v8, v15

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v3, v15, v9

    .line 1131
    .local v3, "naString":Ljava/lang/String;
    :try_start_1
    new-instance v0, Landroid/net/NetworkConfig;

    invoke-direct {v0, v3}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v0, "n":Landroid/net/NetworkConfig;
    sget-boolean v16, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v16, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "naString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1133
    :cond_0
    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    const/16 v5, 0x12

    if-le v4, v5, :cond_1

    .line 1134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in networkAttributes - ignoring attempt to define type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1136
    goto :goto_2

    .line 1138
    :cond_1
    if-eqz v14, :cond_2

    iget v4, v0, Landroid/net/NetworkConfig;->type:I

    invoke-static {v4}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkAttributes - ignoring mobile as this dev is wifiOnly "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1141
    goto :goto_2

    .line 1143
    :cond_2
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v5, v0, Landroid/net/NetworkConfig;->type:I

    aget-object v4, v4, v5

    if-eqz v4, :cond_3

    .line 1144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in networkAttributes - ignoring attempt to redefine type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1146
    goto :goto_2

    .line 1148
    :cond_3
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget v5, v0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v4, v5}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 1150
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    iget v5, v0, Landroid/net/NetworkConfig;->type:I

    aput-object v0, v4, v5

    .line 1151
    iget v4, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1154
    .end local v0    # "n":Landroid/net/NetworkConfig;
    goto :goto_2

    .line 1152
    :catch_1
    move-exception v0

    .line 1129
    .end local v3    # "naString":Ljava/lang/String;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    goto/16 :goto_1

    .line 1158
    :cond_4
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    const/16 v3, 0x11

    aget-object v0, v0, v3

    if-nez v0, :cond_5

    .line 1161
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 1162
    iget v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    .line 1167
    :cond_5
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    const/16 v3, 0x9

    aget-object v0, v0, v3

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    const-string v4, "ethernet"

    invoke-virtual {v0, v4}, Lcom/android/server/ConnectivityService$Dependencies;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1168
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, v3}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->addSupportedType(I)V

    .line 1169
    iget v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    .line 1172
    :cond_6
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mNetworksDefined="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/ConnectivityService;->mNetworksDefined:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1174
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    .line 1175
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070066

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 1177
    .local v3, "protectedNetworks":[I
    array-length v0, v3

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_9

    aget v5, v3, v4

    .line 1178
    .local v5, "p":I
    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v8, v8, v5

    if-eqz v8, :cond_8

    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1179
    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1181
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring protectedNetwork "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1177
    .end local v5    # "p":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1185
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1186
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mWolSupportedInterfaces:Ljava/util/Set;

    .line 1189
    const-string/jumbo v0, "user"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    .line 1191
    new-instance v0, Lcom/android/server/connectivity/PermissionMonitor;

    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-direct {v0, v4, v5}, Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/net/INetd;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    .line 1196
    :try_start_2
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    .line 1197
    .local v0, "oemNetdBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/ConnectivityService;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1200
    .end local v0    # "oemNetdBinder":Landroid/os/IBinder;
    goto :goto_5

    .line 1198
    :catch_2
    move-exception v0

    .line 1199
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cannot get OemNetd:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1206
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1207
    const-string v4, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1208
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1209
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1210
    const-string v4, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1211
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v20, 0x0

    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v0

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1217
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v23, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.USER_PRESENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v24, v8

    invoke-virtual/range {v21 .. v26}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1221
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1222
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1223
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1224
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1225
    const-string/jumbo v0, "package"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1226
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    move-object/from16 v19, v4

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1234
    :try_start_3
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mDataActivityObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v5}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1237
    goto :goto_6

    .line 1235
    :catch_3
    move-exception v0

    .line 1236
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error registering observer :"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1239
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6
    new-instance v0, Lcom/android/server/ConnectivityService$SettingsObserver;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v0, v5, v8}, Lcom/android/server/ConnectivityService$SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1240
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->registerSettingsCallbacks()V

    .line 1242
    new-instance v0, Lcom/android/server/connectivity/DataConnectionStats;

    iget-object v5, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v0, v5, v8}, Lcom/android/server/connectivity/DataConnectionStats;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v5, v0

    .line 1243
    .local v5, "dataConnectionStats":Lcom/android/server/connectivity/DataConnectionStats;
    invoke-virtual {v5}, Lcom/android/server/connectivity/DataConnectionStats;->startMonitoring()V

    .line 1245
    new-instance v0, Lcom/android/server/connectivity/KeepaliveTracker;

    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v0, v8, v9}, Lcom/android/server/connectivity/KeepaliveTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 1246
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v8, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-class v2, Landroid/app/NotificationManager;

    .line 1247
    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-direct {v0, v8, v9, v2}, Lcom/android/server/connectivity/NetworkNotificationManager;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Landroid/app/NotificationManager;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    .line 1249
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    const-string/jumbo v8, "network_switch_notification_daily_limit"

    invoke-static {v0, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1252
    .local v2, "dailyLimit":I
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/32 v8, 0xea60

    move-object/from16 v22, v3

    .end local v3    # "protectedNetworks":[I
    .local v22, "protectedNetworks":[I
    const-string/jumbo v3, "network_switch_notification_rate_limit_millis"

    invoke-static {v0, v3, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1255
    .local v8, "rateLimit":J
    new-instance v0, Lcom/android/server/connectivity/LingerMonitor;

    iget-object v3, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v4

    .end local v4    # "intentFilter":Landroid/content/IntentFilter;
    .local v23, "intentFilter":Landroid/content/IntentFilter;
    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v19, v2

    move-wide/from16 v20, v8

    invoke-direct/range {v16 .. v21}, Lcom/android/server/connectivity/LingerMonitor;-><init>(Landroid/content/Context;Lcom/android/server/connectivity/NetworkNotificationManager;IJ)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    .line 1257
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    iget-object v3, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move/from16 v16, v2

    .end local v2    # "dailyLimit":I
    .local v16, "dailyLimit":I
    new-instance v2, Lcom/android/server/-$$Lambda$ConnectivityService$SFqiR4Pfksb1C7csMC3uNxCllR8;

    invoke-direct {v2, v1}, Lcom/android/server/-$$Lambda$ConnectivityService$SFqiR4Pfksb1C7csMC3uNxCllR8;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/server/ConnectivityService$Dependencies;->makeMultinetworkPolicyTracker(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/net/util/MultinetworkPolicyTracker;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    .line 1259
    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->start()V

    .line 1261
    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker;

    iget-object v2, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-direct {v0, v2, v3}, Lcom/android/server/connectivity/MultipathPolicyTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 1263
    new-instance v0, Lcom/android/server/connectivity/DnsManager;

    iget-object v2, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    iget-object v4, v1, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/connectivity/DnsManager;-><init>(Landroid/content/Context;Landroid/net/IDnsResolver;Lcom/android/server/connectivity/MockableSystemProperties;)V

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    .line 1264
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->registerPrivateDnsSettingsCallbacks()V

    .line 1267
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_auto_change_to_mobile_data"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v1, Lcom/android/server/ConnectivityService;->mWifiAutoChangeMobile:Z

    .line 1270
    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isNeedTcpTimestampsControl()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1271
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1272
    sget-boolean v2, Lcom/android/server/ConnectivityService;->mIsH2Version:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x2

    goto :goto_8

    :cond_b
    const/4 v2, 0x1

    .line 1271
    :goto_8
    const-string/jumbo v3, "op_tcp_timestamps_value"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/ConnectivityService;->mTcpTimestampsFlag:I

    .line 1274
    :try_start_4
    iget-object v2, v1, Lcom/android/server/ConnectivityService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/internal/net/IOemNetd;->setTcpTimestamps(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1277
    goto :goto_9

    .line 1275
    :catch_4
    move-exception v0

    .line 1276
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error set tcp timestamps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 1280
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_9
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_WIFI_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/wifi/IOpWifiManager;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mOpWifiManager:Lcom/oneplus/android/wifi/IOpWifiManager;

    .line 1281
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, v1, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1285
    iget-object v0, v1, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "start_dns_time_out_monitor"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    goto :goto_a

    :cond_d
    move v2, v3

    :goto_a
    iput-boolean v2, v1, Lcom/android/server/ConnectivityService;->mStartDnsTimeOutMonitor:Z

    .line 1288
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget v0, p0, Lcom/android/server/ConnectivityService;->mPreferredSubId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$10000()I
    .locals 1

    .line 278
    sget v0, Lcom/android/server/ConnectivityService;->TCP_RTT_CHECK_VALUE:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 278
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    return v0
.end method

.method static synthetic access$1400(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 278
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .line 278
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "x3"    # Landroid/net/NetworkCapabilities;

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Landroid/net/LinkProperties;

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->processLinkPropertiesFromAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Landroid/net/NetworkInfo;

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # I

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 278
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(I)Z
    .locals 1
    .param p0, "x0"    # I

    .line 278
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mWifiAutoChangeMobile:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .line 278
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mWifiAutoChangeMobile:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Landroid/net/shared/PrivateDnsConfig;

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/ConnectivityService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # [Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 278
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/CaptivePortalData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Landroid/net/CaptivePortalData;

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleCaptivePortalDataUpdate(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/CaptivePortalData;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$Dependencies;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleFreshlyValidatedNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePromptUnvalidated(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # I

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/ConnectivityService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/ConnectivityService;)Lcom/oneplus/android/wifi/IOpWifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mOpWifiManager:Lcom/oneplus/android/wifi/IOpWifiManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/ConnectivityService;Landroid/net/DataStallReportParcelable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/DataStallReportParcelable;
    .param p2, "x2"    # I

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkNetworkStackPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkTransitionWakelock(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ConnectivityService;IZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # J

    .line 278
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->sendDataActivityBroadcast(IZJ)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/ProxyInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkProviderInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkProvider(Lcom/android/server/ConnectivityService$NetworkProviderInfo;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleUnregisterNetworkProvider(Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Landroid/net/INetworkMonitor;

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleTimedOutNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/app/PendingIntent;
    .param p2, "x2"    # I

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkRequest;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 278
    invoke-static {p0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleSetAcceptPartialConnectivity(Landroid/net/Network;ZZ)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleSetAvoidUnvalidated(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handleConfigureAlwaysOnNetworks()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->handleReportNetworkConnectivity(Landroid/net/Network;IZ)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->handlePrivateDnsSettingsChanged()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handlePrivateDnsValidationUpdate(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/ConnectivityService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget v0, p0, Lcom/android/server/ConnectivityService;->mTcpTimestampsFlag:I

    return v0
.end method

.method static synthetic access$6802(Lcom/android/server/ConnectivityService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 278
    iput p1, p0, Lcom/android/server/ConnectivityService;->mTcpTimestampsFlag:I

    return p1
.end method

.method static synthetic access$6900()Z
    .locals 1

    .line 278
    sget-boolean v0, Lcom/android/server/ConnectivityService;->mIsH2Version:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/ConnectivityService;)Lcom/android/internal/net/IOemNetd;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mStartDnsTimeOutMonitor:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/android/server/ConnectivityService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Z

    .line 278
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mStartDnsTimeOutMonitor:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/android/server/ConnectivityService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->registerDnsNetdEventCallback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleUpdateActiveDataSubId(I)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStart(I)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserStop(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/ConnectivityService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->onUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/ConnectivityService;)Landroid/net/NetworkRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->onPackageReplaced(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/ConnectivityService;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ConnectivityService;->onPackageRemoved(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;

    .line 278
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRegisterConnectivityDiagnosticsCallback(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/ConnectivityService;IZLjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .line 278
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->handleNat64PrefixEvent(IZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/ConnectivityService;Landroid/net/IConnectivityDiagnosticsCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Landroid/net/IConnectivityDiagnosticsCallback;
    .param p2, "x2"    # I

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleUnregisterConnectivityDiagnosticsCallback(Landroid/net/IConnectivityDiagnosticsCallback;I)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$ConnectivityReportEvent;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/ConnectivityService$ConnectivityReportEvent;
    .param p2, "x2"    # Landroid/os/PersistableBundle;

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleNetworkTestedWithExtras(Lcom/android/server/ConnectivityService$ConnectivityReportEvent;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;JILandroid/os/PersistableBundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/os/PersistableBundle;

    .line 278
    invoke-direct/range {p0 .. p5}, Lcom/android/server/ConnectivityService;->handleDataStallSuspected(Lcom/android/server/connectivity/NetworkAgentInfo;JILandroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ConnectivityService;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "x2"    # Z

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->handleNetworkConnectivityReported(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    return-void
.end method

.method static synthetic access$9900()I
    .locals 1

    .line 278
    sget v0, Lcom/android/server/ConnectivityService;->DNS_RTT_CHECK_VALUE:I

    return v0
.end method

.method private addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "netId"    # I
    .param p4, "uid"    # I

    .line 2064
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 2065
    .local v0, "bestRoute":Landroid/net/RouteInfo;
    if-nez v0, :cond_0

    .line 2066
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_0

    .line 2068
    :cond_0
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    .line 2069
    .local v1, "iface":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2071
    invoke-static {p2, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    goto :goto_0

    .line 2075
    :cond_1
    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-static {p2, v2, v1}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)Landroid/net/RouteInfo;

    move-result-object v0

    .line 2078
    .end local v1    # "iface":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding legacy route "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for UID/PID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2078
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2081
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p3, v0, p4}, Landroid/os/INetworkManagementService;->addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2086
    nop

    .line 2087
    const/4 v1, 0x1

    return v1

    .line 2082
    :catch_0
    move-exception v1

    .line 2084
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception trying to add a route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2085
    const/4 v2, 0x0

    return v2
.end method

.method private addNetworkToLegacyTypeTracker(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7528
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7529
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 7530
    .local v1, "nr":Landroid/net/NetworkRequest;
    iget v2, v1, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7532
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget v3, v1, Landroid/net/NetworkRequest;->legacyType:I

    invoke-virtual {v2, v3, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7528
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7540
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7541
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7543
    :cond_2
    return-void
.end method

.method private applyBackgroundChangeForRematch(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7472
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 7473
    .local v0, "newNc":Landroid/net/NetworkCapabilities;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 7474
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->updateNetworkPermissions(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 7475
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getAndSetNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 7476
    const v1, 0x80006

    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 7477
    return-void
.end method

.method private applyNetworkReassignment(Lcom/android/server/ConnectivityService$NetworkReassignment;J)V
    .locals 20
    .param p1, "changes"    # Lcom/android/server/ConnectivityService$NetworkReassignment;
    .param p2, "now"    # J

    .line 7314
    move-object/from16 v7, p0

    move-wide/from16 v8, p2

    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    .line 7318
    .local v10, "nais":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v0

    .line 7319
    .local v11, "oldBgNetworks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7320
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v11, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 7321
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    goto :goto_0

    .line 7327
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/ConnectivityService$NetworkReassignment;->getRequestReassignments()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;

    .line 7328
    .local v12, "event":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    iget-object v1, v12, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v12, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mNewNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eq v1, v2, :cond_2

    .line 7329
    iget-object v2, v12, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v3, v12, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v4, v12, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mNewNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object/from16 v1, p0

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ConnectivityService;->updateSatisfiersForRematchRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 7332
    .end local v12    # "event":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    :cond_2
    goto :goto_1

    .line 7334
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v12

    .line 7335
    .local v12, "oldDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, v7, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7336
    .local v13, "defaultRequestInfo":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    nop

    .line 7337
    move-object/from16 v14, p1

    invoke-static {v14, v13}, Lcom/android/server/ConnectivityService$NetworkReassignment;->access$8700(Lcom/android/server/ConnectivityService$NetworkReassignment;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;

    move-result-object v15

    .line 7339
    .local v15, "reassignment":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    if-eqz v15, :cond_4

    iget-object v0, v15, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mNewNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    goto :goto_2

    :cond_4
    move-object v0, v12

    :goto_2
    move-object v5, v0

    .line 7341
    .local v5, "newDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    const-string v6, "Exception in setNetworkPermission: "

    if-eq v12, v5, :cond_7

    .line 7342
    if-eqz v12, :cond_5

    .line 7343
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    invoke-virtual {v0, v12, v5}, Lcom/android/server/connectivity/LingerMonitor;->noteLingerDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7345
    :cond_5
    invoke-direct {v7, v5, v12}, Lcom/android/server/ConnectivityService;->updateDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7347
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7349
    :try_start_0
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v1, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    iget-object v2, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 7350
    invoke-direct {v7, v2}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)I

    move-result v2

    .line 7349
    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setNetworkPermission(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7353
    goto :goto_3

    .line 7351
    :catch_0
    move-exception v0

    .line 7352
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7356
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    invoke-direct {v7, v5}, Lcom/android/server/ConnectivityService;->makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7358
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$Dependencies;->getMetricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v5, v12}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkEvent(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7361
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->scheduleReleaseNetworkTransitionWakelock()V

    .line 7367
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/ConnectivityService$NetworkReassignment;->getRequestReassignments()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;

    .line 7372
    .local v3, "event":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    iget-object v1, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mNewNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-direct {v7, v1, v2}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7374
    iget-object v1, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mNewNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eqz v1, :cond_8

    .line 7375
    iget-object v1, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mNewNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-virtual {v7, v1, v2}, Lcom/android/server/ConnectivityService;->notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    move-object/from16 v16, v0

    move-object v14, v6

    move-object/from16 v19, v13

    move-object v13, v5

    goto :goto_5

    .line 7377
    :cond_8
    iget-object v1, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v7, v1}, Lcom/android/server/ConnectivityService;->satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7378
    iget-object v1, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v2, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    const v4, 0x80004

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-direct {v7, v1, v2, v4, v0}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    move-object v14, v6

    move-object/from16 v19, v13

    move-object v13, v5

    goto :goto_5

    .line 7381
    :cond_9
    move-object/from16 v16, v0

    iget-object v1, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v7, Lcom/android/server/ConnectivityService;->mNonDefaultSubscriptionLingerDelayMs:I

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "newDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v17, "newDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    int-to-long v5, v0

    move-object v0, v3

    .end local v3    # "event":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    .local v0, "event":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    move-wide/from16 v3, p2

    move-object/from16 v19, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    .end local v17    # "newDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v13, "newDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v19, "defaultRequestInfo":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->lingerRequest(Landroid/net/NetworkRequest;JJ)V

    .line 7385
    .end local v0    # "event":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    :goto_5
    move-object v5, v13

    move-object v6, v14

    move-object/from16 v0, v16

    move-object/from16 v13, v19

    move-object/from16 v14, p1

    goto :goto_4

    .line 7391
    .end local v19    # "defaultRequestInfo":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v5    # "newDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v13, "defaultRequestInfo":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_a
    move-object v14, v6

    move-object/from16 v19, v13

    move-object v13, v5

    .end local v5    # "newDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v13, "newDefaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v19    # "defaultRequestInfo":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 7392
    .local v1, "lingeredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7398
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {v7, v2, v8, v9}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 7399
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7401
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_b
    goto :goto_6

    .line 7403
    :cond_c
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7404
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez v3, :cond_d

    goto :goto_7

    .line 7405
    :cond_d
    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 7409
    .local v3, "oldBackground":Z
    invoke-direct {v7, v2}, Lcom/android/server/ConnectivityService;->processNewlyLostListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7410
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v4

    if-eq v3, v4, :cond_e

    .line 7411
    invoke-direct {v7, v2}, Lcom/android/server/ConnectivityService;->applyBackgroundChangeForRematch(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7413
    :cond_e
    invoke-direct {v7, v2}, Lcom/android/server/ConnectivityService;->processNewlySatisfiedListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7414
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "oldBackground":Z
    goto :goto_7

    .line 7417
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/ConnectivityService$NetworkReassignment;->getRequestReassignments()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;

    .line 7418
    .local v3, "event":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    iget-object v0, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eqz v0, :cond_10

    iget-object v0, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mRequest:Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v4, v4, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 7419
    invoke-virtual {v7, v0, v4}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7422
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_10

    .line 7425
    :try_start_1
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v4, v3, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;->mOldNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/os/INetworkManagementService;->setNetworkPermission(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7429
    goto :goto_9

    .line 7427
    :catch_1
    move-exception v0

    .line 7428
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7431
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "event":Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;
    :cond_10
    :goto_9
    goto :goto_8

    .line 7433
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7434
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {v7, v2, v8, v9}, Lcom/android/server/ConnectivityService;->notifyNetworkLosing(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 7435
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_a

    .line 7437
    :cond_12
    invoke-direct {v7, v12, v13, v10}, Lcom/android/server/ConnectivityService;->updateLegacyTypeTrackerAndVpnLockdownForRematch(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/util/Collection;)V

    .line 7440
    iget-object v0, v7, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7441
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    sget-object v3, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {v7, v2, v3}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 7442
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_13

    .line 7450
    invoke-direct {v7, v2, v8, v9}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 7451
    invoke-direct {v7, v2, v8, v9}, Lcom/android/server/ConnectivityService;->notifyNetworkLosing(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    goto :goto_c

    .line 7454
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reaping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7455
    invoke-direct {v7, v2}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7458
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_14
    :goto_c
    goto :goto_b

    .line 7459
    :cond_15
    return-void
.end method

.method private callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .locals 6
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"    # I
    .param p4, "arg1"    # I

    .line 6980
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 6984
    return-void

    .line 6986
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6988
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Landroid/net/NetworkRequest;

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {v1, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6989
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 6990
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x80005

    if-eq p3, v2, :cond_1

    .line 6991
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 6993
    :cond_1
    sparse-switch p3, :sswitch_data_0

    goto :goto_1

    .line 7029
    :sswitch_0
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    if-eqz p4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/ConnectivityService;->maybeLogBlockedStatusChanged(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Landroid/net/Network;Z)V

    .line 7030
    iput p4, v1, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 7024
    :sswitch_1
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->linkPropertiesRestrictedForCallerPermissions(Landroid/net/LinkProperties;II)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 7026
    goto :goto_1

    .line 7014
    :sswitch_2
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 7015
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 7017
    .local v2, "netCap":Landroid/net/NetworkCapabilities;
    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 7020
    invoke-virtual {v4}, Landroid/net/NetworkRequest;->getRequestorPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7019
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->maybeSanitizeLocationInfoForCaller(Landroid/net/NetworkCapabilities;ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 7017
    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 7021
    goto :goto_1

    .line 7009
    .end local v2    # "netCap":Landroid/net/NetworkCapabilities;
    :sswitch_3
    iput p4, v1, Landroid/os/Message;->arg1:I

    .line 7010
    goto :goto_1

    .line 6995
    :sswitch_4
    iget-object v2, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 6996
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 6998
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 7001
    invoke-virtual {v4}, Landroid/net/NetworkRequest;->getRequestorPackageName()Ljava/lang/String;

    move-result-object v4

    .line 7000
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->maybeSanitizeLocationInfoForCaller(Landroid/net/NetworkCapabilities;ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 6998
    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 7002
    iget-object v3, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iget v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/ConnectivityService;->linkPropertiesRestrictedForCallerPermissions(Landroid/net/LinkProperties;II)Landroid/net/LinkProperties;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V

    .line 7005
    iput p4, v1, Landroid/os/Message;->arg1:I

    .line 7006
    nop

    .line 7034
    .end local v2    # "nc":Landroid/net/NetworkCapabilities;
    :goto_1
    iput p3, v1, Landroid/os/Message;->what:I

    .line 7035
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 7037
    :try_start_0
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v2, :cond_3

    .line 7038
    invoke-static {p3}, Landroid/net/ConnectivityManager;->getCallbackName(I)Ljava/lang/String;

    move-result-object v2

    .line 7039
    .local v2, "notification":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7041
    .end local v2    # "notification":Ljava/lang/String;
    :cond_3
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7045
    goto :goto_2

    .line 7042
    :catch_0
    move-exception v2

    .line 7044
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException caught trying to send a callback msg for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7046
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x80002 -> :sswitch_4
        0x80003 -> :sswitch_3
        0x80006 -> :sswitch_2
        0x80007 -> :sswitch_1
        0x8000b -> :sswitch_0
    .end sparse-switch
.end method

.method private varargs checkAnyPermissionOf(II[Ljava/lang/String;)Z
    .locals 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "permissions"    # [Ljava/lang/String;

    .line 2231
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p3, v2

    .line 2232
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_0

    .line 2233
    const/4 v0, 0x1

    return v0

    .line 2231
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2236
    :cond_1
    return v1
.end method

.method private varargs checkAnyPermissionOf([Ljava/lang/String;)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 2222
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2223
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 2224
    const/4 v0, 0x1

    return v0

    .line 2222
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2227
    :cond_1
    return v1
.end method

.method private checkNetworkSignalStrengthWakeupPermission(II)Z
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 2344
    const-string v0, "android.permission.NETWORK_SIGNAL_STRENGTH_WAKEUP"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    const-string v2, "android.permission.NETWORK_SETTINGS"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->checkAnyPermissionOf(II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkNetworkStackPermission()Z
    .locals 2

    .line 2332
    const-string v0, "android.permission.NETWORK_STACK"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkNetworkStackPermission(II)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 2338
    const-string v0, "android.permission.NETWORK_STACK"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->checkAnyPermissionOf(II[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkSettingsPermission()Z
    .locals 2

    .line 2289
    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkSettingsPermission(II)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 2295
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 2297
    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2295
    :goto_1
    return v0
.end method

.method private checkUnsupportedStartingFrom(ILjava/lang/String;)Z
    .locals 4
    .param p1, "version"    # I
    .param p2, "callingPackageName"    # Ljava/lang/String;

    .line 5856
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5857
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 5859
    .local v1, "userId":I
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5861
    .local v3, "callingVersion":I
    if-ge v3, p1, :cond_0

    return v2

    .end local v3    # "callingVersion":I
    :cond_0
    goto :goto_0

    .line 5862
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 5863
    const/4 v2, 0x1

    return v2
.end method

.method private computeNetworkReassignment()Lcom/android/server/ConnectivityService$NetworkReassignment;
    .locals 8

    .line 7263
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 7264
    new-instance v0, Lcom/android/server/ConnectivityService$NetworkReassignment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/ConnectivityService$NetworkReassignment;-><init>(Lcom/android/server/ConnectivityService$1;)V

    .line 7267
    .local v0, "changes":Lcom/android/server/ConnectivityService$NetworkReassignment;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7268
    .local v1, "nais":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7269
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez v4, :cond_0

    goto :goto_0

    .line 7270
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7271
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    .line 7273
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7274
    .local v3, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v4, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v4}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 7275
    :cond_3
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkRanker:Lcom/android/server/connectivity/NetworkRanker;

    iget-object v5, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v4, v5, v1}, Lcom/android/server/connectivity/NetworkRanker;->getBestNetwork(Landroid/net/NetworkRequest;Ljava/util/Collection;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    .line 7277
    .local v4, "bestNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v5, 0x0

    .line 7279
    .local v5, "satisfiesMobileMultiNetworkCheck":Z
    if-eqz v4, :cond_4

    .line 7280
    iget-object v6, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v7, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v7, v7, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v5

    .line 7284
    :cond_4
    if-nez v4, :cond_5

    iget-object v6, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eqz v6, :cond_2

    :cond_5
    iget-object v6, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    if-ne v4, v6, :cond_6

    if-eqz v5, :cond_6

    .line 7286
    goto :goto_1

    .line 7289
    :cond_6
    new-instance v6, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;

    iget-object v7, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-direct {v6, v3, v7, v4}, Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;-><init>(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    invoke-virtual {v0, v6}, Lcom/android/server/ConnectivityService$NetworkReassignment;->addRequestReassignment(Lcom/android/server/ConnectivityService$NetworkReassignment$RequestReassignment;)V

    .line 7292
    .end local v3    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v4    # "bestNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v5    # "satisfiesMobileMultiNetworkCheck":Z
    goto :goto_1

    .line 7293
    :cond_7
    return-object v0
.end method

.method private convertRouteInfo(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;
    .locals 3
    .param p1, "route"    # Landroid/net/RouteInfo;

    .line 6486
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 6501
    const-string v0, ""

    .local v0, "nextHop":Ljava/lang/String;
    goto :goto_0

    .line 6498
    .end local v0    # "nextHop":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "throw"

    .line 6499
    .restart local v0    # "nextHop":Ljava/lang/String;
    goto :goto_0

    .line 6495
    .end local v0    # "nextHop":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "unreachable"

    .line 6496
    .restart local v0    # "nextHop":Ljava/lang/String;
    goto :goto_0

    .line 6488
    .end local v0    # "nextHop":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6489
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "nextHop":Ljava/lang/String;
    goto :goto_0

    .line 6491
    .end local v0    # "nextHop":Ljava/lang/String;
    :cond_3
    const-string v0, ""

    .line 6493
    .restart local v0    # "nextHop":Ljava/lang/String;
    nop

    .line 6505
    :goto_0
    new-instance v1, Landroid/net/RouteInfoParcel;

    invoke-direct {v1}, Landroid/net/RouteInfoParcel;-><init>()V

    .line 6506
    .local v1, "rip":Landroid/net/RouteInfoParcel;
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/RouteInfoParcel;->ifName:Ljava/lang/String;

    .line 6507
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/RouteInfoParcel;->destination:Ljava/lang/String;

    .line 6508
    iput-object v0, v1, Landroid/net/RouteInfoParcel;->nextHop:Ljava/lang/String;

    .line 6509
    invoke-virtual {p1}, Landroid/net/RouteInfo;->getMtu()I

    move-result v2

    iput v2, v1, Landroid/net/RouteInfoParcel;->mtu:I

    .line 6511
    return-object v1
.end method

.method private createDefaultInternetRequestForTransport(ILandroid/net/NetworkRequest$Type;)Landroid/net/NetworkRequest;
    .locals 4
    .param p1, "transportType"    # I
    .param p2, "type"    # Landroid/net/NetworkRequest$Type;

    .line 1300
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1301
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1302
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkCapabilities;->setRequestorUidAndPackageName(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 1303
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    .line 1304
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1306
    :cond_0
    new-instance v2, Landroid/net/NetworkRequest;

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v3

    invoke-direct {v2, v0, v1, v3, p2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    return-object v2
.end method

.method private static createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p0, "uid"    # I

    .line 1291
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1292
    .local v0, "netCap":Landroid/net/NetworkCapabilities;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1293
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 1294
    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 1295
    return-object v0
.end method

.method private createNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 5
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3654
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 3655
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v4, v4, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    invoke-interface {v1, v3, v4}, Landroid/net/INetd;->networkCreateVpn(IZ)V

    goto :goto_2

    .line 3659
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3660
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)I

    move-result v4

    .line 3659
    invoke-interface {v1, v3, v4}, Landroid/net/INetd;->networkCreatePhysical(II)V

    .line 3662
    :goto_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-interface {v1, v3}, Landroid/net/IDnsResolver;->createNetworkCache(I)V

    .line 3663
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3664
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v4

    .line 3663
    invoke-virtual {v1, v3, v4}, Lcom/android/server/connectivity/DnsManager;->updateTransportsForNetwork(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3665
    return v2

    .line 3666
    :catch_0
    move-exception v1

    .line 3667
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3668
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3667
    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3669
    return v0
.end method

.method private createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;
    .locals 11
    .param p1, "vpn"    # Lcom/android/server/connectivity/Vpn;

    .line 5063
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    move-result-object v0

    .line 5064
    .local v0, "info":Lcom/android/internal/net/VpnInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5065
    return-object v1

    .line 5067
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 5070
    .local v2, "underlyingNetworks":[Landroid/net/Network;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5071
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    .line 5072
    .local v4, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v4, :cond_1

    .line 5073
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Network;

    iget-object v6, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    aput-object v6, v5, v3

    move-object v2, v5

    .line 5076
    .end local v4    # "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    if-eqz v2, :cond_5

    array-length v4, v2

    if-lez v4, :cond_5

    .line 5077
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5078
    .local v4, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v5, v2

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v6, v2, v3

    .line 5079
    .local v6, "network":Landroid/net/Network;
    invoke-virtual {p0, v6}, Lcom/android/server/ConnectivityService;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v7

    .line 5080
    .local v7, "lp":Landroid/net/LinkProperties;
    if-eqz v7, :cond_3

    .line 5081
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5082
    .local v9, "iface":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 5083
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5085
    .end local v9    # "iface":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 5078
    .end local v6    # "network":Landroid/net/Network;
    .end local v7    # "lp":Landroid/net/LinkProperties;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5088
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 5089
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/net/VpnInfo;->underlyingIfaces:[Ljava/lang/String;

    .line 5092
    .end local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    iget-object v3, v0, Lcom/android/internal/net/VpnInfo;->underlyingIfaces:[Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method private decrementNetworkRequestPerUidCount(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 5
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3917
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 3918
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3919
    .local v1, "requests":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 3920
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: too small request count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3921
    :cond_0
    if-ne v1, v2, :cond_1

    .line 3922
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_0

    .line 3924
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidToNetworkRequestCount:Landroid/util/SparseIntArray;

    iget v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3926
    .end local v1    # "requests":I
    :goto_0
    monitor-exit v0

    .line 3927
    return-void

    .line 3926
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3675
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/net/INetd;->networkDestroy(I)V

    .line 3676
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->destroyNetworkCache(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3679
    goto :goto_0

    .line 3677
    :catch_0
    move-exception v0

    .line 3678
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception destroying network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3680
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private disallowedBecauseSystemCaller()Z
    .locals 3

    .line 1981
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.product.first_api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1c

    if-le v0, v2, :cond_0

    .line 1983
    const-string v0, "This method exists only for app backwards compatibility and must not be called by system services."

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1985
    const/4 v0, 0x1

    return v0

    .line 1987
    :cond_0
    return v1
.end method

.method private disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3569
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 3571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " disconnected, was satisfying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3574
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 3580
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3581
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v2, v1, v1}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 3584
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    .line 3585
    .local v0, "wasDefault":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3586
    iput v2, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 3591
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3592
    .local v3, "now":J
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService$Dependencies;->getMetricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v1, p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkEvent(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3594
    .end local v3    # "now":J
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 3599
    const v3, 0x80004

    invoke-virtual {p0, p1, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3600
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    const/16 v4, -0x14

    invoke-virtual {v3, p1, v4}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3601
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3603
    .local v4, "iface":Ljava/lang/String;
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V

    .line 3604
    .end local v4    # "iface":Ljava/lang/String;
    goto :goto_0

    .line 3605
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkMonitorManager;->notifyNetworkDisconnected()Z

    .line 3606
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3607
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Nat464Xlat;->update()V

    .line 3608
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 3611
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 3612
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3614
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3615
    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v3

    .line 3616
    .local v3, "request":Landroid/net/NetworkRequest;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3617
    .local v4, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3618
    .local v5, "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    if-ne v6, v7, :cond_3

    .line 3619
    iput-object v1, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3620
    invoke-direct {p0, v3, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3614
    .end local v3    # "request":Landroid/net/NetworkRequest;
    .end local v4    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v5    # "currentNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3623
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 3624
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3625
    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultNetworkNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3626
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->updateDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3627
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3628
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->ensureNetworkTransitionWakelock(Ljava/lang/String;)V

    .line 3630
    :cond_5
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 3631
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3632
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 3634
    :cond_6
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests()V

    .line 3635
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLingerMonitor:Lcom/android/server/connectivity/LingerMonitor;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/LingerMonitor;->noteDisconnect(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3636
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_7

    .line 3645
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->destroyNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3646
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/DnsManager;->removeNetwork(Landroid/net/Network;)V

    .line 3648
    :cond_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetIdManager:Lcom/android/server/NetIdManager;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Lcom/android/server/NetIdManager;->releaseNetId(I)V

    .line 3649
    return-void

    .line 3612
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "asProto"    # Z

    .line 2694
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2695
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2696
    :cond_0
    if-eqz p4, :cond_1

    return-void

    .line 2698
    :cond_1
    const-string v1, "--diag"

    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2699
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2700
    return-void

    .line 2701
    :cond_2
    const-string/jumbo v1, "networks"

    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2702
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworks(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2703
    return-void

    .line 2704
    :cond_3
    const-string/jumbo v1, "requests"

    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2705
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworkRequests(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2706
    return-void

    .line 2709
    :cond_4
    const-string v1, "NetworkProviders for:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2710
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    .line 2711
    .local v2, "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2712
    .end local v2    # "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    goto :goto_0

    .line 2713
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2714
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2716
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 2717
    .local v1, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const-string v2, "Active default network: "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2718
    if-nez v1, :cond_6

    .line 2719
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2721
    :cond_6
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 2723
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2725
    const-string v2, "Current Networks:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2726
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2727
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworks(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2728
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2729
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2731
    const-string v2, "Restrict background: "

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2732
    iget-boolean v2, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 2733
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2735
    const-string v2, "Status for known UIDs:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2736
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2737
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 2738
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_7

    .line 2741
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 2742
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 2743
    .local v5, "uidRules":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " rules="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "uid":I
    .end local v5    # "uidRules":I
    goto :goto_3

    .line 2746
    :catch_0
    move-exception v4

    .line 2747
    .local v4, "e":Ljava/util/ConcurrentModificationException;
    const-string v5, "  ConcurrentModificationException"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 2744
    .end local v4    # "e":Ljava/util/ConcurrentModificationException;
    :catch_1
    move-exception v4

    .line 2745
    .local v4, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v5, "  ArrayIndexOutOfBoundsException"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2748
    .end local v4    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_3
    nop

    .line 2738
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2750
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2751
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2753
    const-string v3, "Network Requests:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2754
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2755
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpNetworkRequests(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2756
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2757
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2759
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, v0}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2761
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2762
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/KeepaliveTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2764
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2765
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2767
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2768
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2770
    const-string v3, "--short"

    invoke-static {p3, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2771
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2772
    const-string/jumbo v3, "mNetworkRequestInfoLogs (most recent first):"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2773
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2774
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2775
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2777
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2778
    const-string/jumbo v3, "mNetworkInfoBlockingLogs (most recent first):"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2779
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2780
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2781
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2783
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2784
    const-string v3, "NetTransition WakeLock activity (most recent first):"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2785
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "total acquisitions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "total releases: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cumulative duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "longest duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2790
    iget v3, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    iget v4, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    if-le v3, v4, :cond_8

    .line 2791
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v8, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    sub-long/2addr v3, v8

    .line 2792
    .local v3, "duration":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currently holding WakeLock for: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v6, v3, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    .end local v3    # "duration":J
    :cond_8
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->reverseDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2796
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2797
    const-string v3, "bandwidth update requests (by uid):"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2798
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2799
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    monitor-enter v3

    .line 2800
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 2801
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    .line 2802
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2801
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2804
    .end local v4    # "i":I
    :cond_9
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2805
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2807
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_6

    .line 2804
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2810
    :cond_a
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2811
    const-string v3, "NetworkStackClient logs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2812
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2813
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/NetworkStackClient;->dump(Ljava/io/PrintWriter;)V

    .line 2814
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2816
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2817
    const-string v3, "Permission Monitor:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2818
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2819
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/PermissionMonitor;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2820
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2821
    return-void
.end method

.method private dumpAvoidBadWifiSettings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 4185
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->configRestrictsAvoidBadWifi()Z

    move-result v0

    .line 4186
    .local v0, "configRestrict":Z
    if-nez v0, :cond_0

    .line 4187
    const-string v1, "Bad Wi-Fi avoidance: unrestricted"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4188
    return-void

    .line 4191
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Wi-Fi avoidance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4192
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config restrict:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4195
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v1}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifiSetting()Ljava/lang/String;

    move-result-object v1

    .line 4198
    .local v1, "value":Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4199
    const-string v2, "get stuck"

    .local v2, "description":Ljava/lang/String;
    goto :goto_0

    .line 4200
    .end local v2    # "description":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 4201
    const-string/jumbo v2, "prompt"

    .restart local v2    # "description":Ljava/lang/String;
    goto :goto_0

    .line 4202
    .end local v2    # "description":Ljava/lang/String;
    :cond_2
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4203
    const-string v2, "avoid"

    .restart local v2    # "description":Ljava/lang/String;
    goto :goto_0

    .line 4205
    .end local v2    # "description":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (?)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4207
    .restart local v2    # "description":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User setting:      "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4208
    const-string v3, "Network overrides:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4209
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4210
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 4211
    .local v6, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v7, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-eqz v7, :cond_4

    .line 4212
    invoke-virtual {v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4210
    .end local v6    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4215
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4216
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 4217
    return-void
.end method

.method private dumpNetworkDiagnostics(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 16
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2669
    .local v0, "netDiags":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/NetworkDiagnostics;>;"
    const-wide/16 v1, 0x1388

    .line 2670
    .local v1, "DIAG_TIME_MS":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 2671
    .local v6, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v9, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v8, v9}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig(Landroid/net/Network;)Landroid/net/shared/PrivateDnsConfig;

    move-result-object v8

    .line 2673
    .local v8, "privateDnsCfg":Landroid/net/shared/PrivateDnsConfig;
    new-instance v9, Lcom/android/server/connectivity/NetworkDiagnostics;

    iget-object v11, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    new-instance v12, Landroid/net/LinkProperties;

    iget-object v10, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v12, v10}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const-wide/16 v14, 0x1388

    move-object v10, v9

    move-object v13, v8

    invoke-direct/range {v10 .. v15}, Lcom/android/server/connectivity/NetworkDiagnostics;-><init>(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/shared/PrivateDnsConfig;J)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2670
    .end local v6    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v8    # "privateDnsCfg":Landroid/net/shared/PrivateDnsConfig;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2680
    :cond_0
    move-object/from16 v7, p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 2681
    .local v4, "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2682
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkDiagnostics;->waitForMeasurements()V

    .line 2683
    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkDiagnostics;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2684
    .end local v4    # "netDiag":Lcom/android/server/connectivity/NetworkDiagnostics;
    goto :goto_1

    .line 2685
    :cond_1
    move-object/from16 v5, p1

    return-void
.end method

.method private dumpNetworkRequests(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2847
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->requestsSortedById()[Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2848
    .local v3, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    invoke-virtual {v3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    .end local v3    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2850
    :cond_0
    return-void
.end method

.method private dumpNetworks(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 2824
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2825
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2827
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 2829
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 2830
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v6

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    .line 2831
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numBackgroundNetworkRequests()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 2832
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2827
    const-string v6, "Requests: REQUEST:%d LISTEN:%d BACKGROUND_REQUEST:%d total:%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2834
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 2835
    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2837
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2838
    const-string v5, "Lingered:"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2840
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->dumpLingerTimers(Ljava/io/PrintWriter;)V

    .line 2841
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2842
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2824
    .end local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2844
    :cond_1
    return-void
.end method

.method private static encodeBool(Z)I
    .locals 0
    .param p0, "b"    # Z

    .line 8106
    return p0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .line 2253
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    return-void
.end method

.method private enforceActiveVpnOrNetworkStackPermission()Lcom/android/server/connectivity/Vpn;
    .locals 2

    .line 8189
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkNetworkStackPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8190
    const/4 v0, 0x0

    return-object v0

    .line 8192
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 8193
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    .line 8194
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_1

    .line 8195
    monitor-exit v0

    return-object v1

    .line 8197
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8198
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "App must either be an active VPN or have the NETWORK_STACK permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8197
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private enforceAirplaneModePermission()V
    .locals 5

    .line 2323
    const-string v0, "android.permission.NETWORK_AIRPLANE_MODE"

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "android.permission.NETWORK_SETUP_WIZARD"

    const-string v3, "android.permission.NETWORK_STACK"

    const-string v4, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2329
    return-void
.end method

.method private varargs enforceAnyPermissionOf([Ljava/lang/String;)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 2240
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2244
    return-void

    .line 2241
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires one of the following permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
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

.method private enforceChangePermission()V
    .locals 1

    .line 2259
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->enforceChangePermission(Landroid/content/Context;)V

    .line 2260
    return-void
.end method

.method private enforceConnectivityRestrictedNetworksPermission()V
    .locals 3

    .line 2352
    const-string v0, "ConnectivityService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2355
    return-void

    .line 2356
    :catch_0
    move-exception v1

    .line 2359
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    return-void
.end method

.method private enforceControlAlwaysOnVpnPermission()V
    .locals 3

    .line 2302
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONTROL_ALWAYS_ON_VPN"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    return-void
.end method

.method private enforceCrossUserPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 2212
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2214
    return-void

    .line 2216
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    return-void
.end method

.method private enforceInternetPermission()V
    .locals 3

    .line 2247
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    return-void
.end method

.method private enforceKeepalivePermission()V
    .locals 3

    .line 2365
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKET_KEEPALIVE_OFFLOAD"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2366
    return-void
.end method

.method private enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 5960
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5961
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->isSystem(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5963
    return-void

    .line 5965
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5967
    return-void

    .line 5969
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5971
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 5973
    :cond_2
    return-void
.end method

.method private enforceNetworkFactoryOrSettingsPermission()V
    .locals 3

    .line 2275
    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2279
    return-void
.end method

.method private enforceNetworkFactoryOrTestNetworksPermission()V
    .locals 3

    .line 2282
    const-string v0, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v1, "android.permission.NETWORK_FACTORY"

    const-string v2, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2286
    return-void
.end method

.method private enforceNetworkFactoryPermission()V
    .locals 2

    .line 2269
    const-string v0, "android.permission.NETWORK_FACTORY"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2272
    return-void
.end method

.method private enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 5923
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5924
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityRestrictedNetworksPermission()V

    goto :goto_0

    .line 5926
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 5928
    :goto_0
    return-void
.end method

.method private enforceNetworkStackOrSettingsPermission()V
    .locals 3

    .line 2308
    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "android.permission.NETWORK_STACK"

    const-string v2, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2312
    return-void
.end method

.method private enforceNetworkStackSettingsOrSetup()V
    .locals 4

    .line 2315
    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "android.permission.NETWORK_SETUP_WIZARD"

    const-string v2, "android.permission.NETWORK_STACK"

    const-string v3, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2320
    return-void
.end method

.method private enforceSettingsPermission()V
    .locals 2

    .line 2263
    const-string v0, "android.permission.NETWORK_SETTINGS"

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 2266
    return-void
.end method

.method private ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 5693
    iget-object v0, p1, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    sget-object v1, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    if-eq v0, v1, :cond_0

    .line 5697
    return-void

    .line 5694
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All NetworkRequests in ConnectivityService must have a type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureNetworkTransitionWakelock(Ljava/lang/String;)V
    .locals 4
    .param p1, "forWhom"    # Ljava/lang/String;

    .line 4622
    monitor-enter p0

    .line 4623
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4624
    monitor-exit p0

    return-void

    .line 4626
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4627
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    .line 4628
    iget v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockAcquisitions:I

    .line 4629
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4630
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACQUIRE for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4631
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4632
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    iget v2, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4633
    return-void

    .line 4629
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 4
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 5780
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->describeFirstNonRequestableCapability()Ljava/lang/String;

    move-result-object v0

    .line 5781
    .local v0, "badCapability":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 5784
    return-void

    .line 5782
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot request network with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ensureRunningOnConnectivityServiceThread()V
    .locals 3

    .line 6206
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 6211
    return-void

    .line 6207
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not running on ConnectivityService thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6209
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;IILjava/lang/String;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I
    .param p4, "callerPackageName"    # Ljava/lang/String;

    .line 5790
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkSettingsPermission(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5791
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Insufficient permissions to request a specific SSID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5794
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5795
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkNetworkSignalStrengthWakeupPermission(II)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5796
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Insufficient permissions to request a specific signal strength"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5799
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p3, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 5800
    return-void
.end method

.method private ensureValid(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 5849
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 5850
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5853
    return-void

    .line 5851
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t request broken private DNS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 5838
    if-nez p1, :cond_0

    .line 5839
    return-void

    .line 5841
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    .line 5842
    .local v0, "ns":Landroid/net/NetworkSpecifier;
    if-nez v0, :cond_1

    .line 5843
    return-void

    .line 5845
    :cond_1
    invoke-static {v0}, Landroid/net/MatchAllNetworkSpecifier;->checkNotMatchAllNetworkSpecifier(Landroid/net/NetworkSpecifier;)V

    .line 5846
    return-void
.end method

.method private static eventName(I)Ljava/lang/String;
    .locals 2
    .param p0, "what"    # I

    .line 632
    sget-object v0, Lcom/android/server/ConnectivityService;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V
    .locals 3
    .param p1, "state"    # Landroid/net/NetworkState;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    .line 1551
    if-eqz p1, :cond_3

    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1553
    :cond_0
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1554
    iget-object v0, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1557
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_2

    .line 1558
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object v2, p1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 1560
    :cond_2
    monitor-exit v0

    .line 1561
    return-void

    .line 1560
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1551
    :cond_3
    :goto_0
    return-void
.end method

.method private findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .locals 5
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 3686
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3687
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    .line 3688
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    iget-object v3, v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 3689
    .local v3, "existingPendingIntent":Landroid/app/PendingIntent;
    if-eqz v3, :cond_0

    .line 3690
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3691
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    return-object v1

    .line 3693
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService$NetworkRequestInfo;>;"
    .end local v3    # "existingPendingIntent":Landroid/app/PendingIntent;
    :cond_0
    goto :goto_0

    .line 3694
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getActiveNetworkForUidInternal(IZ)Landroid/net/Network;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .line 1593
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1594
    .local v0, "user":I
    const/4 v1, 0x0

    .line 1595
    .local v1, "vpnNetId":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1596
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 1599
    .local v3, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn;->getNetId()I

    move-result v4

    move v1, v4

    .line 1600
    .end local v3    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    if-eqz v1, :cond_1

    .line 1603
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 1604
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_1

    .line 1605
    nop

    .line 1606
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;

    move-result-object v3

    .line 1607
    .local v3, "requiredCaps":Landroid/net/NetworkCapabilities;
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1608
    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    return-object v4

    .line 1612
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "requiredCaps":Landroid/net/NetworkCapabilities;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 1613
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1614
    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1615
    const/4 v2, 0x0

    .line 1617
    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 1600
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;
    .locals 4

    .line 5040
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 5041
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5042
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v1, :cond_0

    .line 5043
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/net/VpnInfo;

    monitor-exit v0

    return-object v1

    .line 5046
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5047
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5048
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->createVpnInfo(Lcom/android/server/connectivity/Vpn;)Lcom/android/internal/net/VpnInfo;

    move-result-object v3

    .line 5049
    .local v3, "info":Lcom/android/internal/net/VpnInfo;
    if-eqz v3, :cond_1

    .line 5050
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5047
    .end local v3    # "info":Lcom/android/internal/net/VpnInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5053
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/net/VpnInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/internal/net/VpnInfo;

    monitor-exit v0

    return-object v2

    .line 5054
    .end local v1    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/VpnInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1

    .line 6197
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultNetworkNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method private getDefaultNetworks()[Landroid/net/Network;
    .locals 5

    .line 7899
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 7900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7901
    .local v0, "defaultNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Network;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 7902
    .local v1, "defaultNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

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

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7903
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v4, :cond_1

    if-eq v3, v1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7904
    :cond_0
    iget-object v4, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7906
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    goto :goto_0

    .line 7907
    :cond_2
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/net/Network;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Network;

    return-object v2
.end method

.method private static getDnsResolver()Landroid/net/IDnsResolver;
    .locals 1

    .line 636
    nop

    .line 637
    const-string v0, "dnsresolver"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IDnsResolver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IDnsResolver;

    move-result-object v0

    .line 636
    return-object v0
.end method

.method private getFilteredNetworkState(II)Landroid/net/NetworkState;
    .locals 12
    .param p1, "networkType"    # I
    .param p2, "uid"    # I

    .line 1422
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1423
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1425
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v2

    .line 1427
    .local v2, "state":Landroid/net/NetworkState;
    iget-object v3, v2, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1}, Landroid/net/NetworkInfo;->setType(I)V

    goto :goto_0

    .line 1429
    .end local v2    # "state":Landroid/net/NetworkState;
    :cond_0
    new-instance v2, Landroid/net/NetworkInfo;

    .line 1430
    invoke-static {p1}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v2, p1, v1, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1431
    .local v2, "info":Landroid/net/NetworkInfo;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1433
    new-instance v4, Landroid/net/NetworkCapabilities;

    invoke-direct {v4}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1434
    .local v4, "capabilities":Landroid/net/NetworkCapabilities;
    const/16 v5, 0x12

    .line 1435
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v6

    .line 1434
    xor-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Landroid/net/NetworkCapabilities;->setCapability(IZ)Landroid/net/NetworkCapabilities;

    .line 1436
    new-instance v3, Landroid/net/NetworkState;

    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v3

    move-object v6, v2

    move-object v8, v4

    invoke-direct/range {v5 .. v11}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 1439
    .end local v4    # "capabilities":Landroid/net/NetworkCapabilities;
    .local v2, "state":Landroid/net/NetworkState;
    :goto_0
    invoke-direct {p0, v2, p2, v1}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1440
    return-object v2

    .line 1442
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "state":Landroid/net/NetworkState;
    :cond_1
    sget-object v0, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    return-object v0
.end method

.method private getGatewayFromLinkproperties(Landroid/net/LinkProperties;)Ljava/net/Inet4Address;
    .locals 5
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .line 6336
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    .line 6337
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 6338
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6339
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    .line 6340
    .local v3, "gateway":Ljava/net/InetAddress;
    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_0

    .line 6341
    move-object v1, v3

    check-cast v1, Ljava/net/Inet4Address;

    return-object v1

    .line 6344
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "gateway":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 6345
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getIntSpecifier(Landroid/net/NetworkSpecifier;)I
    .locals 2
    .param p1, "networkSpecifierObj"    # Landroid/net/NetworkSpecifier;

    .line 8756
    const/4 v0, -0x1

    .line 8757
    .local v0, "specifier":I
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz v1, :cond_0

    .line 8759
    move-object v1, p1

    check-cast v1, Landroid/net/TelephonyNetworkSpecifier;

    invoke-virtual {v1}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result v0

    .line 8761
    :cond_0
    return v0
.end method

.method private getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1805
    if-nez p1, :cond_0

    .line 1806
    const/4 v0, 0x0

    return-object v0

    .line 1808
    :cond_0
    monitor-enter p1

    .line 1809
    :try_start_0
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    monitor-exit p1

    return-object v0

    .line 1810
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLinkPropertiesProxyInfo(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 4768
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4769
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4770
    :cond_0
    monitor-enter v0

    .line 4771
    :try_start_0
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 4772
    .local v2, "linkHttpProxy":Landroid/net/ProxyInfo;
    if-nez v2, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-object v1

    .line 4773
    .end local v2    # "linkHttpProxy":Landroid/net/ProxyInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getMatchingPermissionedCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/List;
    .locals 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/IConnectivityDiagnosticsCallback;",
            ">;"
        }
    .end annotation

    .line 8588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8590
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/IConnectivityDiagnosticsCallback;>;"
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 8591
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    .line 8592
    .local v3, "cbInfo":Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;
    invoke-static {v3}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->access$9500(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v4

    .line 8593
    .local v4, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8594
    iget v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iget v6, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 8595
    invoke-static {v3}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->access$9600(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Ljava/lang/String;

    move-result-object v7

    .line 8594
    invoke-virtual {p0, v5, v6, p1, v7}, Lcom/android/server/ConnectivityService;->checkConnectivityDiagnosticsPermissions(IILcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8596
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    invoke-static {v5}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->access$9400(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Landroid/net/IConnectivityDiagnosticsCallback;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8599
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;>;"
    .end local v3    # "cbInfo":Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;
    .end local v4    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_0
    goto :goto_0

    .line 8600
    :cond_1
    return-object v0
.end method

.method private getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6202
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 2
    .param p1, "netId"    # I

    .line 1455
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1456
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    monitor-exit v0

    return-object v1

    .line 1457
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getNetworkCapabilitiesInternal(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .line 1814
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 1818
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1819
    :cond_0
    monitor-enter p1

    .line 1820
    :try_start_0
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-nez v1, :cond_1

    monitor-exit p1

    return-object v0

    .line 1821
    :cond_1
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 1822
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1821
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;

    move-result-object v0

    monitor-exit p1

    return-object v0

    .line 1823
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getNetworkCapabilitiesWithoutUids(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 8579
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 8580
    .local v0, "sanitized":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 8581
    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    .line 8582
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setOwnerUid(I)Landroid/net/NetworkCapabilities;

    .line 8583
    return-object v0
.end method

.method private getNetworkPermission(Landroid/net/NetworkCapabilities;)I
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 6634
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6635
    const/4 v0, 0x2

    return v0

    .line 6637
    :cond_0
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6638
    const/4 v0, 0x1

    return v0

    .line 6640
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .locals 4
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I
    .param p3, "requestedOperation"    # Ljava/lang/String;

    .line 3792
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3794
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_0

    .line 3795
    const/16 v1, 0x3e8

    if-eq v1, p2, :cond_0

    const/16 v1, 0x431

    if-eq v1, p2, :cond_0

    iget v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-eq v1, p2, :cond_0

    .line 3797
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3798
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 3797
    const-string v2, "UID %d attempted to %s for unowned request %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3799
    const/4 v1, 0x0

    return-object v1

    .line 3803
    :cond_0
    return-object v0
.end method

.method private getProvisioningUrlBaseFromFile()Ljava/lang/String;
    .locals 9

    .line 5356
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5358
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mProvisioningUrlFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5359
    .local v2, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 5360
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 5361
    const-string/jumbo v4, "provisioningUrls"

    invoke-static {v3, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 5364
    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5366
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5367
    .local v4, "element":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 5386
    .end local v4    # "element":Ljava/lang/String;
    nop

    .line 5387
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5386
    return-object v1

    .line 5369
    .restart local v4    # "element":Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string/jumbo v5, "provisioningUrl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5370
    const-string/jumbo v5, "mcc"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5372
    .local v5, "mcc":Ljava/lang/String;
    if-eqz v5, :cond_1

    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v6, v7, :cond_1

    .line 5373
    const-string/jumbo v6, "mnc"

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5374
    .local v6, "mnc":Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget v8, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v7, v8, :cond_1

    .line 5375
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 5376
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    .line 5377
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5387
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 5377
    return-object v7

    .line 5381
    .end local v6    # "mnc":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 5382
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException in getProvisioningUrlBaseFromFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    .line 5385
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "mcc":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    goto :goto_0

    .line 5358
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local p0    # "this":Lcom/android/server/ConnectivityService;
    :goto_1
    throw v3
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 5391
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local p0    # "this":Lcom/android/server/ConnectivityService;
    :catch_1
    move-exception v2

    .line 5392
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I/O exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 5389
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 5390
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Xml parser exception reading Carrier Provisioning Urls file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_2

    .line 5387
    :catch_3
    move-exception v2

    .line 5388
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Carrier Provisioning Urls file not found"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5393
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    nop

    .line 5394
    :goto_3
    return-object v1
.end method

.method private static getSettingsPackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .line 4222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4223
    .local v0, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 4224
    .local v1, "settingsComponent":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 4225
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "com.android.settings"

    .line 4224
    :goto_0
    return-object v2
.end method

.method private getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5803
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 5804
    .local v0, "thresholds":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    monitor-enter p1

    .line 5805
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 5806
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5807
    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5808
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v3, v3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 5810
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_0
    goto :goto_0

    .line 5811
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5812
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 5811
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;
    .locals 3
    .param p1, "uid"    # I

    .line 1474
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1476
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object v1

    .line 1477
    .local v1, "networks":[Landroid/net/Network;
    if-eqz v1, :cond_1

    .line 1483
    array-length v2, v1

    if-lez v2, :cond_0

    .line 1484
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    goto :goto_0

    .line 1486
    :cond_0
    const/4 v0, 0x0

    .line 1490
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 1491
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v2

    return-object v2

    .line 1493
    :cond_2
    sget-object v2, Landroid/net/NetworkState;->EMPTY:Landroid/net/NetworkState;

    return-object v2
.end method

.method private getVpnIfOwner()Lcom/android/server/connectivity/Vpn;
    .locals 1

    .line 8168
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getVpnIfOwner(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    return-object v0
.end method

.method private getVpnIfOwner(I)Lcom/android/server/connectivity/Vpn;
    .locals 5
    .param p1, "uid"    # I

    .line 8173
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 8175
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 8176
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 8177
    return-object v2

    .line 8179
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getVpnInfo()Lcom/android/internal/net/VpnInfo;

    move-result-object v3

    .line 8180
    .local v3, "info":Lcom/android/internal/net/VpnInfo;
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    if-eq v4, p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :cond_2
    :goto_0
    return-object v2
.end method

.method private getVpnUnderlyingNetworks(I)[Landroid/net/Network;
    .locals 4
    .param p1, "uid"    # I

    .line 1461
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1462
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v1, :cond_0

    .line 1463
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1464
    .local v1, "user":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 1465
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1466
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 1469
    .end local v1    # "user":I
    .end local v2    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_0
    monitor-exit v0

    .line 1470
    const/4 v0, 0x0

    return-object v0

    .line 1469
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleAlwaysOnNetworkRequest(Landroid/net/NetworkRequest;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 1330
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1331
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v1

    .line 1330
    invoke-static {v0, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v0

    .line 1332
    .local v0, "enable":Z
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x49

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1333
    const-string/jumbo v2, "ro.boot.opcarrier"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tmo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1334
    const-string/jumbo v2, "mobile_data_always_on"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1335
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    .line 1336
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1335
    const-string v3, "force_data_always_on_when_sa"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->toBool(I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1340
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 1341
    .local v1, "isEnabled":Z
    :goto_0
    if-ne v0, v1, :cond_2

    .line 1342
    return-void

    .line 1345
    :cond_2
    if-eqz v0, :cond_3

    .line 1346
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    const/4 v3, 0x0

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-direct {v2, p0, v3, p1, v4}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    goto :goto_1

    .line 1349
    :cond_3
    const/16 v2, 0x3e8

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    .line 1352
    :goto_1
    return-void
.end method

.method private handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    .locals 2
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .line 4789
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 4790
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4791
    const/4 p1, 0x0

    .line 4793
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/ProxyTracker;->setDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 4794
    return-void
.end method

.method private handleAsyncChannelDisconnected(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 3556
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3557
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    .line 3558
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_0

    .line 3560
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    .line 3561
    .local v1, "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterNetworkFactory for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3563
    .end local v1    # "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    :cond_1
    :goto_0
    return-void
.end method

.method private handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 3517
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 3518
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/AsyncChannel;

    .line 3519
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3520
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    .line 3521
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkFactory connected"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3523
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    .line 3524
    .local v1, "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->completeConnection()V

    .line 3525
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendAllRequestsToProvider(Lcom/android/server/ConnectivityService$NetworkProviderInfo;)V

    .line 3526
    .end local v1    # "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    goto :goto_0

    .line 3527
    :cond_1
    const-string v1, "Error connecting NetworkFactory"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3528
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3530
    :cond_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3531
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_4

    .line 3532
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "NetworkAgent connected"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3534
    :cond_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x11001

    .line 3535
    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 3537
    :cond_4
    const-string v1, "Error connecting NetworkAgent"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3538
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3539
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_5

    .line 3540
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v2

    .line 3541
    .local v2, "wasDefault":Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v3

    .line 3542
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v5, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 3543
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3544
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetIdManager:Lcom/android/server/NetIdManager;

    iget-object v4, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v4}, Lcom/android/server/NetIdManager;->releaseNetId(I)V

    .line 3546
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V

    goto :goto_0

    .line 3543
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3550
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "wasDefault":Z
    :cond_5
    :goto_0
    return-void
.end method

.method private handleCaptivePortalDataUpdate(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/CaptivePortalData;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "data"    # Landroid/net/CaptivePortalData;

    .line 3483
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->captivePortalData:Landroid/net/CaptivePortalData;

    .line 3485
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3486
    return-void
.end method

.method private handleConfigureAlwaysOnNetworks()V
    .locals 3

    .line 1357
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultMobileDataRequest:Landroid/net/NetworkRequest;

    const-string/jumbo v1, "mobile_data_always_on"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleAlwaysOnNetworkRequest(Landroid/net/NetworkRequest;Ljava/lang/String;Z)V

    .line 1360
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultWifiRequest:Landroid/net/NetworkRequest;

    const-string/jumbo v1, "wifi_always_requested"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleAlwaysOnNetworkRequest(Landroid/net/NetworkRequest;Ljava/lang/String;Z)V

    .line 1362
    return-void
.end method

.method private handleDataStallSuspected(Lcom/android/server/connectivity/NetworkAgentInfo;JILandroid/os/PersistableBundle;)V
    .locals 10
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "timestampMillis"    # J
    .param p4, "detectionMethod"    # I
    .param p5, "extras"    # Landroid/os/PersistableBundle;

    .line 8544
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 8545
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesWithoutUids(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 8546
    .local v0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    new-instance v9, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object v1, v9

    move-wide v3, p2

    move v5, p4

    move-object v7, v0

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;-><init>(Landroid/net/Network;JILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/os/PersistableBundle;)V

    .line 8554
    .local v1, "report":Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;
    nop

    .line 8555
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getMatchingPermissionedCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/List;

    move-result-object v2

    .line 8556
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/IConnectivityDiagnosticsCallback;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/IConnectivityDiagnosticsCallback;

    .line 8558
    .local v4, "cb":Landroid/net/IConnectivityDiagnosticsCallback;
    :try_start_0
    invoke-interface {v4, v1}, Landroid/net/IConnectivityDiagnosticsCallback;->onDataStallSuspected(Landroid/net/ConnectivityDiagnosticsManager$DataStallReport;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8561
    goto :goto_1

    .line 8559
    :catch_0
    move-exception v5

    .line 8560
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v6, "Error invoking onDataStallSuspected"

    invoke-static {v6, v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8562
    .end local v4    # "cb":Landroid/net/IConnectivityDiagnosticsCallback;
    .end local v5    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 8563
    :cond_0
    return-void
.end method

.method private handleFreshlyValidatedNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3408
    if-nez p1, :cond_0

    return-void

    .line 3411
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;

    move-result-object v0

    .line 3412
    .local v0, "cfg":Landroid/net/shared/PrivateDnsConfig;
    iget-boolean v1, v0, Landroid/net/shared/PrivateDnsConfig;->useTls:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/shared/PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3413
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 3415
    :cond_1
    return-void
.end method

.method private handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7076
    if-nez p1, :cond_0

    .line 7077
    const-string v0, "Unknown NetworkAgentInfo in handleLingerComplete"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7078
    return-void

    .line 7080
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLingerComplete for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7084
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->clearLingerState()V

    .line 7086
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7088
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_0

    .line 7091
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 7094
    :goto_0
    return-void
.end method

.method private handleNat64PrefixEvent(IZLjava/lang/String;I)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "added"    # Z
    .param p3, "prefixString"    # Ljava/lang/String;
    .param p4, "prefixLength"    # I

    .line 3460
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3461
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    return-void

    .line 3463
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3464
    if-eqz p2, :cond_1

    const-string v3, "added"

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "removed"

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3463
    const-string v2, "NAT64 prefix %s on netId %d: %s/%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3466
    const/4 v1, 0x0

    .line 3467
    .local v1, "prefix":Landroid/net/IpPrefix;
    if-eqz p2, :cond_2

    .line 3469
    :try_start_0
    new-instance v2, Landroid/net/IpPrefix;

    invoke-static {p3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3, p4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 3474
    goto :goto_1

    .line 3471
    :catch_0
    move-exception v2

    .line 3472
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid NAT64 prefix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 3473
    return-void

    .line 3477
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v2, v1}, Lcom/android/server/connectivity/Nat464Xlat;->setNat64PrefixFromDns(Landroid/net/IpPrefix;)V

    .line 3478
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3479
    return-void
.end method

.method private handleNetworkConnectivityReported(Lcom/android/server/connectivity/NetworkAgentInfo;Z)V
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "connectivity"    # Z

    .line 8567
    nop

    .line 8568
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getMatchingPermissionedCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/List;

    move-result-object v0

    .line 8569
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/IConnectivityDiagnosticsCallback;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IConnectivityDiagnosticsCallback;

    .line 8571
    .local v2, "cb":Landroid/net/IConnectivityDiagnosticsCallback;
    :try_start_0
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-interface {v2, v3, p2}, Landroid/net/IConnectivityDiagnosticsCallback;->onNetworkConnectivityReported(Landroid/net/Network;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8574
    goto :goto_1

    .line 8572
    :catch_0
    move-exception v3

    .line 8573
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v4, "Error invoking onNetworkConnectivityReported"

    invoke-static {v4, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8575
    .end local v2    # "cb":Landroid/net/IConnectivityDiagnosticsCallback;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 8576
    :cond_0
    return-void
.end method

.method private handleNetworkTestedWithExtras(Lcom/android/server/ConnectivityService$ConnectivityReportEvent;Landroid/os/PersistableBundle;)V
    .locals 10
    .param p1, "reportEvent"    # Lcom/android/server/ConnectivityService$ConnectivityReportEvent;
    .param p2, "extras"    # Landroid/os/PersistableBundle;

    .line 8519
    invoke-static {p1}, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;->access$9700(Lcom/android/server/ConnectivityService$ConnectivityReportEvent;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 8520
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 8521
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesWithoutUids(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 8522
    .local v1, "networkCapabilities":Landroid/net/NetworkCapabilities;
    new-instance v9, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    .line 8524
    invoke-static {p1}, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;->access$9700(Lcom/android/server/ConnectivityService$ConnectivityReportEvent;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 8525
    invoke-static {p1}, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;->access$9800(Lcom/android/server/ConnectivityService$ConnectivityReportEvent;)J

    move-result-wide v4

    iget-object v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object v2, v9

    move-object v7, v1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;-><init>(Landroid/net/Network;JLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/os/PersistableBundle;)V

    .line 8529
    .local v2, "report":Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;
    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setConnectivityReport(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V

    .line 8530
    nop

    .line 8531
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getMatchingPermissionedCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/List;

    move-result-object v3

    .line 8532
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/IConnectivityDiagnosticsCallback;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/IConnectivityDiagnosticsCallback;

    .line 8534
    .local v5, "cb":Landroid/net/IConnectivityDiagnosticsCallback;
    :try_start_0
    invoke-interface {v5, v2}, Landroid/net/IConnectivityDiagnosticsCallback;->onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8537
    goto :goto_1

    .line 8535
    :catch_0
    move-exception v6

    .line 8536
    .local v6, "ex":Landroid/os/RemoteException;
    const-string v7, "Error invoking onConnectivityReport"

    invoke-static {v7, v6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8538
    .end local v5    # "cb":Landroid/net/IConnectivityDiagnosticsCallback;
    .end local v6    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 8539
    :cond_0
    return-void
.end method

.method private handleNetworkUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4345
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 4346
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkUnvalidated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4348
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4349
    return-void

    .line 4352
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v2}, Landroid/net/util/MultinetworkPolicyTracker;->shouldNotifyWifiUnvalidated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4353
    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 4357
    :cond_1
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xba

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4358
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendNetworkNoInternet(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4360
    :cond_2
    return-void
.end method

.method private handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "cfg"    # Landroid/net/shared/PrivateDnsConfig;

    .line 3431
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->networkRequiresPrivateDnsValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3436
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/shared/PrivateDnsConfig;->toParcel()Landroid/net/PrivateDnsConfigParcel;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkMonitorManager;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)Z

    .line 3441
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 3442
    return-void
.end method

.method private handlePrivateDnsSettingsChanged()V
    .locals 5

    .line 3418
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v0}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;

    move-result-object v0

    .line 3420
    .local v0, "cfg":Landroid/net/shared/PrivateDnsConfig;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3421
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 3422
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->networkRequiresPrivateDnsValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3423
    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3425
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    goto :goto_0

    .line 3426
    :cond_1
    return-void
.end method

.method private handlePrivateDnsValidationUpdate(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .locals 3
    .param p1, "update"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 3450
    iget v0, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->netId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3451
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    .line 3452
    return-void

    .line 3454
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDnsValidation(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 3455
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 3456
    return-void
.end method

.method private handlePromptUnvalidated(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 4308
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePromptUnvalidated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4309
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4313
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xba

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 4314
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    if-nez v1, :cond_2

    .line 4315
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendNetworkNoInternet(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4320
    :cond_2
    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->shouldPromptUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 4337
    :cond_3
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eqz v1, :cond_4

    .line 4338
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    goto :goto_0

    .line 4340
    :cond_4
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 4342
    :goto_0
    return-void

    .line 4321
    :cond_5
    :goto_1
    return-void
.end method

.method private handleRegisterConnectivityDiagnosticsCallback(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)V
    .locals 10
    .param p1, "cbInfo"    # Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    .line 8435
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 8437
    invoke-static {p1}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->access$9400(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Landroid/net/IConnectivityDiagnosticsCallback;

    move-result-object v0

    .line 8438
    .local v0, "cb":Landroid/net/IConnectivityDiagnosticsCallback;
    invoke-interface {v0}, Landroid/net/IConnectivityDiagnosticsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 8439
    .local v1, "iCb":Landroid/os/IBinder;
    invoke-static {p1}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->access$9500(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v2

    .line 8443
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsCallbacks:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8444
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "Diagnostics callback is already registered"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 8449
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->decrementNetworkRequestPerUidCount(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 8450
    return-void

    .line 8453
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsCallbacks:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8456
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8460
    nop

    .line 8463
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8464
    .local v3, "matchingNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v4

    .line 8465
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 8466
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 8467
    .local v6, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 8468
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8465
    .end local v6    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8471
    .end local v5    # "i":I
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8472
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 8473
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getConnectivityReport()Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    move-result-object v6

    .line 8474
    .local v6, "report":Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;
    if-nez v6, :cond_4

    .line 8475
    goto :goto_1

    .line 8477
    :cond_4
    iget v7, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iget v8, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 8478
    invoke-static {p1}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->access$9600(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Ljava/lang/String;

    move-result-object v9

    .line 8477
    invoke-virtual {p0, v7, v8, v5, v9}, Lcom/android/server/ConnectivityService;->checkConnectivityDiagnosticsPermissions(IILcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 8479
    goto :goto_1

    .line 8483
    :cond_5
    :try_start_2
    invoke-interface {v0, v6}, Landroid/net/IConnectivityDiagnosticsCallback;->onConnectivityReportAvailable(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 8486
    goto :goto_2

    .line 8484
    :catch_0
    move-exception v7

    .line 8487
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v6    # "report":Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;
    :goto_2
    goto :goto_1

    .line 8488
    :cond_6
    return-void

    .line 8471
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 8457
    .end local v3    # "matchingNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    :catch_1
    move-exception v3

    .line 8458
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->binderDied()V

    .line 8459
    return-void
.end method

.method private handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "networkMonitor"    # Landroid/net/INetworkMonitor;

    .line 6299
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V

    .line 6300
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Got NetworkAgent Messenger"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6303
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 6304
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6305
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mWifiAutoChangeMobile:Z

    if-eqz v0, :cond_1

    .line 6306
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    goto :goto_0

    .line 6308
    :cond_1
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean v1, v0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    .line 6312
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6313
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6314
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6315
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6318
    :try_start_1
    invoke-interface {p2}, Landroid/net/INetworkMonitor;->start()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6321
    goto :goto_1

    .line 6319
    :catch_0
    move-exception v0

    .line 6320
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 6322
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 6323
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 6324
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 6325
    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    .line 6326
    return-void

    .line 6315
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private handleRegisterNetworkProvider(Lcom/android/server/ConnectivityService$NetworkProviderInfo;)V
    .locals 4
    .param p1, "npi"    # Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    .line 6107
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6111
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to register existing NetworkProviderInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    .line 6112
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6111
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6113
    return-void

    .line 6116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got NetworkProvider Messenger for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6117
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->messenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6118
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->connect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 6119
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->isLegacyNetworkFactory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6121
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendAllRequestsToProvider(Lcom/android/server/ConnectivityService$NetworkProviderInfo;)V

    .line 6123
    :cond_1
    return-void
.end method

.method private handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 4
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3711
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 3712
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3713
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REGISTER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3714
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3715
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3716
    .local v1, "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 3717
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3718
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const-string v3, "REGISTER"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 3720
    .end local v1    # "network":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    goto :goto_0

    .line 3722
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests()V

    .line 3723
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    if-nez v0, :cond_2

    .line 3724
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3726
    :cond_2
    return-void
.end method

.method private handleRegisterNetworkRequestWithIntent(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 3698
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3700
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v1

    .line 3701
    .local v1, "existingRequest":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v1, :cond_0

    .line 3702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " because their intents matched."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3704
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    .line 3707
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3708
    return-void
.end method

.method private handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V
    .locals 4
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "callingUid"    # I
    .param p3, "callOnUnavailable"    # Z

    .line 3823
    nop

    .line 3824
    const-string/jumbo v0, "release NetworkRequest"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->getNriForAppRequest(Landroid/net/NetworkRequest;ILjava/lang/String;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    .line 3825
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-nez v0, :cond_0

    .line 3826
    return-void

    .line 3828
    :cond_0
    sget-boolean v1, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3829
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releasing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (release request)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3831
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3832
    if-eqz p3, :cond_3

    .line 3833
    const/4 v1, 0x0

    const v2, 0x80005

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 3835
    :cond_3
    return-void
.end method

.method private handleReleaseNetworkRequestWithIntent(Landroid/app/PendingIntent;I)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "callingUid"    # I

    .line 3730
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->findExistingNetworkRequestInfo(Landroid/app/PendingIntent;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v0

    .line 3731
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v0, :cond_0

    .line 3732
    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    .line 3734
    :cond_0
    return-void
.end method

.method private handleReleaseNetworkTransitionWakelock(I)V
    .locals 8
    .param p1, "eventId"    # I

    .line 4653
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object v0

    .line 4654
    .local v0, "event":Ljava/lang/String;
    monitor-enter p0

    .line 4655
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 4656
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    const-string v4, "RELEASE: already released (%s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4657
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "expected Net Transition WakeLock to be held"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4658
    monitor-exit p0

    return-void

    .line 4660
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4661
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/ConnectivityService;->mLastWakeLockAcquireTimestamp:J

    sub-long/2addr v4, v6

    .line 4662
    .local v4, "lockDuration":J
    iget-wide v6, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockDurationMs:J

    .line 4663
    iget-wide v6, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/ConnectivityService;->mMaxWakelockDurationMs:J

    .line 4664
    iget v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/ConnectivityService;->mTotalWakelockReleases:I

    .line 4665
    .end local v4    # "lockDuration":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4666
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mWakelockLogs:Landroid/util/LocalLog;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v2, "RELEASE (%s)"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4667
    return-void

    .line 4665
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 7
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3838
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 3840
    invoke-virtual {p1}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->unlinkDeathRecipient()V

    .line 3841
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3843
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->decrementNetworkRequestPerUidCount(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3845
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequestInfoLogs:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RELEASE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3846
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3847
    const/4 v0, 0x0

    .line 3848
    .local v0, "wasKept":Z
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3849
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_4

    .line 3850
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v2

    .line 3851
    .local v2, "wasBackgroundNetwork":Z
    iget-object v3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 3852
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_1

    .line 3853
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Removing from current network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", leaving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3854
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " requests."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3853
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3858
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3859
    .local v3, "now":J
    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/ConnectivityService;->updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3860
    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/ConnectivityService;->notifyNetworkLosing(Lcom/android/server/connectivity/NetworkAgentInfo;J)V

    .line 3862
    :cond_2
    sget-object v5, Lcom/android/server/ConnectivityService$UnneededFor;->TEARDOWN:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, v1, v5}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3863
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no live requests for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; disconnecting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3864
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_0

    .line 3866
    :cond_3
    const/4 v0, 0x1

    .line 3868
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3869
    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3871
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v5

    iget-object v6, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v5, v1, v6}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3880
    .end local v2    # "wasBackgroundNetwork":Z
    .end local v3    # "now":J
    :cond_4
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    if-eqz v1, :cond_7

    .line 3881
    const/4 v2, 0x1

    .line 3882
    .local v2, "doRemove":Z
    if-eqz v0, :cond_6

    .line 3885
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 3886
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v4

    .line 3887
    .local v4, "otherRequest":Landroid/net/NetworkRequest;
    iget v5, v4, Landroid/net/NetworkRequest;->legacyType:I

    iget-object v6, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v6, v6, Landroid/net/NetworkRequest;->legacyType:I

    if-ne v5, v6, :cond_5

    .line 3888
    invoke-virtual {v4}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3889
    const-string v5, " still have other legacy request - leaving"

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3890
    const/4 v2, 0x0

    .line 3885
    .end local v4    # "otherRequest":Landroid/net/NetworkRequest;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3895
    .end local v3    # "i":I
    :cond_6
    if-eqz v2, :cond_7

    .line 3896
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 3900
    .end local v2    # "doRemove":Z
    :cond_7
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    .line 3901
    .local v3, "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->cancelRequest(Landroid/net/NetworkRequest;)V

    .line 3902
    .end local v3    # "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    goto :goto_2

    .line 3903
    .end local v0    # "wasKept":Z
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_8
    goto :goto_4

    .line 3906
    :cond_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3907
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 3908
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v2, v2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 3909
    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3910
    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const-string v3, "RELEASE"

    invoke-direct {p0, v1, v3, v2}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 3912
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_a
    goto :goto_3

    .line 3914
    :cond_b
    :goto_4
    return-void
.end method

.method private handleReportNetworkConnectivity(Landroid/net/Network;IZ)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "uid"    # I
    .param p3, "hasConnectivity"    # Z

    .line 4708
    if-nez p1, :cond_0

    .line 4709
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    .line 4711
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4713
    .restart local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_5

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 4714
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 4718
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-ne p3, v1, :cond_2

    .line 4719
    return-void

    .line 4722
    :cond_2
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    .line 4723
    .local v1, "netid":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportNetworkConnectivity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4727
    .end local v1    # "netid":I
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-nez v1, :cond_3

    .line 4728
    return-void

    .line 4730
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 4731
    .local v1, "lp":Landroid/net/LinkProperties;
    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4732
    return-void

    .line 4734
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/net/NetworkMonitorManager;->forceReevaluation(I)Z

    .line 4735
    return-void

    .line 4715
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_5
    :goto_1
    return-void
.end method

.method private handleSetAcceptPartialConnectivity(Landroid/net/Network;ZZ)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .line 3995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetAcceptPartialConnectivity network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " accept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " always="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3999
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4000
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    .line 4002
    return-void

    .line 4005
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_1

    .line 4007
    return-void

    .line 4010
    :cond_1
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v1, v1, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    if-eq p2, v1, :cond_2

    .line 4011
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean p2, v1, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    .line 4015
    :cond_2
    if-eqz p3, :cond_3

    .line 4016
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x81009

    .line 4017
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v3

    .line 4016
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 4020
    :cond_3
    if-nez p2, :cond_4

    .line 4022
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x8100f

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4024
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_0

    .line 4032
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkMonitorManager;->setAcceptPartialConnectivity()Z

    .line 4034
    :goto_0
    return-void
.end method

.method private handleSetAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .line 3950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSetAcceptUnvalidated network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " accept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " always="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3953
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3954
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    .line 3956
    return-void

    .line 3959
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-eqz v1, :cond_1

    .line 3961
    return-void

    .line 3964
    :cond_1
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v1, v1, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    if-nez v1, :cond_2

    .line 3965
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "BUG: setAcceptUnvalidated non non-explicitly selected network"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    :cond_2
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v1, v1, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    if-eq p2, v1, :cond_3

    .line 3969
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean p2, v1, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    .line 3973
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean p2, v1, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    .line 3974
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests()V

    .line 3975
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3978
    :cond_3
    if-eqz p3, :cond_4

    .line 3979
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x81009

    .line 3980
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v3

    .line 3979
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 3983
    :cond_4
    if-nez p2, :cond_5

    .line 3985
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x8100f

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3987
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3990
    :cond_5
    return-void
.end method

.method private handleSetAvoidUnvalidated(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 4037
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4038
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4042
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    if-nez v1, :cond_1

    .line 4043
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    .line 4044
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests()V

    .line 4045
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4047
    :cond_1
    return-void

    .line 4040
    :cond_2
    :goto_0
    return-void
.end method

.method private handleTimedOutNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 3
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3807
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 3808
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3809
    return-void

    .line 3811
    :cond_0
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eqz v0, :cond_1

    .line 3812
    return-void

    .line 3814
    :cond_1
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3815
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "releasing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (timeout)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3817
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->handleRemoveNetworkRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3818
    const/4 v0, 0x0

    const v1, 0x80005

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 3819
    return-void
.end method

.method private handleUnregisterConnectivityDiagnosticsCallback(Landroid/net/IConnectivityDiagnosticsCallback;I)V
    .locals 4
    .param p1, "cb"    # Landroid/net/IConnectivityDiagnosticsCallback;
    .param p2, "uid"    # I

    .line 8492
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 8493
    invoke-interface {p1}, Landroid/net/IConnectivityDiagnosticsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 8495
    .local v0, "iCb":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsCallbacks:Ljava/util/Map;

    .line 8496
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    .line 8497
    .local v1, "cbInfo":Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;
    if-nez v1, :cond_1

    .line 8498
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Removing diagnostics callback that is not currently registered"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 8499
    :cond_0
    return-void

    .line 8502
    :cond_1
    invoke-static {v1}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;->access$9500(Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;)Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    move-result-object v2

    .line 8504
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-eq p2, v3, :cond_3

    .line 8505
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v3, :cond_2

    const-string v3, "Different uid than registrant attempting to unregister cb"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 8506
    :cond_2
    return-void

    .line 8512
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->decrementNetworkRequestPerUidCount(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 8514
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 8515
    return-void
.end method

.method private handleUnregisterNetworkProvider(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 6147
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    .line 6148
    .local v0, "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    if-nez v0, :cond_0

    .line 6149
    const-string v1, "Failed to find Messenger in unregisterNetworkProvider"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6150
    return-void

    .line 6152
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterNetworkProvider for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6153
    return-void
.end method

.method private handleUpdateActiveDataSubId(I)V
    .locals 2
    .param p1, "subId"    # I

    .line 8788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting mPreferredSubId to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 8789
    iput p1, p0, Lcom/android/server/ConnectivityService;->mPreferredSubId:I

    .line 8790
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests()V

    .line 8791
    return-void
.end method

.method private handleUpdateTCPBuffersfor5G()V
    .locals 4

    .line 8779
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 8780
    .local v0, "network":Landroid/net/Network;
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 8782
    .local v1, "ntwAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUpdateTCPBuffersfor5G nai "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 8783
    if-eqz v1, :cond_0

    .line 8784
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 8785
    :cond_0
    return-void
.end method

.method private hasDataStallDetectionMethod(Landroid/net/DataStallReportParcelable;I)Z
    .locals 1
    .param p1, "p"    # Landroid/net/DataStallReportParcelable;
    .param p2, "detectionMethod"    # I

    .line 3400
    iget v0, p1, Landroid/net/DataStallReportParcelable;->detectionMethod:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z
    .locals 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 6017
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 6018
    return v0

    .line 6020
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    .line 6021
    .local v1, "transportTypes":[I
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    aget v2, v1, v0

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 6025
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_WIFI_STATE"

    const-string v5, "ConnectivityService"

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6030
    nop

    .line 6031
    return v3

    .line 6028
    :catch_0
    move-exception v2

    .line 6029
    .local v2, "e":Ljava/lang/SecurityException;
    return v0

    .line 6022
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_2
    :goto_0
    return v0
.end method

.method private isDefaultRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)Z
    .locals 2
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6219
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;I)Z
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "what"    # I

    .line 2873
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2874
    :cond_0
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2875
    .local v0, "officialNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    .line 2876
    :cond_1
    if-nez v0, :cond_2

    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v2, :cond_3

    .line 2877
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->eventName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - isLiveNetworkAgent found mismatched netId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2880
    :cond_3
    return v1
.end method

.method private isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 8723
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 8724
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8725
    const/4 v0, 0x1

    return v0

    .line 8727
    :cond_0
    return v0
.end method

.method private isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z
    .locals 3
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    .line 1503
    if-eqz p3, :cond_0

    .line 1504
    const/4 v0, 0x0

    return v0

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1507
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 1508
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/Vpn;->isBlockingUid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1509
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1511
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1512
    if-nez p1, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 1513
    .local v0, "iface":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidNetworkingBlocked(ILjava/lang/String;)Z

    move-result v1

    return v1

    .line 1511
    .end local v0    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isSystem(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 5956
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isUidNetworkingWithVpnBlocked(IIZZ)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I
    .param p3, "isNetworkMetered"    # Z
    .param p4, "isBackgroundRestricted"    # Z

    .line 2189
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2190
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 2196
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->isBlockingUid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2197
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 2199
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2201
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerInternal;->isUidNetworkingBlocked(IIZZ)Z

    move-result v0

    return v0

    .line 2199
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic lambda$networksSortedById$2(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .locals 1
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2858
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    return v0
.end method

.method static synthetic lambda$requestsSortedById$3(Lcom/android/server/ConnectivityService$NetworkRequestInfo;)I
    .locals 1
    .param p0, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2868
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    return v0
.end method

.method static synthetic lambda$updateRoutes$8(Landroid/net/RouteInfo;)Landroid/net/RouteInfo$RouteKey;
    .locals 1
    .param p0, "r"    # Landroid/net/RouteInfo;

    .line 6524
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getRouteKey()Landroid/net/RouteInfo$RouteKey;

    move-result-object v0

    return-object v0
.end method

.method private linkPropertiesRestrictedForCallerPermissions(Landroid/net/LinkProperties;II)Landroid/net/LinkProperties;
    .locals 3
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I

    .line 1886
    if-nez p1, :cond_0

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    return-object v0

    .line 1889
    :cond_0
    nop

    .line 1890
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getCaptivePortalApiUrl()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 1891
    .local v0, "needsSanitization":Z
    :goto_1
    if-nez v0, :cond_3

    .line 1892
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v1

    .line 1895
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkSettingsPermission(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1896
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2, p1, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;Z)V

    return-object v2

    .line 1899
    :cond_4
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 1902
    .local v1, "newLp":Landroid/net/LinkProperties;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setCaptivePortalApiUrl(Landroid/net/Uri;)V

    .line 1903
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setCaptivePortalData(Landroid/net/CaptivePortalData;)V

    .line 1904
    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 4844
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4845
    return-void
.end method

.method private logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "evtype"    # I

    .line 8097
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 8098
    .local v0, "transports":[I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    invoke-direct {v3, p2}, Landroid/net/metrics/NetworkEvent;-><init>(I)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/net/metrics/IpConnectivityLog$Event;)Z

    .line 8099
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 4848
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 4852
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4853
    return-void
.end method

.method private makeDefault(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7097
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switching to new default network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7099
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mDefaultNetworkNai:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7102
    if-eqz p1, :cond_0

    .line 7103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V

    goto :goto_0

    .line 7105
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->clearDefaultNetId()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7109
    :goto_0
    goto :goto_1

    .line 7107
    :catch_0
    move-exception v0

    .line 7108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception setting default network :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7111
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7112
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7113
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    goto :goto_2

    :cond_1
    move-object v1, v0

    .line 7112
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    .line 7114
    if-eqz p1, :cond_2

    .line 7115
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    nop

    .line 7114
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Ljava/lang/String;)V

    .line 7116
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    if-eqz p1, :cond_3

    .line 7117
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_3
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 7116
    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/DnsManager;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 7118
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 7120
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 7121
    return-void
.end method

.method private makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .line 2379
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2380
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_0

    .line 2381
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    move-object p1, v1

    .line 2382
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 2384
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2386
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2387
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    const-string/jumbo v2, "networkInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2388
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const-string/jumbo v2, "networkType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2389
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2390
    const/4 v1, 0x1

    const-string/jumbo v2, "isFailover"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2391
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 2393
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2394
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2396
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2397
    nop

    .line 2398
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 2397
    const-string v2, "extraInfo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2400
    :cond_3
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    const-string v2, "inetCondition"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2401
    return-object v0

    .line 2384
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V
    .locals 5
    .param p1, "ni"    # Landroid/net/NetworkInfo;
    .param p2, "uid"    # I

    .line 1517
    if-eqz p1, :cond_3

    .line 1521
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    monitor-enter v0

    .line 1522
    :try_start_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1523
    const/4 v1, 0x1

    .local v1, "blocked":Z
    goto :goto_0

    .line 1524
    .end local v1    # "blocked":Z
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mBlockedAppUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1525
    const/4 v1, 0x0

    .line 1529
    .restart local v1    # "blocked":Z
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    if-eqz v1, :cond_1

    const-string v0, "BLOCKED"

    goto :goto_1

    :cond_1
    const-string v0, "UNBLOCKED"

    .line 1531
    .local v0, "action":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Returning %s NetworkInfo to uid=%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 1532
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1533
    return-void

    .line 1527
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "blocked":Z
    :cond_2
    :try_start_1
    monitor-exit v0

    return-void

    .line 1529
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1518
    :cond_3
    return-void
.end method

.method private maybeLogBlockedStatusChanged(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Landroid/net/Network;Z)V
    .locals 5
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "net"    # Landroid/net/Network;
    .param p3, "blocked"    # Z

    .line 1537
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1540
    if-eqz p3, :cond_0

    const-string v0, "BLOCKED"

    goto :goto_0

    :cond_0
    const-string v0, "UNBLOCKED"

    .line 1541
    .local v0, "action":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkInfoBlockingLogs:Landroid/util/LocalLog;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 1542
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p2, Landroid/net/Network;->netId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1541
    const-string v3, "%s %d(%d) on netId %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1543
    return-void

    .line 1538
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private maybeNotifyNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;ZZZZ)V
    .locals 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldMetered"    # Z
    .param p3, "newMetered"    # Z
    .param p4, "oldRestrictBackground"    # Z
    .param p5, "newRestrictBackground"    # Z

    .line 7770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7771
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 7772
    .local v1, "nr":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7773
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    iget v4, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 7777
    .local v3, "uidRules":I
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v4

    .line 7778
    :try_start_0
    iget v5, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v5, v3, p2, p4}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v5

    .line 7780
    .local v5, "oldBlocked":Z
    iget v6, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-direct {p0, v6, v3, p3, p5}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v6

    .line 7782
    .local v6, "newBlocked":Z
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7783
    if-eq v5, v6, :cond_0

    .line 7784
    const v4, 0x8000b

    .line 7785
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v7

    .line 7784
    invoke-direct {p0, v2, p1, v4, v7}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 7770
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v3    # "uidRules":I
    .end local v5    # "oldBlocked":Z
    .end local v6    # "newBlocked":Z
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7782
    .restart local v1    # "nr":Landroid/net/NetworkRequest;
    .restart local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .restart local v3    # "uidRules":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 7788
    .end local v0    # "i":I
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v3    # "uidRules":I
    :cond_1
    return-void
.end method

.method private maybeNotifyNetworkBlockedForNewUidRules(II)V
    .locals 10
    .param p1, "uid"    # I
    .param p2, "newRules"    # I

    .line 7796
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7797
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v2

    .line 7803
    .local v2, "metered":Z
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 7804
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    .line 7805
    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    .line 7804
    invoke-direct {p0, p1, v4, v2, v5}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v4

    .line 7806
    .local v4, "oldBlocked":Z
    iget-boolean v5, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    invoke-direct {p0, p1, p2, v2, v5}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v5

    .line 7808
    .local v5, "newBlocked":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7809
    if-ne v4, v5, :cond_0

    .line 7810
    goto :goto_0

    .line 7812
    :cond_0
    invoke-static {v5}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v3

    .line 7813
    .local v3, "arg":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 7814
    invoke-virtual {v1, v6}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v7

    .line 7815
    .local v7, "nr":Landroid/net/NetworkRequest;
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7816
    .local v8, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    if-eqz v8, :cond_1

    iget v9, v8, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    if-ne v9, p1, :cond_1

    .line 7817
    const v9, 0x8000b

    invoke-direct {p0, v8, v1, v9, v3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 7813
    .end local v7    # "nr":Landroid/net/NetworkRequest;
    .end local v8    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 7820
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "metered":Z
    .end local v3    # "arg":I
    .end local v4    # "oldBlocked":Z
    .end local v5    # "newBlocked":Z
    .end local v6    # "i":I
    :cond_2
    goto :goto_0

    .line 7808
    .restart local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v2    # "metered":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 7821
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v2    # "metered":Z
    :cond_3
    return-void
.end method

.method private mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 6667
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v0, :cond_0

    .line 6668
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 6669
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6673
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->describeImmutableDifferences(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v0

    .line 6674
    .local v0, "diff":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6675
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " lost immutable capabilities:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 6680
    .end local v0    # "diff":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p2}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 6681
    .local v0, "newNc":Landroid/net/NetworkCapabilities;
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    const/16 v2, 0x10

    if-eqz v1, :cond_1

    .line 6682
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 6684
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 6686
    :goto_0
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    const/16 v2, 0x11

    if-eqz v1, :cond_2

    .line 6687
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_1

    .line 6689
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 6691
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isBackgroundNetwork()Z

    move-result v1

    const/16 v2, 0x13

    if-eqz v1, :cond_3

    .line 6692
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_2

    .line 6694
    :cond_3
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 6696
    :goto_2
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    const/16 v2, 0x18

    if-eqz v1, :cond_4

    .line 6697
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 6699
    :cond_4
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 6701
    :goto_3
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setPrivateDnsBroken(Z)V

    .line 6704
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 6705
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 6706
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 6709
    :cond_5
    return-object v0
.end method

.method private mixInInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .line 7574
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 7576
    .local v0, "newInfo":Landroid/net/NetworkInfo;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 7577
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 7578
    .local v1, "suspended":Z
    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_0

    .line 7585
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 7586
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 7585
    invoke-virtual {v0, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7587
    :cond_0
    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_2

    .line 7591
    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v2, :cond_1

    .line 7592
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_0

    .line 7593
    :cond_1
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 7594
    :goto_0
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 7595
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 7591
    invoke-virtual {v0, v2, v3, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 7597
    :cond_2
    :goto_1
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 7598
    return-object v0
.end method

.method private networkRequiresPrivateDnsValidation(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3404
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0}, Landroid/net/shared/NetworkMonitorUtils;->isPrivateDnsValidationRequired(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method private networksSortedById()[Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 2

    .line 2856
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2857
    .local v0, "networks":[Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2858
    sget-object v1, Lcom/android/server/-$$Lambda$ConnectivityService$H7LYLEpmjJnE6rkiTAMKiNF7tsA;->INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$H7LYLEpmjJnE6rkiTAMKiNF7tsA;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2859
    return-object v0
.end method

.method private declared-synchronized nextNetworkRequestId()I
    .locals 2

    monitor-enter p0

    .line 1418
    :try_start_0
    iget v0, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/ConnectivityService;->mNextNetworkRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1418
    .end local p0    # "this":Lcom/android/server/ConnectivityService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;I)V
    .locals 6
    .param p1, "p"    # Landroid/net/DataStallReportParcelable;
    .param p2, "netId"    # I

    .line 3373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data stall detected with methods: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/DataStallReportParcelable;->detectionMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3375
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 3376
    .local v0, "extras":Landroid/os/PersistableBundle;
    const/4 v1, 0x0

    .line 3377
    .local v1, "detectionMethod":I
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->hasDataStallDetectionMethod(Landroid/net/DataStallReportParcelable;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3378
    iget v2, p1, Landroid/net/DataStallReportParcelable;->dnsConsecutiveTimeouts:I

    const-string v3, "dnsConsecutiveTimeouts"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 3379
    or-int/lit8 v1, v1, 0x1

    .line 3381
    :cond_0
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/server/ConnectivityService;->hasDataStallDetectionMethod(Landroid/net/DataStallReportParcelable;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3382
    iget v2, p1, Landroid/net/DataStallReportParcelable;->tcpPacketFailRate:I

    const-string/jumbo v3, "tcpPacketFailRate"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 3383
    iget v2, p1, Landroid/net/DataStallReportParcelable;->tcpMetricsCollectionPeriodMillis:I

    const-string/jumbo v3, "tcpMetricsCollectionPeriodMillis"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 3385
    or-int/lit8 v1, v1, 0x2

    .line 3388
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsHandler:Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    const/4 v3, 0x4

    iget-wide v4, p1, Landroid/net/DataStallReportParcelable;->timestampMillis:J

    .line 3390
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 3388
    invoke-virtual {v2, v3, v1, p2, v4}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3391
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3396
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsHandler:Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3397
    return-void
.end method

.method private notifyIfacesChangedForNetworkStats()V
    .locals 6

    .line 7915
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 7916
    const/4 v0, 0x0

    .line 7917
    .local v0, "activeIface":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 7918
    .local v1, "activeLinkProperties":Landroid/net/LinkProperties;
    if-eqz v1, :cond_0

    .line 7919
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 7922
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v2

    .line 7924
    .local v2, "vpnInfos":[Lcom/android/internal/net/VpnInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mStatsService:Landroid/net/INetworkStatsService;

    .line 7925
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetworks()[Landroid/net/Network;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v5

    .line 7924
    invoke-interface {v3, v4, v5, v0, v2}, Landroid/net/INetworkStatsService;->forceUpdateIfaces([Landroid/net/Network;[Landroid/net/NetworkState;Ljava/lang/String;[Lcom/android/internal/net/VpnInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7927
    goto :goto_0

    .line 7926
    :catch_0
    move-exception v3

    .line 7928
    :goto_0
    return-void
.end method

.method private notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7561
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 7562
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    if-eqz v1, :cond_1

    .line 7563
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7564
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->onVpnStateChanged(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 7566
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    invoke-virtual {v1}, Lcom/android/server/net/LockdownVpnTracker;->onNetworkInfoChanged()V

    .line 7569
    :cond_1
    :goto_0
    monitor-exit v0

    .line 7570
    return-void

    .line 7569
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyNetworkLosing(Lcom/android/server/connectivity/NetworkAgentInfo;J)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "now"    # J

    .line 7753
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v0

    sub-long/2addr v0, p2

    long-to-int v0, v0

    .line 7754
    .local v0, "lingerTime":I
    const v1, 0x80003

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 7755
    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 5510
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 5514
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/PermissionMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 5515
    return-void

    .line 5511
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageAdded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5512
    return-void
.end method

.method private onPackageRemoved(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isReplacing"    # Z

    .line 5538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-gez p2, :cond_0

    goto :goto_0

    .line 5542
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/PermissionMonitor;->onPackageRemoved(I)V

    .line 5544
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5545
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5546
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 5547
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v2, :cond_1

    .line 5548
    monitor-exit v1

    return-void

    .line 5551
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p3, :cond_2

    .line 5552
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing always-on VPN package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5554
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;Landroid/security/KeyStore;)Z

    .line 5556
    .end local v2    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_2
    monitor-exit v1

    .line 5557
    return-void

    .line 5556
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5539
    .end local v0    # "userId":I
    :cond_3
    :goto_0
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageRemoved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5540
    return-void
.end method

.method private onPackageReplaced(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 5518
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-gez p2, :cond_0

    goto :goto_0

    .line 5522
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5523
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5524
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 5525
    .local v2, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v2, :cond_1

    .line 5526
    monitor-exit v1

    return-void

    .line 5529
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5530
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting always-on VPN package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5532
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn(Landroid/security/KeyStore;)Z

    .line 5534
    .end local v2    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_2
    monitor-exit v1

    .line 5535
    return-void

    .line 5534
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 5519
    .end local v0    # "userId":I
    :cond_3
    :goto_0
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package in onPackageReplaced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5520
    return-void
.end method

.method private onUserAdded(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 5482
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserAdded(I)V

    .line 5483
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;

    move-result-object v0

    .line 5484
    .local v0, "defaultNetwork":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5485
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 5486
    .local v2, "vpnsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 5487
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    .line 5488
    .local v4, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    .line 5489
    invoke-virtual {v4, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 5490
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v4, v5}, Lcom/android/server/ConnectivityService;->updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V

    .line 5486
    .end local v4    # "vpn":Lcom/android/server/connectivity/Vpn;
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5492
    .end local v2    # "vpnsSize":I
    .end local v3    # "i":I
    :cond_0
    monitor-exit v1

    .line 5493
    return-void

    .line 5492
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onUserRemoved(I)V
    .locals 6
    .param p1, "userId"    # I

    .line 5496
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->onUserRemoved(I)V

    .line 5497
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;

    move-result-object v0

    .line 5498
    .local v0, "defaultNetwork":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5499
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 5500
    .local v2, "vpnsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 5501
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    .line 5502
    .local v4, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v4, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    .line 5503
    invoke-virtual {v4, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v5

    .line 5504
    .local v5, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v4, v5}, Lcom/android/server/ConnectivityService;->updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V

    .line 5500
    .end local v4    # "vpn":Lcom/android/server/connectivity/Vpn;
    .end local v5    # "nc":Landroid/net/NetworkCapabilities;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5506
    .end local v2    # "vpnsSize":I
    .end local v3    # "i":I
    :cond_0
    monitor-exit v1

    .line 5507
    return-void

    .line 5506
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onUserStart(I)V
    .locals 9
    .param p1, "userId"    # I

    .line 5455
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5456
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 5457
    .local v1, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_0

    .line 5458
    const-string v2, "Starting user already has a VPN"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5459
    monitor-exit v0

    return-void

    .line 5461
    :cond_0
    new-instance v8, Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$InternalHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    move-object v2, v8

    move v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/connectivity/Vpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;ILandroid/security/KeyStore;)V

    move-object v1, v8

    .line 5462
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5463
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5464
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 5466
    .end local v1    # "userVpn":Lcom/android/server/connectivity/Vpn;
    :cond_1
    monitor-exit v0

    .line 5467
    return-void

    .line 5466
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUserStop(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 5470
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5471
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 5472
    .local v1, "userVpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_0

    .line 5473
    const-string v2, "Stopped user has no VPN"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 5474
    monitor-exit v0

    return-void

    .line 5476
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->onUserStopped()V

    .line 5477
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 5478
    .end local v1    # "userVpn":Lcom/android/server/connectivity/Vpn;
    monitor-exit v0

    .line 5479
    return-void

    .line 5478
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onUserUnlocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 5560
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5562
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5563
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    goto :goto_0

    .line 5565
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    .line 5567
    :goto_0
    monitor-exit v0

    .line 5568
    return-void

    .line 5567
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processLinkPropertiesFromAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 6329
    invoke-virtual {p2}, Landroid/net/LinkProperties;->ensureDirectlyConnectedRoutes()V

    .line 6330
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getNat64Prefix()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Nat464Xlat;->setNat64PrefixFromRa(Landroid/net/IpPrefix;)V

    .line 6331
    return-void
.end method

.method private processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7125
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->processNewlyLostListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7126
    const v0, 0x80006

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 7127
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->processNewlySatisfiedListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7128
    return-void
.end method

.method private processNewlyLostListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7131
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7132
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 7133
    .local v2, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 7134
    :cond_0
    iget v3, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7135
    iget-object v3, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v3, v3, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 7136
    const v3, 0x80004

    const/4 v4, 0x0

    invoke-direct {p0, v1, p1, v3, v4}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 7138
    .end local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v2    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    goto :goto_0

    .line 7139
    :cond_2
    return-void
.end method

.method private processNewlySatisfiedListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7142
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7143
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 7144
    .local v2, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 7145
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7146
    invoke-virtual {p1, v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    .line 7147
    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 7149
    .end local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v2    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    goto :goto_0

    .line 7150
    :cond_2
    return-void
.end method

.method private static putParcelable(Landroid/os/Bundle;Landroid/os/Parcelable;)V
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation

    .line 7049
    .local p1, "t":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7050
    return-void
.end method

.method private registerDnsNetdEventCallback()Z
    .locals 5

    .line 8845
    nop

    .line 8846
    const-string v0, "connmetrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    .line 8847
    .local v0, "ipconn":Landroid/net/IIpConnectivityMetrics;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8848
    const-string v2, "Missing IIpConnectivityMetrics"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 8849
    return v1

    .line 8853
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetdDnsEventCallback:Landroid/net/INetdEventCallback;

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    .line 8854
    const-string/jumbo v2, "registerDnsNetdEventCallback success"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8855
    return v3

    .line 8856
    :catch_0
    move-exception v2

    .line 8857
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error registering dns netd callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 8859
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private registerNetdEventCallback()V
    .locals 4

    .line 2130
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$Dependencies;->getIpConnectivityMetrics()Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    .line 2131
    .local v0, "ipConnectivityMetrics":Landroid/net/IIpConnectivityMetrics;
    if-nez v0, :cond_0

    .line 2132
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "Missing IIpConnectivityMetrics"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    return-void

    .line 2137
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    invoke-interface {v0, v1, v2}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2142
    goto :goto_0

    .line 2140
    :catch_0
    move-exception v1

    .line 2141
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error registering netd callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2143
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private registerPrivateDnsSettingsCallbacks()V
    .locals 6

    .line 1412
    invoke-static {}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsSettingsUris()[Landroid/net/Uri;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1413
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    const/16 v5, 0x25

    invoke-virtual {v4, v3, v5}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1412
    .end local v3    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1415
    :cond_0
    return-void
.end method

.method private registerSettingsCallbacks()V
    .locals 4

    .line 1366
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1367
    const-string v1, "http_proxy"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1366
    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1371
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1372
    const-string/jumbo v1, "mobile_data_always_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1371
    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1377
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v3, 0x49

    aput v3, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    const-string/jumbo v0, "ro.boot.opcarrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tmo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1380
    const-string v1, "force_data_always_on_when_sa"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1379
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1387
    const-string/jumbo v1, "wifi_always_requested"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1386
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1393
    const-string/jumbo v1, "wifi_auto_change_to_mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x64

    .line 1392
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1397
    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isNeedTcpTimestampsControl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1398
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1399
    const-string/jumbo v1, "op_tcp_timestamps_value"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x65

    .line 1398
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSettingsObserver:Lcom/android/server/ConnectivityService$SettingsObserver;

    .line 1406
    const-string/jumbo v1, "start_dns_time_out_monitor"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0x66

    .line 1405
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 1409
    return-void
.end method

.method private releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 6000
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 6002
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    .line 6001
    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService;->mReleasePendingIntentDelayMs:I

    int-to-long v2, v2

    .line 6000
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6003
    return-void
.end method

.method private rematchAllNetworksAndRequests()V
    .locals 4

    .line 7302
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 7303
    .local v0, "now":J
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->computeNetworkReassignment()Lcom/android/server/ConnectivityService$NetworkReassignment;

    move-result-object v2

    .line 7304
    .local v2, "changes":Lcom/android/server/ConnectivityService$NetworkReassignment;
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 7307
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$NetworkReassignment;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 7305
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/ConnectivityService$NetworkReassignment;->debugString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7309
    :goto_1
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ConnectivityService;->applyNetworkReassignment(Lcom/android/server/ConnectivityService$NetworkReassignment;J)V

    .line 7310
    return-void
.end method

.method private rematchForAvoidBadWifiUpdate()V
    .locals 4

    .line 4174
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests()V

    .line 4175
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4176
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4177
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4179
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    goto :goto_0

    .line 4180
    :cond_1
    return-void
.end method

.method private removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 5
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2531
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2532
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2534
    .local v1, "caps":Landroid/net/NetworkCapabilities;
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 2535
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2538
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2541
    goto :goto_0

    .line 2539
    :catch_0
    move-exception v2

    .line 2540
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in removeDataActivityTracking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2543
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private requestsSortedById()[Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .locals 2

    .line 2866
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2867
    .local v0, "requests":[Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 2868
    sget-object v1, Lcom/android/server/-$$Lambda$ConnectivityService$GX97FVWNZr22L2SZWTK3UYHOOe0;->INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$GX97FVWNZr22L2SZWTK3UYHOOe0;

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2869
    return-object v0
.end method

.method private requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;
    .param p3, "lp"    # Landroid/net/LinkProperties;

    .line 6816
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 6817
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v1, v1, Landroid/net/NetworkAgentConfig;->allowBypass:Z

    if-nez v1, :cond_3

    .line 6819
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_3

    .line 6820
    invoke-virtual {p3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6821
    invoke-virtual {p3}, Landroid/net/LinkProperties;->hasIPv4DefaultRoute()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/net/LinkProperties;->hasIpv4UnreachableDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6822
    :cond_1
    invoke-virtual {p3}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/net/LinkProperties;->hasIpv6UnreachableDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 6817
    :goto_0
    return v0

    .line 6816
    :cond_4
    :goto_1
    return v0
.end method

.method private restrictBackgroundRequestForCaller(Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1920
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->hasUseBackgroundNetworksPermission(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1921
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1923
    :cond_0
    return-void
.end method

.method private restrictRequestUidsForCallerAndSetRequestorInfo(Landroid/net/NetworkCapabilities;ILjava/lang/String;)V
    .locals 1
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "callerUid"    # I
    .param p3, "callerPackageName"    # Ljava/lang/String;

    .line 1909
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkSettingsPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1910
    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 1912
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/net/NetworkCapabilities;->setRequestorUidAndPackageName(ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 1913
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    .line 1916
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->setOwnerUid(I)Landroid/net/NetworkCapabilities;

    .line 1917
    return-void
.end method

.method private satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z
    .locals 4
    .param p1, "agentNc"    # Landroid/net/NetworkCapabilities;

    .line 8731
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8732
    iget v2, p0, Lcom/android/server/ConnectivityService;->mPreferredSubId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return v0

    .line 8734
    :cond_0
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v2, :cond_1

    .line 8736
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 8737
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 8738
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getIntSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v2

    iget v3, p0, Lcom/android/server/ConnectivityService;->mPreferredSubId:I

    if-ne v2, v3, :cond_3

    .line 8739
    :cond_2
    return v0

    .line 8741
    :cond_3
    return v1

    .line 8744
    :cond_4
    return v0
.end method

.method private scheduleReleaseNetworkTransitionWakelock()V
    .locals 4

    .line 4639
    monitor-enter p0

    .line 4640
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4641
    monitor-exit p0

    return-void

    .line 4643
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4645
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(I)V

    .line 4646
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4647
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4648
    return-void

    .line 4643
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4050
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleUnvalidatedPrompt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 4051
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1d

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 4052
    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f40

    .line 4051
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4054
    return-void
.end method

.method private sendAllRequestsToProvider(Lcom/android/server/ConnectivityService$NetworkProviderInfo;)V
    .locals 6
    .param p1, "npi"    # Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    .line 6926
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 6927
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 6928
    .local v1, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v2}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6929
    :cond_0
    iget-object v2, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6932
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v2, :cond_1

    .line 6933
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    .line 6934
    .local v3, "score":I
    iget v4, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->factorySerialNumber:I

    .local v4, "serial":I
    goto :goto_1

    .line 6936
    .end local v3    # "score":I
    .end local v4    # "serial":I
    :cond_1
    const/4 v3, 0x0

    .line 6937
    .restart local v3    # "score":I
    const/4 v4, -0x1

    .line 6939
    .restart local v4    # "serial":I
    :goto_1
    iget-object v5, v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v5, v3, v4}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->requestNetwork(Landroid/net/NetworkRequest;II)V

    .line 6940
    .end local v1    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "score":I
    .end local v4    # "serial":I
    goto :goto_0

    .line 6941
    :cond_2
    return-void
.end method

.method private sendDataActivityBroadcast(IZJ)V
    .locals 17
    .param p1, "deviceType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J

    .line 2409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.DATA_ACTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 2410
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "deviceType"

    move/from16 v11, p1

    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2411
    const-string/jumbo v0, "isActive"

    move/from16 v12, p2

    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2412
    const-string/jumbo v0, "tsNanos"

    move-wide/from16 v13, p3

    invoke-virtual {v1, v0, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2413
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 2415
    .local v15, "ident":J
    move-object/from16 v10, p0

    :try_start_0
    iget-object v2, v10, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    move-object v3, v1

    move-object v10, v0

    invoke-virtual/range {v2 .. v10}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2418
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2419
    nop

    .line 2420
    return-void

    .line 2418
    :catchall_0
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2419
    throw v0
.end method

.method private sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "bcastType"    # Ljava/lang/String;

    .line 2405
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->makeGeneralIntent(Landroid/net/NetworkInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2406
    return-void
.end method

.method private sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .line 2375
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2376
    return-void
.end method

.method private sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 7
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 6956
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6958
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6959
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6964
    goto :goto_0

    .line 6960
    :catch_0
    move-exception v0

    .line 6961
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not sent, it had been canceled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6962
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6963
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequest(Landroid/app/PendingIntent;)V

    .line 6966
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method private sendNetworkNoInternet(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 8812
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.network.INTERNET_LOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8813
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    const-string/jumbo v2, "network_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8814
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    const-string/jumbo v2, "link_properties"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8815
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const-string/jumbo v2, "network_capabilities"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8816
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 8817
    return-void
.end method

.method private sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 3
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "notificationType"    # I

    .line 6945
    const v0, 0x80002

    if-ne p3, v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    if-nez v0, :cond_0

    .line 6946
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6947
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const-string v2, "android.net.extra.NETWORK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6948
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    const-string v2, "android.net.extra.NETWORK_REQUEST"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6949
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntentSent:Z

    .line 6950
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v1, v0}, Lcom/android/server/ConnectivityService;->sendIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    .line 6953
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2423
    monitor-enter p0

    .line 2424
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 2425
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2426
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2428
    :cond_0
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2429
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_1

    .line 2430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendStickyBroadcast: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2433
    :cond_1
    const/4 v0, 0x0

    .line 2434
    .local v0, "options":Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2435
    .local v1, "ident":J
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2436
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 2438
    .local v3, "ni":Landroid/net/NetworkInfo;
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v4

    .line 2439
    .local v4, "opts":Landroid/app/BroadcastOptions;
    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Landroid/app/BroadcastOptions;->setMaxManifestReceiverApiLevel(I)V

    .line 2440
    invoke-virtual {v4}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, v5

    .line 2441
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService$Dependencies;->getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2443
    .local v5, "bs":Lcom/android/internal/app/IBatteryStats;
    :try_start_1
    const-string/jumbo v6, "networkType"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2445
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2443
    invoke-interface {v5, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteConnectivityChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2447
    goto :goto_0

    .line 2446
    :catch_0
    move-exception v6

    .line 2448
    :goto_0
    const/high16 v6, 0x200000

    :try_start_2
    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2451
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    .end local v4    # "opts":Landroid/app/BroadcastOptions;
    .end local v5    # "bs":Lcom/android/internal/app/IBatteryStats;
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, p1, v4, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2453
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2454
    nop

    .line 2455
    .end local v0    # "options":Landroid/os/Bundle;
    .end local v1    # "ident":J
    monitor-exit p0

    .line 2456
    return-void

    .line 2453
    .restart local v0    # "options":Landroid/os/Bundle;
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2454
    nop

    .end local p0    # "this":Lcom/android/server/ConnectivityService;
    .end local p1    # "intent":Landroid/content/Intent;
    throw v3

    .line 2455
    .end local v0    # "options":Landroid/os/Bundle;
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/ConnectivityService;
    .restart local p1    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6909
    if-eqz p2, :cond_0

    .line 6910
    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 6911
    .local v0, "score":I
    iget v1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->factorySerialNumber:I

    .local v1, "serial":I
    goto :goto_0

    .line 6913
    .end local v0    # "score":I
    .end local v1    # "serial":I
    :cond_0
    const/4 v0, 0x0

    .line 6914
    .restart local v0    # "score":I
    const/4 v1, 0x0

    .line 6916
    .restart local v1    # "serial":I
    :goto_0
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v2, :cond_2

    .line 6917
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending new Min Network Score("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6919
    :cond_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkProviderInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    .line 6920
    .local v3, "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    invoke-virtual {v3, p1, v0, v1}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->requestNetwork(Landroid/net/NetworkRequest;II)V

    .line 6921
    .end local v3    # "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    goto :goto_1

    .line 6922
    :cond_3
    return-void
.end method

.method private sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6897
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 6898
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 6900
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 6901
    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6897
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6903
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/android/server/net/LockdownVpnTracker;

    .line 5190
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 5193
    .local v0, "existing":Lcom/android/server/net/LockdownVpnTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 5194
    if-eqz v0, :cond_0

    .line 5195
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdown()V

    .line 5198
    :cond_0
    if-eqz p1, :cond_1

    .line 5199
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 5200
    invoke-virtual {p1}, Lcom/android/server/net/LockdownVpnTracker;->init()V

    .line 5202
    :cond_1
    return-void
.end method

.method private setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 6
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2496
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2501
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2503
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0xa

    const-string v3, "data_activity_timeout_mobile"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2506
    .local v1, "timeout":I
    const/4 v2, 0x0

    .local v2, "type":I
    goto :goto_0

    .line 2507
    .end local v1    # "timeout":I
    .end local v2    # "type":I
    :cond_0
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2509
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0xf

    const-string v3, "data_activity_timeout_wifi"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2512
    .restart local v1    # "timeout":I
    const/4 v2, 0x1

    .line 2517
    .restart local v2    # "type":I
    :goto_0
    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    .line 2519
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v0, v1, v2}, Landroid/os/INetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2523
    goto :goto_1

    .line 2520
    :catch_0
    move-exception v3

    .line 2522
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in setupDataActivityTracking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2525
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 2514
    .end local v1    # "timeout":I
    .end local v2    # "type":I
    :cond_2
    return-void
.end method

.method private shouldPromptUnvalidated(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 4283
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4292
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v0, v0, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    if-nez v0, :cond_1

    .line 4293
    return v2

    .line 4299
    :cond_1
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v0, v0, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v0, v0, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    if-nez v0, :cond_2

    .line 4301
    return v2

    .line 4304
    :cond_2
    return v1

    .line 4284
    :cond_3
    :goto_0
    return v1
.end method

.method private showNetworkNotification(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V
    .locals 11
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "type"    # Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 4231
    sget-object v0, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$connectivity$NetworkNotificationManager$NotificationType:[I

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 4254
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown notification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4255
    return-void

    .line 4248
    :cond_0
    const-string v0, "android.net.conn.PROMPT_PARTIAL_CONNECTIVITY"

    .line 4251
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v1, v1, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    .line 4252
    .local v1, "highPriority":Z
    move v8, v1

    goto :goto_0

    .line 4243
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "highPriority":Z
    :cond_1
    const-string v0, "android.net.conn.PROMPT_LOST_VALIDATION"

    .line 4245
    .restart local v0    # "action":Ljava/lang/String;
    const/4 v1, 0x1

    .line 4246
    .restart local v1    # "highPriority":Z
    move v8, v1

    goto :goto_0

    .line 4238
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "highPriority":Z
    :cond_2
    const-string v0, "android.settings.WIRELESS_SETTINGS"

    .line 4240
    .restart local v0    # "action":Ljava/lang/String;
    const/4 v1, 0x1

    .line 4241
    .restart local v1    # "highPriority":Z
    move v8, v1

    goto :goto_0

    .line 4233
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "highPriority":Z
    :cond_3
    const-string v0, "android.net.conn.PROMPT_UNVALIDATED"

    .line 4235
    .restart local v0    # "action":Ljava/lang/String;
    const/4 v1, 0x1

    .line 4236
    .restart local v1    # "highPriority":Z
    move v8, v1

    .line 4258
    .end local v1    # "highPriority":Z
    .local v8, "highPriority":Z
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    .line 4259
    .local v9, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PRIVATE_DNS_BROKEN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    if-eq p2, v1, :cond_4

    .line 4260
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "netId"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4261
    const/high16 v1, 0x10000000

    invoke-virtual {v9, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4264
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->getSettingsPackageName(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    .line 4265
    .local v1, "settingsPkgName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".wifi.WifiNoInternetDialog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4269
    .end local v1    # "settingsPkgName":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x14000000

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v4, v9

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 4277
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p1

    move-object v6, v10

    move v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    .line 4278
    return-void
.end method

.method private startAlwaysOnVpn(I)Z
    .locals 5
    .param p1, "userId"    # I

    .line 5226
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5227
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 5228
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_0

    .line 5231
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5232
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 5235
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn(Landroid/security/KeyStore;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 5236
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private teardownUnneededNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7053
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7054
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 7055
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 7057
    .local v1, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->isListen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7054
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7058
    .restart local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead network still had at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7068
    .end local v0    # "i":I
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7072
    goto :goto_1

    .line 7069
    :catch_0
    move-exception v0

    .line 7070
    .local v0, "e":Ljava/util/NoSuchElementException;
    if-eqz p1, :cond_2

    .line 7071
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nai:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7073
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :cond_2
    :goto_1
    return-void
.end method

.method private throwIfLockdownEnabled()V
    .locals 2

    .line 5213
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v0, :cond_0

    .line 5216
    return-void

    .line 5214
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unavailable in lockdown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toBool(I)Z
    .locals 1
    .param p0, "encodedBoolean"    # I

    .line 8102
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z
    .locals 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # Lcom/android/server/ConnectivityService$UnneededFor;

    .line 3745
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 3747
    sget-object v0, Lcom/android/server/ConnectivityService$9;->$SwitchMap$com$android$server$ConnectivityService$UnneededFor:[I

    invoke-virtual {p2}, Lcom/android/server/ConnectivityService$UnneededFor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 3755
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "Invalid reason. Cannot happen."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    return v1

    .line 3752
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    .line 3753
    .local v0, "numRequests":I
    goto :goto_0

    .line 3749
    .end local v0    # "numRequests":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numRequestNetworkRequests()I

    move-result v0

    .line 3750
    .restart local v0    # "numRequests":I
    nop

    .line 3759
    :goto_0
    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v2

    if-nez v2, :cond_7

    if-lez v0, :cond_2

    goto :goto_2

    .line 3763
    :cond_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3764
    .local v4, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    sget-object v5, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    if-ne p2, v5, :cond_3

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isBackgroundRequest()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3766
    goto :goto_1

    .line 3771
    :cond_3
    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v5}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p1, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v6, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v6, v6, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3772
    invoke-virtual {p0, v5, v6}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    .line 3774
    invoke-virtual {p1, v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3782
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v5

    .line 3783
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScoreAsValidated()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 3784
    :cond_4
    return v3

    .line 3786
    .end local v4    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_5
    goto :goto_1

    .line 3787
    :cond_6
    return v1

    .line 3760
    :cond_7
    :goto_2
    return v3
.end method

.method private updateAllVpnsCapabilities()V
    .locals 5

    .line 5125
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/Network;

    move-result-object v0

    .line 5126
    .local v0, "defaultNetwork":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 5127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5128
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 5129
    .local v3, "vpn":Lcom/android/server/connectivity/Vpn;
    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/Vpn;->updateCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 5130
    .local v4, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v3, v4}, Lcom/android/server/ConnectivityService;->updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V

    .line 5127
    .end local v3    # "vpn":Lcom/android/server/connectivity/Vpn;
    .end local v4    # "nc":Landroid/net/NetworkCapabilities;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5132
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1

    .line 5133
    return-void

    .line 5132
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .locals 18
    .param p1, "oldScore"    # I
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "nc"    # Landroid/net/NetworkCapabilities;

    .line 6730
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct {v6, v7, v8}, Lcom/android/server/ConnectivityService;->mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    .line 6731
    .local v9, "newNc":Landroid/net/NetworkCapabilities;
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6732
    :cond_0
    invoke-direct {v6, v7, v9}, Lcom/android/server/ConnectivityService;->updateNetworkPermissions(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 6733
    invoke-virtual {v7, v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->getAndSetNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v10

    .line 6735
    .local v10, "prevNc":Landroid/net/NetworkCapabilities;
    invoke-direct {v6, v7, v10, v9}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    .line 6737
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    const/16 v11, 0x12

    const/4 v12, 0x1

    move/from16 v13, p1

    if-ne v0, v13, :cond_4

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6742
    invoke-direct {v6, v7}, Lcom/android/server/ConnectivityService;->processListenRequests(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6743
    const/16 v0, 0x15

    invoke-virtual {v10, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    xor-int/2addr v1, v12

    .line 6744
    .local v1, "prevSuspended":Z
    invoke-virtual {v9, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/2addr v0, v12

    .line 6745
    .local v0, "suspended":Z
    invoke-virtual {v10, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    xor-int/2addr v2, v12

    .line 6746
    .local v2, "prevRoaming":Z
    invoke-virtual {v9, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    xor-int/2addr v3, v12

    .line 6747
    .local v3, "roaming":Z
    if-ne v1, v0, :cond_1

    if-eq v2, v3, :cond_3

    .line 6750
    :cond_1
    if-eqz v0, :cond_2

    const v4, 0x80009

    goto :goto_0

    .line 6751
    :cond_2
    const v4, 0x8000a

    .line 6750
    :goto_0
    invoke-virtual {v6, v7, v4}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6754
    iget-object v4, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v6, v7, v4}, Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 6756
    .end local v0    # "suspended":Z
    .end local v1    # "prevSuspended":Z
    .end local v2    # "prevRoaming":Z
    .end local v3    # "roaming":Z
    :cond_3
    goto :goto_1

    .line 6759
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests()V

    .line 6760
    const v0, 0x80006

    invoke-virtual {v6, v7, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 6766
    :goto_1
    if-eqz v10, :cond_9

    .line 6767
    invoke-virtual {v10}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v14

    .line 6768
    .local v14, "oldMetered":Z
    invoke-virtual {v9}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v15

    .line 6769
    .local v15, "newMetered":Z
    const/16 v16, 0x0

    if-eq v14, v15, :cond_5

    move v0, v12

    goto :goto_2

    :cond_5
    move/from16 v0, v16

    :goto_2
    move/from16 v17, v0

    .line 6771
    .local v17, "meteredChanged":Z
    if-eqz v17, :cond_6

    .line 6772
    iget-boolean v5, v6, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v14

    move v3, v15

    move v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->maybeNotifyNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;ZZZZ)V

    .line 6776
    :cond_6
    invoke-virtual {v10, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 6777
    invoke-virtual {v9, v11}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eq v0, v1, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v12, v16

    :goto_3
    move v0, v12

    .line 6780
    .local v0, "roamingChanged":Z
    if-nez v17, :cond_8

    if-eqz v0, :cond_9

    .line 6781
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 6785
    .end local v0    # "roamingChanged":Z
    .end local v14    # "oldMetered":Z
    .end local v15    # "newMetered":Z
    .end local v17    # "meteredChanged":Z
    :cond_9
    const/4 v0, 0x4

    invoke-virtual {v9, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 6788
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 6791
    :cond_a
    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 6792
    iget-object v0, v6, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v1, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    invoke-virtual {v9}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/DnsManager;->updateTransportsForNetwork(I[I)V

    .line 6794
    :cond_b
    return-void
.end method

.method private updateDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p1, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "oldNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2550
    if-eqz p1, :cond_0

    .line 2551
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->setupDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2553
    :cond_0
    if-eqz p2, :cond_1

    .line 2554
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->removeDataActivityTracking(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2556
    :cond_1
    return-void
.end method

.method private updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V
    .locals 5
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    .line 6574
    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6575
    return-void

    .line 6578
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 6579
    .local v0, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    if-ne v1, p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6582
    .local v1, "isDefaultNetwork":Z
    :goto_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v2

    .line 6583
    .local v2, "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting DNS servers for network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6586
    .end local v2    # "dnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v2, p3, p1}, Lcom/android/server/connectivity/DnsManager;->noteDnsServersForNetwork(ILandroid/net/LinkProperties;)V

    .line 6591
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/DnsManager;->setDefaultDnsSystemProperties(Ljava/util/Collection;)V

    .line 6592
    :cond_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v2}, Lcom/android/server/connectivity/DnsManager;->flushVmDnsCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6595
    goto :goto_1

    .line 6593
    :catch_0
    move-exception v2

    .line 6594
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setDnsConfigurationForNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6596
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7547
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v0, :cond_0

    return-void

    .line 7550
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 7552
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7554
    .local v0, "newInetCondition":I
    :goto_0
    iget v1, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    if-ne v0, v1, :cond_3

    return-void

    .line 7556
    :cond_3
    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 7557
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendInetConditionBroadcast(Landroid/net/NetworkInfo;)V

    .line 7558
    return-void
.end method

.method private updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ILandroid/net/NetworkCapabilities;I)V
    .locals 7
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I
    .param p4, "caps"    # Landroid/net/NetworkCapabilities;
    .param p5, "legacyType"    # I

    .line 6455
    new-instance v0, Landroid/net/util/LinkPropertiesUtils$CompareResult;

    .line 6456
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 6457
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-direct {v0, v2, v1}, Landroid/net/util/LinkPropertiesUtils$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 6458
    .local v0, "interfaceDiff":Landroid/net/util/LinkPropertiesUtils$CompareResult;, "Landroid/net/util/LinkPropertiesUtils$CompareResult<Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/net/util/LinkPropertiesUtils$CompareResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6459
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService$Dependencies;->getBatteryStatsService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    .line 6460
    .local v1, "bs":Lcom/android/internal/app/IBatteryStats;
    iget-object v2, v0, Landroid/net/util/LinkPropertiesUtils$CompareResult;->added:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6462
    .local v3, "iface":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6463
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v4, v3, p3}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V

    .line 6464
    const/4 v4, 0x1

    invoke-direct {p0, v3, p4, v4}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V

    .line 6465
    invoke-interface {v1, v3, p5}, Lcom/android/internal/app/IBatteryStats;->noteNetworkInterfaceType(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6468
    goto :goto_2

    .line 6466
    :catch_0
    move-exception v4

    .line 6467
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception adding interface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6469
    .end local v3    # "iface":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 6471
    .end local v1    # "bs":Lcom/android/internal/app/IBatteryStats;
    :cond_2
    iget-object v1, v0, Landroid/net/util/LinkPropertiesUtils$CompareResult;->removed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6473
    .local v2, "iface":Ljava/lang/String;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6474
    const/4 v3, 0x0

    invoke-direct {p0, v2, p4, v3}, Lcom/android/server/ConnectivityService;->wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V

    .line 6475
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v3, v2, p3}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6478
    goto :goto_4

    .line 6476
    :catch_1
    move-exception v3

    .line 6477
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception removing interface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6479
    .end local v2    # "iface":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_3

    .line 6480
    :cond_3
    return-void
.end method

.method private updateLegacyTypeTrackerAndVpnLockdownForRematch(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/util/Collection;)V
    .locals 3
    .param p1, "oldDefaultNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newDefaultNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            "Ljava/util/Collection<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;)V"
        }
    .end annotation

    .line 7483
    .local p3, "nais":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    if-eq p1, p2, :cond_2

    .line 7487
    if-eqz p1, :cond_0

    .line 7488
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->remove(ILcom/android/server/connectivity/NetworkAgentInfo;Z)V

    .line 7491
    :cond_0
    if-eqz p2, :cond_2

    .line 7495
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    .line 7496
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    iget-object v1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->add(ILcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7502
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7520
    :cond_2
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7521
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-boolean v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v2, :cond_3

    .line 7522
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->addNetworkToLegacyTypeTracker(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7524
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_3
    goto :goto_1

    .line 7525
    :cond_4
    return-void
.end method

.method private updateLingerState(Lcom/android/server/connectivity/NetworkAgentInfo;J)Z
    .locals 4
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "now"    # J

    .line 3499
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateLingerTimer()V

    .line 3500
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v0

    if-lez v0, :cond_0

    .line 3501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlingering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3502
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlinger()V

    .line 3503
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_0

    .line 3504
    :cond_0
    sget-object v0, Lcom/android/server/ConnectivityService$UnneededFor;->LINGER:Lcom/android/server/ConnectivityService$UnneededFor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->unneeded(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$UnneededFor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 3506
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getLingerExpiry()J

    move-result-wide v0

    sub-long/2addr v0, p2

    long-to-int v0, v0

    .line 3507
    .local v0, "lingerTime":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lingering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 3509
    .end local v0    # "lingerTime":I
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->linger()V

    .line 3510
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->logNetworkEvent(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 3511
    const/4 v0, 0x1

    return v0

    .line 3513
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .locals 7
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newLp"    # Landroid/net/LinkProperties;
    .param p3, "oldLp"    # Landroid/net/LinkProperties;

    .line 6351
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    .line 6354
    .local v0, "netId":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mOpWifiManager:Lcom/oneplus/android/wifi/IOpWifiManager;

    if-eqz v1, :cond_0

    .line 6355
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->getGatewayFromLinkproperties(Landroid/net/LinkProperties;)Ljava/net/Inet4Address;

    move-result-object v1

    .line 6356
    .local v1, "newGatewayIp":Ljava/net/Inet4Address;
    if-eqz v1, :cond_0

    .line 6357
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mOpWifiManager:Lcom/oneplus/android/wifi/IOpWifiManager;

    invoke-virtual {v1}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/oneplus/android/wifi/IOpWifiManager;->handleLinkPropertiesChanged(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6365
    .end local v1    # "newGatewayIp":Ljava/net/Inet4Address;
    :cond_0
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v1, p3, p2}, Lcom/android/server/connectivity/Nat464Xlat;->fixupLinkProperties(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 6367
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 6368
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 6367
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ConnectivityService;->updateInterfaces(Landroid/net/LinkProperties;Landroid/net/LinkProperties;ILandroid/net/NetworkCapabilities;I)V

    .line 6372
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/ConnectivityService;->updateVpnFiltering(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6374
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 6379
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6380
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Ljava/lang/String;)V

    .line 6383
    :cond_1
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/ConnectivityService;->updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z

    .line 6384
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 6389
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDnsStatus(ILandroid/net/LinkProperties;)V

    .line 6391
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6392
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V

    goto :goto_0

    .line 6394
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 6397
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->updateWakeOnLan(Landroid/net/LinkProperties;)V

    .line 6401
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->captivePortalData:Landroid/net/CaptivePortalData;

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setCaptivePortalData(Landroid/net/CaptivePortalData;)V

    .line 6404
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6405
    monitor-enter p1

    .line 6406
    :try_start_0
    iput-object p2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 6407
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6409
    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->clatd:Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Nat464Xlat;->update()V

    .line 6410
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 6411
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v1

    new-instance v2, Landroid/net/LinkProperties;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;Z)V

    invoke-virtual {v1, v2}, Landroid/net/NetworkMonitorManager;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)Z

    .line 6413
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v1, :cond_3

    .line 6414
    const v1, 0x80007

    invoke-virtual {p0, p1, v1}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_1

    .line 6407
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 6418
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 6419
    return-void
.end method

.method private updateMtu(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .locals 6
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    .line 2562
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2563
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    .line 2564
    .local v1, "mtu":I
    if-nez p2, :cond_0

    if-nez v1, :cond_0

    .line 2566
    return-void

    .line 2568
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/net/LinkProperties;->isIdenticalMtu(Landroid/net/LinkProperties;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2569
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v2, :cond_1

    const-string v2, "identical MTU - not setting"

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2570
    :cond_1
    return-void

    .line 2572
    :cond_2
    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v2

    invoke-static {v1, v2}, Landroid/net/LinkProperties;->isValidMtu(IZ)Z

    move-result v2

    const-string v3, ", "

    if-nez v2, :cond_4

    .line 2573
    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected mtu value: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2574
    :cond_3
    return-void

    .line 2578
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2579
    const-string v2, "Setting MTU size with null iface."

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2580
    return-void

    .line 2584
    :cond_5
    :try_start_0
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v2, :cond_6

    sget-boolean v2, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v2, :cond_7

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting MTU size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2585
    :cond_7
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v2, v0, v1}, Landroid/os/INetworkManagementService;->setMtu(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2588
    goto :goto_0

    .line 2586
    :catch_0
    move-exception v2

    .line 2587
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception in setMtu()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    .locals 8
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .line 7602
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->mixInInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 7603
    .local v0, "newInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 7604
    .local v1, "state":Landroid/net/NetworkInfo$State;
    const/4 v2, 0x0

    .line 7605
    .local v2, "oldInfo":Landroid/net/NetworkInfo;
    monitor-enter p1

    .line 7606
    :try_start_0
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    move-object v2, v3

    .line 7607
    iput-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 7608
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7609
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " EVENT_NETWORK_INFO_CHANGED, going from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7613
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7612
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7616
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_3

    .line 7618
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7621
    :cond_0
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 7623
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->createNativeNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 7624
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7630
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 7632
    :cond_2
    iput-boolean v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    .line 7635
    :cond_3
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    const/4 v5, 0x0

    if-nez v3, :cond_8

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_8

    .line 7638
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mOpWifiManager:Lcom/oneplus/android/wifi/IOpWifiManager;

    if-eqz v3, :cond_4

    .line 7639
    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lcom/oneplus/android/wifi/IOpWifiManager;->handleNetworkConntected(ILjava/lang/String;)Z

    .line 7643
    :cond_4
    iput-boolean v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    .line 7645
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-nez v3, :cond_5

    .line 7646
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " connected with null LinkProperties"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 7651
    :cond_5
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->getAndSetNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 7653
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    invoke-virtual {v3}, Lcom/android/server/connectivity/DnsManager;->getPrivateDnsConfig()Landroid/net/shared/PrivateDnsConfig;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/ConnectivityService;->handlePerNetworkPrivateDnsConfig(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 7654
    new-instance v3, Landroid/net/LinkProperties;

    iget-object v6, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v6}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 7661
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v3, v3, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    if-eqz v3, :cond_6

    .line 7662
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkMonitorManager;->setAcceptPartialConnectivity()Z

    .line 7664
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v3

    new-instance v6, Landroid/net/LinkProperties;

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v6, v7, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;Z)V

    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3, v6, v4}, Landroid/net/NetworkMonitorManager;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)Z

    .line 7668
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->scheduleUnvalidatedPrompt(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7677
    const-string v3, "CONNECT"

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/ConnectivityService;->updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V

    .line 7679
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7680
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 7684
    :cond_7
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests()V

    .line 7687
    const v3, 0x80001

    invoke-virtual {p0, p1, v3}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto :goto_1

    .line 7688
    :cond_8
    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_b

    .line 7691
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mOpWifiManager:Lcom/oneplus/android/wifi/IOpWifiManager;

    if-eqz v3, :cond_9

    .line 7692
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/oneplus/android/wifi/IOpWifiManager;->handleNetworkDisconntected(Ljava/lang/String;)Z

    .line 7704
    :cond_9
    :try_start_1
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3}, Lcom/android/internal/util/AsyncChannel;->disconnect()V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7707
    goto :goto_0

    .line 7705
    :catch_0
    move-exception v3

    .line 7706
    .local v3, "e":Ljava/util/NoSuchElementException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception disconnect asyncChannel: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 7709
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 7710
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/ConnectivityService;->updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V

    .line 7712
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->disconnectAndDestroyNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7713
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 7718
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v3}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    goto :goto_1

    .line 7720
    :cond_b
    iget-boolean v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v3, :cond_d

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_c

    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_d

    .line 7722
    :cond_c
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->update(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7724
    :cond_d
    :goto_1
    return-void

    .line 7608
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private updateNetworkPermissions(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newNc"    # Landroid/net/NetworkCapabilities;

    .line 6645
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)I

    move-result v0

    .line 6646
    .local v0, "oldPermission":I
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->getNetworkPermission(Landroid/net/NetworkCapabilities;)I

    move-result v1

    .line 6647
    .local v1, "newPermission":I
    if-eq v0, v1, :cond_0

    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6649
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setNetworkPermission(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6652
    goto :goto_0

    .line 6650
    :catch_0
    move-exception v2

    .line 6651
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setNetworkPermission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6654
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "score"    # I

    .line 7727
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNetworkScore for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7728
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->setScore(I)V

    .line 7729
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchAllNetworksAndRequests()V

    .line 7730
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 7731
    return-void
.end method

.method private updatePrivateDns(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V
    .locals 3
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newCfg"    # Landroid/net/shared/PrivateDnsConfig;

    .line 3445
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDnsManager:Lcom/android/server/connectivity/DnsManager;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/connectivity/DnsManager;->updatePrivateDns(Landroid/net/Network;Landroid/net/shared/PrivateDnsConfig;)Landroid/net/shared/PrivateDnsConfig;

    .line 3446
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 3447
    return-void
.end method

.method private updateProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;

    .line 4801
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    .line 4802
    .local v1, "newProxyInfo":Landroid/net/ProxyInfo;
    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 4804
    .local v0, "oldProxyInfo":Landroid/net/ProxyInfo;
    :goto_1
    invoke-static {v1, v0}, Lcom/android/server/connectivity/ProxyTracker;->proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4805
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v2}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 4807
    :cond_2
    return-void
.end method

.method private updateRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)Z
    .locals 8
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "netId"    # I

    .line 6520
    new-instance v0, Landroid/net/util/LinkPropertiesUtils$CompareOrUpdateResult;

    .line 6522
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 6523
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v1

    :cond_1
    sget-object v3, Lcom/android/server/-$$Lambda$ConnectivityService$XT2zS9HW9HrYR9HM0MhxU58wtIo;->INSTANCE:Lcom/android/server/-$$Lambda$ConnectivityService$XT2zS9HW9HrYR9HM0MhxU58wtIo;

    invoke-direct {v0, v2, v1, v3}, Landroid/net/util/LinkPropertiesUtils$CompareOrUpdateResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/function/Function;)V

    .line 6529
    .local v0, "routeDiff":Landroid/net/util/LinkPropertiesUtils$CompareOrUpdateResult;, "Landroid/net/util/LinkPropertiesUtils$CompareOrUpdateResult<Landroid/net/RouteInfo$RouteKey;Landroid/net/RouteInfo;>;"
    iget-object v1, v0, Landroid/net/util/LinkPropertiesUtils$CompareOrUpdateResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "] to network "

    const-string v4, "Adding Route ["

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 6530
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 6531
    :cond_2
    sget-boolean v5, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v5, :cond_4

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6533
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->convertRouteInfo(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;

    move-result-object v4

    invoke-interface {v3, p3, v4}, Landroid/net/INetd;->networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6538
    goto :goto_2

    .line 6534
    :catch_0
    move-exception v3

    .line 6535
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/Inet4Address;

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v4, :cond_6

    .line 6536
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in networkAddRouteParcel for non-gateway: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6539
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_2
    goto :goto_1

    .line 6540
    :cond_7
    iget-object v1, v0, Landroid/net/util/LinkPropertiesUtils$CompareOrUpdateResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 6541
    .restart local v2    # "route":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    .line 6542
    :cond_8
    sget-boolean v5, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v5, :cond_9

    sget-boolean v5, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v5, :cond_a

    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6544
    :cond_a
    :try_start_1
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->convertRouteInfo(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;

    move-result-object v6

    invoke-interface {v5, p3, v6}, Landroid/net/INetd;->networkAddRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6549
    goto :goto_4

    .line 6545
    :catch_1
    move-exception v5

    .line 6546
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-nez v6, :cond_b

    sget-boolean v6, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v6, :cond_c

    .line 6547
    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in networkAddRouteParcel for gateway: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6550
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_4
    goto :goto_3

    .line 6552
    :cond_d
    iget-object v1, v0, Landroid/net/util/LinkPropertiesUtils$CompareOrUpdateResult;->removed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "] from network "

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 6553
    .restart local v2    # "route":Landroid/net/RouteInfo;
    sget-boolean v4, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v4, :cond_e

    sget-boolean v4, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v4, :cond_f

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing Route ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6555
    :cond_f
    :try_start_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->convertRouteInfo(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;

    move-result-object v4

    invoke-interface {v3, p3, v4}, Landroid/net/INetd;->networkRemoveRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 6558
    goto :goto_6

    .line 6556
    :catch_2
    move-exception v3

    .line 6557
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in networkRemoveRouteParcel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6559
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6
    goto :goto_5

    .line 6561
    :cond_10
    iget-object v1, v0, Landroid/net/util/LinkPropertiesUtils$CompareOrUpdateResult;->updated:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 6562
    .restart local v2    # "route":Landroid/net/RouteInfo;
    sget-boolean v4, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v4, :cond_11

    sget-boolean v4, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v4, :cond_12

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating Route ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6564
    :cond_12
    :try_start_3
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->convertRouteInfo(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;

    move-result-object v5

    invoke-interface {v4, p3, v5}, Landroid/net/INetd;->networkUpdateRouteParcel(ILandroid/net/RouteInfoParcel;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 6567
    goto :goto_8

    .line 6565
    :catch_3
    move-exception v4

    .line 6566
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in networkUpdateRouteParcel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6568
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_8
    goto :goto_7

    .line 6569
    :cond_13
    iget-object v1, v0, Landroid/net/util/LinkPropertiesUtils$CompareOrUpdateResult;->added:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Landroid/net/util/LinkPropertiesUtils$CompareOrUpdateResult;->removed:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Landroid/net/util/LinkPropertiesUtils$CompareOrUpdateResult;->updated:Ljava/util/List;

    .line 6570
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    goto :goto_a

    :cond_15
    :goto_9
    const/4 v1, 0x1

    .line 6569
    :goto_a
    return v1
.end method

.method private updateSatisfiersForRematchRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;J)V
    .locals 6
    .param p1, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .param p2, "previousSatisfier"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "newSatisfier"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "now"    # J

    .line 7230
    if-eqz p3, :cond_7

    .line 7231
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rematch for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7232
    :cond_0
    if-eqz p2, :cond_4

    .line 7233
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_2

    .line 7234
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   accepting network in place of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7236
    :cond_2
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p2, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 7237
    iget-object v0, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7238
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, p0, Lcom/android/server/ConnectivityService;->mLingerDelayMs:I

    int-to-long v4, v0

    move-object v0, p2

    move-wide v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->lingerRequest(Landroid/net/NetworkRequest;JJ)V

    goto :goto_0

    .line 7240
    :cond_3
    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, p0, Lcom/android/server/ConnectivityService;->mNonDefaultSubscriptionLingerDelayMs:I

    int-to-long v4, v0

    move-object v0, p2

    move-wide v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->lingerRequest(Landroid/net/NetworkRequest;JJ)V

    goto :goto_0

    .line 7244
    :cond_4
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "   accepting network in place of null"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7246
    :cond_6
    :goto_0
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p3, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlingerRequest(Landroid/net/NetworkRequest;)Z

    .line 7247
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {p3, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->addRequest(Landroid/net/NetworkRequest;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 7248
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BUG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 7253
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stopped satisfying request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v1, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7256
    iget-object v0, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p2, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->removeRequest(I)V

    .line 7258
    :cond_8
    :goto_1
    iput-object p3, p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mSatisfier:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 7259
    return-void
.end method

.method private updateSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;Landroid/net/NetworkRequest;)V
    .locals 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/net/NetworkRequest;

    .line 5817
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getSignalStrengthThresholds(Lcom/android/server/connectivity/NetworkAgentInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 5818
    .local v0, "thresholdsArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5819
    .local v1, "thresholds":Landroid/os/Bundle;
    const-string/jumbo v2, "thresholds"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5821
    sget-boolean v2, Lcom/android/server/ConnectivityService;->VDBG:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "CONNECT"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5823
    :cond_0
    if-eqz p3, :cond_1

    iget-object v2, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "detail":Ljava/lang/String;
    goto :goto_0

    .line 5826
    .end local v2    # "detail":Ljava/lang/String;
    :cond_1
    move-object v2, p2

    .line 5828
    .restart local v2    # "detail":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const/4 v5, 0x1

    .line 5829
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 5828
    const-string/jumbo v5, "updateSignalStrengthThresholds: %s, sending %s to %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5832
    .end local v2    # "detail":Ljava/lang/String;
    :cond_2
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v4, 0x8100e

    invoke-virtual {v2, v4, v3, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 5835
    return-void
.end method

.method private updateTcpBufferSizes(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2595
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2596
    return-void

    .line 2599
    :cond_0
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object v0

    .line 2600
    .local v0, "tcpBufferSizes":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->updateTcpBufferSizes(Ljava/lang/String;)V

    .line 2601
    return-void
.end method

.method private updateTcpBufferSizes(Ljava/lang/String;)V
    .locals 8
    .param p1, "tcpBufferSizes"    # Ljava/lang/String;

    .line 2604
    const-string v0, " "

    const/4 v1, 0x0

    .line 2605
    .local v1, "values":[Ljava/lang/String;
    const-string v2, ","

    if-eqz p1, :cond_0

    .line 2606
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2608
    :cond_0
    if-eqz v1, :cond_1

    array-length v3, v1

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    .line 2609
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tcpBufferSizes string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", using defaults"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2610
    const-string p1, "4096,87380,110208,4096,16384,110208"

    .line 2611
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2614
    :cond_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 2617
    :cond_3
    const/4 v2, 0x0

    :try_start_0
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v3, :cond_5

    :cond_4
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting tx/rx TCP buffers to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    :cond_5
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/CharSequence;

    aget-object v5, v1, v2

    aput-object v5, v4, v2

    const/4 v5, 0x1

    aget-object v6, v1, v5

    aput-object v6, v4, v5

    const/4 v6, 0x2

    aget-object v7, v1, v6

    aput-object v7, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2620
    .local v4, "rmemValues":Ljava/lang/String;
    new-array v7, v3, [Ljava/lang/CharSequence;

    aget-object v3, v1, v3

    aput-object v3, v7, v2

    const/4 v3, 0x4

    aget-object v3, v1, v3

    aput-object v3, v7, v5

    const/4 v3, 0x5

    aget-object v3, v1, v3

    aput-object v3, v7, v6

    invoke-static {v0, v7}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2621
    .local v0, "wmemValues":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-interface {v3, v4, v0}, Landroid/net/INetd;->setTcpRWmemorySize(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    iput-object p1, p0, Lcom/android/server/ConnectivityService;->mCurrentTcpBufferSizes:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2625
    .end local v0    # "wmemValues":Ljava/lang/String;
    .end local v4    # "rmemValues":Ljava/lang/String;
    goto :goto_0

    .line 2623
    :catch_0
    move-exception v0

    .line 2624
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set TCP buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2627
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    .line 2629
    const-string/jumbo v4, "net.tcp.default_init_rwnd"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/connectivity/MockableSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2627
    const-string/jumbo v3, "tcp_default_init_rwnd"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2630
    .local v0, "rwndValue":Ljava/lang/Integer;
    const-string/jumbo v2, "sys.sysctl.tcp_def_init_rwnd"

    .line 2631
    .local v2, "sysctlKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_6

    .line 2634
    :try_start_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string/jumbo v4, "sys.sysctl.tcp_def_init_rwnd"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/connectivity/MockableSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2637
    goto :goto_1

    .line 2635
    :catch_1
    move-exception v3

    .line 2636
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set property sys.sysctl.tcp_def_init_rwnd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 2644
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_1
    return-void
.end method

.method private updateUids(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)V
    .locals 8
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "prevNc"    # Landroid/net/NetworkCapabilities;
    .param p3, "newNc"    # Landroid/net/NetworkCapabilities;

    .line 6827
    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v1

    .line 6828
    .local v1, "prevRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v0

    .line 6829
    .local v0, "newRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    :goto_1
    if-nez v1, :cond_2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v1, v2

    .line 6830
    :cond_2
    if-nez v0, :cond_3

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v2

    .line 6831
    :cond_3
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 6833
    .local v2, "prevRangesCopy":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 6834
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 6843
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 6844
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/UidRange;

    .line 6845
    .local v3, "addedRangesArray":[Landroid/net/UidRange;
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6846
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-interface {v4, v5, v3}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 6848
    .end local v3    # "addedRangesArray":[Landroid/net/UidRange;
    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 6849
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/UidRange;

    .line 6850
    .local v3, "removedRangesArray":[Landroid/net/UidRange;
    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6851
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-interface {v4, v5, v3}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V

    .line 6853
    .end local v3    # "removedRangesArray":[Landroid/net/UidRange;
    :cond_5
    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v3

    .line 6854
    .local v3, "wasFiltering":Z
    iget-object v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, p3, v4}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v4

    .line 6855
    .local v4, "shouldFilter":Z
    iget-object v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    .line 6867
    .local v5, "iface":Ljava/lang/String;
    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 6868
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v7

    invoke-virtual {v6, v5, v1, v7}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesRemoved(Ljava/lang/String;Ljava/util/Set;I)V

    .line 6870
    :cond_6
    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 6871
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {p3}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v7

    invoke-virtual {v6, v5, v0, v7}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesAdded(Ljava/lang/String;Ljava/util/Set;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6876
    .end local v3    # "wasFiltering":Z
    .end local v4    # "shouldFilter":Z
    .end local v5    # "iface":Ljava/lang/String;
    :cond_7
    goto :goto_2

    .line 6873
    :catch_0
    move-exception v3

    .line 6875
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Exception in updateUids: "

    invoke-static {v4, v3}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6877
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private updateVpnCapabilities(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "vpn"    # Lcom/android/server/connectivity/Vpn;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 5136
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 5137
    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn;->getNetId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 5138
    .local v0, "vpnNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 5141
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/ConnectivityService;->updateCapabilities(ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 5142
    return-void

    .line 5139
    :cond_1
    :goto_0
    return-void
.end method

.method private updateVpnFiltering(Landroid/net/LinkProperties;Landroid/net/LinkProperties;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 7
    .param p1, "newLp"    # Landroid/net/LinkProperties;
    .param p2, "oldLp"    # Landroid/net/LinkProperties;
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6600
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 6601
    .local v1, "oldIface":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 6602
    .local v0, "newIface":Ljava/lang/String;
    :cond_1
    iget-object v2, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p3, v2, p2}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v2

    .line 6603
    .local v2, "wasFiltering":Z
    iget-object v3, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p3, v3, p1}, Lcom/android/server/ConnectivityService;->requiresVpnIsolation(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;)Z

    move-result v3

    .line 6605
    .local v3, "needsFiltering":Z
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 6607
    return-void

    .line 6610
    :cond_2
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v2, v3, :cond_3

    .line 6612
    return-void

    .line 6615
    :cond_3
    iget-object v4, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getUids()Ljava/util/Set;

    move-result-object v4

    .line 6616
    .local v4, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    iget-object v5, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v5}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v5

    .line 6621
    .local v5, "vpnAppUid":I
    if-eqz v2, :cond_4

    .line 6622
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v6, v1, v4, v5}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesRemoved(Ljava/lang/String;Ljava/util/Set;I)V

    .line 6624
    :cond_4
    if-eqz v3, :cond_5

    .line 6625
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v6, v0, v4, v5}, Lcom/android/server/connectivity/PermissionMonitor;->onVpnUidRangesAdded(Ljava/lang/String;Ljava/util/Set;I)V

    .line 6627
    :cond_5
    return-void
.end method

.method private updateWakeOnLan(Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 6630
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mWolSupportedInterfaces:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->setWakeOnLanSupported(Z)V

    .line 6631
    return-void
.end method

.method private wakeupModifyInterface(Ljava/lang/String;Landroid/net/NetworkCapabilities;Z)V
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "caps"    # Landroid/net/NetworkCapabilities;
    .param p3, "add"    # Z

    .line 6424
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6425
    return-void

    .line 6428
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 6430
    .local v0, "mark":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 6435
    .local v1, "mask":I
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_2

    .line 6439
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6441
    .local v2, "prefix":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 6442
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-interface {v3, p1, v2, v0, v1}, Landroid/net/INetd;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 6444
    :cond_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    invoke-interface {v3, p1, v2, v0, v1}, Landroid/net/INetd;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6448
    :goto_0
    goto :goto_1

    .line 6446
    :catch_0
    move-exception v3

    .line 6447
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception modifying wakeup packet monitoring: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 6450
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 6436
    .end local v2    # "prefix":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public addVpnAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .line 7932
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7933
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 7934
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 7935
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/Vpn;->addAddress(Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 7936
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public avoidBadWifi()Z
    .locals 1

    .line 4157
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v0}, Landroid/net/util/MultinetworkPolicyTracker;->getAvoidBadWifi()Z

    move-result v0

    return v0
.end method

.method checkConnectivityDiagnosticsPermissions(IILcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    .locals 4
    .param p1, "callbackPid"    # I
    .param p2, "callbackUid"    # I
    .param p3, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "callbackPackageName"    # Ljava/lang/String;

    .line 8606
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->checkNetworkStackPermission(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 8607
    return v1

    .line 8614
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLocationPermissionChecker:Lcom/android/internal/util/LocationPermissionChecker;

    const/4 v3, 0x0

    invoke-virtual {v2, p4, v3, p2, v3}, Lcom/android/internal/util/LocationPermissionChecker;->checkLocationPermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 8616
    return v0

    .line 8620
    :cond_1
    nop

    .line 8623
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 8624
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->getVpnIfOwner(I)Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 8625
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .line 8626
    .local v0, "underlyingNetworks":[Landroid/net/Network;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8627
    if-eqz v0, :cond_3

    .line 8628
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 8632
    :cond_3
    iget-object v1, p3, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    move-result-object v1

    .line 8633
    .local v1, "administratorUids":[I
    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    return v2

    .line 8626
    .end local v0    # "underlyingNetworks":[Landroid/net/Network;
    .end local v1    # "administratorUids":[I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 8618
    :catch_0
    move-exception v1

    .line 8619
    .local v1, "e":Ljava/lang/SecurityException;
    return v0
.end method

.method public checkMobileProvisioning(I)I
    .locals 1
    .param p1, "suggestedTimeOutMs"    # I

    .line 5330
    const/4 v0, -0x1

    return v0
.end method

.method public declareNetworkRequestUnfulfillable(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 6157
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6158
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkFactoryOrTestNetworksPermission()V

    goto :goto_0

    .line 6160
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkFactoryPermission()V

    .line 6162
    :goto_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v1, Lcom/android/server/-$$Lambda$ConnectivityService$SS5YUaesQHufWj1T0I5sKoDFFWY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$ConnectivityService$SS5YUaesQHufWj1T0I5sKoDFFWY;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    .line 6163
    return-void
.end method

.method public deleteVpnProfile(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4961
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4962
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4963
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/connectivity/Vpn;->deleteVpnProfile(Ljava/lang/String;Landroid/security/KeyStore;)V

    .line 4964
    monitor-exit v1

    .line 4965
    return-void

    .line 4964
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2690
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPriorityDumper:Lcom/android/server/utils/PriorityDump$PriorityDumper;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2691
    return-void
.end method

.method public establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "config"    # Lcom/android/internal/net/VpnConfig;

    .line 4922
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4923
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4924
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4925
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 4926
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public factoryReset()V
    .locals 10

    .line 8021
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V

    .line 8023
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8024
    return-void

    .line 8027
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 8029
    .local v0, "userId":I
    new-instance v1, Lcom/android/server/-$$Lambda$ConnectivityService$zKYeCXPns6N-1Autc-TtgY0oBKw;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$ConnectivityService$zKYeCXPns6N-1Autc-TtgY0oBKw;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 8035
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->setAirplaneMode(Z)V

    .line 8037
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v3, "no_config_vpn"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 8039
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 8040
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v4

    .line 8041
    .local v4, "alwaysOnPackage":Ljava/lang/String;
    const/4 v5, -0x1

    if-eqz v4, :cond_1

    .line 8042
    invoke-virtual {p0, v0, v3, v1, v3}, Lcom/android/server/ConnectivityService;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    .line 8043
    invoke-virtual {p0, v4, v0, v5}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 8047
    :cond_1
    iget-boolean v6, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    .line 8048
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8050
    .local v6, "ident":J
    :try_start_1
    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v9, "LOCKDOWN_VPN"

    invoke-virtual {v8, v9}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 8051
    iput-boolean v1, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 8052
    invoke-direct {p0, v3}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8054
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8055
    goto :goto_0

    .line 8054
    :catchall_0
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8055
    nop

    .end local v0    # "userId":I
    .end local p0    # "this":Lcom/android/server/ConnectivityService;
    throw v1

    .line 8059
    .end local v6    # "ident":J
    .restart local v0    # "userId":I
    .restart local p0    # "this":Lcom/android/server/ConnectivityService;
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v1

    .line 8060
    .local v1, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    if-eqz v1, :cond_4

    .line 8061
    iget-boolean v6, v1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v6, :cond_3

    .line 8062
    const-string v5, "[Legacy VPN]"

    const-string v6, "[Legacy VPN]"

    invoke-virtual {p0, v5, v6, v0}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 8066
    :cond_3
    iget-object v6, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p0, v6, v0, v5}, Lcom/android/server/ConnectivityService;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 8069
    const-string v5, "[Legacy VPN]"

    invoke-virtual {p0, v3, v5, v0}, Lcom/android/server/ConnectivityService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 8072
    .end local v1    # "vpnConfig":Lcom/android/internal/net/VpnConfig;
    .end local v4    # "alwaysOnPackage":Ljava/lang/String;
    :cond_4
    :goto_1
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 8076
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUserManager:Landroid/os/UserManager;

    const-string v2, "disallow_config_private_dns"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8077
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "private_dns_mode"

    const-string/jumbo v4, "opportunistic"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8081
    :cond_6
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_avoid_bad_wifi"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8083
    return-void
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 4

    .line 1775
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1776
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1777
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1778
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 1779
    :cond_0
    iget-object v2, v1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 1780
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1779
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/ConnectivityService;->linkPropertiesRestrictedForCallerPermissions(Landroid/net/LinkProperties;II)Landroid/net/LinkProperties;

    move-result-object v2

    return-object v2
.end method

.method public getActiveNetwork()Landroid/net/Network;
    .locals 2

    .line 1582
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkForUid(IZ)Landroid/net/Network;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .line 1588
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1589
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .line 1572
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1573
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1574
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1575
    .local v1, "state":Landroid/net/NetworkState;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1576
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {p0, v2, v0}, Lcom/android/server/ConnectivityService;->maybeLogBlockedNetworkInfo(Landroid/net/NetworkInfo;I)V

    .line 1577
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2
.end method

.method public getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "ignoreBlocked"    # Z

    .line 1630
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1631
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v0

    .line 1632
    .local v0, "state":Landroid/net/NetworkState;
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1633
    iget-object v1, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v1
.end method

.method public getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;
    .locals 3

    .line 1622
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1623
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1624
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1625
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1947
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shame on UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for calling the hidden API getNetworkQuotaInfo(). Shame!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    new-instance v0, Landroid/net/NetworkQuotaInfo;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo;-><init>()V

    return-object v0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 3

    .line 1669
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1670
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1671
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkInfo;>;"
    const/4 v1, 0x0

    .local v1, "networkType":I
    :goto_0
    const/16 v2, 0x12

    if-gt v1, v2, :cond_1

    .line 1673
    invoke-virtual {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1674
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 1675
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1678
    .end local v1    # "networkType":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkInfo;

    return-object v1
.end method

.method public getAllNetworkState()[Landroid/net/NetworkState;
    .locals 7

    .line 1928
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1930
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1931
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkState;>;"
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getAllNetworks()[Landroid/net/Network;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1932
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {p0, v4}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 1933
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v5, :cond_0

    .line 1938
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1941
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/NetworkState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/NetworkState;

    return-object v1
.end method

.method public getAllNetworks()[Landroid/net/Network;
    .locals 4

    .line 1694
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1695
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1696
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/Network;

    .line 1697
    .local v1, "result":[Landroid/net/Network;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1698
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    aput-object v3, v1, v2

    .line 1697
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1700
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1701
    .end local v1    # "result":[Landroid/net/Network;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAlwaysOnVpnPackage(I)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I

    .line 5284
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 5285
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 5287
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5288
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 5289
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_0

    .line 5290
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5291
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 5293
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 5294
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCaptivePortalServerUrl()Ljava/lang/String;
    .locals 3

    .line 7968
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackOrSettingsPermission()V

    .line 7969
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104023d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7972
    .local v0, "settingUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7973
    return-object v0

    .line 7976
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "captive_portal_http_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7978
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7979
    return-object v0

    .line 7982
    :cond_1
    const-string v1, "http://connectivitycheck.gstatic.com/generate_204"

    return-object v1
.end method

.method public getConnectionOwnerUid(Landroid/net/ConnectionInfo;)I
    .locals 4
    .param p1, "connectionInfo"    # Landroid/net/ConnectionInfo;

    .line 8209
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceActiveVpnOrNetworkStackPermission()Lcom/android/server/connectivity/Vpn;

    move-result-object v0

    .line 8212
    .local v0, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getActiveAppVpnType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 8213
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "getConnectionOwnerUid() not allowed for non-VpnService VPNs"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8217
    :cond_1
    :goto_0
    iget v1, p1, Landroid/net/ConnectionInfo;->protocol:I

    sget v2, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-eq v1, v2, :cond_3

    iget v1, p1, Landroid/net/ConnectionInfo;->protocol:I

    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 8218
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported protocol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/ConnectionInfo;->protocol:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8221
    :cond_3
    :goto_1
    iget v1, p1, Landroid/net/ConnectionInfo;->protocol:I

    iget-object v2, p1, Landroid/net/ConnectionInfo;->local:Ljava/net/InetSocketAddress;

    iget-object v3, p1, Landroid/net/ConnectionInfo;->remote:Ljava/net/InetSocketAddress;

    invoke-static {v1, v2, v3}, Landroid/net/netlink/InetDiagMessage;->getConnectionOwnerUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I

    move-result v1

    .line 8225
    .local v1, "uid":I
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->appliesToUid(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 8226
    const/4 v2, -0x1

    return v2

    .line 8229
    :cond_4
    return v1
.end method

.method public getDefaultNetworkCapabilitiesForUser(ILjava/lang/String;)[Landroid/net/NetworkCapabilities;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "callingPackageName"    # Ljava/lang/String;

    .line 1721
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1723
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1725
    .local v0, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Network;Landroid/net/NetworkCapabilities;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 1726
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/NetworkCapabilities;

    move-result-object v2

    .line 1727
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    if-eqz v2, :cond_0

    .line 1728
    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    .line 1731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1730
    invoke-virtual {p0, v2, v4, p2}, Lcom/android/server/ConnectivityService;->maybeSanitizeLocationInfoForCaller(Landroid/net/NetworkCapabilities;ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    .line 1728
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    :cond_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1735
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    if-nez v4, :cond_2

    .line 1736
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Vpn;

    .line 1737
    .local v4, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v4, :cond_2

    .line 1738
    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 1739
    .local v5, "networks":[Landroid/net/Network;
    if-eqz v5, :cond_2

    .line 1740
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 1741
    .local v8, "network":Landroid/net/Network;
    invoke-direct {p0, v8}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    move-object v2, v9

    .line 1742
    if-eqz v2, :cond_1

    .line 1743
    nop

    .line 1746
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1745
    invoke-virtual {p0, v2, v9, p2}, Lcom/android/server/ConnectivityService;->maybeSanitizeLocationInfoForCaller(Landroid/net/NetworkCapabilities;ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    .line 1743
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    .end local v8    # "network":Landroid/net/Network;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1752
    .end local v4    # "vpn":Lcom/android/server/connectivity/Vpn;
    .end local v5    # "networks":[Landroid/net/Network;
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1754
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/NetworkCapabilities;

    .line 1755
    .local v3, "out":[Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, [Landroid/net/NetworkCapabilities;

    .line 1756
    return-object v3

    .line 1752
    .end local v3    # "out":[Landroid/net/NetworkCapabilities;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getDefaultRequest()Landroid/net/NetworkRequest;
    .locals 1

    .line 4382
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .locals 1

    .line 4785
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4569
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 4571
    .local v0, "tm":Landroid/net/TetheringManager;
    invoke-virtual {v0, p1}, Landroid/net/TetheringManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 2
    .param p1, "userId"    # I

    .line 5025
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 5027
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5028
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5029
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 1796
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1797
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 1798
    .local v0, "lp":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1799
    :cond_0
    nop

    .line 1800
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1799
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ConnectivityService;->linkPropertiesRestrictedForCallerPermissions(Landroid/net/LinkProperties;II)Landroid/net/LinkProperties;

    move-result-object v1

    return-object v1
.end method

.method public getLinkPropertiesForType(I)Landroid/net/LinkProperties;
    .locals 4
    .param p1, "networkType"    # I

    .line 1785
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1786
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1787
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 1788
    .local v1, "lp":Landroid/net/LinkProperties;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 1789
    :cond_0
    nop

    .line 1790
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1789
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->linkPropertiesRestrictedForCallerPermissions(Landroid/net/LinkProperties;II)Landroid/net/LinkProperties;

    move-result-object v2

    return-object v2
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .locals 5

    .line 5399
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V

    .line 5400
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getProvisioningUrlBaseFromFile()Ljava/lang/String;

    move-result-object v0

    .line 5401
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5402
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040512

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileProvisioningUrl: mobile_provisioining_url from resource ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 5405
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMobileProvisioningUrl: mobile_provisioning_url from File ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5408
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5409
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 5410
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5411
    const-string v1, "0000000000"

    .line 5413
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 5414
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 5415
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 5413
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5419
    .end local v1    # "phoneNumber":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getMultipathPreference(Landroid/net/Network;)I
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 4364
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 4366
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4367
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xb

    .line 4368
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4369
    const/4 v1, 0x7

    return v1

    .line 4372
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->getMultipathPreference(Landroid/net/Network;)Ljava/lang/Integer;

    move-result-object v1

    .line 4373
    .local v1, "networkPreference":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 4374
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 4377
    :cond_1
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mMultinetworkPolicyTracker:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {v2}, Landroid/net/util/MultinetworkPolicyTracker;->getMeteredMultipathPreference()I

    move-result v2

    return v2
.end method

.method protected getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .line 1448
    if-nez p1, :cond_0

    .line 1449
    const/4 v0, 0x0

    return-object v0

    .line 1451
    :cond_0
    iget v0, p1, Landroid/net/Network;->netId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCapabilities(Landroid/net/Network;Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "callingPackageName"    # Ljava/lang/String;

    .line 1828
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1829
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1830
    nop

    .line 1831
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1832
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1830
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/ConnectivityService;->maybeSanitizeLocationInfoForCaller(Landroid/net/NetworkCapabilities;ILjava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkForType(I)Landroid/net/Network;
    .locals 4
    .param p1, "networkType"    # I

    .line 1683
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1685
    .local v0, "uid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(II)Landroid/net/NetworkState;

    move-result-object v1

    .line 1686
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/ConnectivityService;->isNetworkWithLinkPropertiesBlocked(Landroid/net/LinkProperties;IZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1687
    iget-object v2, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    return-object v2

    .line 1689
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 3
    .param p1, "networkType"    # I

    .line 1638
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1639
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1640
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getVpnUnderlyingNetworks(I)[Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1644
    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getUnfilteredActiveNetworkState(I)Landroid/net/NetworkState;

    move-result-object v1

    .line 1645
    .local v1, "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1646
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1647
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2

    .line 1650
    .end local v1    # "state":Landroid/net/NetworkState;
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->getFilteredNetworkState(II)Landroid/net/NetworkState;

    move-result-object v1

    .line 1651
    .restart local v1    # "state":Landroid/net/NetworkState;
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2
.end method

.method public getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "uid"    # I
    .param p3, "ignoreBlocked"    # Z

    .line 1656
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1657
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 1658
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    .line 1659
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getNetworkState()Landroid/net/NetworkState;

    move-result-object v1

    .line 1660
    .local v1, "state":Landroid/net/NetworkState;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/ConnectivityService;->filterNetworkStateForUid(Landroid/net/NetworkState;IZ)V

    .line 1661
    iget-object v2, v1, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    return-object v2

    .line 1663
    .end local v1    # "state":Landroid/net/NetworkState;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkWatchlistConfigHash()[B
    .locals 2

    .line 8087
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkWatchlistManager;

    .line 8088
    .local v0, "nwm":Landroid/net/NetworkWatchlistManager;
    if-nez v0, :cond_0

    .line 8089
    const-string v1, "Unable to get NetworkWatchlistManager"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 8090
    const/4 v1, 0x0

    return-object v1

    .line 8093
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkWatchlistManager;->getWatchlistConfigHash()[B

    move-result-object v1

    return-object v1
.end method

.method public getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
    .locals 5
    .param p1, "network"    # Landroid/net/Network;

    .line 4747
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 4748
    .local v0, "globalProxy":Landroid/net/ProxyInfo;
    if-eqz v0, :cond_0

    return-object v0

    .line 4749
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 4751
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->getActiveNetworkForUidInternal(IZ)Landroid/net/Network;

    move-result-object v2

    .line 4753
    .local v2, "activeNetwork":Landroid/net/Network;
    if-nez v2, :cond_1

    .line 4754
    return-object v1

    .line 4756
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/ConnectivityService;->getLinkPropertiesProxyInfo(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v1

    return-object v1

    .line 4757
    .end local v2    # "activeNetwork":Landroid/net/Network;
    :cond_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget v4, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ConnectivityService$Dependencies;->queryUserAccess(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4760
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->getLinkPropertiesProxyInfo(Landroid/net/Network;)Landroid/net/ProxyInfo;

    move-result-object v1

    return-object v1

    .line 4763
    :cond_3
    return-object v1
.end method

.method public getRestoreDefaultNetworkDelay(I)I
    .locals 4
    .param p1, "networkType"    # I

    .line 2648
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const-string v1, "android.telephony.apn-restore"

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2650
    .local v0, "restoreDefaultNetworkDelayStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2651
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2653
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2654
    :catch_0
    move-exception v1

    .line 2658
    :cond_0
    const v1, 0xea60

    .line 2660
    .local v1, "ret":I
    const/16 v2, 0x12

    if-gt p1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v3, v2, p1

    if-eqz v3, :cond_1

    .line 2662
    aget-object v2, v2, p1

    iget v1, v2, Landroid/net/NetworkConfig;->restoreTime:I

    .line 2664
    :cond_1
    return v1
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4577
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 4579
    .local v0, "tm":Landroid/net/TetheringManager;
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4603
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 4606
    .local v0, "tm":Landroid/net/TetheringManager;
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4612
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 4614
    .local v0, "tm":Landroid/net/TetheringManager;
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4585
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 4587
    .local v0, "tm":Landroid/net/TetheringManager;
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4594
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "tethering"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TetheringManager;

    .line 4597
    .local v0, "tm":Landroid/net/TetheringManager;
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .locals 3
    .param p1, "userId"    # I

    .line 5103
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 5104
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 5106
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_0

    .line 5107
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 5109
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 5111
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVpnLockdownWhitelist(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5314
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 5315
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 5317
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5318
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 5319
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_0

    .line 5320
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5321
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 5323
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdownWhitelist()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 5324
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method handleRestrictBackgroundChanged(Z)V
    .locals 9
    .param p1, "restrictBackground"    # Z

    .line 2176
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2179
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v8

    .line 2180
    .local v8, "curMetered":Z
    iget-boolean v6, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    move-object v2, p0

    move-object v3, v1

    move v4, v8

    move v5, v8

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ConnectivityService;->maybeNotifyNetworkBlocked(Lcom/android/server/connectivity/NetworkAgentInfo;ZZZZ)V

    .line 2182
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v8    # "curMetered":Z
    goto :goto_0

    .line 2184
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    .line 2185
    return-void
.end method

.method handleUidRulesChanged(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "newRules"    # I

    .line 2163
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2164
    .local v0, "oldRules":I
    if-ne v0, p2, :cond_0

    return-void

    .line 2166
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService;->maybeNotifyNetworkBlockedForNewUidRules(II)V

    .line 2168
    if-nez p2, :cond_1

    .line 2169
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 2171
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2173
    :goto_0
    return-void
.end method

.method public handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 6880
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->ensureRunningOnConnectivityServiceThread()V

    .line 6882
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetId(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 6884
    return-void

    .line 6886
    :cond_0
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_2

    .line 6887
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update of LinkProperties for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; everConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6893
    :cond_2
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 6894
    return-void
.end method

.method public isActiveNetworkMetered()Z
    .locals 3

    .line 1954
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1956
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1957
    .local v0, "caps":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1958
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 1961
    :cond_0
    return v1
.end method

.method public isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5241
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V

    .line 5242
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 5244
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 5246
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_0

    .line 5247
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5248
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 5250
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p2, v2}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;Landroid/security/KeyStore;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 5251
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBestMobileMultiNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p1, "currentNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "currentRequestNc"    # Landroid/net/NetworkCapabilities;
    .param p3, "newNetwork"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "newRequestNc"    # Landroid/net/NetworkCapabilities;
    .param p5, "requestNc"    # Landroid/net/NetworkCapabilities;

    .line 8769
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8770
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->isMobileNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8771
    invoke-virtual {p0, p4, p5}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8772
    invoke-virtual {p0, p2, p5}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8773
    const/4 v0, 0x1

    return v0

    .line 8775
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCallerCurrentAlwaysOnVpnApp()Z
    .locals 3

    .line 8234
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 8235
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    .line 8236
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getAlwaysOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 8237
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCallerCurrentAlwaysOnVpnLockdownApp()Z
    .locals 3

    .line 8242
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 8243
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    move-result-object v1

    .line 8244
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 8245
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 6215
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .line 1761
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 1762
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v0

    return v0
.end method

.method public isVpnLockdownEnabled(I)Z
    .locals 5
    .param p1, "userId"    # I

    .line 5299
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 5300
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 5302
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5303
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 5304
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_0

    .line 5305
    sget-object v2, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " has no Vpn configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5306
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 5308
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 5309
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$declareNetworkRequestUnfulfillable$7$ConnectivityService(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .line 6162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;IZ)V

    return-void
.end method

.method public synthetic lambda$factoryReset$10$ConnectivityService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8030
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/IpMemoryStore;->getMemoryStore(Landroid/content/Context;)Landroid/net/IpMemoryStore;

    move-result-object v0

    .line 8031
    .local v0, "ipMemoryStore":Landroid/net/IpMemoryStore;
    invoke-virtual {v0}, Landroid/net/IpMemoryStore;->factoryReset()V

    .line 8032
    return-void
.end method

.method public synthetic lambda$maybeSanitizeLocationInfoForCaller$1$ConnectivityService(Ljava/lang/String;ILandroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I
    .param p3, "newNc"    # Landroid/net/NetworkCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1872
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLocationPermissionChecker:Lcom/android/internal/util/LocationPermissionChecker;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/android/internal/util/LocationPermissionChecker;->checkLocationPermission(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1876
    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/net/NetworkCapabilities;->setOwnerUid(I)Landroid/net/NetworkCapabilities;

    .line 1878
    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$ConnectivityService()V
    .locals 0

    .line 1258
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->rematchForAvoidBadWifiUpdate()V

    return-void
.end method

.method public synthetic lambda$registerNetworkProvider$6$ConnectivityService(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 6130
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->unregisterNetworkProvider(Landroid/os/Messenger;)V

    return-void
.end method

.method public synthetic lambda$setUnderlyingNetworksForVpn$9$ConnectivityService()V
    .locals 0

    .line 7959
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->updateAllVpnsCapabilities()V

    .line 7960
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->notifyIfacesChangedForNetworkStats()V

    .line 7961
    return-void
.end method

.method public synthetic lambda$startCaptivePortalApp$4$ConnectivityService(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 4060
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4061
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    return-void

    .line 4062
    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4063
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkMonitorManager;->launchCaptivePortalApp()Z

    .line 4064
    return-void
.end method

.method public synthetic lambda$startCaptivePortalAppInternal$5$ConnectivityService(Landroid/content/Intent;)V
    .locals 2
    .param p1, "appIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4106
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/NetworkRequest;
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .line 6037
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6038
    .local v0, "callingUid":I
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6039
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 6042
    :cond_0
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 6043
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    nop

    .line 6044
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 6043
    invoke-direct {p0, p1, v2, v0, p4}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;IILjava/lang/String;)V

    .line 6045
    invoke-direct {p0, v1, v0, p4}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCallerAndSetRequestorInfo(Landroid/net/NetworkCapabilities;ILjava/lang/String;)V

    .line 6051
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->restrictBackgroundRequestForCaller(Landroid/net/NetworkCapabilities;)V

    .line 6052
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->ensureValid(Landroid/net/NetworkCapabilities;)V

    .line 6054
    new-instance v2, Landroid/net/NetworkRequest;

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v4

    sget-object v5, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 6056
    .local v2, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v3, p0, p2, v2, p3}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 6057
    .local v3, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    sget-boolean v4, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listenForNetwork for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6059
    :cond_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6060
    return-object v2
.end method

.method maybeSanitizeLocationInfoForCaller(Landroid/net/NetworkCapabilities;ILjava/lang/String;)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "callerUid"    # I
    .param p3, "callerPkgName"    # Ljava/lang/String;

    .line 1855
    if-nez p1, :cond_0

    .line 1856
    const/4 v0, 0x0

    return-object v0

    .line 1858
    :cond_0
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1859
    .local v0, "newNc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 1860
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setOwnerUid(I)Landroid/net/NetworkCapabilities;

    .line 1861
    return-object v0

    .line 1865
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1867
    return-object v0

    .line 1870
    :cond_2
    new-instance v1, Lcom/android/server/-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ;

    invoke-direct {v1, p0, p3, p2, v0}, Lcom/android/server/-$$Lambda$ConnectivityService$ONlkcNIY7zZyZhG_msTp1qIA_cQ;-><init>(Lcom/android/server/ConnectivityService;Ljava/lang/String;ILandroid/net/NetworkCapabilities;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1881
    return-object v0
.end method

.method networkCapabilitiesRestrictedForCallerPermissions(Landroid/net/NetworkCapabilities;II)Landroid/net/NetworkCapabilities;
    .locals 2
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "callerPid"    # I
    .param p3, "callerUid"    # I

    .line 1838
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 1839
    .local v0, "newNc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, p2, p3}, Lcom/android/server/ConnectivityService;->checkSettingsPermission(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1840
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1841
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 1843
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1844
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkSpecifier;->redact()Landroid/net/NetworkSpecifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 1846
    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    .line 1848
    return-object v0
.end method

.method public final nextNetworkProviderId()I
    .locals 1

    .line 6087
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mNextNetworkProviderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method protected notifyNetworkAvailable(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "nri"    # Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7738
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7739
    iget-object v0, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    const v1, 0x80002

    if-eqz v0, :cond_0

    .line 7740
    invoke-direct {p0, p2, p1, v1}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 7742
    return-void

    .line 7745
    :cond_0
    iget-object v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->isMetered()Z

    move-result v0

    .line 7746
    .local v0, "metered":Z
    iget v2, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mUidRules:Landroid/util/SparseIntArray;

    iget v4, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    iget-boolean v4, p0, Lcom/android/server/ConnectivityService;->mRestrictBackground:Z

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/server/ConnectivityService;->isUidNetworkingWithVpnBlocked(IIZZ)Z

    move-result v2

    .line 7748
    .local v2, "blocked":Z
    invoke-direct {p0, p2, p1, v1, v2}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 7749
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .locals 1
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"    # I

    .line 7888
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 7889
    return-void
.end method

.method protected notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .locals 5
    .param p1, "networkAgent"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "notifyType"    # I
    .param p3, "arg1"    # I

    .line 7871
    sget-boolean v0, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ConnectivityService;->DDBG:Z

    if-eqz v0, :cond_1

    .line 7872
    :cond_0
    invoke-static {p2}, Landroid/net/ConnectivityManager;->getCallbackName(I)Ljava/lang/String;

    move-result-object v0

    .line 7873
    .local v0, "notification":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7875
    .end local v0    # "notification":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->numNetworkRequests()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 7876
    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->requestAt(I)Landroid/net/NetworkRequest;

    move-result-object v1

    .line 7877
    .local v1, "nr":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkRequests:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 7878
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    sget-boolean v3, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " sending notification for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 7879
    :cond_2
    iget-object v3, v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_3

    .line 7880
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/ConnectivityService;->callCallbackForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_1

    .line 7882
    :cond_3
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/ConnectivityService;->sendPendingIntentForRequest(Lcom/android/server/ConnectivityService$NetworkRequestInfo;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 7875
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    .end local v2    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7885
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Ljava/lang/String;
    .param p5, "resultExtras"    # Landroid/os/Bundle;

    .line 6971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished sending "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6972
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPendingIntentWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6975
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->releasePendingNetworkRequestWithDelay(Landroid/app/PendingIntent;)V

    .line 6976
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

    .line 8113
    new-instance v0, Lcom/android/server/ConnectivityService$ShellCmd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ConnectivityService$ShellCmd;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ConnectivityService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 8114
    return-void
.end method

.method public opExecuteIPtableCmd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "dstPort"    # Ljava/lang/String;

    .line 8801
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeIPtableCmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8803
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/net/IOemNetd;->opExecuteIPtableCmd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8806
    goto :goto_0

    .line 8804
    :catch_0
    move-exception v0

    .line 8805
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set TCP buffer sizes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 8807
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public opGetDnsInfo(III)[I
    .locals 1
    .param p1, "netId"    # I
    .param p2, "serversLength"    # I
    .param p3, "domainsLength"    # I

    .line 8796
    invoke-static {}, Lcom/android/server/ConnectivityService;->getDnsResolver()Landroid/net/IDnsResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/ConnectivityServiceInjector;->opGetDnsInfo(Landroid/net/IDnsResolver;III)[I

    move-result-object v0

    return-object v0
.end method

.method public pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 6
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .line 6066
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6067
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6068
    .local v0, "callingUid":I
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->hasWifiNetworkListenPermission(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6069
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 6071
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValid(Landroid/net/NetworkCapabilities;)V

    .line 6072
    nop

    .line 6073
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 6072
    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;IILjava/lang/String;)V

    .line 6074
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 6075
    .local v1, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v1, v0, p3}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCallerAndSetRequestorInfo(Landroid/net/NetworkCapabilities;ILjava/lang/String;)V

    .line 6077
    new-instance v2, Landroid/net/NetworkRequest;

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v4

    sget-object v5, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 6079
    .local v2, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v3, p0, v2, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    .line 6080
    .local v3, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    sget-boolean v4, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pendingListenForNetwork for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6082
    :cond_1
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x15

    invoke-virtual {v4, v5, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6083
    return-void
.end method

.method public pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;Ljava/lang/String;)Landroid/net/NetworkRequest;
    .locals 5
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "operation"    # Landroid/app/PendingIntent;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .line 5978
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5979
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5980
    .local v0, "callingUid":I
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object p1, v1

    .line 5981
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 5982
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    .line 5983
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 5984
    nop

    .line 5985
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5984
    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;IILjava/lang/String;)V

    .line 5986
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValidNetworkSpecifier(Landroid/net/NetworkCapabilities;)V

    .line 5987
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCallerAndSetRequestorInfo(Landroid/net/NetworkCapabilities;ILjava/lang/String;)V

    .line 5990
    new-instance v1, Landroid/net/NetworkRequest;

    .line 5991
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v2

    sget-object v3, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    const/4 v4, -0x1

    invoke-direct {v1, p1, v4, v2, v3}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 5992
    .local v1, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V

    .line 5993
    .local v2, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pendingRequest for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5994
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5996
    return-object v1
.end method

.method public prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "oldPackage"    # Ljava/lang/String;
    .param p2, "newPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4872
    invoke-direct {p0, p3}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4874
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4875
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4876
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4877
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_0

    .line 4878
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/connectivity/Vpn;->prepare(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 4880
    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 4882
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z
    .locals 4
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4943
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4944
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4945
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p2, p1, v3}, Lcom/android/server/connectivity/Vpn;->provisionVpnProfile(Ljava/lang/String;Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 4946
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerConnectivityDiagnosticsCallback(Landroid/net/IConnectivityDiagnosticsCallback;Landroid/net/NetworkRequest;Ljava/lang/String;)V
    .locals 7
    .param p1, "callback"    # Landroid/net/IConnectivityDiagnosticsCallback;
    .param p2, "request"    # Landroid/net/NetworkRequest;
    .param p3, "callingPackageName"    # Ljava/lang/String;

    .line 8641
    iget v0, p2, Landroid/net/NetworkRequest;->legacyType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 8646
    .local v0, "callingUid":I
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 8650
    new-instance v2, Landroid/net/NetworkCapabilities;

    iget-object v3, p2, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v3}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 8651
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {p0, v2, v0, p3}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCallerAndSetRequestorInfo(Landroid/net/NetworkCapabilities;ILjava/lang/String;)V

    .line 8653
    new-instance v3, Landroid/net/NetworkRequest;

    .line 8655
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v4

    sget-object v5, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    invoke-direct {v3, v2, v1, v4, v5}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    move-object v1, v3

    .line 8662
    .local v1, "requestWithId":Landroid/net/NetworkRequest;
    new-instance v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v3, p0, v1}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    .line 8663
    .local v3, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v4, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;

    invoke-direct {v4, p0, p1, v3, p3}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/IConnectivityDiagnosticsCallback;Lcom/android/server/ConnectivityService$NetworkRequestInfo;Ljava/lang/String;)V

    .line 8666
    .local v4, "cbInfo":Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsHandler:Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    const/4 v6, 0x1

    .line 8667
    invoke-virtual {v5, v6, v4}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 8666
    invoke-virtual {v5, v6}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8671
    return-void

    .line 8642
    .end local v0    # "callingUid":I
    .end local v1    # "requestWithId":Landroid/net/NetworkRequest;
    .end local v2    # "nc":Landroid/net/NetworkCapabilities;
    .end local v3    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    .end local v4    # "cbInfo":Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsCallbackInfo;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConnectivityManager.TYPE_* are deprecated. Please use NetworkCapabilities instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkAgentConfig;)Landroid/net/Network;
    .locals 8
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p5, "currentScore"    # I
    .param p6, "networkAgentConfig"    # Landroid/net/NetworkAgentConfig;

    .line 6232
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/ConnectivityService;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkAgentConfig;I)Landroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkAgentConfig;I)Landroid/net/Network;
    .locals 20
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p5, "currentScore"    # I
    .param p6, "networkAgentConfig"    # Landroid/net/NetworkAgentConfig;
    .param p7, "providerId"    # I

    .line 6255
    move-object/from16 v12, p0

    move-object/from16 v0, p4

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6256
    const-string v1, "android.permission.MANAGE_TEST_NETWORKS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 6260
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1, v0}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object v0, v1

    .line 6261
    .end local p4    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v0, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->restrictCapabilitesForTestNetwork(I)V

    move-object v8, v0

    goto :goto_0

    .line 6263
    .end local v0    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .restart local p4    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService;->enforceNetworkFactoryPermission()V

    move-object v8, v0

    .line 6266
    .end local p4    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v8, "networkCapabilities":Landroid/net/NetworkCapabilities;
    :goto_0
    new-instance v6, Landroid/net/LinkProperties;

    move-object/from16 v2, p3

    invoke-direct {v6, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 6270
    .local v6, "lp":Landroid/net/LinkProperties;
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v8}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object v15, v0

    .local v15, "nc":Landroid/net/NetworkCapabilities;
    move-object v7, v15

    .line 6271
    new-instance v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v1, v0

    new-instance v4, Lcom/android/internal/util/AsyncChannel;

    move-object v3, v4

    invoke-direct {v4}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    new-instance v5, Landroid/net/Network;

    move-object v4, v5

    iget-object v9, v12, Lcom/android/server/ConnectivityService;->mNetIdManager:Lcom/android/server/NetIdManager;

    .line 6272
    invoke-virtual {v9}, Lcom/android/server/NetIdManager;->reserveNetId()I

    move-result v9

    invoke-direct {v5, v9}, Landroid/net/Network;-><init>(I)V

    new-instance v9, Landroid/net/NetworkInfo;

    move-object v5, v9

    move-object/from16 v14, p2

    invoke-direct {v9, v14}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iget-object v9, v12, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v10, v12, Lcom/android/server/ConnectivityService;->mTrackerHandler:Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    new-instance v13, Landroid/net/NetworkAgentConfig;

    move-object v11, v13

    move-object/from16 p4, v1

    move-object/from16 v1, p6

    invoke-direct {v13, v1}, Landroid/net/NetworkAgentConfig;-><init>(Landroid/net/NetworkAgentConfig;)V

    iget-object v13, v12, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v1, v12, Lcom/android/server/ConnectivityService;->mDnsResolver:Landroid/net/IDnsResolver;

    move-object v14, v1

    iget-object v1, v12, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    move-object/from16 v18, v15

    .end local v15    # "nc":Landroid/net/NetworkCapabilities;
    .local v18, "nc":Landroid/net/NetworkCapabilities;
    move-object v15, v1

    .line 6274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move-object/from16 v2, p1

    move-object/from16 v19, v8

    .end local v8    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    .local v19, "networkCapabilities":Landroid/net/NetworkCapabilities;
    move/from16 v8, p5

    move-object v1, v12

    move-object/from16 v12, p0

    move/from16 v16, p7

    move-object/from16 v1, p4

    invoke-direct/range {v1 .. v17}, Lcom/android/server/connectivity/NetworkAgentInfo;-><init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkAgentConfig;Lcom/android/server/ConnectivityService;Landroid/net/INetd;Landroid/net/IDnsResolver;Landroid/os/INetworkManagementService;II)V

    move-object v1, v0

    .line 6277
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    move-object/from16 v2, p0

    move-object/from16 v3, v18

    .end local v18    # "nc":Landroid/net/NetworkCapabilities;
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    invoke-direct {v2, v1, v3}, Lcom/android/server/ConnectivityService;->mixInCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getAndSetNetworkCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 6278
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v1, v0}, Lcom/android/server/ConnectivityService;->processLinkPropertiesFromAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 6280
    invoke-virtual/range {p2 .. p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    .line 6281
    .local v4, "extraInfo":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6282
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    move-object v5, v0

    .line 6283
    .local v5, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerNetworkAgent "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 6284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 6286
    .local v7, "token":J
    :try_start_0
    iget-object v0, v2, Lcom/android/server/ConnectivityService;->mDeps:Lcom/android/server/ConnectivityService$Dependencies;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService$Dependencies;->getNetworkStack()Landroid/net/NetworkStackClient;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    new-instance v10, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;

    const/4 v11, 0x0

    invoke-direct {v10, v2, v1, v11}, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V

    invoke-virtual {v0, v9, v5, v10}, Landroid/net/NetworkStackClient;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6289
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6290
    nop

    .line 6295
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    return-object v0

    .line 6289
    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6290
    throw v0
.end method

.method public registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)I
    .locals 7
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    .line 6099
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkFactoryPermission()V

    .line 6100
    new-instance v6, Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 6101
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->nextNetworkProviderId()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;-><init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;ILandroid/os/IBinder$DeathRecipient;)V

    .line 6102
    .local v0, "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6103
    iget v1, v0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->providerId:I

    return v1
.end method

.method public registerNetworkProvider(Landroid/os/Messenger;Ljava/lang/String;)I
    .locals 7
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "name"    # Ljava/lang/String;

    .line 6127
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkFactoryOrSettingsPermission()V

    .line 6128
    new-instance v6, Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    .line 6129
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->nextNetworkProviderId()I

    move-result v4

    new-instance v5, Lcom/android/server/-$$Lambda$ConnectivityService$4mdI2BrJnxGXPEiesjVbm4BY2so;

    invoke-direct {v5, p0, p1}, Lcom/android/server/-$$Lambda$ConnectivityService$4mdI2BrJnxGXPEiesjVbm4BY2so;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$NetworkProviderInfo;-><init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;ILandroid/os/IBinder$DeathRecipient;)V

    .line 6131
    .local v0, "npi":Lcom/android/server/ConnectivityService$NetworkProviderInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6132
    iget v1, v0, Lcom/android/server/ConnectivityService$NetworkProviderInfo;->providerId:I

    return v1
.end method

.method public releaseNetworkRequest(Landroid/net/NetworkRequest;)V
    .locals 4
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .line 6092
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureNetworkRequestHasType(Landroid/net/NetworkRequest;)V

    .line 6093
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 6094
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    .line 6093
    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6095
    return-void
.end method

.method public releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .line 6007
    const-string v0, "PendingIntent cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6008
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 6009
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    .line 6008
    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6010
    return-void
.end method

.method public removeVpnAddress(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prefixLength"    # I

    .line 7941
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7942
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 7943
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 7944
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/connectivity/Vpn;->removeAddress(Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v1

    return v2

    .line 7945
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reportInetCondition(II)V
    .locals 3
    .param p1, "networkType"    # I
    .param p2, "percentage"    # I

    .line 4672
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4673
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_0

    return-void

    .line 4674
    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/16 v2, 0x32

    if-le p2, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/server/ConnectivityService;->reportNetworkConnectivity(Landroid/net/Network;Z)V

    .line 4675
    return-void
.end method

.method public reportNetworkConnectivity(Landroid/net/Network;Z)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "hasConnectivity"    # Z

    .line 4679
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 4680
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceInternetPermission()V

    .line 4681
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4682
    .local v0, "uid":I
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v1

    .line 4689
    .local v1, "connectivityInfo":I
    if-nez p1, :cond_0

    .line 4690
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    goto :goto_0

    .line 4692
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 4694
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :goto_0
    if-eqz v2, :cond_1

    .line 4695
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsHandler:Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 4696
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 4695
    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4701
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v4, 0x24

    .line 4702
    invoke-virtual {v3, v4, v0, v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 4701
    invoke-virtual {v3, v4}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4703
    return-void
.end method

.method public requestBandwidthUpdate(Landroid/net/Network;)Z
    .locals 7
    .param p1, "network"    # Landroid/net/Network;

    .line 5932
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    .line 5933
    const/4 v0, 0x0

    .line 5934
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 5935
    return v1

    .line 5937
    :cond_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5938
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;

    iget v4, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v0, v3

    .line 5939
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5940
    if-eqz v0, :cond_2

    .line 5941
    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x8100a

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 5942
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5943
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5944
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5945
    .local v4, "uidReqs":Ljava/lang/Integer;
    if-nez v4, :cond_1

    .line 5946
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v4, v1

    .line 5948
    :cond_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mBandwidthRequests:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v4, v5

    invoke-virtual {v1, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5949
    .end local v3    # "uid":I
    .end local v4    # "uidReqs":Ljava/lang/Integer;
    monitor-exit v2

    .line 5950
    return v6

    .line 5949
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 5952
    :cond_2
    return v1

    .line 5939
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;ILjava/lang/String;)Landroid/net/NetworkRequest;
    .locals 8
    .param p1, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "timeoutMs"    # I
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "legacyType"    # I
    .param p6, "callingPackageName"    # Ljava/lang/String;

    .line 5870
    const/4 v0, -0x1

    if-eq p5, v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkNetworkStackPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5871
    const/16 v0, 0x17

    invoke-direct {p0, v0, p6}, Lcom/android/server/ConnectivityService;->checkUnsupportedStartingFrom(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5872
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Insufficient permissions to specify legacy type"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5875
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5876
    .local v0, "callingUid":I
    if-nez p1, :cond_2

    .line 5877
    sget-object v1, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    goto :goto_1

    .line 5878
    :cond_2
    sget-object v1, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    :goto_1
    nop

    .line 5882
    .local v1, "type":Landroid/net/NetworkRequest$Type;
    sget-object v2, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    if-ne v1, v2, :cond_3

    .line 5883
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->createDefaultNetworkCapabilitiesForUid(I)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 5884
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAccessPermission()V

    goto :goto_2

    .line 5886
    :cond_3
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object p1, v2

    .line 5887
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceNetworkRequestPermissions(Landroid/net/NetworkCapabilities;)V

    .line 5891
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceMeteredApnPolicy(Landroid/net/NetworkCapabilities;)V

    .line 5893
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureRequestableCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 5894
    nop

    .line 5895
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 5894
    invoke-direct {p0, p1, v2, v0, p6}, Lcom/android/server/ConnectivityService;->ensureSufficientPermissionsForRequest(Landroid/net/NetworkCapabilities;IILjava/lang/String;)V

    .line 5901
    invoke-direct {p0, p1, v0, p6}, Lcom/android/server/ConnectivityService;->restrictRequestUidsForCallerAndSetRequestorInfo(Landroid/net/NetworkCapabilities;ILjava/lang/String;)V

    .line 5904
    if-ltz p3, :cond_5

    .line 5907
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->ensureValid(Landroid/net/NetworkCapabilities;)V

    .line 5909
    new-instance v2, Landroid/net/NetworkRequest;

    .line 5910
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->nextNetworkRequestId()I

    move-result v3

    invoke-direct {v2, p1, p5, v3, v1}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    .line 5911
    .local v2, "networkRequest":Landroid/net/NetworkRequest;
    new-instance v3, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-direct {v3, p0, p2, v2, p4}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;-><init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V

    .line 5912
    .local v3, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestNetwork for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 5914
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x13

    invoke-virtual {v4, v5, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5915
    if-lez p3, :cond_4

    .line 5916
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    int-to-long v6, p3

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5919
    :cond_4
    return-object v2

    .line 5905
    .end local v2    # "networkRequest":Landroid/net/NetworkRequest;
    .end local v3    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad timeout specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public requestRouteToHostAddress(I[B)Z
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "hostAddress"    # [B

    .line 2001
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->disallowedBecauseSystemCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2002
    return v1

    .line 2004
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceChangePermission()V

    .line 2005
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProtectedNetworks:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2006
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceConnectivityRestrictedNetworksPermission()V

    .line 2011
    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2015
    .local v0, "addr":Ljava/net/InetAddress;
    nop

    .line 2017
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRouteToHostAddress on invalid network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2019
    return v1

    .line 2022
    :cond_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->getNetworkForType(I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 2023
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_4

    .line 2024
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mLegacyTypeTracker:Lcom/android/server/ConnectivityService$LegacyTypeTracker;

    invoke-virtual {v3, p1}, Lcom/android/server/ConnectivityService$LegacyTypeTracker;->isTypeSupported(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestRouteToHostAddress on unsupported network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2027
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestRouteToHostAddress on down network: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2029
    :goto_0
    return v1

    .line 2033
    :cond_4
    monitor-enter v2

    .line 2034
    :try_start_1
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 2035
    .local v3, "netState":Landroid/net/NetworkInfo$DetailedState;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2037
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_6

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_6

    .line 2038
    sget-boolean v4, Lcom/android/server/ConnectivityService;->VDBG:Z

    if-eqz v4, :cond_5

    .line 2039
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestRouteToHostAddress on down network ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") - dropped netState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2043
    :cond_5
    return v1

    .line 2046
    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2047
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2051
    .local v4, "token":J
    :try_start_2
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2052
    :try_start_3
    iget-object v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 2053
    .local v6, "lp":Landroid/net/LinkProperties;
    iget-object v7, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    .line 2054
    .local v7, "netId":I
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2055
    :try_start_4
    invoke-direct {p0, v6, v0, v7, v1}, Lcom/android/server/ConnectivityService;->addLegacyRouteToHost(Landroid/net/LinkProperties;Ljava/net/InetAddress;II)Z

    move-result v8

    .line 2056
    .local v8, "ok":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "requestRouteToHostAddress ok="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2057
    nop

    .line 2059
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2057
    return v8

    .line 2054
    .end local v6    # "lp":Landroid/net/LinkProperties;
    .end local v7    # "netId":I
    .end local v8    # "ok":Z
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "uid":I
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "netState":Landroid/net/NetworkInfo$DetailedState;
    .end local v4    # "token":J
    .end local p0    # "this":Lcom/android/server/ConnectivityService;
    .end local p1    # "networkType":I
    .end local p2    # "hostAddress":[B
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2059
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "uid":I
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .restart local v3    # "netState":Landroid/net/NetworkInfo$DetailedState;
    .restart local v4    # "token":J
    .restart local p0    # "this":Lcom/android/server/ConnectivityService;
    .restart local p1    # "networkType":I
    .restart local p2    # "hostAddress":[B
    :catchall_1
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2060
    throw v6

    .line 2035
    .end local v1    # "uid":I
    .end local v3    # "netState":Landroid/net/NetworkInfo$DetailedState;
    .end local v4    # "token":J
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1

    .line 2012
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :catch_0
    move-exception v0

    .line 2013
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRouteToHostAddress got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V

    .line 2014
    return v1
.end method

.method public satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p1, "agentNc"    # Landroid/net/NetworkCapabilities;
    .param p2, "requestNc"    # Landroid/net/NetworkCapabilities;

    .line 8749
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->getIntSpecifier(Landroid/net/NetworkSpecifier;)I

    move-result v0

    if-gez v0, :cond_0

    .line 8750
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->satisfiesMobileNetworkDataCheck(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0

    .line 8752
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public sendConnectedBroadcast(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .line 2370
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2371
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p0, p1, v0}, Lcom/android/server/ConnectivityService;->sendGeneralBroadcast(Landroid/net/NetworkInfo;Ljava/lang/String;)V

    .line 2372
    return-void
.end method

.method protected sendLegacyNetworkBroadcast(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo$DetailedState;I)V
    .locals 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "type"    # I

    .line 7831
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 7832
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0, p3}, Landroid/net/NetworkInfo;->setType(I)V

    .line 7833
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p2, v1, :cond_0

    .line 7834
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 7835
    invoke-virtual {p0, v0}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    goto/16 :goto_1

    .line 7837
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 7838
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7839
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 7840
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const-string/jumbo v3, "networkType"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7841
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 7842
    const-string/jumbo v2, "isFailover"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7843
    iget-object v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/NetworkInfo;->setFailover(Z)V

    .line 7845
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7846
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "reason"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7848
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7849
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    const-string v4, "extraInfo"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7851
    :cond_3
    const/4 v2, 0x0

    .line 7852
    .local v2, "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget v4, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v4}, Lcom/android/server/connectivity/NetworkAgentInfo;->isSatisfyingRequest(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 7853
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 7854
    if-eqz v2, :cond_4

    .line 7855
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    const-string/jumbo v4, "otherNetwork"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 7858
    :cond_4
    const-string/jumbo v4, "noConnectivity"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7861
    :cond_5
    :goto_0
    iget v3, p0, Lcom/android/server/ConnectivityService;->mDefaultInetConditionPublished:I

    const-string v4, "inetCondition"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7863
    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 7864
    if-eqz v2, :cond_6

    .line 7865
    iget-object v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v3}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 7868
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "newDefaultAgent":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_6
    :goto_1
    return-void
.end method

.method public setAcceptPartialConnectivity(Landroid/net/Network;ZZ)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .line 3938
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackSettingsOrSetup()V

    .line 3939
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 3940
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v1

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v2

    .line 3939
    const/16 v3, 0x2c

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3941
    return-void
.end method

.method public setAcceptUnvalidated(Landroid/net/Network;ZZ)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "accept"    # Z
    .param p3, "always"    # Z

    .line 3931
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackSettingsOrSetup()V

    .line 3932
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    .line 3933
    invoke-static {p2}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v1

    invoke-static {p3}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v2

    .line 3932
    const/16 v3, 0x1c

    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3934
    return-void
.end method

.method public setAirplaneMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .line 5441
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceAirplaneModePermission()V

    .line 5442
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5444
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5445
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v3, "airplane_mode_on"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->encodeBool(Z)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5446
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5447
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5448
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5450
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5451
    nop

    .line 5452
    return-void

    .line 5450
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5451
    throw v2
.end method

.method public setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "lockdown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 5257
    .local p4, "lockdownWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceControlAlwaysOnVpnPermission()V

    .line 5258
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 5260
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5262
    :try_start_0
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5263
    monitor-exit v0

    return v2

    .line 5266
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 5267
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v1, :cond_1

    .line 5268
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " has no Vpn configuration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5269
    monitor-exit v0

    return v2

    .line 5271
    :cond_1
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p2, p3, p4, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;Landroid/security/KeyStore;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5272
    monitor-exit v0

    return v2

    .line 5274
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService;->startAlwaysOnVpn(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5275
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;ZLjava/util/List;Landroid/security/KeyStore;)Z

    .line 5276
    monitor-exit v0

    return v2

    .line 5278
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_3
    monitor-exit v0

    .line 5279
    const/4 v0, 0x1

    return v0

    .line 5278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAvoidUnvalidated(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 3945
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackSettingsOrSetup()V

    .line 3946
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3947
    return-void
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "proxyProperties"    # Landroid/net/ProxyInfo;

    .line 4778
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 4779
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/ProxyTracker;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 4780
    return-void
.end method

.method public setProvisioningNotificationVisible(ZILjava/lang/String;)V
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "networkType"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 5425
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceSettingsPermission()V

    .line 5426
    invoke-static {p2}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5427
    return-void

    .line 5429
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5432
    .local v0, "ident":J
    const v2, 0xfc00

    add-int/lit8 v3, p2, 0x1

    add-int/2addr v3, v2

    .line 5433
    .local v3, "id":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mNotifier:Lcom/android/server/connectivity/NetworkNotificationManager;

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/connectivity/NetworkNotificationManager;->setProvNotificationVisible(ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5435
    .end local v3    # "id":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5436
    nop

    .line 5437
    return-void

    .line 5435
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5436
    throw v2
.end method

.method public setSoftapSuspend(Z)Z
    .locals 8
    .param p1, "enable"    # Z

    .line 8821
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSoftapSuspend: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8822
    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isVerizonSku()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8823
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "only support on vzw sku"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8824
    return v1

    .line 8827
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 8828
    .local v4, "tetherIface":Ljava/lang/String;
    const-string/jumbo v5, "wlan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8830
    :try_start_0
    iget-object v5, p0, Lcom/android/server/ConnectivityService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v5, p1, v4}, Lcom/android/internal/net/IOemNetd;->setSoftapSuspend(ZLjava/lang/String;)V

    .line 8831
    sget-object v5, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSoftapSuspend on interface: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8835
    goto :goto_1

    .line 8832
    :catch_0
    move-exception v0

    .line 8833
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception while setSoftapSuspend:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V

    .line 8834
    return v1

    .line 8827
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "tetherIface":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8838
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .locals 4
    .param p1, "networks"    # [Landroid/net/Network;

    .line 7950
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 7952
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 7953
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 7954
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    move-result v2

    .line 7955
    .local v2, "success":Z
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7956
    if-eqz v2, :cond_0

    .line 7957
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v3, Lcom/android/server/-$$Lambda$ConnectivityService$6bEB7WFnOunsH4qwhZ_F6bf0Lb8;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$ConnectivityService$6bEB7WFnOunsH4qwhZ_F6bf0Lb8;-><init>(Lcom/android/server/ConnectivityService;)V

    invoke-virtual {v1, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    .line 7963
    :cond_0
    return v2

    .line 7955
    .end local v2    # "success":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setVpnPackageAuthorization(Ljava/lang/String;II)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "vpnType"    # I

    .line 4903
    invoke-direct {p0, p2}, Lcom/android/server/ConnectivityService;->enforceCrossUserPermission(I)V

    .line 4905
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4906
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 4907
    .local v1, "vpn":Lcom/android/server/connectivity/Vpn;
    if-eqz v1, :cond_0

    .line 4908
    invoke-virtual {v1, p1, p3}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(Ljava/lang/String;I)Z

    .line 4910
    .end local v1    # "vpn":Lcom/android/server/connectivity/Vpn;
    :cond_0
    monitor-exit v0

    .line 4911
    return-void

    .line 4910
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public shouldAvoidBadWifi()Z
    .locals 2

    .line 4166
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->checkNetworkStackPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4169
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    move-result v0

    return v0

    .line 4167
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "avoidBadWifi requires NETWORK_STACK permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public simulateDataStall(IJLandroid/net/Network;Landroid/os/PersistableBundle;)V
    .locals 4
    .param p1, "detectionMethod"    # I
    .param p2, "timestampMillis"    # J
    .param p4, "network"    # Landroid/net/Network;
    .param p5, "extras"    # Landroid/os/PersistableBundle;

    .line 8688
    const-string v0, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v1, "android.permission.NETWORK_STACK"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/ConnectivityService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 8690
    invoke-direct {p0, p4}, Lcom/android/server/ConnectivityService;->getNetworkCapabilitiesInternal(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 8691
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8695
    invoke-virtual {p0, p4}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 8696
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->creatorUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 8706
    new-instance v2, Landroid/net/DataStallReportParcelable;

    invoke-direct {v2}, Landroid/net/DataStallReportParcelable;-><init>()V

    .line 8707
    .local v2, "p":Landroid/net/DataStallReportParcelable;
    iput-wide p2, v2, Landroid/net/DataStallReportParcelable;->timestampMillis:J

    .line 8708
    iput p1, v2, Landroid/net/DataStallReportParcelable;->detectionMethod:I

    .line 8710
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->hasDataStallDetectionMethod(Landroid/net/DataStallReportParcelable;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8711
    const-string v3, "dnsConsecutiveTimeouts"

    invoke-virtual {p5, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/DataStallReportParcelable;->dnsConsecutiveTimeouts:I

    .line 8713
    :cond_0
    const/4 v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->hasDataStallDetectionMethod(Landroid/net/DataStallReportParcelable;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8714
    const-string/jumbo v3, "tcpPacketFailRate"

    invoke-virtual {p5, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/DataStallReportParcelable;->tcpPacketFailRate:I

    .line 8715
    const-string/jumbo v3, "tcpMetricsCollectionPeriodMillis"

    invoke-virtual {p5, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Landroid/net/DataStallReportParcelable;->tcpMetricsCollectionPeriodMillis:I

    .line 8719
    :cond_1
    iget v3, p4, Landroid/net/Network;->netId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/ConnectivityService;->notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;I)V

    .line 8720
    return-void

    .line 8697
    .end local v2    # "p":Landroid/net/DataStallReportParcelable;
    :cond_2
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Data Stall simulation is only possible for network creators"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8692
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_3
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Data Stall simluation is only possible for test networks"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startCaptivePortalApp(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 4058
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkStackOrSettingsPermission()V

    .line 4059
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    new-instance v1, Lcom/android/server/-$$Lambda$ConnectivityService$nuaE_gOVb4npt3obpt7AoWH3OBo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$ConnectivityService$nuaE_gOVb4npt3obpt7AoWH3OBo;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    .line 4065
    return-void
.end method

.method public startCaptivePortalAppInternal(Landroid/net/Network;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "appExtras"    # Landroid/os/Bundle;

    .line 4077
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4088
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4089
    .local v1, "token":J
    const-string v3, ""

    .line 4090
    .local v3, "country":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_0

    .line 4091
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    .line 4093
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4094
    sget-boolean v4, Lcom/android/server/ConnectivityService;->mIsH2Version:Z

    if-nez v4, :cond_2

    const-string v4, "CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 4097
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.conn.CAPTIVE_PORTAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "appIntent":Landroid/content/Intent;
    goto :goto_1

    .line 4095
    .end local v4    # "appIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.conn.CAPTIVE_PORTAL_OP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4100
    .restart local v4    # "appIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {v4, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4101
    new-instance v5, Landroid/net/CaptivePortal;

    new-instance v6, Lcom/android/server/ConnectivityService$CaptivePortalImpl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v7}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;Lcom/android/server/ConnectivityService$1;)V

    .line 4102
    invoke-virtual {v6}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    .line 4101
    const-string v6, "android.net.extra.CAPTIVE_PORTAL"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4103
    const/high16 v5, 0x10400000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4105
    new-instance v5, Lcom/android/server/-$$Lambda$ConnectivityService$fBQzRY85gy75jpL8zm68U3BxgdA;

    invoke-direct {v5, p0, v4}, Lcom/android/server/-$$Lambda$ConnectivityService$fBQzRY85gy75jpL8zm68U3BxgdA;-><init>(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    invoke-static {v5}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 4107
    return-void
.end method

.method public startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .locals 5
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 5007
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5008
    .local v0, "user":I
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 5009
    .local v1, "egress":Landroid/net/LinkProperties;
    if-eqz v1, :cond_0

    .line 5012
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v2

    .line 5013
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 5014
    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Vpn;

    iget-object v4, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V

    .line 5015
    monitor-exit v2

    .line 5016
    return-void

    .line 5015
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5010
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing active network connection"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startNattKeepalive(Landroid/net/Network;ILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "intervalSeconds"    # I
    .param p3, "cb"    # Landroid/net/ISocketKeepaliveCallback;
    .param p4, "srcAddr"    # Ljava/lang/String;
    .param p5, "srcPort"    # I
    .param p6, "dstAddr"    # Ljava/lang/String;

    .line 7988
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceKeepalivePermission()V

    .line 7989
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 7990
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 7989
    const/4 v2, 0x0

    const/16 v8, 0x1194

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;ILjava/lang/String;I)V

    .line 7993
    return-void
.end method

.method public startNattKeepaliveWithFd(Landroid/net/Network;Ljava/io/FileDescriptor;IILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "resourceId"    # I
    .param p4, "intervalSeconds"    # I
    .param p5, "cb"    # Landroid/net/ISocketKeepaliveCallback;
    .param p6, "srcAddr"    # Ljava/lang/String;
    .param p7, "dstAddr"    # Ljava/lang/String;

    .line 7999
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 8000
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 7999
    const/16 v9, 0x1194

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/connectivity/KeepaliveTracker;->startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;IILandroid/net/ISocketKeepaliveCallback;Ljava/lang/String;Ljava/lang/String;I)V

    .line 8003
    return-void
.end method

.method public startOrGetTestNetworkService()Landroid/os/IBinder;
    .locals 4

    .line 8255
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mTNSLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8256
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 8258
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTNS:Lcom/android/server/TestNetworkService;

    if-nez v1, :cond_0

    .line 8259
    new-instance v1, Lcom/android/server/TestNetworkService;

    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-direct {v1, v2, v3}, Lcom/android/server/TestNetworkService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    iput-object v1, p0, Lcom/android/server/ConnectivityService;->mTNS:Lcom/android/server/TestNetworkService;

    .line 8262
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mTNS:Lcom/android/server/TestNetworkService;

    monitor-exit v0

    return-object v1

    .line 8263
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startTcpKeepalive(Landroid/net/Network;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "intervalSeconds"    # I
    .param p4, "cb"    # Landroid/net/ISocketKeepaliveCallback;

    .line 8008
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceKeepalivePermission()V

    .line 8009
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mKeepaliveTracker:Lcom/android/server/connectivity/KeepaliveTracker;

    .line 8010
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 8009
    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/connectivity/KeepaliveTracker;->startTcpKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/io/FileDescriptor;ILandroid/net/ISocketKeepaliveCallback;)V

    .line 8011
    return-void
.end method

.method public startVpnProfile(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4978
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4979
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4980
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->throwIfLockdownEnabled()V

    .line 4981
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    iget-object v3, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/connectivity/Vpn;->startVpnProfile(Ljava/lang/String;Landroid/security/KeyStore;)V

    .line 4982
    monitor-exit v1

    .line 4983
    return-void

    .line 4982
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stopKeepalive(Landroid/net/Network;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "slot"    # I

    .line 8015
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const v1, 0x8100c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8017
    return-void
.end method

.method public stopVpnProfile(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4995
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4996
    .local v0, "user":I
    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v1

    .line 4997
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/Vpn;->stopVpnProfile(Ljava/lang/String;)V

    .line 4998
    monitor-exit v1

    .line 4999
    return-void

    .line 4998
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public systemReady()V
    .locals 3

    .line 2467
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mPermissionMonitor:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-virtual {v0}, Lcom/android/server/connectivity/PermissionMonitor;->startMonitoring()V

    .line 2468
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->loadGlobalProxy()V

    .line 2469
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->registerNetdEventCallback()V

    .line 2471
    monitor-enter p0

    .line 2472
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/ConnectivityService;->mSystemReady:Z

    .line 2473
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2474
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConnectivityService;->mInitialBroadcast:Landroid/content/Intent;

    .line 2477
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2481
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService;->updateLockdownVpn()Z

    .line 2484
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2486
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2487
    return-void

    .line 2477
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterConnectivityDiagnosticsCallback(Landroid/net/IConnectivityDiagnosticsCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/net/IConnectivityDiagnosticsCallback;

    .line 8676
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsHandler:Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    .line 8680
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 8677
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 8676
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8683
    return-void
.end method

.method public unregisterNetworkFactory(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 6143
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->unregisterNetworkProvider(Landroid/os/Messenger;)V

    .line 6144
    return-void
.end method

.method public unregisterNetworkProvider(Landroid/os/Messenger;)V
    .locals 2
    .param p1, "messenger"    # Landroid/os/Messenger;

    .line 6137
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->enforceNetworkFactoryOrSettingsPermission()V

    .line 6138
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6139
    return-void
.end method

.method updateAlwaysOnNetworks()V
    .locals 2

    .line 1317
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendEmptyMessage(I)Z

    .line 1318
    return-void
.end method

.method public updateDnsForInstantapp()V
    .locals 4

    .line 8980
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v1, "OPInstantLocalService->updateDnsForInstantapp +++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8981
    invoke-direct {p0}, Lcom/android/server/ConnectivityService;->getDefaultNetwork()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 8982
    .local v0, "defaultNai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    .line 8983
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "OPInstantLocalService->updateDnses +++"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8984
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->updateDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;I)V

    .line 8986
    :cond_0
    return-void
.end method

.method public updateLockdownVpn()Z
    .locals 14

    .line 5146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    .line 5147
    sget-object v0, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "Lockdown VPN only available to AID_SYSTEM"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5148
    return v1

    .line 5151
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5153
    :try_start_0
    invoke-static {}, Lcom/android/server/net/LockdownVpnTracker;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/ConnectivityService;->mLockdownEnabled:Z

    .line 5154
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 5155
    iget-object v2, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "LOCKDOWN_VPN"

    invoke-virtual {v2, v5}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v2

    .line 5156
    .local v2, "profileTag":[B
    if-nez v2, :cond_1

    .line 5157
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Lockdown VPN configured but cannot be read from keystore"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5158
    monitor-exit v0

    return v1

    .line 5160
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    .line 5161
    .local v5, "profileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ConnectivityService;->mKeyStore:Landroid/security/KeyStore;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5162
    invoke-virtual {v6, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v6

    .line 5161
    invoke-static {v5, v6}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v6

    .line 5163
    .local v6, "profile":Lcom/android/internal/net/VpnProfile;
    if-nez v6, :cond_2

    .line 5164
    sget-object v1, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lockdown VPN configured invalid profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5165
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 5166
    monitor-exit v0

    return v3

    .line 5168
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5169
    .local v4, "user":I
    iget-object v7, p0, Lcom/android/server/ConnectivityService;->mVpns:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Vpn;

    move-object v13, v7

    .line 5170
    .local v13, "vpn":Lcom/android/server/connectivity/Vpn;
    if-nez v13, :cond_3

    .line 5171
    sget-object v3, Lcom/android/server/ConnectivityService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not ready yet. Skipping lockdown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5172
    monitor-exit v0

    return v1

    .line 5174
    :cond_3
    new-instance v1, Lcom/android/server/net/LockdownVpnTracker;

    iget-object v8, p0, Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    move-object v7, v1

    move-object v9, p0

    move-object v11, v13

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    invoke-direct {p0, v1}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 5175
    .end local v2    # "profileTag":[B
    .end local v4    # "user":I
    .end local v5    # "profileName":Ljava/lang/String;
    .end local v6    # "profile":Lcom/android/internal/net/VpnProfile;
    .end local v13    # "vpn":Lcom/android/server/connectivity/Vpn;
    goto :goto_0

    .line 5176
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/ConnectivityService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 5178
    :goto_0
    monitor-exit v0

    .line 5180
    return v3

    .line 5178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updatePrivateDnsSettings()V
    .locals 2

    .line 1323
    iget-object v0, p0, Lcom/android/server/ConnectivityService;->mHandler:Lcom/android/server/ConnectivityService$InternalHandler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendEmptyMessage(I)Z

    .line 1324
    return-void
.end method
