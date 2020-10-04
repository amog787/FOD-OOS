.class final Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InstantAppIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
        "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final mOrderResult:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1828
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 1842
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method protected filterResults(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)V"
        }
    .end annotation

    .line 1881
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1882
    return-void

    .line 1884
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1885
    .local v0, "resultSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 1886
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 1887
    .local v2, "info":Landroid/content/pm/InstantAppResolveInfo;
    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1888
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 1889
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1890
    .local v4, "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/InstantAppResolveInfo;>;"
    if-nez v4, :cond_1

    .line 1892
    goto :goto_1

    .line 1894
    :cond_1
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v5, v2, :cond_2

    .line 1896
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    iget-object v5, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_3

    .line 1899
    goto :goto_2

    .line 1904
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1905
    add-int/lit8 v0, v0, -0x1

    .line 1906
    add-int/lit8 v1, v1, -0x1

    .line 1885
    .end local v2    # "info":Landroid/content/pm/InstantAppResolveInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "savedInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/InstantAppResolveInfo;>;"
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1908
    .end local v1    # "i":I
    :cond_4
    :goto_2
    return-void
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 0

    .line 1828
    check-cast p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    .line 1853
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 0

    .line 1828
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .locals 1
    .param p1, "size"    # I

    .line 1847
    new-array v0, p1, [Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;II)Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .locals 6
    .param p1, "responseObj"    # Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .line 1859
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1860
    return-object v1

    .line 1862
    :cond_0
    iget-object v0, p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1863
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->getOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1864
    .local v2, "order":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 1865
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1867
    .local v3, "lastOrderResult":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/pm/InstantAppResolveInfo;>;"
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 1868
    return-object v1

    .line 1870
    :cond_1
    iget-object v1, p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 1871
    .local v1, "res":Landroid/content/pm/InstantAppResolveInfo;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    .line 1873
    iget-object v4, p0, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    :cond_2
    return-object p1
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 0

    .line 1828
    check-cast p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$InstantAppIntentResolver;->newResult(Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;II)Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    move-result-object p1

    return-object p1
.end method
