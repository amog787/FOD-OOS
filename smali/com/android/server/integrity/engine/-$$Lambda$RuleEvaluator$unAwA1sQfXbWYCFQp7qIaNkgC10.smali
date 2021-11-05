.class public final synthetic Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$unAwA1sQfXbWYCFQp7qIaNkgC10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/integrity/AppInstallMetadata;


# direct methods
.method public synthetic constructor <init>(Landroid/content/integrity/AppInstallMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$unAwA1sQfXbWYCFQp7qIaNkgC10;->f$0:Landroid/content/integrity/AppInstallMetadata;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/integrity/engine/-$$Lambda$RuleEvaluator$unAwA1sQfXbWYCFQp7qIaNkgC10;->f$0:Landroid/content/integrity/AppInstallMetadata;

    check-cast p1, Landroid/content/integrity/Rule;

    invoke-static {v0, p1}, Lcom/android/server/integrity/engine/RuleEvaluator;->lambda$evaluateRules$0(Landroid/content/integrity/AppInstallMetadata;Landroid/content/integrity/Rule;)Z

    move-result p1

    return p1
.end method
