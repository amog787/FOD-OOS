.class public Landroid/net/ip/IpClientCallbacks;
.super Ljava/lang/Object;
.source "IpClientCallbacks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .locals 0
    .param p1, "filter"    # [B

    .line 108
    return-void
.end method

.method public onIpClientCreated(Landroid/net/ip/IIpClient;)V
    .locals 0
    .param p1, "ipClient"    # Landroid/net/ip/IIpClient;

    .line 41
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 93
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V
    .locals 0
    .param p1, "dhcpResults"    # Landroid/net/DhcpResultsParcelable;

    .line 78
    return-void
.end method

.method public onPostDhcpAction()V
    .locals 0

    .line 57
    return-void
.end method

.method public onPreDhcpAction()V
    .locals 0

    .line 52
    return-void
.end method

.method public onPreconnectionStart(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Layer2PacketParcelable;",
            ">;)V"
        }
    .end annotation

    .line 135
    .local p1, "packets":Ljava/util/List;, "Ljava/util/List<Landroid/net/Layer2PacketParcelable;>;"
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 88
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 83
    return-void
.end method

.method public onQuit()V
    .locals 0

    .line 103
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .locals 0
    .param p1, "logMsg"    # Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 124
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 130
    return-void
.end method

.method public startReadPacketFilter()V
    .locals 0

    .line 118
    return-void
.end method
