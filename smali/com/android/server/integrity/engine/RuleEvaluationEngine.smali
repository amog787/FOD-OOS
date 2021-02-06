.class public Lcom/android/server/integrity/engine/RuleEvaluationEngine;
.super Ljava/lang/Object;
.source "RuleEvaluationEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RuleEvaluation"

.field private static sRuleEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;


# instance fields
.field private final mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;


# direct methods
.method constructor <init>(Lcom/android/server/integrity/IntegrityFileManager;)V
    .locals 0
    .param p1, "integrityFileManager"    # Lcom/android/server/integrity/IntegrityFileManager;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    .line 49
    return-void
.end method

.method public static declared-synchronized getRuleEvaluationEngine()Lcom/android/server/integrity/engine/RuleEvaluationEngine;
    .locals 3

    const-class v0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->sRuleEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/android/server/integrity/engine/RuleEvaluationEngine;

    invoke-static {}, Lcom/android/server/integrity/IntegrityFileManager;->getInstance()Lcom/android/server/integrity/IntegrityFileManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;-><init>(Lcom/android/server/integrity/IntegrityFileManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 56
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->sRuleEvaluationEngine:Lcom/android/server/integrity/engine/RuleEvaluationEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private loadRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;
    .locals 3
    .param p1, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/integrity/AppInstallMetadata;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/integrity/Rule;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {v0}, Lcom/android/server/integrity/IntegrityFileManager;->initialized()Z

    move-result v0

    const-string v1, "RuleEvaluation"

    if-nez v0, :cond_0

    .line 74
    const-string v0, "Integrity rule files are not available."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->mIntegrityFileManager:Lcom/android/server/integrity/IntegrityFileManager;

    invoke-virtual {v0, p1}, Lcom/android/server/integrity/IntegrityFileManager;->readRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error loading rules."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method


# virtual methods
.method public evaluate(Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;
    .locals 2
    .param p1, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/integrity/engine/RuleEvaluationEngine;->loadRules(Landroid/content/integrity/AppInstallMetadata;)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "rules":Ljava/util/List;, "Ljava/util/List<Landroid/content/integrity/Rule;>;"
    invoke-static {v0, p1}, Lcom/android/server/integrity/engine/RuleEvaluator;->evaluateRules(Ljava/util/List;Landroid/content/integrity/AppInstallMetadata;)Lcom/android/server/integrity/model/IntegrityCheckResult;

    move-result-object v1

    return-object v1
.end method
