.class Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirewallIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
        "Lcom/android/server/firewall/IntentFirewall$Rule;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRulesByComponent:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "[",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 497
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 543
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/firewall/IntentFirewall$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/firewall/IntentFirewall$1;

    .line 497
    invoke-direct {p0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public addComponentFilter(Landroid/content/ComponentName;Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "rule"    # Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 538
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 539
    .local v0, "rules":[Lcom/android/server/firewall/IntentFirewall$Rule;
    const-class v1, Lcom/android/server/firewall/IntentFirewall$Rule;

    invoke-static {v1, v0, p2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 540
    iget-object v1, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    return-void
.end method

.method protected allowFilterResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;Ljava/util/List;)Z
    .locals 1
    .param p1, "filter"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
            "Ljava/util/List<",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;)Z"
        }
    .end annotation

    .line 501
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->access$200(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 0

    .line 497
    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->allowFilterResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected getIntentFilter(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .param p1, "input"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    .line 527
    return-object p1
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 497
    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->getIntentFilter(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    .line 506
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 497
    check-cast p2, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .locals 1
    .param p1, "size"    # I

    .line 511
    new-array v0, p1, [Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->newArray(I)[Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected newResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;II)Lcom/android/server/firewall/IntentFirewall$Rule;
    .locals 1
    .param p1, "filter"    # Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .line 516
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->access$200(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newResult(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0

    .line 497
    check-cast p1, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->newResult(Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;II)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object p1

    return-object p1
.end method

.method public queryByComponent(Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;)V"
        }
    .end annotation

    .line 531
    .local p2, "candidateRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentResolver;->mRulesByComponent:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/firewall/IntentFirewall$Rule;

    .line 532
    .local v0, "rules":[Lcom/android/server/firewall/IntentFirewall$Rule;
    if-eqz v0, :cond_0

    .line 533
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 535
    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/firewall/IntentFirewall$Rule;",
            ">;)V"
        }
    .end annotation

    .line 522
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/firewall/IntentFirewall$Rule;>;"
    return-void
.end method
