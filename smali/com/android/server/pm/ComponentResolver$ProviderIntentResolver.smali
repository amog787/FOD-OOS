.class final Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;
.super Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver<",
        "Landroid/util/Pair<",
        "Landroid/content/pm/parsing/component/ParsedProvider;",
        "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
        ">;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1596
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;-><init>(Lcom/android/server/pm/ComponentResolver$1;)V

    .line 1837
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ComponentResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/ComponentResolver$1;

    .line 1596
    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    .line 1596
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method addProvider(Landroid/content/pm/parsing/component/ParsedProvider;)V
    .locals 6
    .param p1, "p"    # Landroid/content/pm/parsing/component/ParsedProvider;

    .line 1648
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PackageManager"

    if-eqz v0, :cond_0

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already defined; ignoring"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    return-void

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1658
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1660
    .local v0, "intentsSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1661
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 1666
    .local v3, "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->debugCheck()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1667
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> For Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_1
    invoke-static {p1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->addFilter(Landroid/util/Pair;)V

    .line 1660
    .end local v3    # "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1671
    :cond_2
    return-void
.end method

.method protected allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1694
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1695
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 1696
    .local v2, "destPi":Landroid/content/pm/ProviderInfo;
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 1697
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1698
    const/4 v1, 0x0

    return v1

    .line 1694
    .end local v2    # "destPi":Landroid/content/pm/ProviderInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1701
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method protected bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 0

    .line 1596
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->allowFilterResult(Landroid/util/Pair;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V
    .locals 4
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1799
    .local p3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 1800
    .local v0, "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    iget-object v1, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 1802
    .local v1, "filter":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1804
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1805
    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    const-string v2, " filter "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1807
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1808
    return-void
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1596
    check-cast p3, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/Pair;)V

    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 1816
    move-object v0, p3

    check-cast v0, Landroid/util/Pair;

    .line 1818
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1819
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1820
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1821
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-virtual {v1}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 1822
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedProvider;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1821
    invoke-static {p1, v1, v2}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const/4 v1, 0x1

    if-le p4, v1, :cond_0

    .line 1824
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1825
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1826
    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1828
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1829
    return-void
.end method

.method protected filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1812
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    return-object p1
.end method

.method protected bridge synthetic filterToLabel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1596
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->filterToLabel(Landroid/util/Pair;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)",
            "Landroid/content/IntentFilter;"
        }
    .end annotation

    .line 1834
    .local p1, "input":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/IntentFilter;

    return-object v0
.end method

.method protected bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 1596
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->getIntentFilter(Landroid/util/Pair;)Landroid/content/IntentFilter;

    move-result-object p1

    return-object p1
.end method

.method protected isFilterStopped(Landroid/util/Pair;I)Z
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 1713
    .local p1, "filter":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-static {p1, p2}, Lcom/android/server/pm/ComponentResolver;->access$1200(Landroid/util/Pair;I)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isFilterStopped(Ljava/lang/Object;I)Z
    .locals 0

    .line 1596
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->isFilterStopped(Landroid/util/Pair;I)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1719
    .local p2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1596
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method

.method protected newArray(I)[Landroid/util/Pair;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    .line 1707
    new-array v0, p1, [Landroid/util/Pair;

    return-object v0
.end method

.method protected bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1596
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected newResult(Landroid/util/Pair;II)Landroid/content/pm/ResolveInfo;
    .locals 19
    .param p2, "match"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;II)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 1725
    .local p1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p3

    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$1100()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_0

    .line 1726
    return-object v10

    .line 1729
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v2

    check-cast v11, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 1730
    .local v11, "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v12, v2

    check-cast v12, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 1732
    .local v12, "filter":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v13

    .line 1733
    .local v13, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v13, :cond_1

    .line 1734
    return-object v10

    .line 1737
    :cond_1
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget v3, v0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    invoke-virtual {v2, v11, v3, v9}, Landroid/content/pm/PackageManagerInternal;->isEnabledAndMatches(Landroid/content/pm/parsing/component/ParsedMainComponent;II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1738
    return-object v10

    .line 1741
    :cond_2
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    .line 1742
    invoke-virtual {v11}, Landroid/content/pm/parsing/component/ParsedProvider;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1741
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v14

    .line 1743
    .local v14, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_3

    .line 1744
    return-object v10

    .line 1746
    :cond_3
    invoke-virtual {v14, v9}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v15

    .line 1747
    .local v15, "userState":Landroid/content/pm/PackageUserState;
    iget v2, v0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    move/from16 v16, v2

    .line 1749
    .local v16, "matchVisibleToInstantApp":Z
    iget v2, v0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    const/high16 v5, 0x800000

    and-int/2addr v2, v5

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    move/from16 v17, v3

    .line 1751
    .local v17, "isInstantApp":Z
    if-eqz v16, :cond_6

    .line 1752
    invoke-virtual {v12}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->isVisibleToInstantApp()Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, v15, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-nez v2, :cond_6

    .line 1753
    return-object v10

    .line 1756
    :cond_6
    if-nez v17, :cond_7

    iget-boolean v2, v15, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v2, :cond_7

    .line 1757
    return-object v10

    .line 1761
    :cond_7
    iget-boolean v2, v15, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v2, :cond_8

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1762
    return-object v10

    .line 1764
    :cond_8
    iget v2, v0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    invoke-static {v13, v2, v15, v9, v14}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    .line 1766
    .local v18, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v18, :cond_9

    .line 1767
    return-object v10

    .line 1769
    :cond_9
    iget v4, v0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    move-object v2, v13

    move-object v3, v11

    move-object v5, v15

    move-object/from16 v6, v18

    move/from16 v7, p3

    move-object v8, v14

    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 1771
    .local v2, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v2, :cond_a

    .line 1772
    return-object v10

    .line 1774
    :cond_a
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1775
    .local v3, "res":Landroid/content/pm/ResolveInfo;
    iput-object v2, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 1776
    iget v4, v0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_b

    .line 1777
    iput-object v12, v3, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1779
    :cond_b
    invoke-virtual {v12}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getPriority()I

    move-result v4

    iput v4, v3, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1782
    move/from16 v4, p2

    iput v4, v3, Landroid/content/pm/ResolveInfo;->match:I

    .line 1783
    invoke-virtual {v12}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->isHasDefault()Z

    move-result v5

    iput-boolean v5, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1784
    invoke-virtual {v12}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getLabelRes()I

    move-result v5

    iput v5, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1785
    invoke-virtual {v12}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1786
    invoke-virtual {v12}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->getIcon()I

    move-result v5

    iput v5, v3, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1787
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    iput-boolean v5, v3, Landroid/content/pm/ResolveInfo;->system:Z

    .line 1788
    return-object v3
.end method

.method protected bridge synthetic newResult(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0

    .line 1596
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->newResult(Landroid/util/Pair;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1608
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$1100()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1609
    const/4 v0, 0x0

    return-object v0

    .line 1611
    :cond_0
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    .line 1612
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1601
    if-eqz p3, :cond_0

    const/high16 v0, 0x10000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    .line 1602
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1620
    .local p4, "packageProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedProvider;>;"
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$1100()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1621
    const/4 v0, 0x0

    return-object v0

    .line 1623
    :cond_0
    if-nez p4, :cond_1

    .line 1624
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1626
    :cond_1
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    .line 1627
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 1628
    .local v4, "defaultOnly":Z
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 1629
    .local v0, "providersSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v1

    .line 1633
    .local v7, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 1634
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 1635
    .local v2, "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v3

    .line 1636
    .local v3, "intentFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1637
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->newArray(I)[Landroid/util/Pair;

    move-result-object v5

    .line 1638
    .local v5, "array":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    const/4 v6, 0x0

    .local v6, "arrayIndex":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 1639
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    aput-object v8, v5, v6

    .line 1638
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1641
    .end local v6    # "arrayIndex":I
    :cond_3
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1633
    .end local v2    # "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    .end local v5    # "array":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/content/pm/parsing/component/ParsedProvider;Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1644
    .end local v1    # "i":I
    .end local v3    # "intentFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    :cond_5
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/android/server/pm/ComponentResolver$MimeGroupsAwareIntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method removeProvider(Landroid/content/pm/parsing/component/ParsedProvider;)V
    .locals 4
    .param p1, "p"    # Landroid/content/pm/parsing/component/ParsedProvider;

    .line 1674
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedProvider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1681
    .local v0, "intentsSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1682
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedProvider;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    .line 1687
    .local v2, "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 1681
    .end local v2    # "intent":Landroid/content/pm/parsing/component/ParsedIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1689
    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1793
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1794
    return-void
.end method
