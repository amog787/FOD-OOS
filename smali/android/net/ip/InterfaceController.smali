.class public Landroid/net/ip/InterfaceController;
.super Ljava/lang/Object;
.source "InterfaceController.java"


# static fields
.field private static final DBG:Z = false


# instance fields
.field private final mIfName:Ljava/lang/String;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mNetd:Landroid/net/INetd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/INetd;Landroid/net/util/SharedLog;)V
    .locals 0
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "netd"    # Landroid/net/INetd;
    .param p3, "log"    # Landroid/net/util/SharedLog;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    .line 48
    iput-object p3, p0, Landroid/net/ip/InterfaceController;->mLog:Landroid/net/util/SharedLog;

    .line 49
    return-void
.end method

.method private varargs logError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Landroid/net/ip/InterfaceController;->mLog:Landroid/net/util/SharedLog;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private setEnableIPv6(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .line 87
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    nop

    .line 92
    return v0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v3, "enabling"

    goto :goto_0

    :cond_0
    const-string v3, "disabling"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object v1, v2, v0

    const-string v0, "%s IPv6 failed: %s"

    invoke-direct {p0, v0, v2}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return v4
.end method

.method private setInterfaceAddress(Landroid/net/LinkAddress;)Z
    .locals 6
    .param p1, "addr"    # Landroid/net/LinkAddress;

    .line 52
    new-instance v0, Landroid/net/InterfaceConfigurationParcel;

    invoke-direct {v0}, Landroid/net/InterfaceConfigurationParcel;-><init>()V

    .line 53
    .local v0, "ifConfig":Landroid/net/InterfaceConfigurationParcel;
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->ifName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    iput v1, v0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 56
    const-string v1, ""

    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    .line 57
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 59
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    invoke-interface {v3, v0}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    nop

    .line 65
    return v2

    .line 60
    :catch_0
    move-exception v3

    .line 61
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    aput-object v5, v4, v1

    iget v5, v0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object v3, v4, v2

    .line 61
    const-string v2, "Setting IPv4 address to %s/%d failed: %s"

    invoke-direct {p0, v2, v4}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return v1
.end method


# virtual methods
.method public addAddress(Landroid/net/LinkAddress;)Z
    .locals 2
    .param p1, "addr"    # Landroid/net/LinkAddress;

    .line 148
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/net/ip/InterfaceController;->addAddress(Ljava/net/InetAddress;I)Z

    move-result v0

    return v0
.end method

.method public addAddress(Ljava/net/InetAddress;I)Z
    .locals 5
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "prefixLen"    # I

    .line 156
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    nop

    .line 161
    return v0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v0, "failed to add %s/%d: %s"

    invoke-direct {p0, v0, v2}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return v3
.end method

.method public clearAllAddresses()Z
    .locals 4

    .line 182
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    nop

    .line 187
    return v0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v3, "Failed to clear addresses: %s"

    invoke-direct {p0, v3, v0}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    return v2
.end method

.method public clearIPv4Address()Z
    .locals 2

    .line 82
    new-instance v0, Landroid/net/LinkAddress;

    const-string v1, "0.0.0.0/0"

    invoke-direct {v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/net/ip/InterfaceController;->setInterfaceAddress(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method public disableIPv6()Z
    .locals 1

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/ip/InterfaceController;->setEnableIPv6(Z)Z

    move-result v0

    return v0
.end method

.method public enableIPv6()Z
    .locals 1

    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/ip/InterfaceController;->setEnableIPv6(Z)Z

    move-result v0

    return v0
.end method

.method public removeAddress(Ljava/net/InetAddress;I)Z
    .locals 5
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "prefixLen"    # I

    .line 169
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 174
    return v0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v0, "failed to remove %s/%d: %s"

    invoke-direct {p0, v0, v2}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    return v3
.end method

.method public setIPv4Address(Landroid/net/LinkAddress;)Z
    .locals 1
    .param p1, "address"    # Landroid/net/LinkAddress;

    .line 72
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet4Address;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/ip/InterfaceController;->setInterfaceAddress(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method public setIPv6AddrGenModeIfSupported(I)Z
    .locals 6
    .param p1, "mode"    # I

    .line 131
    const-string v0, "Unable to set IPv6 addrgen mode: %s"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v4, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Landroid/os/ServiceSpecificException;
    iget v4, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v5, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq v4, v5, :cond_0

    .line 137
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return v2

    .line 141
    .end local v3    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    :goto_0
    return v1

    .line 132
    :catch_1
    move-exception v3

    .line 133
    .local v3, "e":Landroid/os/RemoteException;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return v2
.end method

.method public setIPv6PrivacyExtensions(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .line 115
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/ip/InterfaceController;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Landroid/net/ip/InterfaceController;->mIfName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    nop

    .line 121
    return v0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 118
    if-eqz p1, :cond_0

    const-string v3, "enabling"

    goto :goto_0

    :cond_0
    const-string v3, "disabling"

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object v1, v2, v0

    .line 117
    const-string v0, "error %s IPv6 privacy extensions: %s"

    invoke-direct {p0, v0, v2}, Landroid/net/ip/InterfaceController;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return v4
.end method
