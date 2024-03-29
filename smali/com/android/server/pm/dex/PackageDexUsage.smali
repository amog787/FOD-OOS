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

.field private static final PACKAGE_DEX_USAGE_VERSION:I = 0x2

.field private static final PACKAGE_DEX_USAGE_VERSION_HEADER:Ljava/lang/String; = "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

.field private static final SPLIT_CHAR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "PackageDexUsage"

.field static final UNSUPPORTED_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=UnsupportedClassLoaderContext="

.field static final VARIABLE_CLASS_LOADER_CONTEXT:Ljava/lang/String; = "=VariableClassLoaderContext="


# instance fields
.field private final mPackageUseInfoMap:Ljava/util/Map;
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

    .line 104
    const-string/jumbo v0, "package-dex-usage.list"

    const-string v1, "PackageDexUsage_DiskWriter"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 106
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

    .line 675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 676
    .local v0, "clone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
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

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 678
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

    .line 679
    nop

    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    goto :goto_0

    .line 680
    :cond_0
    monitor-exit v1

    .line 681
    return-object v0

    .line 680
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private isSupportedVersion(I)Z
    .locals 1
    .param p1, "version"    # I

    .line 479
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

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

    .line 475
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

.method private readBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bool"    # Ljava/lang/String;

    .line 689
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 690
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 691
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

.method private readClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # Ljava/io/BufferedReader;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "context":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 449
    return-object v0

    .line 447
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find the classLoaderContext line."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;
    .locals 5
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

    .line 457
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 461
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 462
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "@"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 463
    nop

    .line 464
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 466
    :cond_0
    return-object v1

    .line 459
    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find the loadingPackages line."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p2, "dexFile"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 629
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 630
    .local v0, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 631
    return v1

    .line 633
    :cond_0
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v2

    if-ne v2, p3, :cond_1

    .line 634
    invoke-static {p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const/4 v1, 0x1

    return v1

    .line 637
    :cond_1
    return v1
.end method

.method private writeBoolean(Z)Ljava/lang/String;
    .locals 1
    .param p1, "bool"    # Z

    .line 685
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

    .line 668
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 670
    monitor-exit v0

    .line 671
    return-void

    .line 670
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

    .line 559
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 561
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_0

    .line 562
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 564
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->clearCodePathUsedByOtherApps()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 565
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

    .line 695
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 696
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 697
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

    .line 656
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 657
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v1

    .line 658
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

    .line 659
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 660
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 662
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    :cond_0
    goto :goto_0

    .line 663
    :cond_1
    monitor-exit v1

    .line 664
    return-object v0

    .line 663
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

    .line 641
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 648
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

    .line 649
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

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 229
    return-void
.end method

.method read()V
    .locals 1

    .line 220
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->read(Ljava/lang/Object;)V

    .line 221
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

    .line 334
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    .line 335
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    new-instance v0, Ljava/io/BufferedReader;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v0

    .line 337
    .local v4, "in":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "versionLine":Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 342
    const-string v0, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 346
    nop

    .line 347
    const-string v0, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 348
    .local v6, "version":I
    invoke-direct {v1, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->isSupportedVersion(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected package-dex-use version: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ". Not reading from it"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "PackageDexUsage"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    .line 357
    .local v0, "currentPackage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 359
    .local v7, "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 360
    .local v8, "supportedIsas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v9, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v10, v9

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_1

    aget-object v13, v9, v12

    .line 361
    .local v13, "abi":Ljava/lang/String;
    invoke-static {v13}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    .end local v13    # "abi":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v7

    move-object v7, v0

    .line 363
    .end local v0    # "currentPackage":Ljava/lang/String;
    .local v7, "currentPackage":Ljava/lang/String;
    .local v9, "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v10, "line":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 364
    const-string v0, "#"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 371
    if-eqz v7, :cond_8

    .line 377
    const-string v0, "#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "dexPath":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 381
    if-eqz v10, :cond_7

    .line 384
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 385
    .local v12, "elems":[Ljava/lang/String;
    array-length v13, v12

    const/4 v14, 0x3

    if-lt v13, v14, :cond_6

    .line 389
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->readLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v13

    .line 390
    .local v13, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->readClassLoaderContext(Ljava/io/BufferedReader;I)Ljava/lang/String;

    move-result-object v14

    .line 392
    .local v14, "classLoaderContext":Ljava/lang/String;
    const-string v15, "=UnsupportedClassLoaderContext="

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 395
    move-object/from16 v16, v7

    goto/16 :goto_4

    .line 398
    :cond_2
    aget-object v15, v12, v11

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 399
    .local v15, "ownerUserId":I
    const/16 v16, 0x1

    aget-object v11, v12, v16

    invoke-direct {v1, v11}, Lcom/android/server/pm/dex/PackageDexUsage;->readBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 400
    .local v11, "isUsedByOtherApps":Z
    new-instance v3, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    move-object/from16 v16, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .local v16, "currentPackage":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-direct {v3, v11, v15, v14, v7}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v3, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 403
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_2
    move/from16 v17, v11

    .end local v11    # "isUsedByOtherApps":Z
    .local v17, "isUsedByOtherApps":Z
    array-length v11, v12

    if-ge v7, v11, :cond_4

    .line 404
    aget-object v11, v12, v7

    .line 405
    .local v11, "isa":Ljava/lang/String;
    invoke-interface {v8, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 406
    move-object/from16 v18, v13

    .end local v13    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v18, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$700(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v13

    move-object/from16 v19, v14

    .end local v14    # "classLoaderContext":Ljava/lang/String;
    .local v19, "classLoaderContext":Ljava/lang/String;
    aget-object v14, v12, v7

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 411
    .end local v18    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "classLoaderContext":Ljava/lang/String;
    .restart local v13    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "classLoaderContext":Ljava/lang/String;
    :cond_3
    move-object/from16 v18, v13

    move-object/from16 v19, v14

    .end local v13    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "classLoaderContext":Ljava/lang/String;
    .restart local v18    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "classLoaderContext":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsupported ISA when parsing PackageDexUsage: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "PackageDexUsage"

    invoke-static {v14, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v11    # "isa":Ljava/lang/String;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v11, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    goto :goto_2

    .end local v18    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "classLoaderContext":Ljava/lang/String;
    .restart local v13    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "classLoaderContext":Ljava/lang/String;
    :cond_4
    move-object/from16 v18, v13

    move-object/from16 v19, v14

    .line 414
    .end local v7    # "i":I
    .end local v13    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "classLoaderContext":Ljava/lang/String;
    .restart local v18    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "classLoaderContext":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

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
    :cond_5
    invoke-static {v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .end local v0    # "dexPath":Ljava/lang/String;
    .end local v3    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v12    # "elems":[Ljava/lang/String;
    .end local v15    # "ownerUserId":I
    .end local v17    # "isUsedByOtherApps":Z
    .end local v18    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "classLoaderContext":Ljava/lang/String;
    goto :goto_4

    .line 386
    .end local v16    # "currentPackage":Ljava/lang/String;
    .restart local v0    # "dexPath":Ljava/lang/String;
    .local v7, "currentPackage":Ljava/lang/String;
    .restart local v12    # "elems":[Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v16    # "currentPackage":Ljava/lang/String;
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

    .line 382
    .end local v12    # "elems":[Ljava/lang/String;
    .end local v16    # "currentPackage":Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    :cond_7
    move-object/from16 v16, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v16    # "currentPackage":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v7, "Could not find dexUseInfo line"

    invoke-direct {v3, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    .end local v0    # "dexPath":Ljava/lang/String;
    .end local v16    # "currentPackage":Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Malformed PackageDexUsage file. Expected package line before dex line."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_9
    move-object/from16 v16, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v16    # "currentPackage":Ljava/lang/String;
    const-string v0, "+"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 424
    const-string v0, "+"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "codePath":Ljava/lang/String;
    invoke-direct {v1, v4, v6}, Lcom/android/server/pm/dex/PackageDexUsage;->readLoadingPackages(Ljava/io/BufferedReader;I)Ljava/util/Set;

    move-result-object v3

    .line 426
    .local v3, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v9}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v3    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 363
    .end local v10    # "line":Ljava/lang/String;
    :goto_4
    move-object/from16 v3, p1

    move-object/from16 v7, v16

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 429
    .restart local v10    # "line":Ljava/lang/String;
    :cond_a
    move-object v7, v10

    .line 430
    .end local v16    # "currentPackage":Ljava/lang/String;
    .restart local v7    # "currentPackage":Ljava/lang/String;
    new-instance v0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v0, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 431
    invoke-interface {v2, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p1

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 435
    :cond_b
    move-object/from16 v16, v7

    .end local v7    # "currentPackage":Ljava/lang/String;
    .restart local v16    # "currentPackage":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v3

    .line 436
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 437
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 438
    monitor-exit v3

    .line 439
    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 344
    .end local v6    # "version":I
    .end local v8    # "supportedIsas":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "currentPackageData":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v10    # "line":Ljava/lang/String;
    .end local v16    # "currentPackage":Ljava/lang/String;
    :cond_c
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

    .line 340
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "No version line found."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic readInternal(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected readInternal(Ljava/lang/Void;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Void;

    .line 319
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 320
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 322
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 323
    invoke-virtual {p0, v1}, Lcom/android/server/pm/dex/PackageDexUsage;->read(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 329
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "PackageDexUsage"

    const-string v4, "Failed to parse package dex usage."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    nop

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 330
    throw v2

    .line 324
    :catch_1
    move-exception v2

    .line 329
    :goto_1
    nop

    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 330
    nop

    .line 331
    return-void
.end method

.method record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "owningPackageName"    # Ljava/lang/String;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "ownerUserId"    # I
    .param p4, "loaderIsa"    # Ljava/lang/String;
    .param p5, "primaryOrSplit"    # Z
    .param p6, "loadingPackageName"    # Ljava/lang/String;
    .param p7, "classLoaderContext"    # Ljava/lang/String;

    .line 129
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 132
    if-eqz v7, :cond_9

    .line 135
    const-string v0, "=UnsupportedClassLoaderContext="

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "PackageDexUsage"

    const-string v9, "Unsupported context?"

    invoke-static {v0, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return v8

    .line 140
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x1

    xor-int/2addr v0, v9

    move v10, v0

    .line 142
    .local v10, "isUsedByOtherApps":Z
    iget-object v11, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v11

    .line 143
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 144
    .local v0, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v0, :cond_2

    .line 146
    new-instance v8, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v8, v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    .line 147
    if-eqz p5, :cond_1

    .line 151
    invoke-static {v0, v3, v6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 155
    :cond_1
    new-instance v8, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v8, v10, v4, v7, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v8, "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    nop

    .line 159
    invoke-static {v8}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v12

    .line 158
    invoke-direct {v1, v2, v6, v12}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    .line 162
    invoke-static {v6, v3}, Lcom/android/server/pm/OnePlusDexOptInjector;->notifyDexoptSecondaryDex(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v8    # "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :goto_0
    iget-object v8, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit v11

    return v9

    .line 169
    :cond_2
    if-eqz p5, :cond_3

    .line 172
    invoke-static {v0, v3, v6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$000(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    monitor-exit v11

    return v8

    .line 174
    :cond_3
    new-instance v12, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    invoke-direct {v12, v10, v4, v7, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v12, "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    nop

    .line 177
    invoke-static {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v13

    .line 176
    invoke-direct {v1, v2, v6, v13}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeAddLoadingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v13

    .line 179
    .local v13, "updateLoadingPackages":Z
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 180
    .local v14, "existingData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    if-nez v14, :cond_5

    .line 182
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    const/16 v15, 0x64

    if-ge v8, v15, :cond_4

    .line 183
    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {v6, v3}, Lcom/android/server/pm/OnePlusDexOptInjector;->notifyDexoptSecondaryDex(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    monitor-exit v11

    return v9

    .line 190
    :cond_4
    monitor-exit v11

    return v13

    .line 193
    :cond_5
    invoke-static {v14}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v15

    if-ne v4, v15, :cond_8

    .line 208
    invoke-static {v14, v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$400(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v15

    if-nez v15, :cond_6

    if-eqz v13, :cond_7

    :cond_6
    move v8, v9

    :cond_7
    monitor-exit v11

    return v8

    .line 202
    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Trying to change ownerUserId for  dex path "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " from "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {v14}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10    # "isUsedByOtherApps":Z
    .end local p0    # "this":Lcom/android/server/pm/dex/PackageDexUsage;
    .end local p1    # "owningPackageName":Ljava/lang/String;
    .end local p2    # "dexPath":Ljava/lang/String;
    .end local p3    # "ownerUserId":I
    .end local p4    # "loaderIsa":Ljava/lang/String;
    .end local p5    # "primaryOrSplit":Z
    .end local p6    # "loadingPackageName":Ljava/lang/String;
    .end local p7    # "classLoaderContext":Ljava/lang/String;
    throw v8

    .line 212
    .end local v0    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v12    # "newData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v13    # "updateLoadingPackages":Z
    .end local v14    # "existingData":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local v10    # "isUsedByOtherApps":Z
    .restart local p0    # "this":Lcom/android/server/pm/dex/PackageDexUsage;
    .restart local p1    # "owningPackageName":Ljava/lang/String;
    .restart local p2    # "dexPath":Ljava/lang/String;
    .restart local p3    # "ownerUserId":I
    .restart local p4    # "loaderIsa":Ljava/lang/String;
    .restart local p5    # "primaryOrSplit":Z
    .restart local p6    # "loadingPackageName":Ljava/lang/String;
    .restart local p7    # "classLoaderContext":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 133
    .end local v10    # "isUsedByOtherApps":Z
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v8, "Null classLoaderContext"

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loaderIsa "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is unsupported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "dexFile"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 619
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 620
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 621
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_0

    .line 622
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 624
    :cond_0
    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Ljava/lang/String;I)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 625
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

    .line 573
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 574
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

    .line 575
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

    .line 586
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 587
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 588
    .local v1, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v1, :cond_0

    .line 589
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 591
    :cond_0
    const/4 v2, 0x0

    .line 592
    .local v2, "updated":Z
    nop

    .line 593
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 594
    .local v3, "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 595
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 596
    .local v4, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v4}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 597
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 598
    const/4 v2, 0x1

    .line 600
    .end local v4    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_1
    goto :goto_0

    .line 603
    :cond_2
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 604
    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v4

    if-nez v4, :cond_3

    .line 605
    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const/4 v2, 0x1

    .line 608
    :cond_3
    monitor-exit v0

    return v2

    .line 609
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

.method syncData(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 19
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
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 488
    .local p1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .local p2, "packageToCodePaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local p3, "packagesToKeepDataAbout":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    monitor-enter v4

    .line 489
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 490
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 491
    .local v0, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 492
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 493
    .local v5, "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 494
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 497
    goto :goto_0

    .line 499
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 500
    .local v7, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 501
    .local v8, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v8, :cond_1

    .line 503
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move-object/from16 v10, p2

    goto/16 :goto_5

    .line 507
    :cond_1
    nop

    .line 508
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 509
    .local v9, "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 510
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 511
    .local v10, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-static {v10}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 513
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    .end local v10    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_2
    goto :goto_1

    .line 518
    :cond_3
    move-object/from16 v10, p2

    :try_start_1
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 520
    .local v11, "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 521
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$500(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 522
    .local v12, "recordedIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 523
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 524
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 525
    .local v14, "recordedCodePath":Ljava/lang/String;
    invoke-interface {v11, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 527
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 530
    :cond_4
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    .line 531
    .local v15, "recordedLoadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 532
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 533
    .local v16, "recordedLoadingPackagesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 534
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .line 535
    .local v18, "recordedLoadingPackage":Ljava/lang/String;
    move-object/from16 v1, v18

    .end local v18    # "recordedLoadingPackage":Ljava/lang/String;
    .local v1, "recordedLoadingPackage":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 536
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 537
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 539
    .end local v1    # "recordedLoadingPackage":Ljava/lang/String;
    :cond_5
    move-object/from16 v1, p0

    goto :goto_3

    .line 541
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v14    # "recordedCodePath":Ljava/lang/String;
    .end local v15    # "recordedLoadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "recordedLoadingPackagesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    :goto_4
    move-object/from16 v1, p0

    goto :goto_2

    .line 543
    :cond_7
    invoke-virtual {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v1

    if-nez v1, :cond_8

    .line 544
    invoke-static {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->access$100(Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 547
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 550
    .end local v5    # "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local v8    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v9    # "dIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;>;"
    .end local v11    # "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "recordedIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_8
    :goto_5
    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 491
    :cond_9
    move-object/from16 v10, p2

    .line 551
    .end local v0    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;>;"
    monitor-exit v4

    .line 552
    return-void

    .line 551
    :catchall_0
    move-exception v0

    move-object/from16 v10, p2

    :goto_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6
.end method

.method write(Ljava/io/Writer;)V
    .locals 18
    .param p1, "out"    # Ljava/io/Writer;

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/dex/PackageDexUsage;->clonePackageUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 277
    .local v0, "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 280
    .local v1, "fpw":Lcom/android/internal/util/FastPrintWriter;
    const-string v3, "PACKAGE_MANAGER__PACKAGE_DEX_USAGE__"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 281
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(I)V

    .line 283
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

    .line 285
    .local v5, "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 286
    .local v6, "packageName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 287
    .local v7, "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v1, v6}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 291
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

    .line 292
    .local v9, "codeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 293
    .local v12, "codePath":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    .line 294
    .local v13, "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 295
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v13}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 296
    .end local v9    # "codeEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v12    # "codePath":Ljava/lang/String;
    .end local v13    # "loadingPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 299
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

    .line 300
    .local v9, "dEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 301
    .local v12, "dexPath":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 302
    .local v13, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 303
    new-array v14, v3, [Ljava/lang/CharSequence;

    const/4 v15, 0x0

    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$300(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    .line 304
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$600(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z

    move-result v3

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    .end local v0    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .local v17, "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    invoke-direct {v0, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->writeBoolean(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v15

    .line 303
    invoke-static {v11, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 305
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

    .line 306
    .local v14, "isa":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/android/internal/util/FastPrintWriter;->print(Ljava/lang/String;)V

    .line 307
    .end local v14    # "isa":Ljava/lang/String;
    goto :goto_3

    .line 308
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->println()V

    .line 309
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-static {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->access$200(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;

    move-result-object v14

    invoke-static {v11, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/FastPrintWriter;->println(Ljava/lang/String;)V

    .line 312
    .end local v9    # "dEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v12    # "dexPath":Ljava/lang/String;
    .end local v13    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    move-object/from16 v0, v17

    const/4 v3, 0x2

    goto/16 :goto_2

    .line 299
    .end local v17    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .restart local v0    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    :cond_2
    move-object/from16 v17, v0

    move-object/from16 v0, p0

    .line 313
    .end local v0    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .end local v5    # "pEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local v17    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    move-object/from16 v0, v17

    const/4 v3, 0x2

    goto/16 :goto_0

    .line 314
    .end local v17    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    .restart local v0    # "packageUseInfoMapClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;>;"
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 315
    return-void
.end method

.method protected bridge synthetic writeInternal(Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method protected writeInternal(Ljava/lang/Void;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Void;

    .line 237
    invoke-virtual {p0}, Lcom/android/server/pm/dex/PackageDexUsage;->getFile()Landroid/util/AtomicFile;

    move-result-object v0

    .line 238
    .local v0, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 241
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 242
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 243
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {p0, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->write(Ljava/io/Writer;)V

    .line 244
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 245
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 250
    :cond_0
    const-string v3, "PackageDexUsage"

    const-string v4, "Failed to write usage for dex files"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method writeNow()V
    .locals 1

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeInternal(Ljava/lang/Void;)V

    .line 233
    return-void
.end method
