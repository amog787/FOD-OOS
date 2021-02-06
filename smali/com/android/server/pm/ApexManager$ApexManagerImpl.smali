.class public Lcom/android/server/pm/ApexManager$ApexManagerImpl;
.super Lcom/android/server/pm/ApexManager;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ApexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ApexManagerImpl"
.end annotation


# instance fields
.field private mActiveApexInfosCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAllPackagesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApksInApex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mErrorWithApkInApex:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPackageNameToApexModuleName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 373
    invoke-direct {p0}, Lcom/android/server/pm/ApexManager;-><init>()V

    .line 374
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 384
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    .line 391
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Set;

    return-void
.end method

.method private static isActive(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 416
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scanApexPackagesInternalLocked(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 17
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 475
    move-object/from16 v1, p0

    const-string v2, "ApexManager"

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    .line 476
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0}, Landroid/apex/IApexService;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .local v0, "allPkgs":[Landroid/apex/ApexInfo;
    nop

    .line 482
    array-length v3, v0

    if-nez v3, :cond_0

    .line 483
    return-void

    .line 485
    :cond_0
    const v3, 0x80000c0

    .line 488
    .local v3, "flags":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 489
    .local v4, "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    new-instance v5, Lcom/android/server/pm/ParallelPackageParser;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/ParallelPackageParser;-><init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 492
    .local v5, "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    array-length v8, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget-object v10, v0, v9

    .line 493
    .local v10, "ai":Landroid/apex/ApexInfo;
    new-instance v11, Ljava/io/File;

    iget-object v12, v10, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 494
    .local v11, "apexFile":Ljava/io/File;
    const/16 v12, 0x20

    invoke-virtual {v5, v11, v12}, Lcom/android/server/pm/ParallelPackageParser;->submit(Ljava/io/File;I)V

    .line 495
    invoke-virtual {v4, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .end local v10    # "ai":Landroid/apex/ApexInfo;
    .end local v11    # "apexFile":Ljava/io/File;
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 498
    :cond_1
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 499
    .local v8, "activePackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 501
    .local v9, "factoryPackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 502
    invoke-virtual {v5}, Lcom/android/server/pm/ParallelPackageParser;->take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    move-result-object v11

    .line 503
    .local v11, "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    iget-object v12, v11, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;

    .line 504
    .local v12, "throwable":Ljava/lang/Throwable;
    iget-object v13, v11, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/apex/ApexInfo;

    .line 506
    .local v13, "ai":Landroid/apex/ApexInfo;
    if-nez v12, :cond_7

    .line 507
    iget-object v14, v11, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    const v15, 0x80000c0

    invoke-static {v14, v13, v15}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generate(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 509
    .local v14, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_6

    .line 513
    iget-object v15, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v15, v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    move-object/from16 v16, v0

    .end local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .local v16, "allPkgs":[Landroid/apex/ApexInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, v13, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v15, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-boolean v0, v13, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 521
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 517
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Two active packages have the same name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_3
    :goto_2
    iget-boolean v0, v13, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v0, :cond_5

    .line 524
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 529
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 525
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Two factory packages have the same name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_5
    :goto_3
    goto :goto_4

    .line 510
    .end local v16    # "allPkgs":[Landroid/apex/ApexInfo;
    .restart local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .restart local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    move-object/from16 v16, v0

    .end local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .restart local v16    # "allPkgs":[Landroid/apex/ApexInfo;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to generate package info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "allPkgs":[Landroid/apex/ApexInfo;
    .restart local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    :cond_7
    move-object/from16 v16, v0

    .end local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .restart local v16    # "allPkgs":[Landroid/apex/ApexInfo;
    instance-of v0, v12, Landroid/content/pm/PackageParser$PackageParserException;

    if-eqz v0, :cond_9

    .line 532
    move-object v0, v12

    check-cast v0, Landroid/content/pm/PackageParser$PackageParserException;

    .line 534
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    iget v1, v0, Landroid/content/pm/PackageParser$PackageParserException;->error:I

    const/16 v14, -0x7b

    if-ne v1, v14, :cond_8

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Scan apex failed, not a coreApp:"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    nop

    .line 501
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v11    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .end local v12    # "throwable":Ljava/lang/Throwable;
    .end local v13    # "ai":Landroid/apex/ApexInfo;
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto/16 :goto_1

    .line 538
    .restart local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v11    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .restart local v12    # "throwable":Ljava/lang/Throwable;
    .restart local v13    # "ai":Landroid/apex/ApexInfo;
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to parse: "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v13, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 540
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception occurred while parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 544
    .end local v10    # "i":I
    .end local v11    # "parseResult":Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .end local v12    # "throwable":Ljava/lang/Throwable;
    .end local v13    # "ai":Landroid/apex/ApexInfo;
    .end local v16    # "allPkgs":[Landroid/apex/ApexInfo;
    .local v0, "allPkgs":[Landroid/apex/ApexInfo;
    :cond_a
    return-void

    .line 478
    .end local v0    # "allPkgs":[Landroid/apex/ApexInfo;
    .end local v3    # "flags":I
    .end local v4    # "parsingApexInfo":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/io/File;Landroid/apex/ApexInfo;>;"
    .end local v5    # "parallelPackageParser":Lcom/android/server/pm/ParallelPackageParser;
    .end local v8    # "activePackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9    # "factoryPackagesSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 479
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve packages from apexservice: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method abortStagedSession(I)Z
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 734
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/apex/IApexService;->abortStagedSession(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    return v0

    .line 739
    :catch_0
    move-exception v1

    .line 740
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to abort staged session : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 736
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 737
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    const/4 v1, 0x0

    return v1
.end method

.method public destroyCeSnapshotsNotSpecified(I[I)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "retainRollbackIds"    # [I

    .line 874
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/apex/IApexService;->destroyCeSnapshotsNotSpecified(I[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    const/4 v0, 0x1

    return v0

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApexManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    const/4 v1, 0x0

    return v1
.end method

.method public destroyDeSnapshots(I)Z
    .locals 3
    .param p1, "rollbackId"    # I

    .line 863
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/apex/IApexService;->destroyDeSnapshots(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    const/4 v0, 0x1

    return v0

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApexManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    const/4 v1, 0x0

    return v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 914
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    const/16 v2, 0x78

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 916
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 917
    const-string v1, "APEX session state:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 919
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v1

    invoke-interface {v1}, Landroid/apex/IApexService;->getSessions()[Landroid/apex/ApexSessionInfo;

    move-result-object v1

    .line 920
    .local v1, "sessions":[Landroid/apex/ApexSessionInfo;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    .line 921
    .local v4, "si":Landroid/apex/ApexSessionInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/apex/ApexSessionInfo;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 923
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-eqz v5, :cond_0

    .line 924
    const-string v5, "State: UNKNOWN"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 925
    :cond_0
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isVerified:Z

    if-eqz v5, :cond_1

    .line 926
    const-string v5, "State: VERIFIED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 927
    :cond_1
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isStaged:Z

    if-eqz v5, :cond_2

    .line 928
    const-string v5, "State: STAGED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 929
    :cond_2
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-eqz v5, :cond_3

    .line 930
    const-string v5, "State: ACTIVATED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 931
    :cond_3
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-eqz v5, :cond_4

    .line 932
    const-string v5, "State: ACTIVATION FAILED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 933
    :cond_4
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-eqz v5, :cond_5

    .line 934
    const-string v5, "State: SUCCESS"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 935
    :cond_5
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    if-eqz v5, :cond_6

    .line 936
    const-string v5, "State: REVERT IN PROGRESS"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 937
    :cond_6
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isReverted:Z

    if-eqz v5, :cond_7

    .line 938
    const-string v5, "State: REVERTED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 939
    :cond_7
    iget-boolean v5, v4, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    if-eqz v5, :cond_8

    .line 940
    const-string v5, "State: REVERT FAILED"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 942
    :cond_8
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 920
    nop

    .end local v4    # "si":Landroid/apex/ApexSessionInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 944
    :cond_9
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 945
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 946
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    if-nez v2, :cond_a

    .line 947
    const-string v2, "APEX packages have not been scanned"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 948
    return-void

    .line 950
    :cond_a
    const-string v2, "Active APEX packages:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getActivePackages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 952
    const-string v2, "Inactive APEX packages:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getInactivePackages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 954
    const-string v2, "Factory APEX packages:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->getFactoryPackages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    .end local v1    # "sessions":[Landroid/apex/ApexSessionInfo;
    goto :goto_2

    .line 956
    :catch_0
    move-exception v1

    .line 957
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Couldn\'t communicate with apexd."

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 959
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method dumpFromPackagesCache(Ljava/util/List;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            ")V"
        }
    .end annotation

    .line 893
    .local p1, "packagesCache":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 894
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 895
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 896
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 897
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz p2, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 898
    goto :goto_1

    .line 900
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 903
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 904
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 905
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsFactory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 895
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 908
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 909
    invoke-virtual {p3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 910
    return-void
.end method

.method public getActiveApexInfos()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation

    .line 432
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "ApexManagerTiming"

    const-wide/32 v2, 0x40000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    .line 434
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    if-nez v2, :cond_1

    .line 436
    const-string v2, "getActiveApexInfos_noCache"

    invoke-virtual {v0, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :try_start_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    .line 439
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v2

    invoke-interface {v2}, Landroid/apex/IApexService;->getActivePackages()[Landroid/apex/ApexInfo;

    move-result-object v2

    .line 440
    .local v2, "activePackages":[Landroid/apex/ApexInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 441
    aget-object v4, v2, v3

    .line 442
    .local v4, "apexInfo":Landroid/apex/ApexInfo;
    iget-object v5, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    new-instance v6, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lcom/android/server/pm/ApexManager$ActiveApexInfo;-><init>(Landroid/apex/ApexInfo;Lcom/android/server/pm/ApexManager$1;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    nop

    .end local v4    # "apexInfo":Landroid/apex/ApexInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 446
    .end local v2    # "activePackages":[Landroid/apex/ApexInfo;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 444
    :catch_0
    move-exception v2

    .line 445
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "ApexManager"

    const-string v4, "Unable to retrieve packages from apexservice"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 449
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    if-eqz v2, :cond_2

    .line 450
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v2

    .line 452
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 454
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getActiveApexPackageNameContainingPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 7
    .param p1, "containedPackage"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 627
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "APEX packages have not been scanned"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 630
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 634
    .local v1, "numApksInApex":I
    const/4 v2, 0x0

    .local v2, "apkInApexNum":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 635
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 636
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 635
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 637
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 639
    .local v3, "apexModuleName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 640
    .local v4, "numApexPkgs":I
    const/4 v5, 0x0

    .local v5, "apexPkgNum":I
    :goto_2
    if-ge v5, v4, :cond_2

    .line 641
    iget-object v6, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 643
    iget-object v6, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    monitor-exit v0

    return-object v6

    .line 640
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 634
    .end local v3    # "apexModuleName":Ljava/lang/String;
    .end local v4    # "numApexPkgs":I
    .end local v5    # "apexPkgNum":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 648
    .end local v1    # "numApksInApex":I
    .end local v2    # "apkInApexNum":I
    :cond_3
    monitor-exit v0

    .line 650
    const/4 v0, 0x0

    return-object v0

    .line 648
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getActivePackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "APEX packages have not been scanned"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v0, "activePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 573
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 574
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 575
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 578
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "apexPackageName"    # Ljava/lang/String;

    .line 812
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 815
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 816
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "apexPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 801
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 802
    .local v1, "moduleName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 803
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 805
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    monitor-exit v0

    return-object v2

    .line 806
    .end local v1    # "moduleName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getFactoryPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "APEX packages have not been scanned"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v0, "factoryPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 587
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 588
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 589
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 592
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method getInactivePackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "APEX packages have not been scanned"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 599
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v0, "inactivePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 601
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 602
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 603
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 606
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 550
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "APEX packages have not been scanned"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 552
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 553
    .local v0, "matchActive":Z
    :goto_1
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_2

    move v1, v2

    .line 554
    .local v1, "matchFactory":Z
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_2
    if-ge v2, v3, :cond_7

    .line 555
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 556
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 557
    goto :goto_3

    .line 559
    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v4}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isActive(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    if-eqz v1, :cond_6

    .line 560
    invoke-static {v4}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isFactory(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 561
    :cond_5
    return-object v4

    .line 554
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 564
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
    .locals 3
    .param p1, "sessionId"    # I

    .line 656
    nop

    .line 657
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/apex/IApexService;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v0

    .line 658
    .local v0, "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    iget-boolean v1, v0, Landroid/apex/ApexSessionInfo;->isUnknown:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 659
    const/4 v1, 0x0

    return-object v1

    .line 661
    :cond_0
    return-object v0

    .line 662
    .end local v0    # "apexSessionInfo":Landroid/apex/ApexSessionInfo;
    :catch_0
    move-exception v0

    .line 663
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 664
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method isApexPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 611
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->isApexSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v3, "APEX packages have not been scanned"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 614
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 615
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mAllPackagesCache:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 616
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 617
    return v2

    .line 614
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 620
    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_3
    return v1
.end method

.method isApexSupported()Z
    .locals 1

    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method isApkInApexInstallSuccess(Ljava/lang/String;)Z
    .locals 5
    .param p1, "apexPackageName"    # Ljava/lang/String;

    .line 785
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 786
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "APEX packages have not been scanned"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 788
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 789
    .local v1, "moduleName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 790
    monitor-exit v0

    return v3

    .line 792
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    monitor-exit v0

    return v2

    .line 793
    .end local v1    # "moduleName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method markStagedSessionReady(I)V
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 687
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/apex/IApexService;->markStagedSessionReady(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    nop

    .line 696
    return-void

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to mark apexd session as ready : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 688
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 689
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 690
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method markStagedSessionSuccessful(I)V
    .locals 4
    .param p1, "sessionId"    # I

    .line 701
    const-string v0, "ApexManager"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/apex/IApexService;->markStagedSessionSuccessful(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    goto :goto_0

    .line 705
    :catch_0
    move-exception v1

    .line 708
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to mark session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as successful"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 702
    :catch_1
    move-exception v1

    .line 703
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "Unable to contact apexservice"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method registerApkInApex(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 758
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 760
    .local v2, "aai":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 761
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    iget-object v4, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 762
    .local v3, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 763
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v4

    .line 764
    iget-object v4, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mApksInApex:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    .end local v2    # "aai":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    .end local v3    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 769
    :cond_2
    monitor-exit v0

    .line 770
    return-void

    .line 769
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method reportErrorWithApkInApex(Ljava/lang/String;)V
    .locals 5
    .param p1, "scanDirPath"    # Ljava/lang/String;

    .line 774
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 775
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mActiveApexInfosCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 776
    .local v2, "aai":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    iget-object v3, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 777
    iget-object v3, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mErrorWithApkInApex:Ljava/util/Set;

    iget-object v4, v2, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 779
    .end local v2    # "aai":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    :cond_0
    goto :goto_0

    .line 780
    :cond_1
    monitor-exit v0

    .line 781
    return-void

    .line 780
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restoreCeData(IILjava/lang/String;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "rollbackId"    # I
    .param p3, "apexPackageName"    # Ljava/lang/String;

    .line 842
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "APEX packages have not been scanned"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 845
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 846
    .local v1, "apexModuleName":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    if-nez v1, :cond_1

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid apex package name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ApexManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return v3

    .line 852
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1, p2, v1}, Landroid/apex/IApexService;->restoreCeData(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 853
    return v2

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ApexManager"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 856
    return v3

    .line 846
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "apexModuleName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method revertActiveSessions()Z
    .locals 4

    .line 720
    const-string v0, "ApexManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v2

    invoke-interface {v2}, Landroid/apex/IApexService;->revertActiveSessions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    const/4 v0, 0x1

    return v0

    .line 725
    :catch_0
    move-exception v2

    .line 726
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    return v1

    .line 722
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 723
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to contact apexservice"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    return v1
.end method

.method scanApexPackagesTraced(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p1, "packageParser"    # Lcom/android/server/pm/parsing/PackageParser2;
    .param p2, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 460
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "scanApexPackagesTraced"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 462
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 463
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->scanApexPackagesInternalLocked(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 464
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 467
    nop

    .line 468
    return-void

    .line 464
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .end local p1    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .end local p2    # "executorService":Ljava/util/concurrent/ExecutorService;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 466
    .restart local p0    # "this":Lcom/android/server/pm/ApexManager$ApexManagerImpl;
    .restart local p1    # "packageParser":Lcom/android/server/pm/parsing/PackageParser2;
    .restart local p2    # "executorService":Ljava/util/concurrent/ExecutorService;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 467
    throw v2
.end method

.method public snapshotCeData(IILjava/lang/String;)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "rollbackId"    # I
    .param p3, "apexPackageName"    # Ljava/lang/String;

    .line 822
    iget-object v0, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 823
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "APEX packages have not been scanned"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 825
    iget-object v1, p0, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mPackageNameToApexModuleName:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 826
    .local v1, "apexModuleName":Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid apex package name: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ApexManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-wide v2

    .line 832
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-interface {v0, p1, p2, v1}, Landroid/apex/IApexService;->snapshotCeData(IILjava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v2

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ApexManager"

    invoke-static {v5, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    return-wide v2

    .line 826
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "apexModuleName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
    .locals 5
    .param p1, "params"    # Landroid/apex/ApexSessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 671
    :try_start_0
    new-instance v0, Landroid/apex/ApexInfoList;

    invoke-direct {v0}, Landroid/apex/ApexInfoList;-><init>()V

    .line 672
    .local v0, "apexInfoList":Landroid/apex/ApexInfoList;
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/apex/IApexService;->submitStagedSession(Landroid/apex/ApexSessionParams;Landroid/apex/ApexInfoList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    return-object v0

    .line 677
    .end local v0    # "apexInfoList":Landroid/apex/ApexInfoList;
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apexd verification failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 674
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 675
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "ApexManager"

    const-string v2, "Unable to contact apexservice"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method uninstallApex(Ljava/lang/String;)Z
    .locals 2
    .param p1, "apexPackagePath"    # Ljava/lang/String;

    .line 749
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/apex/IApexService;->unstagePackages(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    const/4 v0, 0x1

    return v0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method protected waitForApexService()Landroid/apex/IApexService;
    .locals 1

    .line 426
    nop

    .line 427
    const-string v0, "apexservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 426
    invoke-static {v0}, Landroid/apex/IApexService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;

    move-result-object v0

    return-object v0
.end method
