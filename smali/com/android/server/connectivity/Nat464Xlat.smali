.class public Lcom/android/server/connectivity/Nat464Xlat;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Nat464Xlat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Nat464Xlat$State;
    }
.end annotation


# static fields
.field private static final CLAT_PREFIX:Ljava/lang/String; = "v4-"

.field private static final NETWORK_STATES:[Landroid/net/NetworkInfo$State;

.field private static final NETWORK_TYPES:[I

.field private static final TAG:Ljava/lang/String;

.field private static final xlatRequired:Ljava/lang/String; = "persist.vendor.net.doxlat"


# instance fields
.field private mBaseIface:Ljava/lang/String;

.field private final mDnsResolver:Landroid/net/IDnsResolver;

.field private mIPv6Address:Ljava/net/Inet6Address;

.field private mIface:Ljava/lang/String;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNat64Prefix:Landroid/net/IpPrefix;

.field private final mNetd:Landroid/net/INetd;

.field private final mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mState:Lcom/android/server/connectivity/Nat464Xlat$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-class v0, Lcom/android/server/connectivity/Nat464Xlat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_TYPES:[I

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_STATES:[Landroid/net/NetworkInfo$State;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x9
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetd;Landroid/net/IDnsResolver;Landroid/os/INetworkManagementService;)V
    .locals 1
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "netd"    # Landroid/net/INetd;
    .param p3, "dnsResolver"    # Landroid/net/IDnsResolver;
    .param p4, "nmService"    # Landroid/os/INetworkManagementService;

    .line 98
    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    .line 89
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 99
    iput-object p3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    .line 100
    iput-object p2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    .line 101
    iput-object p4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    .line 102
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 103
    return-void
.end method

.method private enterRunningState()V
    .locals 1

    .line 223
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 224
    return-void
.end method

.method private enterStartingState(Ljava/lang/String;)V
    .locals 5
    .param p1, "baseIface"    # Ljava/lang/String;

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 200
    nop

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "addrStr":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64Prefix:Landroid/net/IpPrefix;

    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/INetd;->clatdStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error starting clatd on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v4-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 209
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    .line 210
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 212
    :try_start_2
    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    iput-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIPv6Address:Ljava/net/Inet6Address;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 215
    goto :goto_1

    .line 213
    :catch_1
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid IPv6 address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 197
    .end local v0    # "addrStr":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t register interface observer for clat on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method private getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 391
    .local v0, "config":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 392
    .end local v0    # "config":Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting link properties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 416
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->getLinkAddress(Ljava/lang/String;)Landroid/net/LinkAddress;

    move-result-object v0

    .line 421
    .local v0, "clatAddress":Landroid/net/LinkAddress;
    if-nez v0, :cond_1

    .line 422
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clatAddress was null for stacked iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 426
    :cond_1
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "interface %s is up, adding stacked link %s on top of %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->enterRunningState()V

    .line 429
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 430
    .local v1, "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 431
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 432
    return-void

    .line 417
    .end local v0    # "clatAddress":Landroid/net/LinkAddress;
    .end local v1    # "lp":Landroid/net/LinkProperties;
    :cond_2
    :goto_0
    return-void
.end method

.method private handleInterfaceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    return-void

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    return-void

    .line 445
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    .line 451
    return-void
.end method

.method private leaveStartedState()V
    .locals 4

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p0}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering clatd observer on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 236
    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    .line 237
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 238
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    goto :goto_1

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stopPrefixDiscovery()V

    .line 242
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 244
    :goto_1
    return-void
.end method

.method private makeLinkProperties(Landroid/net/LinkAddress;)Landroid/net/LinkProperties;
    .locals 5
    .param p1, "clatAddress"    # Landroid/net/LinkAddress;

    .line 371
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 372
    .local v0, "stacked":Landroid/net/LinkProperties;
    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 380
    new-instance v1, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/LinkAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 382
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 383
    .local v1, "ipv4Default":Landroid/net/RouteInfo;
    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 384
    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 385
    return-object v0
.end method

.method protected static requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 12
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 117
    .local v0, "netType":I
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_TYPES:[I

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    .line 118
    .local v1, "supported":Z
    sget-object v2, Lcom/android/server/connectivity/Nat464Xlat;->NETWORK_STATES:[Landroid/net/NetworkInfo$State;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 122
    .local v2, "connected":Z
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 123
    .local v3, "lp":Landroid/net/LinkProperties;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 124
    invoke-virtual {v3}, Landroid/net/LinkProperties;->hasIpv4Address()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 127
    .local v6, "isIpv6OnlyNetwork":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->netMisc()Landroid/net/NetworkMisc;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->netMisc()Landroid/net/NetworkMisc;

    move-result-object v7

    iget-boolean v7, v7, Landroid/net/NetworkMisc;->skip464xlat:Z

    if-eqz v7, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v5

    .line 131
    .local v7, "skip464xlat":Z
    :goto_1
    const/4 v8, 0x1

    .line 132
    .local v8, "androidXlatEnabled":Z
    sget-object v9, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Android Xlat enabled is doXlat = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v6, :cond_2

    if-nez v7, :cond_2

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    return v4
.end method

.method protected static shouldStartClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z
    .locals 2
    .param p0, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 156
    .local v0, "lp":Landroid/net/LinkProperties;
    invoke-static {p0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getNat64Prefix()Landroid/net/IpPrefix;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private startPrefixDiscovery()V
    .locals 4

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->startPrefix64Discovery(I)V

    .line 300
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    iput-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error starting prefix discovery on netId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private stopPrefixDiscovery()V
    .locals 4

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mDnsResolver:Landroid/net/IDnsResolver;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IDnsResolver;->stopPrefix64Discovery(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping prefix discovery on netId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->getNetId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public fixupLinkProperties(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "oldLp"    # Landroid/net/LinkProperties;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 352
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64Prefix:Landroid/net/IpPrefix;

    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setNat64Prefix(Landroid/net/IpPrefix;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    return-void

    .line 357
    :cond_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    return-void

    .line 361
    :cond_1
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clatd running, updating NAI for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .line 363
    .local v1, "stacked":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 364
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 365
    return-void

    .line 367
    .end local v1    # "stacked":Landroid/net/LinkProperties;
    :cond_2
    goto :goto_0

    .line 368
    :cond_3
    return-void
.end method

.method protected getNetId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    return v0
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 455
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$40jKHQd7R0zgcegyEyc9zPHKXVA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$40jKHQd7R0zgcegyEyc9zPHKXVA;-><init>(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$PACHOP9HoYvr_jzHtIwFDy31Ud4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Nat464Xlat$PACHOP9HoYvr_jzHtIwFDy31Ud4;-><init>(Lcom/android/server/connectivity/Nat464Xlat;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    return-void
.end method

.method public isPrefixDiscoveryStarted()Z
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->DISCOVERING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStarting()Z
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$interfaceLinkStateChanged$0$Nat464Xlat(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Nat464Xlat;->handleInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$interfaceRemoved$1$Nat464Xlat(Ljava/lang/String;)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;

    .line 460
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Nat464Xlat;->handleInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public setNat64Prefix(Landroid/net/IpPrefix;)V
    .locals 0
    .param p1, "nat64Prefix"    # Landroid/net/IpPrefix;

    .line 343
    iput-object p1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNat64Prefix:Landroid/net/IpPrefix;

    .line 344
    return-void
.end method

.method protected start()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startClat: already started"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_1

    .line 254
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startClat: Can\'t start clat with null LinkProperties"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "baseIface":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 260
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startClat: Can\'t start clat on null interface"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void

    .line 264
    :cond_2
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting clatd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Nat464Xlat;->enterStartingState(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method protected stop()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopClat: already stopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 275
    :cond_0
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping clatd on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetd:Landroid/net/INetd;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/net/INetd;->clatdStop(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error stopping clatd on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    .line 283
    .local v0, "iface":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isRunning()Z

    move-result v1

    .line 288
    .local v1, "wasRunning":Z
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->leaveStartedState()V

    .line 290
    if-eqz v1, :cond_1

    .line 291
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v3, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 292
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v2, v0}, Landroid/net/LinkProperties;->removeStackedLink(Ljava/lang/String;)Z

    .line 293
    iget-object v3, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 295
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseIface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mBaseIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mIface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/Nat464Xlat;->mState:Lcom/android/server/connectivity/Nat464Xlat$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->requiresClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isPrefixDiscoveryStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->startPrefixDiscovery()V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Nat464Xlat;->mNetwork:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-static {v0}, Lcom/android/server/connectivity/Nat464Xlat;->shouldStartClat(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->start()V

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->stop()V

    goto :goto_0

    .line 336
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/Nat464Xlat;->isPrefixDiscoveryStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    invoke-direct {p0}, Lcom/android/server/connectivity/Nat464Xlat;->leaveStartedState()V

    .line 340
    :cond_4
    :goto_0
    return-void
.end method
