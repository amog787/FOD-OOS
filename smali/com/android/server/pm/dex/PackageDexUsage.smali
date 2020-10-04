.class public Lcom/android/server/pm/dex/PackageDexUsage;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageDexUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;,
        Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CODE_PATH_LINE_CHAR:Ljava/lang/String; = "+"

.field private static final DEX_LINE_CHAR:Ljava/lang/String; = "#"

.field private static final LOADING_PACKAGE_CHAR:Ljava/lang/String; = "@"

.field static final MAX_SECONDARY_FILES_PER_OWNER:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final PACKAGE_DEX_USAGE_SUPPORTED_VERSION_1:I = 0x1

.field private static final PACKAGE_DEX_USAGE_SUPPORTED_VERSION_2:I = 0x2

.field private static final PACKAGE_DEX_USAGE_VERSION:I = 0x2

.field private static final PACKAGE_DEX_USAGE_VERSION_HEADER:Ljava/lang/String; = "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

.field private static final SPLIT_CHAR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "PackageDexUsage"

.field static final UNKNOWN_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=UnknownClassLoaderContext="

.field private static final UNSUPPORTED_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=UnsupportedClassLoaderContext="

.field static final VARIABLE_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=VariableClassLoaderContext="


# instance fields
.field private final mPackageUseInfoMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackageUseInfoMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .line 109
    const-string/jumbo v0, "package-dex-usage.list"

    const-string v1, "PackageDexUsage_DiskWriter"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 111
    return-void
.end method

.method private clonePackageUseInfoMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;",
            ">;"
        }
    .end annotation

    .line 694
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 695
    .local v0, "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v1

    .line 696
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 697
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$1;)V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    nop

    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    goto :goto_0

    .line 699
    :cond_0
    monitor-exit v1

    .line 700
    return-object v0

    .line 699
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isSupportedVersion(I)Z
    .locals 2
    .param p1, "version"    # I

    .line 512
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 1
    .param p1, "owningPackage"    # Ljava/lang/String;
    .param p2, "loadingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 508
    .local p3, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeReadClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/BufferedReader;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "context":Ljava/lang/String;
    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    .line 466
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find the classLoaderContext line."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v1, "=UnknownClassLoaderContext="

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;
    .locals 4
    .param p1, "in"    # Ljava/io/BufferedReader;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 483
    const/4 v0, 0x2

    if-lt p2, v0, :cond_2

    .line 484
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "@"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 490
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 492
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 493
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 494
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 493
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 495
    return-object v1

    .line 486
    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find the loadingPackages line."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    .end local v0    # "line":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private readBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bool"    # Ljava/lang/String;

    .line 708
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 709
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 710
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown bool encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p2, "dexFile"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 648
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 649
    .local v0, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 650
    return v1

    .line 652
    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v2

    if-ne v2, p3, :cond_1

    .line 653
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    const/4 v1, 0x1

    return v1

    .line 656
    :cond_1
    return v1
.end method

.method private writeBoolean(Z)Ljava/lang/String;
    .locals 1
    .param p1, "bool"    # Z

    .line 704
    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 689
    monitor-exit v0

    .line 690
    return-void

    .line 689
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearUsedByOtherApps(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 580
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_0

    .line 581
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 583
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->clearCodePathUsedByOtherApps()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 584
    .end local v1    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump()Ljava/lang/String;
    .locals 2

    .line 714
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 715
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 716
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 675
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 676
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v1

    .line 677
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 678
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 679
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 681
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    :cond_0
    goto :goto_0

    .line 682
    :cond_1
    monitor-exit v1

    .line 683
    return-object v0

    .line 682
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 667
    .local v1, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v3, v1, v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$1;)V

    move-object v2, v3

    :goto_0
    monitor-exit v0

    return-object v2

    .line 668
    .end local v1    # "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method maybeWriteAsync()V
    .locals 1

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method read()V
    .locals 1

    .line 221
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->read(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method read(Ljava/io/Reader;)V
    .locals 20
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 336
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    new-instance v0, Ljava/io/BufferedReader;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v0

    .line 338
    .local v4, "in":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, "versionLine":Ljava/lang/String;
    if-eqz v5, :cond_10

    .line 343
    const-string v0, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 347
    nop

    .line 348
    const-string v0, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 349
    .local v6, "version":I
    invoke-direct {v1, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->isSupportedVersion(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "currentPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 358
    .local v7, "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 359
    .local v8, "supportedIsas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_0

    aget-object v13, v9, v12

    .line 360
    .local v13, "abi":Ljava/lang/String;
    invoke-static {v13}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v13    # "abi":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    move-object v9, v7

    move-object v7, v0

    .line 362
    .end local v0    # "currentPackage":Ljava/lang/String;
    .local v7, "currentPackage":Ljava/lang/String;
    .local v9, "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v10, "line":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 363
    const-string v0, "#"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 370
    if-eqz v7, :cond_7

    .line 376
    const-string v0, "#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "dexPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 380
    if-eqz v10, :cond_6

    .line 383
    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 384
    .local v13, "elems":[Ljava/lang/String;
    array-length v14, v13

    const/4 v15, 0x3

    if-lt v14, v15, :cond_5

    .line 389
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v14

    .line 390
    .local v14, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;

    move-result-object v15

    .line 392
    .local v15, "classLoaderContext":Ljava/lang/String;
    const-string v12, "=UnsupportedClassLoaderContext="

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 395
    move-object/from16 v17, v7

    goto/16 :goto_4

    .line 398
    :cond_1
    aget-object v12, v13, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 399
    .local v12, "ownerUserId":I
    const/16 v16, 0x1

    aget-object v11, v13, v16

    invoke-direct {v1, v11}, Lcom/android/server/pm/dex/PackageDexUsage;->readBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 400
    .local v11, "isUsedByOtherApps":Z
    new-instance v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    move-object/from16 v17, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .local v17, "currentPackage":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {v3, v11, v12, v15, v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v3, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v14}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 403
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_2
    move/from16 v16, v11

    .end local v11    # "isUsedByOtherApps":Z
    .local v16, "isUsedByOtherApps":Z
    array-length v11, v13

    if-ge v7, v11, :cond_3

    .line 404
    aget-object v11, v13, v7

    .line 405
    .local v11, "isa":Ljava/lang/String;
    invoke-interface {v8, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 406
    move/from16 v18, v12

    .end local v12    # "ownerUserId":I
    .local v18, "ownerUserId":I
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    move-object/from16 v19, v14

    .end local v14    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    aget-object v14, v13, v7

    invoke-interface {v12, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 411
    .end local v18    # "ownerUserId":I
    .end local v19    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "ownerUserId":I
    .restart local v14    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    move/from16 v18, v12

    move-object/from16 v19, v14

    .end local v12    # "ownerUserId":I
    .end local v14    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "ownerUserId":I
    .restart local v19    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsupported ISA when parsing PackageDexUsage: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "PackageDexUsage"

    invoke-static {v14, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v11    # "isa":Ljava/lang/String;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v11, v16

    move/from16 v12, v18

    move-object/from16 v14, v19

    goto :goto_2

    .end local v18    # "ownerUserId":I
    .end local v19    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12    # "ownerUserId":I
    .restart local v14    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    move/from16 v18, v12

    move-object/from16 v19, v14

    .line 414
    .end local v7    # "i":I
    .end local v12    # "ownerUserId":I
    .end local v14    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "ownerUserId":I
    .restart local v19    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 415
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignore dexPath when parsing PackageDexUsage because of unsupported isas. dexPath="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "PackageDexUsage"

    invoke-static {v11, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    goto :goto_4

    .line 419
    :cond_4
    invoke-static {v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .end local v0    # "dexPath":Ljava/lang/String;
    .end local v3    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v13    # "elems":[Ljava/lang/String;
    .end local v15    # "classLoaderContext":Ljava/lang/String;
    .end local v16    # "isUsedByOtherApps":Z
    .end local v18    # "ownerUserId":I
    .end local v19    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_4

    .line 385
    .end local v17    # "currentPackage":Ljava/lang/String;
    .restart local v0    # "dexPath":Ljava/lang/String;
    .local v7, "currentPackage":Ljava/lang/String;
    .restart local v13    # "elems":[Ljava/lang/String;
    :cond_5
    move-object/from16 v17, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v17    # "currentPackage":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid PackageDexUsage line: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 381
    .end local v13    # "elems":[Ljava/lang/String;
    .end local v17    # "currentPackage":Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v17    # "currentPackage":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v7, "Could not find dexUseInfo line"

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 371
    .end local v0    # "dexPath":Ljava/lang/String;
    .end local v17    # "currentPackage":Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Malformed PackageDexUsage file. Expected package line before dex line."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_8
    move-object/from16 v17, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v17    # "currentPackage":Ljava/lang/String;
    const-string v0, "+"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_a

    .line 422
    if-lt v6, v3, :cond_9

    .line 430
    const-string v0, "+"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "codePath":Ljava/lang/String;
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeReadLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v3

    .line 432
    .local v3, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v3    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 362
    .end local v10    # "line":Ljava/lang/String;
    :goto_4
    move-object/from16 v3, p1

    move-object/from16 v7, v17

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 423
    .restart local v10    # "line":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected code path line when parsing PackageDexUseData: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_a
    if-lt v6, v3, :cond_b

    .line 436
    move-object v0, v10

    .line 437
    .end local v17    # "currentPackage":Ljava/lang/String;
    .local v0, "currentPackage":Ljava/lang/String;
    new-instance v3, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    move-object v7, v0

    move-object v9, v3

    const/4 v3, 0x0

    .end local v9    # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .local v3, "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    goto :goto_5

    .line 441
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v3    # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v9    # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v17    # "currentPackage":Ljava/lang/String;
    :cond_b
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "elems":[Ljava/lang/String;
    array-length v7, v0

    if-ne v7, v3, :cond_c

    .line 445
    const/4 v3, 0x0

    aget-object v7, v0, v3

    .line 446
    .end local v17    # "currentPackage":Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v11}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    move-object v9, v11

    .line 447
    const/4 v11, 0x1

    aget-object v11, v0, v11

    invoke-direct {v1, v11}, Lcom/android/server/pm/dex/PackageDexUsage;->readBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v9, v11}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$802(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Z)Z

    .line 449
    .end local v0    # "elems":[Ljava/lang/String;
    :goto_5
    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v3

    move-object/from16 v3, p1

    goto/16 :goto_1

    .line 443
    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v0    # "elems":[Ljava/lang/String;
    .restart local v17    # "currentPackage":Ljava/lang/String;
    :cond_c
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid PackageDexUsage line: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 453
    .end local v0    # "elems":[Ljava/lang/String;
    .end local v17    # "currentPackage":Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    :cond_d
    move-object/from16 v17, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v17    # "currentPackage":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v3

    .line 454
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 455
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 456
    monitor-exit v3

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 350
    .end local v8    # "supportedIsas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v10    # "line":Ljava/lang/String;
    .end local v17    # "currentPackage":Ljava/lang/String;
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected version: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    .end local v6    # "version":I
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid version line: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "No version line found."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected readInternal(Ljava/lang/Void;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Void;

    .line 320
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 321
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 323
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 324
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDexUsage;->read(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 330
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "PackageDexUsage"

    const-string v4, "Failed to parse package dex usage."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    nop

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 325
    :catch_1
    move-exception v2

    .line 330
    :goto_1
    nop

    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 331
    nop

    .line 332
    return-void
.end method

.method record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "owningPackageName"    # Ljava/lang/String;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "ownerUserId"    # I
    .param p4, "loaderIsa"    # Ljava/lang/String;
    .param p5, "isUsedByOtherApps"    # Z
    .param p6, "primaryOrSplit"    # Z
    .param p7, "loadingPackageName"    # Ljava/lang/String;
    .param p8, "classLoaderContext"    # Ljava/lang/String;

    .line 134
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 137
    if-eqz v8, :cond_8

    .line 141
    iget-object v9, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v9

    .line 142
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 143
    .local v0, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    const/4 v10, 0x1

    if-nez v0, :cond_1

    .line 145
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v11}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    move-object v0, v11

    .line 146
    if-eqz p6, :cond_0

    .line 150
    invoke-static {v0, v3, v6, v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 155
    :cond_0
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v11, v6, v4, v8, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v11, "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    nop

    .line 159
    invoke-static {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    .line 158
    invoke-direct {v1, v2, v7, v12}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    .line 162
    invoke-static {v7, v3}, Lcom/android/server/pm/OnePlusDexOptInjector;->notifyDexoptSecondaryDex(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v11    # "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :goto_0
    iget-object v11, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit v9

    return v10

    .line 169
    :cond_1
    if-eqz p6, :cond_2

    .line 172
    invoke-static {v0, v3, v6, v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    monitor-exit v9

    return v10

    .line 175
    :cond_2
    new-instance v11, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v11, v6, v4, v8, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 177
    .restart local v11    # "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    nop

    .line 178
    invoke-static {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    .line 177
    invoke-direct {v1, v2, v7, v12}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v12

    .line 180
    .local v12, "updateLoadingPackages":Z
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 181
    .local v13, "existingData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    if-nez v13, :cond_4

    .line 183
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    const/16 v15, 0x64

    if-ge v14, v15, :cond_3

    .line 184
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {v7, v3}, Lcom/android/server/pm/OnePlusDexOptInjector;->notifyDexoptSecondaryDex(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    monitor-exit v9

    return v10

    .line 191
    :cond_3
    monitor-exit v9

    return v12

    .line 194
    :cond_4
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v14

    if-ne v4, v14, :cond_7

    .line 209
    invoke-static {v13, v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$400(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v14

    if-nez v14, :cond_6

    if-eqz v12, :cond_5

    goto :goto_1

    :cond_5
    const/4 v10, 0x0

    :cond_6
    :goto_1
    monitor-exit v9

    return v10

    .line 203
    :cond_7
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Trying to change ownerUserId for  dex path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/dex/PackageDexUsage;
    .end local p1    # "owningPackageName":Ljava/lang/String;
    .end local p2    # "dexPath":Ljava/lang/String;
    .end local p3    # "ownerUserId":I
    .end local p4    # "loaderIsa":Ljava/lang/String;
    .end local p5    # "isUsedByOtherApps":Z
    .end local p6    # "primaryOrSplit":Z
    .end local p7    # "loadingPackageName":Ljava/lang/String;
    .end local p8    # "classLoaderContext":Ljava/lang/String;
    throw v10

    .line 213
    .end local v0    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v11    # "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v12    # "updateLoadingPackages":Z
    .end local v13    # "existingData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local p0    # "this":Lcom/android/server/pm/dex/PackageDexUsage;
    .restart local p1    # "owningPackageName":Ljava/lang/String;
    .restart local p2    # "dexPath":Ljava/lang/String;
    .restart local p3    # "ownerUserId":I
    .restart local p4    # "loaderIsa":Ljava/lang/String;
    .restart local p5    # "isUsedByOtherApps":Z
    .restart local p6    # "primaryOrSplit":Z
    .restart local p7    # "loadingPackageName":Ljava/lang/String;
    .restart local p8    # "classLoaderContext":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 138
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v9, "Null classLoaderContext"

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loaderIsa "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is unsupported"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dexFile"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 638
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 639
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 640
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_0

    .line 641
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 643
    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 644
    .end local v1    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removePackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 592
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 593
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 594
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeUserPackage(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 605
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 606
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 607
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_0

    .line 608
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 610
    :cond_0
    const/4 v2, 0x0

    .line 611
    .local v2, "updated":Z
    nop

    .line 612
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 613
    .local v3, "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 614
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 615
    .local v4, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 616
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 617
    const/4 v2, 0x1

    .line 619
    .end local v4    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_1
    goto :goto_0

    .line 622
    :cond_2
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 623
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v4

    if-nez v4, :cond_3

    .line 624
    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const/4 v2, 0x1

    .line 627
    :cond_3
    monitor-exit v0

    return v2

    .line 628
    .end local v1    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v2    # "updated":Z
    .end local v3    # "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method syncData(Ljava/util/Map;Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 521
    .local p1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .local p2, "packageToCodePaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 523
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 524
    .local v1, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 525
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 526
    .local v2, "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 527
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 528
    .local v4, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 529
    .local v5, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v5, :cond_0

    .line 531
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_4

    .line 535
    :cond_0
    nop

    .line 536
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 537
    .local v6, "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 538
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 539
    .local v7, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 541
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 543
    .end local v7    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_1
    goto :goto_1

    .line 546
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 547
    .local v7, "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 548
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 549
    .local v8, "codeIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 550
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 551
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 558
    :cond_4
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$800(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 559
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 560
    .local v10, "codePath":Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12, v12}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    .line 561
    nop

    .end local v10    # "codePath":Ljava/lang/String;
    goto :goto_3

    :cond_5
    goto :goto_4

    .line 562
    :cond_6
    invoke-virtual {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v9

    if-nez v9, :cond_7

    .line 563
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 566
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 569
    .end local v2    # "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v5    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6    # "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    .end local v7    # "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "codeIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_7
    :goto_4
    goto/16 :goto_0

    .line 570
    .end local v1    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;>;"
    :cond_8
    monitor-exit v0

    .line 571
    return-void

    .line 570
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method write(Ljava/io/Writer;)V
    .locals 18
    .param p1, "out"    # Ljava/io/Writer;

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/dex/PackageDexUsage;->clonePackageUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 278
    .local v0, "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 281
    .local v1, "fpw":Lcom/android/internal/util/FastPrintWriter;
    const-string v3, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 282
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 284
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 286
    .local v5, "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 287
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 288
    .local v7, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v1, v6}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 292
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "@"

    const-string v11, ","

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 293
    .local v9, "codeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 294
    .local v12, "codePath":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    .line 295
    .local v13, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 296
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v13}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 297
    .end local v9    # "codeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v12    # "codePath":Ljava/lang/String;
    .end local v13    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 300
    :cond_0
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 301
    .local v9, "dEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 302
    .local v12, "dexPath":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 303
    .local v13, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-array v14, v3, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 305
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$600(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v3

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    .end local v0    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .local v17, "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-direct {v0, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->writeBoolean(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v15

    .line 304
    invoke-static {v11, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 306
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 307
    .local v14, "isa":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 308
    .end local v14    # "isa":Ljava/lang/String;
    goto :goto_3

    .line 309
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v14

    invoke-static {v11, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 313
    .end local v9    # "dEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v12    # "dexPath":Ljava/lang/String;
    .end local v13    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    move-object/from16 v0, v17

    const/4 v3, 0x2

    goto/16 :goto_2

    .line 300
    .end local v17    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .restart local v0    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v0, p0

    .line 314
    .end local v0    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .end local v5    # "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v17    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    move-object/from16 v0, v17

    const/4 v3, 0x2

    goto/16 :goto_0

    .line 315
    .end local v17    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .restart local v0    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 316
    return-void
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected writeInternal(Ljava/lang/Void;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Void;

    .line 238
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 239
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 242
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 243
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 244
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {p0, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 245
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 246
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 251
    :cond_0
    const-string v3, "PackageDexUsage"

    const-string v4, "Failed to write usage for dex files"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method writeNow()V
    .locals 1

    .line 233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    .line 234
    return-void
.end method
