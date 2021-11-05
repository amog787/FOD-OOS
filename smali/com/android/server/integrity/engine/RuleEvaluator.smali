.class final Lcom/android/server/integrity/engine/RuleEvaluator;
.super Ljava/lang/Object;
.source "RuleEvaluator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static evaluateRules(Ljava/util/List;Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .locals 4
    .param p1, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;",
            "Landroid/content/integrity/AppInstallMetadata;",
            ")",
            "Lcom/android/server/integrity/model/IntegrityCheckResult;"
        }
    .end annotation

    .line 53
    .local p0, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    nop

    .line 54
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$unAwA1sQfXbWYCFQp7qIaNkgC10;

    invoke-direct {v1, p1}, Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$unAwA1sQfXbWYCFQp7qIaNkgC10;-><init>(Landroid/content/integrity/AppInstallMetadata;)V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 56
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 59
    .local v0, "matchedRules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    nop

    .line 60
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$_b_bnHZ6Lv_0UPoz1qRhvn2moQI;->INSTANCE:Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$_b_bnHZ6Lv_0UPoz1qRhvn2moQI;

    .line 61
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 62
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 64
    .local v1, "matchedPowerAllowRules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    invoke-static {v1}, Lcom/android/server/integrity/model/IntegrityCheckResult;->allow(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object v2

    return-object v2

    .line 69
    :cond_0
    nop

    .line 70
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$_yl214m5sWGIgjBG_8qMT_pIqSI;->INSTANCE:Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$_yl214m5sWGIgjBG_8qMT_pIqSI;

    .line 71
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 72
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 74
    .local v2, "matchedDenyRules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 75
    invoke-static {v2}, Lcom/android/server/integrity/model/IntegrityCheckResult;->deny(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object v3

    return-object v3

    .line 79
    :cond_1
    invoke-static {}, Lcom/android/server/integrity/model/IntegrityCheckResult;->allow()Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$evaluateRules$0(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/Rule;)Z
    .locals 1
    .param p0, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;
    .param p1, "rule"    # Landroid/content/integrity/Rule;

    .line 55
    invoke-virtual {p1}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/integrity/IntegrityFormula;->matches(Landroid/content/integrity/AppInstallMetadata;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$evaluateRules$1(Landroid/content/integrity/Rule;)Z
    .locals 2
    .param p0, "rule"    # Landroid/content/integrity/Rule;

    .line 61
    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getEffect()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$evaluateRules$2(Landroid/content/integrity/Rule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/content/integrity/Rule;

    .line 71
    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getEffect()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
