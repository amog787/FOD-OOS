.class public final Lcom/android/server/integrity/model/IntegrityCheckResult;
.super Ljava/lang/Object;
.source "IntegrityCheckResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;
    }
.end annotation


# instance fields
.field private final mEffect:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

.field private final mRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V
    .locals 0
    .param p1, "effect"    # Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mEffect:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    .line 46
    iput-object p2, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    .line 47
    return-void
.end method

.method public static allow()Lcom/android/server/integrity/model/IntegrityCheckResult;
    .locals 3

    .line 63
    new-instance v0, Lcom/android/server/integrity/model/IntegrityCheckResult;

    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/integrity/model/IntegrityCheckResult;-><init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V

    return-object v0
.end method

.method public static allow(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)",
            "Lcom/android/server/integrity/model/IntegrityCheckResult;"
        }
    .end annotation

    .line 72
    .local p0, "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    new-instance v0, Lcom/android/server/integrity/model/IntegrityCheckResult;

    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    invoke-direct {v0, v1, p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;-><init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V

    return-object v0
.end method

.method public static deny(Ljava/util/List;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;)",
            "Lcom/android/server/integrity/model/IntegrityCheckResult;"
        }
    .end annotation

    .line 82
    .local p0, "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    new-instance v0, Lcom/android/server/integrity/model/IntegrityCheckResult;

    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->DENY:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    invoke-direct {v0, v1, p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;-><init>(Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;Ljava/util/List;)V

    return-object v0
.end method

.method static synthetic lambda$isCausedByAppCertRule$0(Landroid/content/integrity/Rule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/content/integrity/Rule;

    .line 102
    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/integrity/IntegrityFormula;->isAppCertificateFormula()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isCausedByInstallerRule$1(Landroid/content/integrity/Rule;)Z
    .locals 1
    .param p0, "rule"    # Landroid/content/integrity/Rule;

    .line 107
    invoke-virtual {p0}, Landroid/content/integrity/Rule;->getFormula()Landroid/content/integrity/IntegrityFormula;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/integrity/IntegrityFormula;->isInstallerFormula()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mEffect:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    return-object v0
.end method

.method public getLoggingResponse()I
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v0

    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->DENY:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x2

    return v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v0

    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getMatchedRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getEffect()Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    move-result-object v0

    sget-object v1, Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;->ALLOW:Lcom/android/server/integrity/model/IntegrityCheckResult$Effect;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/integrity/model/IntegrityCheckResult;->getMatchedRules()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    const/4 v0, 0x3

    return v0

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IntegrityCheckResult is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMatchedRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    return-object v0
.end method

.method public isCausedByAppCertRule()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$Cdma_yQnvj3lcPg1ximae51_zEo;->INSTANCE:Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$Cdma_yQnvj3lcPg1ximae51_zEo;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isCausedByInstallerRule()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/server/integrity/model/IntegrityCheckResult;->mRuleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$uw4WN-XjK2pJvNXIEB_RL21qEcg;->INSTANCE:Lcom/android/server/integrity/model/-$$Lambda$IntegrityCheckResult$uw4WN-XjK2pJvNXIEB_RL21qEcg;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
