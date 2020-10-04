.class public Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
.super Ljava/lang/Object;
.source "UpstreamNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;,
        Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;
    }
.end annotation


# static fields
.field private static final CALLBACK_DEFAULT_INTERNET:I = 0x2

.field private static final CALLBACK_LISTEN_ALL:I = 0x1

.field private static final CALLBACK_MOBILE_REQUEST:I = 0x3

.field private static final DBG:Z = false

.field public static final EVENT_ON_CAPABILITIES:I = 0x1

.field public static final EVENT_ON_LINKPROPERTIES:I = 0x2

.field public static final EVENT_ON_LOST:I = 0x3

.field public static final NOTIFY_LOCAL_PREFIXES:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultInternetNetwork:Landroid/net/Network;

.field private mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mDunRequired:Z

.field private mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDefaultCellularUpstream:Z

.field private mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mLocalPrefixes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTarget:Lcom/android/internal/util/StateMachine;

.field private mTetheringUpstreamNetwork:Landroid/net/Network;

.field private final mWhat:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const-class v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "tgt"    # Lcom/android/internal/util/StateMachine;
    .param p3, "log"    # Landroid/net/util/SharedLog;
    .param p4, "what"    # I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    .line 109
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    .line 112
    sget-object v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    .line 113
    iput p4, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mWhat:I

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mIsDefaultCellularUpstream:Z

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V
    .locals 1
    .param p1, "cm"    # Landroid/net/ConnectivityManager;
    .param p2, "tgt"    # Lcom/android/internal/util/StateMachine;
    .param p3, "log"    # Landroid/net/util/SharedLog;
    .param p4, "what"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 121
    const/4 v0, 0x0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V

    .line 122
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # Landroid/net/Network;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleAvailable(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # Landroid/net/Network;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLost(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)Landroid/net/Network;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # Landroid/net/Network;

    .line 74
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/NetworkCapabilities;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/NetworkCapabilities;

    .line 74
    invoke-static {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellular(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    .line 74
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mIsDefaultCellularUpstream:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # Z

    .line 74
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mIsDefaultCellularUpstream:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)Lcom/android/server/connectivity/tethering/EntitlementManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    .line 74
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # Landroid/net/NetworkCapabilities;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # Landroid/net/Network;
    .param p2, "x2"    # Landroid/net/LinkProperties;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    .line 74
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->recomputeLocalPrefixes()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # Landroid/net/Network;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleSuspended(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .param p1, "x1"    # Landroid/net/Network;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->handleResumed(Landroid/net/Network;)V

    return-void
.end method

.method private static allLocalPrefixes(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/NetworkState;",
            ">;)",
            "Ljava/util/HashSet<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 538
    .local p0, "netStates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/net/NetworkState;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 540
    .local v0, "prefixSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkState;

    .line 541
    .local v2, "ns":Landroid/net/NetworkState;
    iget-object v3, v2, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 542
    .local v3, "lp":Landroid/net/LinkProperties;
    if-nez v3, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    invoke-static {v3}, Landroid/net/util/PrefixUtils;->localPrefixesFrom(Landroid/net/LinkProperties;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 544
    .end local v2    # "ns":Landroid/net/NetworkState;
    .end local v3    # "lp":Landroid/net/LinkProperties;
    goto :goto_0

    .line 546
    :cond_1
    return-object v0
.end method

.method private cm()Landroid/net/ConnectivityManager;
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private findFirstAvailableUpstreamByType(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;
    .locals 9
    .param p3, "isCellularUpstreamPermitted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/NetworkState;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;"
        }
    .end annotation

    .line 497
    .local p1, "netStates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/net/NetworkState;>;"
    .local p2, "preferredTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$1;)V

    .line 499
    .local v0, "result":Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 502
    .local v2, "type":I
    :try_start_0
    invoke-static {v2}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 507
    .local v3, "nc":Landroid/net/NetworkCapabilities;
    nop

    .line 508
    if-nez p3, :cond_0

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellular(Landroid/net/NetworkCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    goto :goto_0

    .line 512
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    .line 514
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkState;

    .line 521
    .local v5, "value":Landroid/net/NetworkState;
    const/4 v6, 0x4

    if-eq v2, v6, :cond_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v2, v6, :cond_2

    :cond_1
    iget-object v6, v5, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 522
    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 523
    iput v2, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    .line 524
    iput-object v5, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->ns:Landroid/net/NetworkState;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 525
    return-object v0

    .line 530
    :cond_2
    nop

    .line 531
    .end local v5    # "value":Landroid/net/NetworkState;
    goto :goto_1

    .line 527
    .restart local v5    # "value":Landroid/net/NetworkState;
    :catch_0
    move-exception v6

    .line 528
    .local v6, "npe":Ljava/lang/NullPointerException;
    sget-object v7, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    const-string v8, "Null pointer exception in getActiveNetworkInfo"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 529
    goto :goto_1

    .line 532
    .end local v2    # "type":I
    .end local v3    # "nc":Landroid/net/NetworkCapabilities;
    .end local v5    # "value":Landroid/net/NetworkState;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :cond_3
    goto :goto_0

    .line 503
    .restart local v2    # "type":I
    :catch_1
    move-exception v3

    .line 504
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No NetworkCapabilities mapping for legacy type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-static {v2}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 504
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    goto :goto_0

    .line 534
    .end local v2    # "type":I
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_4
    return-object v0
.end method

.method private static findFirstDunNetwork(Ljava/lang/Iterable;)Landroid/net/NetworkState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Landroid/net/NetworkState;",
            ">;)",
            "Landroid/net/NetworkState;"
        }
    .end annotation

    .line 574
    .local p0, "netStates":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Landroid/net/NetworkState;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkState;

    .line 575
    .local v1, "ns":Landroid/net/NetworkState;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellular(Landroid/net/NetworkState;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->hasCapability(Landroid/net/NetworkState;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 576
    .end local v1    # "ns":Landroid/net/NetworkState;
    :cond_0
    goto :goto_0

    .line 578
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSignalStrength(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .locals 1
    .param p0, "nc"    # Landroid/net/NetworkCapabilities;

    .line 550
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 551
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 550
    :cond_1
    :goto_0
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method private handleAvailable(Landroid/net/Network;)V
    .locals 9
    .param p1, "network"    # Landroid/net/Network;

    .line 291
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v8, Landroid/net/NetworkState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method private handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 10
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 326
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    .line 327
    .local v0, "prev":Landroid/net/NetworkState;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v9, Landroid/net/NetworkState;

    const/4 v3, 0x0

    iget-object v5, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    .line 344
    return-void

    .line 331
    :cond_1
    :goto_0
    return-void
.end method

.method private handleLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 366
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    return-void

    .line 379
    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    .line 380
    return-void
.end method

.method private handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 11
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newNc"    # Landroid/net/NetworkCapabilities;

    .line 298
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    .line 299
    .local v0, "prev":Landroid/net/NetworkState;
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v1

    .line 314
    .local v1, "newSignal":I
    iget-object v3, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->getSignalStrength(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "prevSignal":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string/jumbo v6, "upstream network signal strength: %s -> %s"

    invoke-virtual {v4, v6, v5}, Landroid/net/util/SharedLog;->logf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    .end local v1    # "newSignal":I
    .end local v3    # "prevSignal":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    new-instance v10, Landroid/net/NetworkState;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v3 .. v9}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-direct {p0, v2, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILandroid/net/Network;)V

    .line 323
    return-void

    .line 303
    :cond_2
    :goto_0
    return-void
.end method

.method private handleResumed(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 352
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESUMED current upstream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private handleSuspended(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 347
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SUSPENDED current upstream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private static hasCapability(Landroid/net/NetworkState;I)Z
    .locals 1
    .param p0, "ns"    # Landroid/net/NetworkState;
    .param p1, "netCap"    # I

    .line 564
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 565
    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 564
    :goto_0
    return v0
.end method

.method private static isCellular(Landroid/net/NetworkCapabilities;)Z
    .locals 2
    .param p0, "nc"    # Landroid/net/NetworkCapabilities;

    .line 559
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    .line 560
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 559
    :goto_0
    return v0
.end method

.method private static isCellular(Landroid/net/NetworkState;)Z
    .locals 1
    .param p0, "ns"    # Landroid/net/NetworkState;

    .line 555
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellular(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCellularUpstreamPermitted()Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isCellularUpstreamPermitted()Z

    move-result v0

    return v0

    .line 286
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isNetworkUsableAndNotCellular(Landroid/net/NetworkState;)Z
    .locals 1
    .param p0, "ns"    # Landroid/net/NetworkState;

    .line 569
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 570
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellular(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 569
    :goto_0
    return v0
.end method

.method private notifyTarget(ILandroid/net/Network;)V
    .locals 1
    .param p1, "which"    # I
    .param p2, "network"    # Landroid/net/Network;

    .line 482
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    .line 483
    return-void
.end method

.method private notifyTarget(ILjava/lang/Object;)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTarget:Lcom/android/internal/util/StateMachine;

    iget v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mWhat:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 487
    return-void
.end method

.method private recomputeLocalPrefixes()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->allLocalPrefixes(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 384
    .local v0, "localPrefixes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/IpPrefix;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    .line 386
    const/16 v1, 0xa

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->notifyTarget(ILjava/lang/Object;)V

    .line 388
    :cond_0
    return-void
.end method

.method private releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/net/ConnectivityManager$NetworkCallback;

    .line 478
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 479
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPreferredUpstream()Landroid/net/NetworkState;
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultInternetNetwork:Landroid/net/Network;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 260
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    goto :goto_0

    .line 261
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 262
    .local v0, "dfltState":Landroid/net/NetworkState;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isNetworkUsableAndNotCellular(Landroid/net/NetworkState;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellularUpstreamPermitted()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 266
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-nez v1, :cond_3

    return-object v0

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->findFirstDunNetwork(Ljava/lang/Iterable;)Landroid/net/NetworkState;

    move-result-object v1

    return-object v1
.end method

.method public getLocalPrefixes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLocalPrefixes:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public mobileNetworkRequested()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerMobileNetworkRequest()V
    .locals 7

    .line 182
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellularUpstreamPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "registerMobileNetworkRequest() is not permitted"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    .line 185
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "registerMobileNetworkRequest() already registered"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 189
    return-void

    .line 194
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    :goto_0
    move v5, v0

    .line 196
    .local v5, "legacyType":I
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 197
    invoke-static {v5}, Landroid/net/ConnectivityManager;->networkCapabilitiesForType(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->setCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 202
    .local v0, "mobileUpstreamRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 207
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requesting mobile upstream network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;IILandroid/os/Handler;)V

    .line 210
    return-void
.end method

.method public releaseMobileNetworkRequest()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 217
    return-void
.end method

.method public selectPreferredUpstreamType(Ljava/lang/Iterable;)Landroid/net/NetworkState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkState;"
        }
    .end annotation

    .line 225
    .local p1, "preferredTypes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    .line 226
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellularUpstreamPermitted()Z

    move-result v1

    .line 225
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->findFirstAvailableUpstreamByType(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;

    move-result-object v0

    .line 228
    .local v0, "typeStatePair":Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preferred upstream type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    invoke-static {v3}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 230
    iget v1, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    goto :goto_0

    .line 236
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mIsDefaultCellularUpstream:Z

    if-nez v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->maybeRunProvisioning()V

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    .line 241
    goto :goto_0

    .line 245
    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->isCellularUpstreamPermitted()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    .line 254
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->ns:Landroid/net/NetworkState;

    return-object v1
.end method

.method public setCurrentUpstream(Landroid/net/Network;)V
    .locals 0
    .param p1, "upstream"    # Landroid/net/Network;

    .line 274
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    .line 275
    return-void
.end method

.method public startObserveAllNetworks()V
    .locals 4

    .line 150
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->stop()V

    .line 152
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 153
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 154
    .local v0, "listenAllRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 155
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 156
    return-void
.end method

.method public startTrackDefaultNetwork(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/tethering/EntitlementManager;)V
    .locals 4
    .param p1, "defaultNetworkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "entitle"    # Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 139
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Landroid/net/NetworkRequest;

    invoke-direct {v0, p1}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkRequest;)V

    .line 141
    .local v0, "trackDefaultRequest":Landroid/net/NetworkRequest;
    new-instance v1, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;-><init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 142
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->cm()Landroid/net/ConnectivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 144
    .end local v0    # "trackDefaultRequest":Landroid/net/NetworkRequest;
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    if-nez v0, :cond_1

    .line 145
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    .line 147
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    .line 161
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mListenAllCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 164
    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mTetheringUpstreamNetwork:Landroid/net/Network;

    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 166
    return-void
.end method

.method public updateMobileRequiresDun(Z)V
    .locals 2
    .param p1, "dunRequired"    # Z

    .line 169
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 170
    .local v0, "valueChanged":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mDunRequired:Z

    .line 171
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->mobileNetworkRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->releaseMobileNetworkRequest()V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    .line 175
    :cond_1
    return-void
.end method
