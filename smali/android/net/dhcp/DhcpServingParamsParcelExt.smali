.class public Landroid/net/dhcp/DhcpServingParamsParcelExt;
.super Landroid/net/dhcp/DhcpServingParamsParcel;
.source "DhcpServingParamsParcelExt.java"


# static fields
.field public static final MTU_UNSET:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/net/dhcp/DhcpServingParamsParcel;-><init>()V

    return-void
.end method

.method private static toIntArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/Inet4Address;",
            ">;)[I"
        }
    .end annotation

    .line 164
    .local p0, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/Inet4Address;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 165
    .local v0, "res":[I
    const/4 v1, 0x0

    .line 166
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    .line 167
    .local v3, "addr":Ljava/net/Inet4Address;
    invoke-static {v3}, Landroid/net/shared/Inet4AddressUtils;->inet4AddressToIntHTH(Ljava/net/Inet4Address;)I

    move-result v4

    aput v4, v0, v1

    .line 168
    nop

    .end local v3    # "addr":Ljava/net/Inet4Address;
    add-int/lit8 v1, v1, 0x1

    .line 169
    goto :goto_0

    .line 170
    :cond_0
    return-object v0
.end method


# virtual methods
.method public setDefaultRouters(Ljava/util/Set;)Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/Inet4Address;",
            ">;)",
            "Landroid/net/dhcp/DhcpServingParamsParcelExt;"
        }
    .end annotation

    .line 60
    .local p1, "defaultRouters":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet4Address;>;"
    invoke-static {p1}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpServingParamsParcelExt;->defaultRouters:[I

    .line 61
    return-object p0
.end method

.method public varargs setDefaultRouters([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 1
    .param p1, "defaultRouters"    # [Ljava/net/Inet4Address;

    .line 71
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDefaultRouters(Ljava/util/Set;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    return-object v0
.end method

.method public setDhcpLeaseTimeSecs(J)Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 0
    .param p1, "dhcpLeaseTimeSecs"    # J

    .line 138
    iput-wide p1, p0, Landroid/net/dhcp/DhcpServingParamsParcelExt;->dhcpLeaseTimeSecs:J

    .line 139
    return-object p0
.end method

.method public setDnsServers(Ljava/util/Set;)Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/Inet4Address;",
            ">;)",
            "Landroid/net/dhcp/DhcpServingParamsParcelExt;"
        }
    .end annotation

    .line 89
    .local p1, "dnsServers":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet4Address;>;"
    invoke-static {p1}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpServingParamsParcelExt;->dnsServers:[I

    .line 90
    return-object p0
.end method

.method public varargs setDnsServers([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 1
    .param p1, "dnsServers"    # [Ljava/net/Inet4Address;

    .line 99
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDnsServers(Ljava/util/Set;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    return-object v0
.end method

.method public setExcludedAddrs(Ljava/util/Set;)Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/Inet4Address;",
            ">;)",
            "Landroid/net/dhcp/DhcpServingParamsParcelExt;"
        }
    .end annotation

    .line 118
    .local p1, "excludedAddrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet4Address;>;"
    invoke-static {p1}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/dhcp/DhcpServingParamsParcelExt;->excludedAddrs:[I

    .line 119
    return-object p0
.end method

.method public varargs setExcludedAddrs([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 1
    .param p1, "excludedAddrs"    # [Ljava/net/Inet4Address;

    .line 129
    invoke-static {p1}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setExcludedAddrs(Ljava/util/Set;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    return-object v0
.end method

.method public setLinkMtu(I)Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 0
    .param p1, "linkMtu"    # I

    .line 149
    iput p1, p0, Landroid/net/dhcp/DhcpServingParamsParcelExt;->linkMtu:I

    .line 150
    return-object p0
.end method

.method public setMetered(Z)Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 0
    .param p1, "metered"    # Z

    .line 159
    iput-boolean p1, p0, Landroid/net/dhcp/DhcpServingParamsParcelExt;->metered:Z

    .line 160
    return-object p0
.end method

.method public setNoDefaultRouter()Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 1

    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/Inet4Address;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDefaultRouters([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    return-object v0
.end method

.method public setNoDnsServer()Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 1

    .line 108
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/Inet4Address;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpServingParamsParcelExt;->setDnsServers([Ljava/net/Inet4Address;)Landroid/net/dhcp/DhcpServingParamsParcelExt;

    move-result-object v0

    return-object v0
.end method

.method public setServerAddr(Landroid/net/LinkAddress;)Landroid/net/dhcp/DhcpServingParamsParcelExt;
    .locals 1
    .param p1, "serverAddr"    # Landroid/net/LinkAddress;

    .line 48
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    invoke-static {v0}, Landroid/net/shared/Inet4AddressUtils;->inet4AddressToIntHTH(Ljava/net/Inet4Address;)I

    move-result v0

    iput v0, p0, Landroid/net/dhcp/DhcpServingParamsParcelExt;->serverAddr:I

    .line 49
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    iput v0, p0, Landroid/net/dhcp/DhcpServingParamsParcelExt;->serverAddrPrefixLength:I

    .line 50
    return-object p0
.end method
