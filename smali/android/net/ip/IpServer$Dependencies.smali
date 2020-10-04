.class public Landroid/net/ip/IpServer$Dependencies;
.super Ljava/lang/Object;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;

    .line 143
    invoke-static {p1}, Landroid/net/util/InterfaceParams;->getByName(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    return-object v0
.end method

.method public getNetdService()Landroid/net/INetd;
    .locals 1

    .line 147
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method

.method public getRouterAdvertisementDaemon(Landroid/net/util/InterfaceParams;)Landroid/net/ip/RouterAdvertisementDaemon;
    .locals 1
    .param p1, "ifParams"    # Landroid/net/util/InterfaceParams;

    .line 139
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-direct {v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;-><init>(Landroid/net/util/InterfaceParams;)V

    return-object v0
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/DhcpServerCallbacks;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/net/dhcp/DhcpServingParamsParcel;
    .param p3, "cb"    # Landroid/net/dhcp/DhcpServerCallbacks;

    .line 155
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/NetworkStackClient;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    .line 156
    return-void
.end method
