.class public Landroid/net/shared/RouteUtils;
.super Ljava/lang/Object;
.source "RouteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/shared/RouteUtils$ModifyOperation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0x63

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 67
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    sget-object v3, Landroid/net/shared/RouteUtils$ModifyOperation;->ADD:Landroid/net/shared/RouteUtils$ModifyOperation;

    invoke-static {p0, v3, v2, v1}, Landroid/net/shared/RouteUtils;->modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    .line 70
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_0
    goto :goto_0

    .line 73
    :cond_1
    sget-object v0, Landroid/net/shared/RouteUtils$ModifyOperation;->ADD:Landroid/net/shared/RouteUtils$ModifyOperation;

    new-instance v1, Landroid/net/RouteInfo;

    new-instance v3, Landroid/net/IpPrefix;

    const-string v4, "fe80::/64"

    invoke-direct {v3, v4}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, p1, v5}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-static {p0, v0, v2, v1}, Landroid/net/shared/RouteUtils;->modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    .line 75
    return-void
.end method

.method private static findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "route"    # Landroid/net/RouteInfo;

    .line 41
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 56
    const-string v0, ""

    .local v0, "nextHop":Ljava/lang/String;
    goto :goto_0

    .line 53
    .end local v0    # "nextHop":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "throw"

    .line 54
    .restart local v0    # "nextHop":Ljava/lang/String;
    goto :goto_0

    .line 50
    .end local v0    # "nextHop":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "unreachable"

    .line 51
    .restart local v0    # "nextHop":Ljava/lang/String;
    goto :goto_0

    .line 43
    .end local v0    # "nextHop":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "nextHop":Ljava/lang/String;
    goto :goto_0

    .line 46
    .end local v0    # "nextHop":Ljava/lang/String;
    :cond_3
    const-string v0, ""

    .line 48
    .restart local v0    # "nextHop":Ljava/lang/String;
    nop

    .line 59
    :goto_0
    return-object v0
.end method

.method public static modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    .locals 6
    .param p0, "netd"    # Landroid/net/INetd;
    .param p1, "op"    # Landroid/net/shared/RouteUtils$ModifyOperation;
    .param p2, "netId"    # I
    .param p3, "route"    # Landroid/net/RouteInfo;

    .line 95
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "ifName":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "dst":Ljava/lang/String;
    invoke-static {p3}, Landroid/net/shared/RouteUtils;->findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "nextHop":Ljava/lang/String;
    :try_start_0
    sget-object v3, Landroid/net/shared/RouteUtils$1;->$SwitchMap$android$net$shared$RouteUtils$ModifyOperation:[I

    invoke-virtual {p1}, Landroid/net/shared/RouteUtils$ModifyOperation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 105
    invoke-interface {p0, p2, v0, v1, v2}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_0

    .line 108
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported modify operation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "ifName":Ljava/lang/String;
    .end local v1    # "dst":Ljava/lang/String;
    .end local v2    # "nextHop":Ljava/lang/String;
    .end local p0    # "netd":Landroid/net/INetd;
    .end local p1    # "op":Landroid/net/shared/RouteUtils$ModifyOperation;
    .end local p2    # "netId":I
    .end local p3    # "route":Landroid/net/RouteInfo;
    throw v3

    .line 102
    .restart local v0    # "ifName":Ljava/lang/String;
    .restart local v1    # "dst":Ljava/lang/String;
    .restart local v2    # "nextHop":Ljava/lang/String;
    .restart local p0    # "netd":Landroid/net/INetd;
    .restart local p1    # "op":Landroid/net/shared/RouteUtils$ModifyOperation;
    .restart local p2    # "netId":I
    .restart local p3    # "route":Landroid/net/RouteInfo;
    :cond_1
    invoke-interface {p0, p2, v0, v1, v2}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 112
    :goto_0
    nop

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static removeRoutesFromLocalNetwork(Landroid/net/INetd;Ljava/util/List;)I
    .locals 5
    .param p0, "netd"    # Landroid/net/INetd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .line 79
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const/4 v0, 0x0

    .line 81
    .local v0, "failures":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 83
    .local v2, "route":Landroid/net/RouteInfo;
    :try_start_0
    sget-object v3, Landroid/net/shared/RouteUtils$ModifyOperation;->REMOVE:Landroid/net/shared/RouteUtils$ModifyOperation;

    const/16 v4, 0x63

    invoke-static {p0, v3, v4, v2}, Landroid/net/shared/RouteUtils;->modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 84
    :catch_0
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/IllegalStateException;
    add-int/lit8 v0, v0, 0x1

    .line 87
    .end local v2    # "route":Landroid/net/RouteInfo;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    goto :goto_0

    .line 89
    :cond_0
    return v0
.end method
