.class public final Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;
.super Ljava/lang/Object;
.source "TetheringInterfaceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIPv6Interface(Landroid/net/NetworkState;)Ljava/lang/String;
    .locals 3
    .param p0, "ns"    # Landroid/net/NetworkState;

    .line 69
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 73
    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasIpv6DnsServer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 75
    invoke-virtual {v1}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 77
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 79
    .local v0, "canTether":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    sget-object v2, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 81
    :cond_1
    const/4 v1, 0x0

    .line 79
    :goto_1
    return-object v1
.end method

.method private static getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .param p1, "dst"    # Ljava/net/InetAddress;

    .line 85
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/net/RouteInfo;->selectBestRoute(Ljava/util/Collection;Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v1

    goto :goto_0

    .line 87
    :cond_0
    move-object v1, v0

    :goto_0
    nop

    .line 88
    .local v1, "ri":Landroid/net/RouteInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getTetheringInterfaces(Landroid/net/NetworkState;)Landroid/net/util/InterfaceSet;
    .locals 6
    .param p0, "ns"    # Landroid/net/NetworkState;

    .line 39
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 40
    return-object v0

    .line 43
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 44
    .local v1, "lp":Landroid/net/LinkProperties;
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getInterfaceForDestination(Landroid/net/LinkProperties;Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "if4":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getIPv6Interface(Landroid/net/NetworkState;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "if6":Ljava/lang/String;
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/net/util/InterfaceSet;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-direct {v0, v4}, Landroid/net/util/InterfaceSet;-><init>([Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
