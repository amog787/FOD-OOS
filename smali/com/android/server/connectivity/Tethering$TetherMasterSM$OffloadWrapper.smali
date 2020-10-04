.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffloadWrapper"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1925
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public excludeDownstreamInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;

    .line 1950
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes()V

    .line 1951
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->removeDownstreamInterface(Ljava/lang/String;)V

    .line 1952
    return-void
.end method

.method public sendOffloadExemptPrefixes()V
    .locals 1

    .line 1955
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->getLocalPrefixes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes(Ljava/util/Set;)V

    .line 1956
    return-void
.end method

.method public sendOffloadExemptPrefixes(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 1960
    .local p1, "localPrefixes":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    invoke-static {p1}, Landroid/net/util/PrefixUtils;->addNonForwardablePrefixes(Ljava/util/Set;)V

    .line 1962
    sget-object v0, Landroid/net/util/PrefixUtils;->DEFAULT_WIFI_P2P_PREFIX:Landroid/net/IpPrefix;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1966
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ip/IpServer;

    .line 1967
    .local v1, "ipServer":Landroid/net/ip/IpServer;
    invoke-virtual {v1}, Landroid/net/ip/IpServer;->linkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1969
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Landroid/net/ip/IpServer;->servingMode()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_2

    .line 1986
    :cond_0
    invoke-static {v2}, Landroid/net/util/PrefixUtils;->localPrefixesFrom(Landroid/net/LinkProperties;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1978
    :cond_1
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 1979
    .local v4, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 1980
    .local v5, "ip":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 1981
    :cond_2
    invoke-static {v5}, Landroid/net/util/PrefixUtils;->ipAddressAsPrefix(Ljava/net/InetAddress;)Landroid/net/IpPrefix;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1982
    .end local v4    # "addr":Landroid/net/LinkAddress;
    .end local v5    # "ip":Ljava/net/InetAddress;
    goto :goto_1

    .line 1983
    :cond_3
    nop

    .line 1989
    .end local v1    # "ipServer":Landroid/net/ip/IpServer;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :goto_2
    goto :goto_0

    .line 1973
    .restart local v1    # "ipServer":Landroid/net/ip/IpServer;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    :cond_4
    goto :goto_0

    .line 1991
    .end local v1    # "ipServer":Landroid/net/ip/IpServer;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :cond_5
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->setLocalPrefixes(Ljava/util/Set;)V

    .line 1992
    return-void
.end method

.method public start()V
    .locals 1

    .line 1927
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->start()Z

    .line 1928
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes()V

    .line 1929
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1932
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    .line 1933
    return-void
.end method

.method public updateDownstreamLinkProperties(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 1943
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes()V

    .line 1944
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->notifyDownstreamLinkProperties(Landroid/net/LinkProperties;)V

    .line 1945
    return-void
.end method

.method public updateUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 2
    .param p1, "ns"    # Landroid/net/NetworkState;

    .line 1936
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    .line 1937
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1936
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->setUpstreamLinkProperties(Landroid/net/LinkProperties;)V

    .line 1938
    return-void
.end method
