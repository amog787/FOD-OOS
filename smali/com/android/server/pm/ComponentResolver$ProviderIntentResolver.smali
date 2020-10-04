.class final Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;
.super Lcom/android/server/IntentResolver;
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
        "Lcom/android/server/IntentResolver<",
        "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
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
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1374
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 1603
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ComponentResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/ComponentResolver$1;

    .line 1374
    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;

    .line 1374
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method addProvider(Landroid/content/pm/PackageParser$Provider;)V
    .locals 6
    .param p1, "p"    # Landroid/content/pm/PackageParser$Provider;

    .line 1421
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "PackageManager"

    if-eqz v0, :cond_0

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already defined; ignoring"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    return-void

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1437
    .local v0, "intentsSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1438
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 1443
    .local v3, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->debugCheck()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1444
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> For Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1437
    .end local v3    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1448
    :cond_2
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 0

    .line 1374
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z
    .locals 6
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1473
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 1474
    .local v0, "filterPi":Landroid/content/pm/ProviderInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1475
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 1476
    .local v3, "destPi":Landroid/content/pm/ProviderInfo;
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    .line 1478
    const/4 v2, 0x0

    return v2

    .line 1474
    .end local v3    # "destPi":Landroid/content/pm/ProviderInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1481
    .end local v1    # "i":I
    :cond_1
    return v2
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0

    .line 1374
    check-cast p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 1576
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1577
    iget-object v0, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1578
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1579
    iget-object v0, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 1580
    const-string v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1581
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1582
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .line 1590
    move-object v0, p3

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 1591
    .local v0, "provider":Landroid/content/pm/PackageParser$Provider;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1592
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1593
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1594
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 1595
    const/4 v1, 0x1

    if-le p4, v1, :cond_0

    .line 1596
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1598
    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1600
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1601
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 0

    .line 1374
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 1586
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 0

    .line 1374
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z

    move-result p1

    return p1
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z
    .locals 5
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .param p2, "userId"    # I

    .line 1491
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1492
    return v1

    .line 1494
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    .line 1495
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1496
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1497
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_2

    .line 1501
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_1

    .line 1502
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1501
    :goto_0
    return v1

    .line 1505
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v2
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 0

    .line 1374
    check-cast p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 1511
    iget-object v0, p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 0

    .line 1374
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .locals 1
    .param p1, "size"    # I

    .line 1486
    new-array v0, p1, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 10
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .line 1517
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1518
    return-object v1

    .line 1520
    :cond_0
    move-object v0, p1

    .line 1521
    .local v0, "info":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v4, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    invoke-virtual {v2, v3, v4, p3}, Landroid/content/pm/PackageManagerInternal;->isEnabledAndMatches(Landroid/content/pm/ComponentInfo;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1522
    return-object v1

    .line 1524
    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    .line 1525
    .local v2, "provider":Landroid/content/pm/PackageParser$Provider;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1526
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_2

    .line 1527
    return-object v1

    .line 1529
    :cond_2
    invoke-virtual {v3, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    .line 1530
    .local v4, "userState":Landroid/content/pm/PackageUserState;
    iget v5, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    move v5, v7

    .line 1532
    .local v5, "matchVisibleToInstantApp":Z
    :goto_0
    iget v8, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    const/high16 v9, 0x800000

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    move v6, v7

    .line 1534
    .local v6, "isInstantApp":Z
    :goto_1
    if-eqz v5, :cond_5

    .line 1535
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->isVisibleToInstantApp()Z

    move-result v7

    if-nez v7, :cond_5

    iget-boolean v7, v4, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-nez v7, :cond_5

    .line 1536
    return-object v1

    .line 1539
    :cond_5
    if-nez v6, :cond_6

    iget-boolean v7, v4, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v7, :cond_6

    .line 1540
    return-object v1

    .line 1544
    :cond_6
    iget-boolean v7, v4, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1545
    return-object v1

    .line 1547
    :cond_7
    iget v7, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    invoke-static {v2, v7, v4, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    .line 1549
    .local v7, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v7, :cond_8

    .line 1550
    return-object v1

    .line 1552
    :cond_8
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1553
    .local v1, "res":Landroid/content/pm/ResolveInfo;
    iput-object v7, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 1554
    iget v8, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_9

    .line 1555
    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1557
    :cond_9
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getPriority()I

    move-result v8

    iput v8, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1558
    iget-object v8, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget v8, v8, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v8, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1559
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 1560
    iget-boolean v8, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->hasDefault:Z

    iput-boolean v8, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1561
    iget v8, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->labelRes:I

    iput v8, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1562
    iget-object v8, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v8, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1563
    iget v8, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->icon:I

    iput v8, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1564
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v8, v8, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    iput-boolean v8, v1, Landroid/content/pm/ResolveInfo;->system:Z

    .line 1565
    return-object v1
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 0

    .line 1374
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;

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

    .line 1385
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1386
    const/4 v0, 0x0

    return-object v0

    .line 1388
    :cond_0
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    .line 1389
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

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

    .line 1379
    if-eqz p3, :cond_0

    const/high16 v0, 0x10000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    .line 1380
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 8
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
            "Landroid/content/pm/PackageParser$Provider;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1396
    .local p4, "packageProviders":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Provider;>;"
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1397
    return-object v1

    .line 1399
    :cond_0
    if-nez p4, :cond_1

    .line 1400
    return-object v1

    .line 1402
    :cond_1
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mFlags:I

    .line 1403
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    .line 1404
    .local v4, "defaultOnly":Z
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 1405
    .local v0, "providersSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v1

    .line 1408
    .local v7, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 1409
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    .line 1410
    .local v2, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1411
    nop

    .line 1412
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 1413
    .local v3, "array":[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1414
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    .end local v3    # "array":[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1417
    .end local v1    # "i":I
    .end local v2    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method removeProvider(Landroid/content/pm/PackageParser$Provider;)V
    .locals 3
    .param p1, "p"    # Landroid/content/pm/PackageParser$Provider;

    .line 1451
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    iget-object v0, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1460
    .local v0, "intentsSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1461
    iget-object v2, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 1466
    .local v2, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComponentResolver$ProviderIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 1460
    .end local v2    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1468
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

    .line 1570
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1571
    return-void
.end method
