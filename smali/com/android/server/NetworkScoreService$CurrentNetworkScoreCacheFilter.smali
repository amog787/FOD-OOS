.class Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CurrentNetworkScoreCacheFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/UnaryOperator<",
        "Ljava/util/List<",
        "Landroid/net/ScoredNetwork;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCurrentNetwork:Landroid/net/NetworkKey;


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/net/wifi/WifiInfo;",
            ">;)V"
        }
    .end annotation

    .line 637
    .local p1, "wifiInfoSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/net/wifi/WifiInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    .line 639
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 633
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/ScoredNetwork;",
            ">;"
        }
    .end annotation

    .line 643
    .local p1, "scoredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 647
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 648
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ScoredNetwork;

    .line 649
    .local v1, "scoredNetwork":Landroid/net/ScoredNetwork;
    iget-object v2, v1, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget-object v3, p0, Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;->mCurrentNetwork:Landroid/net/NetworkKey;

    invoke-virtual {v2, v3}, Landroid/net/NetworkKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 650
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 647
    .end local v1    # "scoredNetwork":Landroid/net/ScoredNetwork;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    .end local v0    # "i":I
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 644
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
