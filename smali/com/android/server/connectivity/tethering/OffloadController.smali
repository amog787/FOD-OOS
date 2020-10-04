.class public Lcom/android/server/connectivity/tethering/OffloadController;
.super Ljava/lang/Object;
.source "OffloadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;,
        Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;
    }
.end annotation


# static fields
.field private static final ANYIP:Ljava/lang/String; = "0.0.0.0"

.field private static final DBG:Z = false

.field private static final EMPTY_STATS:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfigInitialized:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mControlInitialized:Z

.field private final mDownstreams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mExemptPrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

.field private mInterfaceQuotas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLocalPrefixStrs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mNatUpdateCallbacksReceived:I

.field private mNatUpdateNetlinkErrors:I

.field private final mNms:Landroid/os/INetworkManagementService;

.field private final mStatsProvider:Landroid/net/ITetheringStatsProvider;

.field private mUpstreamLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController;->TAG:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/tethering/OffloadController;->EMPTY_STATS:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;Landroid/content/ContentResolver;Landroid/os/INetworkManagementService;Landroid/net/util/SharedLog;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "hwi"    # Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "nms"    # Landroid/os/INetworkManagementService;
    .param p5, "log"    # Landroid/net/util/SharedLog;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mInterfaceQuotas:Ljava/util/HashMap;

    .line 114
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    .line 116
    iput-object p3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mContentResolver:Landroid/content/ContentResolver;

    .line 117
    iput-object p4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNms:Landroid/os/INetworkManagementService;

    .line 118
    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;-><init>(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$1;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mStatsProvider:Landroid/net/ITetheringStatsProvider;

    .line 119
    sget-object v0, Lcom/android/server/connectivity/tethering/OffloadController;->TAG:Ljava/lang/String;

    invoke-virtual {p5, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mExemptPrefixes:Ljava/util/Set;

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNms:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mStatsProvider:Landroid/net/ITetheringStatsProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot register offload stats provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/tethering/OffloadController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;

    .line 71
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;

    .line 71
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;

    .line 71
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;

    .line 71
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mInterfaceQuotas:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateDataLimit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/net/util/SharedLog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;

    .line 71
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;

    .line 71
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForAllUpstreams()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;

    .line 71
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->forceTetherStatsPoll()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;
    .param p1, "x1"    # Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;

    .line 71
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->pushAllDownstreamState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->pushUpstreamParameters(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;

    .line 71
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForCurrentUpstream()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/tethering/OffloadController;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/tethering/OffloadController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .line 71
    invoke-direct/range {p0 .. p5}, Lcom/android/server/connectivity/tethering/OffloadController;->updateNatTimeout(ILjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z
    .locals 4
    .param p1, "how"    # Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    .line 503
    sget-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->FORCE:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 504
    .local v0, "force":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mExemptPrefixes:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/tethering/OffloadController;->computeLocalPrefixStrings(Ljava/util/Set;Landroid/net/LinkProperties;)Ljava/util/Set;

    move-result-object v2

    .line 506
    .local v2, "localPrefixStrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 508
    :cond_1
    iput-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    .line 509
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setLocalPrefixes(Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method private static computeLocalPrefixStrings(Ljava/util/Set;Landroid/net/LinkProperties;)Ljava/util/Set;
    .locals 6
    .param p1, "upstreamLinkProperties"    # Landroid/net/LinkProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 516
    .local p0, "localPrefixes":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 527
    .local v0, "prefixSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    if-eqz p1, :cond_2

    .line 528
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 529
    .local v2, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 531
    .local v3, "ip":Ljava/net/InetAddress;
    instance-of v4, v3, Ljava/net/Inet6Address;

    if-nez v4, :cond_1

    goto :goto_0

    .line 532
    :cond_1
    new-instance v4, Landroid/net/IpPrefix;

    const/16 v5, 0x80

    invoke-direct {v4, v3, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v2    # "linkAddr":Landroid/net/LinkAddress;
    .end local v3    # "ip":Ljava/net/InetAddress;
    goto :goto_0

    .line 536
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 537
    .local v1, "localPrefixStrs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    .local v3, "pfx":Landroid/net/IpPrefix;
    invoke-virtual {v3}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 538
    .end local v3    # "pfx":Landroid/net/IpPrefix;
    :cond_3
    return-object v1
.end method

.method private static connectionTimeoutUpdateSecondsFor(I)I
    .locals 1
    .param p0, "proto"    # I

    .line 655
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne p0, v0, :cond_0

    .line 657
    const v0, 0x69780

    return v0

    .line 660
    :cond_0
    const/16 v0, 0xb4

    return v0
.end method

.method private currentUpstreamInterface()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 299
    :goto_0
    return-object v0
.end method

.method private forceTetherStatsPoll()V
    .locals 4

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNms:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mStatsProvider:Landroid/net/ITetheringStatsProvider;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot report data limit reached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 359
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private isOffloadDisabled()Z
    .locals 3

    .line 437
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->getDefaultTetherOffloadDisabled()I

    move-result v0

    .line 438
    .local v0, "defaultDisposition":I
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "tether_offload_disabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private maybeUpdateDataLimit(Ljava/lang/String;)Z
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 327
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mInterfaceQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 332
    .local v0, "limit":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 333
    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setDataLimit(Ljava/lang/String;J)Z

    move-result v1

    return v1

    .line 328
    .end local v0    # "limit":Ljava/lang/Long;
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private maybeUpdateStats(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->getForwardedStats(Ljava/lang/String;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    move-result-object v0

    .line 316
    .local v0, "diff":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    .line 317
    .local v1, "base":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->add(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;)V

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-void
.end method

.method private static parseIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p0, "addrString"    # Ljava/lang/String;

    .line 623
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 630
    .local v0, "ip":Ljava/net/InetAddress;
    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    .line 631
    move-object v1, v0

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 630
    .end local v0    # "ip":Ljava/net/InetAddress;
    :cond_0
    goto :goto_0

    .line 633
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 634
    const/4 v0, 0x0

    return-object v0
.end method

.method private static protoNameFor(I)Ljava/lang/String;
    .locals 1
    .param p0, "proto"    # I

    .line 639
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p0, v0, :cond_0

    .line 640
    const-string v0, "UDP"

    return-object v0

    .line 641
    :cond_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne p0, v0, :cond_1

    .line 642
    const-string v0, "TCP"

    return-object v0

    .line 644
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private pushAllDownstreamState()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 420
    .local v1, "lp":Landroid/net/LinkProperties;
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->pushDownstreamState(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 421
    .end local v1    # "lp":Landroid/net/LinkProperties;
    goto :goto_0

    .line 422
    :cond_0
    return-void
.end method

.method private pushDownstreamState(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .locals 7
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 396
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "ifname":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 399
    .local v1, "oldRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    :goto_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v2

    .line 402
    .local v2, "newRoutes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 403
    .local v4, "ri":Landroid/net/RouteInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/OffloadController;->shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 404
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 405
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->removeDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 407
    .end local v4    # "ri":Landroid/net/RouteInfo;
    :cond_2
    goto :goto_1

    .line 410
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 411
    .restart local v4    # "ri":Landroid/net/RouteInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/tethering/OffloadController;->shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 412
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 413
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->addDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 415
    .end local v4    # "ri":Landroid/net/RouteInfo;
    :cond_5
    goto :goto_2

    .line 416
    :cond_6
    return-void
.end method

.method private pushUpstreamParameters(Ljava/lang/String;)Z
    .locals 9
    .param p1, "prevUpstream"    # Ljava/lang/String;

    .line 443
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "iface":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    const-string v3, "0.0.0.0"

    const-string v4, ""

    invoke-virtual {v1, v4, v3, v3, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    .line 449
    .local v1, "rval":Z
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    .line 450
    return v1

    .line 457
    .end local v1    # "rval":Z
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v1, "v6gateways":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 459
    .local v3, "v4addr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 461
    .local v4, "v4gateway":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 462
    .local v6, "ip":Ljava/net/InetAddress;
    instance-of v7, v6, Ljava/net/Inet4Address;

    if-eqz v7, :cond_1

    .line 463
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 464
    goto :goto_1

    .line 466
    .end local v6    # "ip":Ljava/net/InetAddress;
    :cond_1
    goto :goto_0

    .line 469
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 470
    .local v6, "ri":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 472
    :cond_3
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 473
    .local v7, "gateway":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 474
    move-object v4, v7

    goto :goto_3

    .line 475
    :cond_4
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 476
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .end local v6    # "ri":Landroid/net/RouteInfo;
    .end local v7    # "gateway":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_2

    .line 480
    :cond_6
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    .line 481
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, v1

    .line 480
    :goto_4
    invoke-virtual {v5, v0, v3, v4, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v2

    .line 483
    .local v2, "success":Z
    if-nez v2, :cond_8

    .line 484
    return v2

    .line 488
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    .line 491
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateDataLimit(Ljava/lang/String;)Z

    move-result v2

    .line 492
    if-nez v2, :cond_9

    .line 495
    iget-object v5, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting data limit for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " failed, disabling offload."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    .line 499
    :cond_9
    return v2
.end method

.method private static shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z
    .locals 1
    .param p0, "route"    # Landroid/net/RouteInfo;

    .line 543
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 545
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private started()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mControlInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateNatTimeout(ILjava/lang/String;ILjava/lang/String;I)V
    .locals 18
    .param p1, "proto"    # I
    .param p2, "srcAddr"    # Ljava/lang/String;
    .param p3, "srcPort"    # I
    .param p4, "dstAddr"    # Ljava/lang/String;
    .param p5, "dstPort"    # I

    .line 571
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/tethering/OffloadController;->protoNameFor(I)Ljava/lang/String;

    move-result-object v4

    .line 572
    .local v4, "protoName":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 573
    iget-object v0, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown NAT update callback protocol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 574
    return-void

    .line 577
    :cond_0
    move/from16 v6, p1

    invoke-static/range {p2 .. p2}, Lcom/android/server/connectivity/tethering/OffloadController;->parseIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v5

    .line 578
    .local v5, "src":Ljava/net/Inet4Address;
    const-string v0, "Failed to parse IPv4 address: "

    if-nez v5, :cond_1

    .line 579
    iget-object v7, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 580
    return-void

    .line 583
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 584
    iget-object v0, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid src port: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 585
    return-void

    .line 588
    :cond_2
    move/from16 v13, p3

    invoke-static/range {p4 .. p4}, Lcom/android/server/connectivity/tethering/OffloadController;->parseIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v14

    .line 589
    .local v14, "dst":Ljava/net/Inet4Address;
    if-nez v14, :cond_3

    .line 590
    iget-object v7, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 591
    return-void

    .line 594
    :cond_3
    invoke-static/range {p5 .. p5}, Landroid/net/util/IpUtils;->isValidUdpOrTcpPort(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 595
    iget-object v0, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid dst port: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p5

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 596
    return-void

    .line 599
    :cond_4
    move/from16 v15, p5

    iget v0, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    .line 600
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v0, v7

    aput-object v2, v0, v16

    const/4 v7, 0x2

    .line 601
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x3

    aput-object v3, v0, v7

    const/4 v7, 0x4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v7

    .line 600
    const-string v7, "%s (%s, %s) -> (%s, %s)"

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 606
    .local v12, "natDescription":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/connectivity/tethering/OffloadController;->connectionTimeoutUpdateSecondsFor(I)I

    move-result v17

    .line 607
    .local v17, "timeoutSec":I
    move/from16 v7, p1

    move-object v8, v5

    move/from16 v9, p3

    move-object v10, v14

    move/from16 v11, p5

    move-object v2, v12

    .end local v12    # "natDescription":Ljava/lang/String;
    .local v2, "natDescription":Ljava/lang/String;
    move/from16 v12, v17

    invoke-static/range {v7 .. v12}, Landroid/net/netlink/ConntrackMessage;->newIPv4TimeoutUpdateRequest(ILjava/net/Inet4Address;ILjava/net/Inet4Address;II)[B

    move-result-object v7

    .line 611
    .local v7, "msg":[B
    :try_start_0
    sget v0, Landroid/system/OsConstants;->NETLINK_NETFILTER:I

    invoke-static {v0, v7}, Landroid/net/netlink/NetlinkSocket;->sendOneShotKernelMessage(I[B)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Landroid/system/ErrnoException;
    iget v8, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    .line 614
    iget-object v8, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error updating NAT conntrack entry >"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "<: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", msg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-static {v7}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 614
    invoke-virtual {v8, v9}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 616
    iget-object v8, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NAT timeout update callbacks received: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 617
    iget-object v8, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NAT timeout update netlink errors: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 619
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_0
    return-void
.end method

.method private updateStatsForAllUpstreams()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 349
    .local v1, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    .line 350
    .end local v1    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;>;"
    goto :goto_0

    .line 351
    :cond_0
    return-void
.end method

.method private updateStatsForCurrentUpstream()V
    .locals 1

    .line 340
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->maybeUpdateStats(Ljava/lang/String;)V

    .line 341
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 8
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 549
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->isOffloadDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    const-string v0, "Offload disabled"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 551
    return-void

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    .line 554
    .local v0, "isStarted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offload HALs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string/jumbo v2, "started"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "not started"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    .line 556
    .local v1, "lp":Landroid/net/LinkProperties;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 557
    .local v2, "upstream":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current upstream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exempt prefixes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLastLocalPrefixStrs:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NAT timeout update callbacks received during the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v4, "current"

    const-string/jumbo v5, "last"

    if-eqz v0, :cond_3

    move-object v6, v4

    goto :goto_2

    :cond_3
    move-object v6, v5

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " offload session: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 559
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NAT timeout update netlink errors during the "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 563
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public notifyDownstreamLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 387
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "ifname":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 389
    .local v1, "oldLp":Landroid/net/LinkProperties;
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 391
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 392
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->pushDownstreamState(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V

    .line 393
    return-void
.end method

.method public removeDownstreamInterface(Ljava/lang/String;)V
    .locals 5
    .param p1, "ifname"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mDownstreams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 426
    .local v0, "lp":Landroid/net/LinkProperties;
    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 430
    :cond_1
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 431
    .local v2, "route":Landroid/net/RouteInfo;
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/OffloadController;->shouldIgnoreDownstreamRoute(Landroid/net/RouteInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 432
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->removeDownstreamPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 433
    .end local v2    # "route":Landroid/net/RouteInfo;
    goto :goto_0

    .line 434
    :cond_3
    return-void
.end method

.method public setLocalPrefixes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 380
    .local p1, "localPrefixes":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mExemptPrefixes:Ljava/util/Set;

    .line 382
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    sget-object v0, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    .line 384
    return-void
.end method

.method public setUpstreamLinkProperties(Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 362
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "prevUpstream":Ljava/lang/String;
    if-eqz p1, :cond_1

    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    .line 368
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->currentUpstreamInterface()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "iface":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mForwardedStats:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/android/server/connectivity/tethering/OffloadController;->EMPTY_STATS:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_2
    sget-object v2, Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;->IF_NEEDED:Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;

    invoke-direct {p0, v2}, Lcom/android/server/connectivity/tethering/OffloadController;->computeAndPushLocalPrefixes(Lcom/android/server/connectivity/tethering/OffloadController$UpdateType;)Z

    .line 376
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->pushUpstreamParameters(Ljava/lang/String;)Z

    .line 377
    return-void

    .line 362
    .end local v0    # "prevUpstream":Ljava/lang/String;
    .end local v1    # "iface":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

.method public start()Z
    .locals 4

    .line 132
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->isOffloadDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload disabled"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 136
    return v1

    .line 139
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->initOffloadConfig()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    .line 141
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload config not supported"

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    .line 144
    return v1

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    new-instance v2, Lcom/android/server/connectivity/tethering/OffloadController$1;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/tethering/OffloadController$1;-><init>(Lcom/android/server/connectivity/tethering/OffloadController;)V

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->initOffloadControl(Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mControlInitialized:Z

    .line 226
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    .line 227
    .local v0, "isStarted":Z
    if-nez v0, :cond_3

    .line 228
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload control not supported"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    goto :goto_0

    .line 231
    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v3, "tethering offload started"

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 232
    iput v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateCallbacksReceived:I

    .line 233
    iput v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mNatUpdateNetlinkErrors:I

    .line 235
    :goto_0
    return v0
.end method

.method public stop()V
    .locals 3

    .line 242
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->started()Z

    move-result v0

    .line 243
    .local v0, "wasStarted":Z
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/OffloadController;->updateStatsForCurrentUpstream()V

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mUpstreamLinkProperties:Landroid/net/LinkProperties;

    .line 245
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mHwInterface:Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;->stopOffloadControl()V

    .line 246
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mControlInitialized:Z

    .line 247
    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mConfigInitialized:Z

    .line 248
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/OffloadController;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "tethering offload stopped"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method
