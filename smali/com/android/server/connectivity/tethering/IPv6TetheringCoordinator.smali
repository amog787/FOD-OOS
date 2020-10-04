.class public Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;
.super Ljava/lang/Object;
.source "IPv6TetheringCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


# instance fields
.field private final mActiveDownstreams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mNextSubnetId:S

.field private final mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/ip/IpServer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniqueLocalPrefix:[B

.field private mUpstreamNetworkState:Landroid/net/NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)V
    .locals 1
    .param p2, "log"    # Landroid/net/util/SharedLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/ip/IpServer;",
            ">;",
            "Landroid/net/util/SharedLog;",
            ")V"
        }
    .end annotation

    .line 78
    .local p1, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ip/IpServer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    .line 80
    sget-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mLog:Landroid/net/util/SharedLog;

    .line 81
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    .line 82
    invoke-static {}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->generateUniqueLocalPrefix()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUniqueLocalPrefix:[B

    .line 83
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    .line 84
    return-void
.end method

.method private static generateUniqueLocalPrefix()[B
    .locals 4

    .line 288
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 289
    .local v0, "ulp":[B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 291
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 292
    .local v1, "in6addr":[B
    const/4 v2, 0x0

    const/4 v3, -0x3

    aput-byte v3, v1, v2

    .line 294
    return-object v1
.end method

.method private static getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 6
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .line 210
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 211
    .local v0, "v6only":Landroid/net/LinkProperties;
    if-nez p0, :cond_0

    .line 212
    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 222
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x40

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 223
    .local v2, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 224
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 226
    .end local v2    # "linkAddr":Landroid/net/LinkAddress;
    :cond_1
    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 229
    .local v2, "routeInfo":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v4

    .line 230
    .local v4, "destination":Landroid/net/IpPrefix;
    invoke-virtual {v4}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_3

    .line 231
    invoke-virtual {v4}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v5

    if-gt v5, v3, :cond_3

    .line 232
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 234
    .end local v2    # "routeInfo":Landroid/net/RouteInfo;
    .end local v4    # "destination":Landroid/net/IpPrefix;
    :cond_3
    goto :goto_1

    .line 236
    :cond_4
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 237
    .local v2, "dnsServer":Ljava/net/InetAddress;
    invoke-static {v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->isIPv6GlobalAddress(Ljava/net/InetAddress;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 239
    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 241
    .end local v2    # "dnsServer":Ljava/net/InetAddress;
    :cond_5
    goto :goto_2

    .line 243
    :cond_6
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 245
    return-object v0
.end method

.method private getInterfaceIPv6LinkProperties(Landroid/net/ip/IpServer;)Landroid/net/LinkProperties;
    .locals 5
    .param p1, "ipServer"    # Landroid/net/ip/IpServer;

    .line 167
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 169
    return-object v1

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Landroid/net/ip/IpServer;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object v0

    .line 173
    .local v0, "ds":Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    if-nez v0, :cond_1

    return-object v1

    .line 175
    :cond_1
    iget v2, v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->mode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 177
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUniqueLocalPrefix:[B

    iget-short v2, v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->subnetId:S

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getUniqueLocalConfig([BS)Landroid/net/LinkProperties;

    move-result-object v1

    return-object v1

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    if-eqz v2, :cond_5

    iget-object v2, v2, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-nez v2, :cond_3

    goto :goto_0

    .line 190
    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    .line 191
    .local v2, "currentActive":Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->ipServer:Landroid/net/ip/IpServer;

    if-ne v3, p1, :cond_4

    .line 192
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object v3, v3, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-static {v3}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v3

    .line 194
    .local v3, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasIpv6DefaultRoute()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    return-object v3

    .line 199
    .end local v3    # "lp":Landroid/net/LinkProperties;
    :cond_4
    return-object v1

    .line 182
    .end local v2    # "currentActive":Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    :cond_5
    :goto_0
    return-object v1
.end method

.method private static getUniqueLocalConfig([BS)Landroid/net/LinkProperties;
    .locals 6
    .param p0, "ulp"    # [B
    .param p1, "subnetId"    # S

    .line 260
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 262
    .local v0, "lp":Landroid/net/LinkProperties;
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-static {p0, v1, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;

    move-result-object v1

    .line 263
    .local v1, "local48":Landroid/net/IpPrefix;
    new-instance v2, Landroid/net/RouteInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 265
    const/16 v2, 0x40

    invoke-static {p0, p1, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;

    move-result-object v3

    .line 269
    .local v3, "local64":Landroid/net/IpPrefix;
    new-instance v4, Landroid/net/LinkAddress;

    invoke-virtual {v3}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 271
    const/16 v2, 0x5dc

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 272
    return-object v0
.end method

.method private static isIPv6GlobalAddress(Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "ip"    # Ljava/net/InetAddress;

    .line 251
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    return v0
.end method

.method private static makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;
    .locals 3
    .param p0, "in6addr"    # [B
    .param p1, "subnetId"    # S
    .param p2, "prefixlen"    # I

    .line 276
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 277
    .local v0, "bytes":[B
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 278
    int-to-byte v1, p1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    .line 279
    new-instance v1, Landroid/net/IpPrefix;

    invoke-direct {v1, v0, p2}, Landroid/net/IpPrefix;-><init>([BI)V

    return-object v1
.end method

.method private setUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 8
    .param p1, "ns"    # Landroid/net/NetworkState;

    .line 142
    if-nez p1, :cond_0

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    goto :goto_0

    .line 146
    :cond_0
    new-instance v0, Landroid/net/NetworkState;

    const/4 v2, 0x0

    new-instance v3, Landroid/net/LinkProperties;

    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v4, Landroid/net/NetworkCapabilities;

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v4, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    new-instance v5, Landroid/net/Network;

    iget-object v1, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-direct {v5, v1}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUpstreamNetworkState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->toDebugString(Landroid/net/NetworkState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private static stopIPv6TetheringOn(Landroid/net/ip/IpServer;)V
    .locals 3
    .param p0, "ipServer"    # Landroid/net/ip/IpServer;

    .line 308
    const/4 v0, 0x0

    const v1, 0x50071

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v0, v2}, Landroid/net/ip/IpServer;->sendMessage(IIILjava/lang/Object;)V

    .line 309
    return-void
.end method

.method private stopIPv6TetheringOnAllInterfaces()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ip/IpServer;

    .line 137
    .local v1, "ipServer":Landroid/net/ip/IpServer;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Landroid/net/ip/IpServer;)V

    .line 138
    .end local v1    # "ipServer":Landroid/net/ip/IpServer;
    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method private static toDebugString(Landroid/net/NetworkState;)Ljava/lang/String;
    .locals 3
    .param p0, "ns"    # Landroid/net/NetworkState;

    .line 298
    if-nez p0, :cond_0

    .line 299
    const-string v0, "NetworkState{null}"

    return-object v0

    .line 301
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    aput-object v2, v0, v1

    const-string v1, "NetworkState{%s, %s, %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateIPv6TetheringInterfaces()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ip/IpServer;

    .line 160
    .local v0, "ipServer":Landroid/net/ip/IpServer;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getInterfaceIPv6LinkProperties(Landroid/net/ip/IpServer;)Landroid/net/LinkProperties;

    move-result-object v1

    .line 161
    .local v1, "lp":Landroid/net/LinkProperties;
    const v2, 0x50071

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/net/ip/IpServer;->sendMessage(IIILjava/lang/Object;)V

    .line 162
    nop

    .line 164
    .end local v0    # "ipServer":Landroid/net/ip/IpServer;
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_0
    return-void
.end method


# virtual methods
.method public addActiveDownstream(Landroid/net/ip/IpServer;I)V
    .locals 3
    .param p1, "downstream"    # Landroid/net/ip/IpServer;
    .param p2, "mode"    # I

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Landroid/net/ip/IpServer;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    iget-short v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;-><init>(Landroid/net/ip/IpServer;IS)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    iget-short v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    .line 99
    :cond_1
    return-void
.end method

.method findDownstream(Landroid/net/ip/IpServer;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    .locals 3
    .param p1, "ipServer"    # Landroid/net/ip/IpServer;

    .line 203
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    .line 204
    .local v1, "ds":Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    iget-object v2, v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->ipServer:Landroid/net/ip/IpServer;

    if-ne v2, p1, :cond_0

    return-object v1

    .line 205
    .end local v1    # "ds":Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    :cond_0
    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeActiveDownstream(Landroid/net/ip/IpServer;)V
    .locals 2
    .param p1, "downstream"    # Landroid/net/ip/IpServer;

    .line 102
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Landroid/net/ip/IpServer;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Landroid/net/ip/IpServer;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    sget-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    const-string v1, "Tethering notify list empty, IPv6 downstreams non-empty."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    .line 114
    :cond_2
    return-void
.end method

.method public updateUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 2
    .param p1, "ns"    # Landroid/net/NetworkState;

    .line 120
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getIPv6Interface(Landroid/net/NetworkState;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 123
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object v1, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    .line 127
    invoke-virtual {v0, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    .line 131
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 132
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    .line 133
    return-void
.end method
