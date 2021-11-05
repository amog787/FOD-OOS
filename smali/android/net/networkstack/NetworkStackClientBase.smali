.class public abstract Landroid/net/networkstack/NetworkStackClientBase;
.super Ljava/lang/Object;
.source "NetworkStackClientBase.java"


# instance fields
.field private mConnector:Landroid/net/INetworkStackConnector;

.field private final mPendingNetStackRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Landroid/net/INetworkStackConnector;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 3
    .param p0, "cb"    # Landroid/net/IIpMemoryStoreCallbacks;
    .param p1, "connector"    # Landroid/net/INetworkStackConnector;

    .line 102
    :try_start_0
    invoke-interface {p1, p0}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    nop

    .line 106
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not fetch IpMemoryStore"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$makeDhcpServer$0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 3
    .param p0, "ifName"    # Ljava/lang/String;
    .param p1, "params"    # Landroid/net/dhcp/DhcpServingParamsParcel;
    .param p2, "cb"    # Landroid/net/dhcp/IDhcpServerCallbacks;
    .param p3, "connector"    # Landroid/net/INetworkStackConnector;

    .line 57
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    nop

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create DhcpServer"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 3
    .param p0, "ifName"    # Ljava/lang/String;
    .param p1, "cb"    # Landroid/net/ip/IIpClientCallbacks;
    .param p2, "connector"    # Landroid/net/INetworkStackConnector;

    .line 72
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    nop

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create IpClient"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$makeNetworkMonitor$2(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 3
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/net/INetworkMonitorCallbacks;
    .param p3, "connector"    # Landroid/net/INetworkStackConnector;

    .line 87
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not create NetworkMonitor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/net/IIpMemoryStoreCallbacks;

    .line 100
    new-instance v0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$okdj3YJsErzDSIpQV-9KsxdCYmM;

    invoke-direct {v0, p1}, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$okdj3YJsErzDSIpQV-9KsxdCYmM;-><init>(Landroid/net/IIpMemoryStoreCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    .line 107
    return-void
.end method

.method protected getQueueLength()I
    .locals 2

    .line 157
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/net/dhcp/DhcpServingParamsParcel;
    .param p3, "cb"    # Landroid/net/dhcp/IDhcpServerCallbacks;

    .line 55
    new-instance v0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$KFueb5ux_Y29dHAgr1C312iTfY8;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$KFueb5ux_Y29dHAgr1C312iTfY8;-><init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    .line 62
    return-void
.end method

.method public makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/net/ip/IIpClientCallbacks;

    .line 70
    new-instance v0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$OwDc2jxNNxij2DwZJOxHrSIkT4w;

    invoke-direct {v0, p1, p2}, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$OwDc2jxNNxij2DwZJOxHrSIkT4w;-><init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    .line 77
    return-void
.end method

.method public makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/net/INetworkMonitorCallbacks;

    .line 85
    new-instance v0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$xmhbZP7V8GFtCN9z63d8LazFkUM;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$xmhbZP7V8GFtCN9z63d8LazFkUM;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    .line 92
    return-void
.end method

.method protected onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .locals 3
    .param p1, "connector"    # Landroid/net/INetworkStackConnector;

    .line 133
    :goto_0
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 134
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v1, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/function/Consumer<Landroid/net/INetworkStackConnector;>;>;"
    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    .line 139
    .local v2, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/INetworkStackConnector;>;"
    invoke-interface {v2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 140
    .end local v2    # "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/INetworkStackConnector;>;"
    goto :goto_1

    .line 142
    :cond_0
    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v2

    .line 143
    :try_start_1
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iput-object p1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mConnector:Landroid/net/INetworkStackConnector;

    .line 146
    monitor-exit v2

    return-void

    .line 148
    :cond_1
    monitor-exit v2

    .line 149
    .end local v1    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/function/Consumer<Landroid/net/INetworkStackConnector;>;>;"
    goto :goto_0

    .line 148
    .restart local v1    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/function/Consumer<Landroid/net/INetworkStackConnector;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 136
    .end local v1    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/function/Consumer<Landroid/net/INetworkStackConnector;>;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected requestConnector(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/INetworkStackConnector;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "request":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/INetworkStackConnector;>;"
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mConnector:Landroid/net/INetworkStackConnector;

    .line 113
    .local v1, "connector":Landroid/net/INetworkStackConnector;
    if-nez v1, :cond_0

    .line 114
    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v0

    return-void

    .line 117
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 120
    return-void

    .line 117
    .end local v1    # "connector":Landroid/net/INetworkStackConnector;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
