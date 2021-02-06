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

    .line 95
    invoke-direct {p0}, Landroid/content/pm/IOtaDexopt$Stub;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 98
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 99
    return-void
.end method

.method private declared-synchronized generatePackageDexopts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;I)Ljava/util/List;
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "compilationReason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/PackageSetting;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 280
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/pm/OtaDexoptService$1;

    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/pm/OtaDexoptService$1;-><init>(Lcom/android/server/pm/OtaDexoptService;Landroid/content/Context;ZLjava/util/List;)V

    .line 345
    .local v1, "collectingInstaller":Lcom/android/server/pm/Installer;
    new-instance v2, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V

    .line 348
    .local v2, "optimizer":Lcom/android/server/pm/PackageDexOptimizer;
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 351
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v3

    .line 352
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 351
    invoke-virtual {v3, v4}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v7

    new-instance v8, Lcom/android/server/pm/dex/DexoptOptions;

    .line 353
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v8, v3, p3, v4}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 348
    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-object v0

    .line 279
    .end local v0    # "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "collectingInstaller":Lcom/android/server/pm/Installer;
    .end local v2    # "optimizer":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p3    # "compilationReason":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAvailableSpace()J
    .locals 7

    .line 266
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getMainLowSpaceThreshold()J

    move-result-wide v0

    .line 268
    .local v0, "lowThreshold":J
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 269
    .local v2, "dataDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    .line 271
    .local v3, "usableSpace":J
    sub-long v5, v3, v0

    return-wide v5
.end method

.method private getMainLowSpaceThreshold()J
    .locals 5

    .line 250
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 252
    .local v0, "dataDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v1

    .line 253
    .local v1, "lowThreshold":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 256
    return-wide v1

    .line 254
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Invalid low memory threshold"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static inMegabytes(J)I
    .locals 4
    .param p0, "value"    # J

    .line 445
    const-wide/32 v0, 0x100000

    div-long v0, p0, v0

    .line 446
    .local v0, "in_mega_bytes":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 447
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

    .line 448
    const v2, 0x7fffffff

    return v2

    .line 450
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method static synthetic lambda$prepare$0(Lcom/android/server/pm/PackageSetting;)Z
    .locals 2
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 127
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$prepare$1(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)I
    .locals 4
    .param p0, "pkgSetting1"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "pkgSetting2"    # Lcom/android/server/pm/PackageSetting;

    .line 175
    nop

    .line 176
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 178
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    .line 175
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;

    .line 103
    new-instance v0, Lcom/android/server/pm/OtaDexoptService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/OtaDexoptService;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 104
    .local v0, "ota":Lcom/android/server/pm/OtaDexoptService;
    const-string/jumbo v1, "otadexopt"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    iget-object v1, p1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {v0, v1}, Lcom/android/server/pm/OtaDexoptService;->moveAbArtifacts(Lcom/android/server/pm/Installer;)V

    .line 109
    return-object v0
.end method

.method private moveAbArtifacts(Lcom/android/server/pm/Installer;)V
    .locals 18
    .param p1, "installer"    # Lcom/android/server/pm/Installer;

    .line 365
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v0, :cond_b

    .line 369
    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    const-string v2, "OTADexopt"

    if-nez v0, :cond_0

    .line 370
    const-string v0, "No upgrade, skipping A/B artifacts check."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 375
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getPackages()Ljava/util/Collection;

    move-result-object v3

    .line 376
    .local v3, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v0, 0x0

    .line 377
    .local v0, "packagePaths":I
    const/4 v4, 0x0

    .line 378
    .local v4, "pathsSuccessful":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 379
    .local v6, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v6, :cond_1

    .line 380
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 384
    :cond_1
    invoke-static {v6}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 385
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 387
    :cond_2
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 388
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

    .line 389
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 394
    :cond_3
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/system"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 395
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/vendor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 396
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/product"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 397
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/system_ext"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 398
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    goto/16 :goto_4

    .line 401
    :cond_4
    iget-object v7, v1, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/pm/PackageManagerService;->getPackageSetting(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    .line 402
    .local v7, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    nop

    .line 403
    invoke-static {v6, v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v8

    .line 404
    invoke-static {v6, v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v9

    .line 402
    invoke-static {v8, v9}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 405
    .local v8, "instructionSets":[Ljava/lang/String;
    nop

    .line 406
    invoke-static {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePathsExcludingResourceOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v9

    .line 407
    .local v9, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v8}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 408
    .local v10, "dexCodeInstructionSets":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    .line 409
    .local v13, "dexCodeInstructionSet":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 410
    .local v15, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    .line 411
    move-object/from16 v16, v3

    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .local v16, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-static {v1}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "oatDir":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    .line 417
    .end local v0    # "packagePaths":I
    .local v3, "packagePaths":I
    move/from16 v17, v3

    move-object/from16 v3, p1

    .end local v3    # "packagePaths":I
    .local v17, "packagePaths":I
    :try_start_0
    invoke-virtual {v3, v15, v13, v1}, Lcom/android/server/pm/Installer;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    add-int/lit8 v4, v4, 0x1

    .line 420
    goto :goto_3

    .line 419
    :catch_0
    move-exception v0

    .line 421
    .end local v1    # "oatDir":Ljava/lang/String;
    .end local v15    # "path":Ljava/lang/String;
    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move/from16 v0, v17

    goto :goto_2

    .line 409
    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v17    # "packagePaths":I
    .restart local v0    # "packagePaths":I
    .local v3, "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_5
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    .line 408
    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v13    # "dexCodeInstructionSet":Ljava/lang/String;
    .restart local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    goto :goto_1

    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_6
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    .line 423
    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v7    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "instructionSets":[Ljava/lang/String;
    .end local v9    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    move-object/from16 v1, p0

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 396
    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_7
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    goto :goto_4

    .line 395
    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_8
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    goto :goto_4

    .line 394
    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    :cond_9
    move-object/from16 v16, v3

    move-object/from16 v3, p1

    .line 378
    .end local v6    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v3, v16

    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    goto/16 :goto_0

    .line 424
    .end local v16    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    .restart local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
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

    .line 425
    return-void

    .line 366
    .end local v0    # "packagePaths":I
    .end local v3    # "pkgs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
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

    .line 454
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 456
    .local v0, "finalTime":J
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 457
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 456
    const-string/jumbo v4, "ota_dexopt_available_space_before_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 458
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 459
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 458
    const-string/jumbo v4, "ota_dexopt_available_space_after_bulk_delete_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 460
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 461
    invoke-static {v3, v4}, Lcom/android/server/pm/OtaDexoptService;->inMegabytes(J)I

    move-result v3

    .line 460
    const-string/jumbo v4, "ota_dexopt_available_space_after_dexopt_mb"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 463
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    const-string/jumbo v4, "ota_dexopt_num_important_packages"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 464
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    const-string/jumbo v4, "ota_dexopt_num_other_packages"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 466
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    const-string/jumbo v4, "ota_dexopt_num_commands"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 467
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v3, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    const-string/jumbo v4, "ota_dexopt_num_commands_executed"

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 469
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    sub-long v3, v0, v3

    .line 470
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 471
    .local v2, "elapsedTimeSeconds":I
    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v4, "ota_dexopt_time_s"

    invoke-virtual {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 472
    return-void
.end method

.method private prepareMetricsLogging(IIJJ)V
    .locals 2
    .param p1, "important"    # I
    .param p2, "others"    # I
    .param p3, "spaceBegin"    # J
    .param p5, "spaceBulk"    # J

    .line 431
    iput-wide p3, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceBefore:J

    .line 432
    iput-wide p5, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterBulkDelete:J

    .line 433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 435
    iput p1, p0, Lcom/android/server/pm/OtaDexoptService;->importantPackageCount:I

    .line 436
    iput p2, p0, Lcom/android/server/pm/OtaDexoptService;->otherPackageCount:I

    .line 438
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountTotal:I

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 441
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->otaDexoptTimeStart:J

    .line 442
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

    .line 195
    :try_start_0
    const-string v0, "OTADexopt"

    const-string v1, "Cleaning up OTA Dexopt state."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 198
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/pm/OtaDexoptService;->availableSpaceAfterDexopt:J

    .line 200
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->performMetricsLogging()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 194
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

    .line 361
    :try_start_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
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

    .line 215
    :try_start_0
    iget v0, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 216
    const/high16 v0, 0x3f800000    # 1.0f

    monitor-exit p0

    return v0

    .line 218
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 219
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

    .line 214
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

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 206
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "done() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
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

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "(all done)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 232
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    .local v0, "next":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 235
    iget v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/pm/OtaDexoptService;->dexoptCommandCountExecuted:I

    .line 237
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

    .line 238
    monitor-exit p0

    return-object v0

    .line 241
    :cond_1
    :try_start_2
    const-string v1, "OTADexopt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space for OTA dexopt, stopping with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 242
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " commands left."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 245
    const-string v1, "(no free space)"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 225
    .end local v0    # "next":Ljava/lang/String;
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "dexoptNextPackage() called before prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
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

    .line 115
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

    .line 117
    return-void
.end method

.method public declared-synchronized prepare()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    if-nez v0, :cond_5

    .line 126
    sget-object v0, Lcom/android/server/pm/-$$Lambda$OtaDexoptService$-kxeeF3jeQWWNnvm1X8l5hpWPQ8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$OtaDexoptService$-kxeeF3jeQWWNnvm1X8l5hpWPQ8;

    .line 128
    .local v0, "isPlatformPackage":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageSetting;>;"
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 131
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x1

    .line 130
    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;Z)Ljava/util/List;

    move-result-object v2

    .line 134
    .local v2, "important":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 136
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    .local v3, "others":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 138
    sget-object v4, Lcom/android/server/pm/PackageManagerServiceUtils;->REMOVE_IF_NULL_PKG:Ljava/util/function/Predicate;

    invoke-interface {v3, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 139
    invoke-interface {v3, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 142
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    .line 143
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 146
    .local v4, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v5, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/4 v7, 0x4

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    nop

    .end local v4    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 149
    .end local p0    # "this":Lcom/android/server/pm/OtaDexoptService;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 151
    .restart local v4    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCoreApp()Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    iget-object v5, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    iget-object v6, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/pm/OtaDexoptService;->generatePackageDexopts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    nop

    .end local v4    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 152
    .restart local v4    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "Found a core app that\'s not important"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    .end local v4    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptService;->mDexoptCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/OtaDexoptService;->completeSize:I

    .line 159
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v4

    .line 160
    .local v4, "spaceAvailable":J
    const-wide/32 v6, 0x40000000

    cmp-long v1, v4, v6

    if-gez v1, :cond_3

    .line 161
    const-string v1, "OTADexopt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Low on space, deleting oat files in an attempt to free up space: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 161
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 164
    .local v6, "pkg":Lcom/android/server/pm/PackageSetting;
    iget-object v7, p0, Lcom/android/server/pm/OtaDexoptService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/pm/PackageManagerService;->deleteOatArtifactsOfPackage(Ljava/lang/String;)V

    .line 165
    .end local v6    # "pkg":Lcom/android/server/pm/PackageSetting;
    goto :goto_2

    .line 167
    :cond_3
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptService;->getAvailableSpace()J

    move-result-wide v11

    .line 169
    .local v11, "spaceAvailableNow":J
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    move-object v6, p0

    move-wide v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/OtaDexoptService;->prepareMetricsLogging(IIJJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    :try_start_3
    sget-object v1, Lcom/android/server/pm/-$$Lambda$OtaDexoptService$f-VUEY5wfogCtnGtBDIikkJ2pcE;->INSTANCE:Lcom/android/server/pm/-$$Lambda$OtaDexoptService$f-VUEY5wfogCtnGtBDIikkJ2pcE;

    invoke-static {v2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 180
    .local v1, "lastUsed":Lcom/android/server/pm/PackageSetting;
    const-string v6, "OTADexopt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A/B OTA: lastUsed time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 180
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v6, "OTADexopt"

    const-string v7, "A/B OTA: deprioritized packages:"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 184
    .local v7, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    const-string v8, "OTADexopt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 184
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    nop

    .end local v7    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    goto :goto_3

    .line 188
    .end local v1    # "lastUsed":Lcom/android/server/pm/PackageSetting;
    :cond_4
    goto :goto_4

    .line 187
    :catch_0
    move-exception v1

    .line 190
    :goto_4
    monitor-exit p0

    return-void

    .line 143
    .end local v2    # "important":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    .end local v3    # "others":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    .end local v4    # "spaceAvailable":J
    .end local v11    # "spaceAvailableNow":J
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    .line 122
    .end local v0    # "isPlatformPackage":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/pm/PackageSetting;>;"
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already called prepare()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
