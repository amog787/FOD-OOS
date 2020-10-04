.class public Lcom/android/server/pm/OtaDexoptService;
.super Landroid/content/pm/IOtaDexopt$Stub;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
    }
.end annotation


# static fields
.field private static final BULK_DELETE_THRESHOLD:J = 0x40000000L

.field private static final DEBUG_DEXOPT:Z = true

.field private static final TAG:Ljava/lang/String; = "OTADexopt"


# instance fields
.field private availableSpaceAfterBulkDelete:J

.field private availableSpaceAfterDexopt:J

.field private availableSpaceBefore:J

.field private completeSize:I

.field private dexoptCommandCountExecuted:I

.field private dexoptCommandCountTotal:I

.field private importantPackageCount:I

.field private final mContext:Landroid/content/Context;

.field private mDexoptCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private final metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private otaDexoptTimeStart:J

.field private otherPackageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    .line 92
    invoke-direct {p0}, Landroid/content/pm/IOtaDexopt$Stub;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 95
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 96
    return-void
.end method

.method private declared-synchronized generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "compilationReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 268
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/pm/OtaDexoptService$1;

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/pm/OtaDexoptService$1;-><init>(Lcom/android/server/pm/OtaDexoptService;Landroid/content/Context;ZLjava/util/List;)V

    .line 333
    .local v1, "collectingInstaller":Lcom/android/server/pm/Installer;
    new-instance v2, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V

    .line 336
    .local v2, "optimizer":Lcom/android/server/pm/PackageDexOptimizer;
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 339
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v3

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v6

    new-instance v7, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v8, 0x4

    invoke-direct {v7, v3, p2, v8}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 336
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-object v0

    .line 267
    .end local v0    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "collectingInstaller":Lcom/android/server/pm/Installer;
    .end local v2    # "optimizer":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local p2    # "compilationReason":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAvailableSpace()J
    .locals 7

    .line 254
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getMainLowSpaceThreshold()J

    move-result-wide v0

    .line 256
    .local v0, "lowThreshold":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 257
    .local v2, "dataDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    .line 259
    .local v3, "usableSpace":J
    sub-long v5, v3, v0

    return-wide v5
.end method

.method private getMainLowSpaceThreshold()J
    .locals 5

    .line 238
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 240
    .local v0, "dataDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v1

    .line 241
    .local v1, "lowThreshold":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 244
    return-wide v1

    .line 242
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid low memory threshold"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static inMegabytes(J)I
    .locals 4
    .param p0, "value"    # J

    .line 428
    const-wide/32 v0, 0x100000

    div-long v0, p0, v0

    .line 429
    .local v0, "in_mega_bytes":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "MB of free space, overflowing range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OTADexopt"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const v2, 0x7fffffff

    return v2

    .line 433
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method static synthetic lambda$prepare$0(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .locals 4
    .param p0, "pkg1"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "pkg2"    # Landroid/content/pm/PackageParser$Package;

    .line 165
    nop

    .line 166
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 167
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    .line 165
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    .line 100
    new-instance v0, Lcom/android/server/pm/OtaDexoptService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/OtaDexoptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 101
    .local v0, "ota":Lcom/android/server/pm/OtaDexoptService;
    const-string/jumbo v1, "otadexopt"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 104
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {v0, v1}, Lcom/android/server/pm/OtaDexoptService;->moveAbArtifacts(Lcom/android/server/pm/Installer;)V

    .line 106
    return-object v0
.end method

.method private moveAbArtifacts(Lcom/android/server/pm/Installer;)V
    .locals 17
    .param p1, "installer"    # Lcom/android/server/pm/Installer;

    .line 352
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v0, :cond_b

    .line 356
    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    const-string v2, "OTADexopt"

    if-nez v0, :cond_0

    .line 357
    const-string v0, "No upgrade, skipping A/B artifacts check."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 362
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPackages()Ljava/util/Collection;

    move-result-object v3

    .line 363
    .local v3, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v0, 0x0

    .line 364
    .local v0, "packagePaths":I
    const/4 v4, 0x0

    .line 365
    .local v4, "pathsSuccessful":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 366
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v6, :cond_1

    .line 367
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 371
    :cond_1
    invoke-static {v6}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 372
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 374
    :cond_2
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " can be optimized but has null codePath"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 381
    :cond_3
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    const-string v8, "/system"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 382
    const-string v8, "/vendor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 383
    const-string v8, "/product"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    .line 384
    const-string v8, "/product_services"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 385
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 388
    :cond_4
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v7

    .line 389
    .local v7, "instructionSets":[Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v8

    .line 390
    .local v8, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v7}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 391
    .local v9, "dexCodeInstructionSets":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    aget-object v12, v9, v11

    .line 392
    .local v12, "dexCodeInstructionSet":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 393
    .local v14, "path":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    iget-object v1, v6, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 394
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "oatDir":Ljava/lang/String;
    add-int/lit8 v15, v0, 0x1

    .line 400
    .end local v0    # "packagePaths":I
    .local v15, "packagePaths":I
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .local v16, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    :try_start_0
    invoke-virtual {v3, v14, v12, v1}, Lcom/android/server/pm/Installer;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    add-int/lit8 v4, v4, 0x1

    .line 403
    goto :goto_3

    .line 402
    :catch_0
    move-exception v0

    .line 404
    .end local v1    # "oatDir":Ljava/lang/String;
    .end local v14    # "path":Ljava/lang/String;
    :goto_3
    move-object/from16 v1, p0

    move v0, v15

    move-object/from16 v3, v16

    goto :goto_2

    .line 392
    .end local v15    # "packagePaths":I
    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v0    # "packagePaths":I
    .restart local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    :cond_5
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    .line 391
    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .end local v12    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    goto :goto_1

    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    :cond_6
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    .line 406
    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "instructionSets":[Ljava/lang/String;
    .end local v8    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    move-object/from16 v1, p0

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 383
    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_7
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    goto :goto_4

    .line 382
    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    :cond_8
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    goto :goto_4

    .line 381
    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    :cond_9
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    .line 365
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v3, v16

    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    goto/16 :goto_0

    .line 407
    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .restart local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moved "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    .line 353
    .end local v0    # "packagePaths":I
    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .end local v4    # "pathsSuccessful":I
    :cond_b
    move-object/from16 v3, p1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be ota-dexopting when trying to move."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performMetricsLogging()V
    .locals 5

    .line 437
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 439
    .local v0, "finalTime":J
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 440
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 439
    const-string/jumbo v4, "ota_dexopt_available_space_before_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 441
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 442
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 441
    const-string/jumbo v4, "ota_dexopt_available_space_after_bulk_delete_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 443
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 444
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 443
    const-string/jumbo v4, "ota_dexopt_available_space_after_dexopt_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 446
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    const-string/jumbo v4, "ota_dexopt_num_important_packages"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 447
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    const-string/jumbo v4, "ota_dexopt_num_other_packages"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 449
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    const-string/jumbo v4, "ota_dexopt_num_commands"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 450
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    const-string/jumbo v4, "ota_dexopt_num_commands_executed"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 452
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    sub-long v3, v0, v3

    .line 453
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 454
    .local v2, "elapsedTimeSeconds":I
    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v4, "ota_dexopt_time_s"

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 455
    return-void
.end method

.method private prepareMetricsLogging(IIJJ)V
    .locals 2
    .param p1, "important"    # I
    .param p2, "others"    # I
    .param p3, "spaceBegin"    # J
    .param p5, "spaceBulk"    # J

    .line 414
    iput-wide p3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 415
    iput-wide p5, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 416
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 418
    iput p1, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    .line 419
    iput p2, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    .line 421
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    .line 422
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 424
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    .line 425
    return-void
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 183
    :try_start_0
    const-string v0, "OTADexopt"

    const-string v1, "Cleaning up OTA Dexopt state."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 186
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 188
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->performMetricsLogging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 182
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dexoptNextPackage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 204
    const/high16 v0, 0x3f800000    # 1.0f

    monitor-exit p0

    return v0

    .line 206
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 207
    .local v0, "commandsLeft":I
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v2, v2

    div-float/2addr v1, v2

    monitor-exit p0

    return v1

    .line 202
    .end local v0    # "commandsLeft":I
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 194
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "done() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextDexoptCommand()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "(all done)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 220
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    .local v0, "next":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 223
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 225
    const-string v1, "OTADexopt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    monitor-exit p0

    return-object v0

    .line 229
    :cond_1
    :try_start_2
    const-string v1, "OTADexopt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space for OTA dexopt, stopping with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 230
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " commands left."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 233
    const-string v1, "(no free space)"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 213
    .end local v0    # "next":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dexoptNextPackage() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 112
    new-instance v0, Lcom/android/server/pm/OtaDexoptShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/pm/OtaDexoptShellCommand;-><init>(Lcom/android/server/pm/OtaDexoptService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/OtaDexoptShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 114
    return-void
.end method

.method public declared-synchronized prepare()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 125
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    .line 126
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v3, 0x1

    .line 125
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "important":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 130
    .local v2, "others":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 134
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 137
    .local v3, "p":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v5, 0x4

    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    nop

    .end local v3    # "p":Landroid/content/pm/PackageParser$Package;
    goto :goto_0

    .line 139
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 141
    .restart local v3    # "p":Landroid/content/pm/PackageParser$Package;
    iget-boolean v4, v3, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    if-nez v4, :cond_1

    .line 144
    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v5, 0x0

    .line 145
    invoke-direct {p0, v3, v5}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Landroid/content/pm/PackageParser$Package;I)Ljava/util/List;

    move-result-object v5

    .line 144
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    nop

    .end local v3    # "p":Landroid/content/pm/PackageParser$Package;
    goto :goto_1

    .line 142
    .restart local v3    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Found a core app that\'s not important"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    .end local v3    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    .line 149
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v3

    .line 150
    .local v3, "spaceAvailable":J
    const-wide/32 v5, 0x40000000

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    .line 151
    const-string v0, "OTADexopt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Low on space, deleting oat files in an attempt to free up space: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 154
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)V

    .line 155
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_2

    .line 157
    :cond_3
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v10

    .line 159
    .local v10, "spaceAvailableNow":J
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    move-object v5, p0

    move-wide v8, v3

    invoke-direct/range {v5 .. v11}, Lcom/android/server/pm/OtaDexoptService;->prepareMetricsLogging(IIJJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    :try_start_3
    sget-object v0, Lcom/android/server/pm/-$$Lambda$OtaDexoptService$ZaCsBw0Yn3yN1RRrIRZV-KyDrWE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$OtaDexoptService$ZaCsBw0Yn3yN1RRrIRZV-KyDrWE;

    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 168
    .local v0, "lastUsed":Landroid/content/pm/PackageParser$Package;
    const-string v5, "OTADexopt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A/B OTA: lastUsed time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v5, "OTADexopt"

    const-string v6, "A/B OTA: deprioritized packages:"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 172
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    const-string v7, "OTADexopt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v6}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    nop

    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_3

    .line 176
    .end local v0    # "lastUsed":Landroid/content/pm/PackageParser$Package;
    :cond_4
    goto :goto_4

    .line 175
    :catch_0
    move-exception v0

    .line 178
    :goto_4
    monitor-exit p0

    return-void

    .line 134
    .end local v1    # "important":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v2    # "others":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    .end local v3    # "spaceAvailable":J
    .end local v10    # "spaceAvailableNow":J
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 119
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already called prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 117
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
