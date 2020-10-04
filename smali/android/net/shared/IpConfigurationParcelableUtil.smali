.class public final Landroid/net/shared/IpConfigurationParcelableUtil;
.super Ljava/lang/Object;
.source "IpConfigurationParcelableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromStableParcelable(Landroid/net/DhcpResultsParcelable;)Landroid/net/DhcpResults;
    .locals 2
    .param p0, "p"    # Landroid/net/DhcpResultsParcelable;

    .line 52
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Landroid/net/DhcpResults;

    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->baseConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/DhcpResults;-><init>(Landroid/net/StaticIpConfiguration;)V

    .line 54
    .local v0, "results":Landroid/net/DhcpResults;
    iget v1, p0, Landroid/net/DhcpResultsParcelable;->leaseDuration:I

    iput v1, v0, Landroid/net/DhcpResults;->leaseDuration:I

    .line 55
    iget v1, p0, Landroid/net/DhcpResultsParcelable;->mtu:I

    iput v1, v0, Landroid/net/DhcpResults;->mtu:I

    .line 56
    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->serverAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/shared/IpConfigurationParcelableUtil;->unparcelAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    iput-object v1, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    .line 57
    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->vendorInfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Landroid/net/DhcpResultsParcelable;->serverHostName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpResults;->serverHostName:Ljava/lang/String;

    .line 59
    return-object v0
.end method

.method public static parcelAddress(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;

    .line 67
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStableParcelable(Landroid/net/DhcpResults;)Landroid/net/DhcpResultsParcelable;
    .locals 2
    .param p0, "results"    # Landroid/net/DhcpResults;

    .line 37
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    new-instance v0, Landroid/net/DhcpResultsParcelable;

    invoke-direct {v0}, Landroid/net/DhcpResultsParcelable;-><init>()V

    .line 39
    .local v0, "p":Landroid/net/DhcpResultsParcelable;
    invoke-virtual {p0}, Landroid/net/DhcpResults;->toStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v1

    iput-object v1, v0, Landroid/net/DhcpResultsParcelable;->baseConfiguration:Landroid/net/StaticIpConfiguration;

    .line 40
    iget v1, p0, Landroid/net/DhcpResults;->leaseDuration:I

    iput v1, v0, Landroid/net/DhcpResultsParcelable;->leaseDuration:I

    .line 41
    iget v1, p0, Landroid/net/DhcpResults;->mtu:I

    iput v1, v0, Landroid/net/DhcpResultsParcelable;->mtu:I

    .line 42
    iget-object v1, p0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    invoke-static {v1}, Landroid/net/shared/IpConfigurationParcelableUtil;->parcelAddress(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/DhcpResultsParcelable;->serverAddress:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Landroid/net/DhcpResults;->vendorInfo:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpResultsParcelable;->vendorInfo:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Landroid/net/DhcpResults;->serverHostName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpResultsParcelable;->serverHostName:Ljava/lang/String;

    .line 45
    return-object v0
.end method

.method public static unparcelAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "addr"    # Ljava/lang/String;

    .line 76
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_0
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
