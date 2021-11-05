.class Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScanResultsScoreCacheFilter"
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
.field private final mScanResultKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Supplier;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;)V"
        }
    .end annotation

    .line 665
    .local p1, "resultsSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/List<Landroid/net/wifi/ScanResult;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 666
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 667
    .local v0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 668
    .local v1, "size":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    .line 669
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 670
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 671
    .local v3, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-static {v3}, Landroid/net/NetworkKey;->createFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/NetworkKey;

    move-result-object v4

    .line 672
    .local v4, "key":Landroid/net/NetworkKey;
    if-eqz v4, :cond_0

    .line 673
    iget-object v5, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 669
    .end local v3    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v4    # "key":Landroid/net/NetworkKey;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    .end local v2    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 661
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/List;)Ljava/util/List;
    .locals 5
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

    .line 680
    .local p1, "scoredNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 684
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v0, "filteredScores":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 686
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ScoredNetwork;

    .line 687
    .local v2, "scoredNetwork":Landroid/net/ScoredNetwork;
    iget-object v3, p0, Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;->mScanResultKeys:Ljava/util/Set;

    iget-object v4, v2, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    .end local v2    # "scoredNetwork":Landroid/net/ScoredNetwork;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 681
    .end local v0    # "filteredScores":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
