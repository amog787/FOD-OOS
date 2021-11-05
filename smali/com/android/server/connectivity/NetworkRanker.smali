.class public Lcom/android/server/connectivity/NetworkRanker;
.super Ljava/lang/Object;
.source "NetworkRanker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBestNetwork(Landroid/net/NetworkRequest;Ljava/util/Collection;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 10
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkRequest;",
            "Ljava/util/Collection<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;)",
            "Lcom/android/server/connectivity/NetworkAgentInfo;"
        }
    .end annotation

    .line 39
    .local p2, "nais":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/connectivity/NetworkAgentInfo;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, "bestNetwork":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/high16 v1, -0x80000000

    .line 41
    .local v1, "bestScore":I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 42
    .local v9, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v9, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v3

    iget-object v4, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v5, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 45
    invoke-virtual {v3, v4, v5}, Lcom/android/server/ConnectivityService;->satisfiesMobileMultiNetworkDataCheck(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    if-gt v3, v1, :cond_2

    if-eqz v0, :cond_3

    .line 50
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 51
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->connService()Lcom/android/server/ConnectivityService;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v7, v9, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v8, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    move-object v4, v0

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/ConnectivityService;->isBestMobileMultiNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 57
    :cond_2
    move-object v0, v9

    .line 58
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    .line 60
    .end local v9    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_3
    goto :goto_0

    .line 61
    :cond_4
    return-object v0
.end method
