.class public Lcom/android/server/pm/PackageDexOptimizer;
.super Ljava/lang/Object;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
    }
.end annotation


# static fields
.field public static final DEX_OPT_FAILED:I = -0x1

.field public static final DEX_OPT_PERFORMED:I = 0x1

.field public static final DEX_OPT_SKIPPED:I = 0x0

.field static final OAT_DIR_NAME:Ljava/lang/String; = "oat"

.field private static final TAG:Ljava/lang/String; = "PackageManager.DexOptimizer"

.field private static final WAKELOCK_TIMEOUT_MS:J = 0xa1220L


# instance fields
.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "wakeLockTag"    # Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 103
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 105
    const-string/jumbo v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 106
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .locals 1
    .param p1, "from"    # Lcom/android/server/pm/PackageDexOptimizer;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 111
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 112
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 113
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 114
    return-void
.end method

.method private acquireWakeLockLI(I)J
    .locals 3
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 371
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 372
    const-wide/16 v0, -0x1

    return-wide v0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xa1220

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 118
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 122
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "dexInstructionSet"    # Ljava/lang/String;

    .line 687
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    return-object v1

    .line 694
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->canHaveOatDir()Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    return-object v1

    .line 697
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 702
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 704
    .local v2, "oatDir":Ljava/io/File;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    nop

    .line 709
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 705
    :catch_0
    move-exception v3

    .line 706
    .local v3, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v4, "PackageManager.DexOptimizer"

    const-string v5, "Failed to create oat dir"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    return-object v1

    .line 711
    .end local v2    # "oatDir":Ljava/io/File;
    .end local v3    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_2
    return-object v1
.end method

.method private dexOptPath(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I
    .locals 30
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isa"    # Ljava/lang/String;
    .param p4, "compilerFilter"    # Ljava/lang/String;
    .param p5, "profileUpdated"    # Z
    .param p6, "classLoaderContext"    # Ljava/lang/String;
    .param p7, "dexoptFlags"    # I
    .param p8, "uid"    # I
    .param p9, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p10, "downgrade"    # Z
    .param p11, "profileName"    # Ljava/lang/String;
    .param p12, "dexMetadataPath"    # Ljava/lang/String;
    .param p13, "compilationReason"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 291
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p5

    move/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v1

    .line 293
    .local v1, "dexoptNeeded":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 294
    return v2

    .line 300
    :cond_0
    invoke-direct {v8, v9, v14}, Lcom/android/server/pm/PackageDexOptimizer;->createOatDirIfSupported(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "oatDir":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running dexopt (dexoptNeeded="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") on: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isa="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dexoptFlags="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    move/from16 v4, p7

    invoke-direct {v8, v4}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " targetFilter="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " oatDir="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " classLoaderContext="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    const-string v7, "PackageManager.DexOptimizer"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-wide/from16 v27, v10

    .line 314
    .local v27, "startTime":J
    iget-object v10, v8, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v12, v9, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    const/16 v22, 0x0

    iget-object v2, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v29, 0x1

    if-eqz p12, :cond_1

    move/from16 v4, v29

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 318
    :goto_0
    move/from16 v5, p13

    invoke-direct {v8, v5, v4}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    move-result-object v26
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 314
    move-object v4, v11

    move-object/from16 v11, p2

    move-object/from16 v19, v12

    move/from16 v12, p8

    move-object v5, v13

    move-object v13, v0

    move-object/from16 v14, p3

    move-object v6, v15

    move v15, v1

    move-object/from16 v16, v3

    move/from16 v17, p7

    move-object/from16 v18, p4

    move-object/from16 v20, p6

    move-object/from16 v21, v4

    move/from16 v23, v2

    move-object/from16 v24, p11

    move-object/from16 v25, p12

    :try_start_1
    invoke-virtual/range {v10 .. v26}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    if-eqz v5, :cond_2

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 322
    .local v10, "endTime":J
    sub-long v12, v10, v27

    long-to-int v0, v12

    int-to-long v12, v0

    invoke-virtual {v5, v6, v12, v13}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 324
    .end local v10    # "endTime":J
    :cond_2
    return v29

    .line 325
    .end local v27    # "startTime":J
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    .line 326
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_1
    const-string v2, "Failed to dexopt"

    invoke-static {v7, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    const/4 v2, -0x1

    return v2
.end method

.method private dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 29
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 402
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptOnlySharedDex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const/4 v0, 0x0

    return v0

    .line 408
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v3

    .line 408
    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "compilerFilter":Ljava/lang/String;
    move-object/from16 v14, p4

    invoke-direct {v1, v2, v0, v14}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    .line 414
    .local v3, "dexoptFlags":I
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/16 v20, -0x1

    const-string v13, "PackageManager.DexOptimizer"

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 415
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 416
    or-int/lit16 v3, v3, 0x100

    move v12, v3

    goto :goto_0

    .line 417
    :cond_1
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 418
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 419
    or-int/lit16 v3, v3, 0x80

    move v12, v3

    .line 424
    .end local v3    # "dexoptFlags":I
    .local v12, "dexoptFlags":I
    :goto_0
    const/4 v3, 0x0

    .line 425
    .local v3, "classLoaderContext":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnknownClassLoaderContext()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isVariableClassLoaderContext()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 430
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    move-object v11, v0

    move-object v10, v3

    goto :goto_2

    .line 428
    :cond_3
    :goto_1
    const-string v0, "extract"

    move-object v11, v0

    move-object v10, v3

    .line 433
    .end local v0    # "compilerFilter":Ljava/lang/String;
    .end local v3    # "classLoaderContext":Ljava/lang/String;
    .local v10, "classLoaderContext":Ljava/lang/String;
    .local v11, "compilerFilter":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v21

    .line 434
    .local v21, "reason":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running dexopt on: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isa="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dexoptFlags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-direct {v1, v12}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " target-filter="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " class-loader-context="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 447
    .local v7, "isa":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 450
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v17

    move-object/from16 v18, v9

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v19, 0x0

    const/16 v22, 0x0

    .line 451
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v23
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 447
    move-object/from16 v24, v4

    move-object/from16 v4, p2

    move-object/from16 v16, v18

    move/from16 v18, v9

    const/4 v9, 0x0

    move-object/from16 v25, v10

    .end local v10    # "classLoaderContext":Ljava/lang/String;
    .local v25, "classLoaderContext":Ljava/lang/String;
    move v10, v12

    move-object/from16 v26, v11

    .end local v11    # "compilerFilter":Ljava/lang/String;
    .local v26, "compilerFilter":Ljava/lang/String;
    move/from16 v27, v12

    .end local v12    # "dexoptFlags":I
    .local v27, "dexoptFlags":I
    move-object/from16 v12, v24

    move-object/from16 v28, v13

    move-object/from16 v13, v25

    move-object/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    :try_start_1
    invoke-virtual/range {v3 .. v19}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    .end local v7    # "isa":Ljava/lang/String;
    move-object/from16 v15, p2

    move-object/from16 v14, p4

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    move-object/from16 v13, v28

    goto :goto_3

    .line 455
    :catch_0
    move-exception v0

    goto :goto_4

    .line 454
    .end local v25    # "classLoaderContext":Ljava/lang/String;
    .end local v26    # "compilerFilter":Ljava/lang/String;
    .end local v27    # "dexoptFlags":I
    .restart local v10    # "classLoaderContext":Ljava/lang/String;
    .restart local v11    # "compilerFilter":Ljava/lang/String;
    .restart local v12    # "dexoptFlags":I
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 455
    :catch_1
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move/from16 v27, v12

    move-object/from16 v28, v13

    .line 456
    .end local v10    # "classLoaderContext":Ljava/lang/String;
    .end local v11    # "compilerFilter":Ljava/lang/String;
    .end local v12    # "dexoptFlags":I
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v25    # "classLoaderContext":Ljava/lang/String;
    .restart local v26    # "compilerFilter":Ljava/lang/String;
    .restart local v27    # "dexoptFlags":I
    :goto_4
    const-string v3, "Failed to dexopt"

    move-object/from16 v4, v28

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    return v20

    .line 418
    .end local v21    # "reason":I
    .end local v25    # "classLoaderContext":Ljava/lang/String;
    .end local v26    # "compilerFilter":Ljava/lang/String;
    .end local v27    # "dexoptFlags":I
    .local v0, "compilerFilter":Ljava/lang/String;
    .local v3, "dexoptFlags":I
    :cond_5
    move-object v4, v13

    goto :goto_5

    .line 417
    :cond_6
    move-object v4, v13

    .line 421
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not infer CE/DE storage for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return v20
.end method

.method private getAugmentedReasonName(IZ)Ljava/lang/String;
    .locals 3
    .param p1, "compilationReason"    # I
    .param p2, "useDexMetadata"    # Z

    .line 332
    if-eqz p2, :cond_0

    .line 333
    const-string v0, "-dm"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 334
    .local v0, "annotation":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 12
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 581
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 582
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 587
    .local v1, "debuggable":Z
    :goto_0
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v4

    .line 588
    .local v4, "isProfileGuidedFilter":Z
    if-eqz v4, :cond_2

    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v2

    .line 589
    .local v5, "isPublic":Z
    :goto_2
    if-eqz v4, :cond_3

    const/16 v6, 0x10

    goto :goto_3

    :cond_3
    move v6, v3

    .line 593
    .local v6, "profileFlag":I
    :goto_3
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v7

    if-nez v7, :cond_4

    .line 594
    move v7, v3

    goto :goto_4

    .line 595
    :cond_4
    const/16 v7, 0x400

    :goto_4
    nop

    .line 597
    .local v7, "hiddenApiFlag":I
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v8

    .line 598
    .local v8, "compilationReason":I
    const/4 v9, 0x1

    .line 599
    .local v9, "generateCompactDex":Z
    const/4 v10, 0x2

    if-eqz v8, :cond_5

    if-eq v8, v2, :cond_5

    if-eq v8, v10, :cond_5

    goto :goto_5

    .line 603
    :cond_5
    const/4 v9, 0x0

    .line 611
    :goto_5
    if-eqz v4, :cond_7

    iget-object v11, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    if-eqz v11, :cond_6

    .line 612
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v11

    if-nez v11, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isAppImageEnabled()Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_6

    :cond_7
    move v2, v3

    .line 614
    .local v2, "generateAppImage":Z
    :goto_6
    if-eqz v5, :cond_8

    goto :goto_7

    :cond_8
    move v10, v3

    .line 615
    :goto_7
    if-eqz v1, :cond_9

    const/4 v11, 0x4

    goto :goto_8

    :cond_9
    move v11, v3

    :goto_8
    or-int/2addr v10, v11

    or-int/2addr v10, v6

    .line 617
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x8

    goto :goto_9

    :cond_a
    move v11, v3

    :goto_9
    or-int/2addr v10, v11

    .line 618
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x200

    goto :goto_a

    :cond_b
    move v11, v3

    :goto_a
    or-int/2addr v10, v11

    .line 619
    if-eqz v9, :cond_c

    const/16 v11, 0x800

    goto :goto_b

    :cond_c
    move v11, v3

    :goto_b
    or-int/2addr v10, v11

    .line 620
    if-eqz v2, :cond_d

    const/16 v11, 0x1000

    goto :goto_c

    :cond_d
    move v11, v3

    :goto_c
    or-int/2addr v10, v11

    .line 623
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isWatchDogTimeout()Z

    move-result v11

    if-eqz v11, :cond_e

    const/16 v11, 0x2000

    goto :goto_d

    :cond_e
    move v11, v3

    :goto_d
    or-int/2addr v10, v11

    .line 624
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isCpusetEnable()Z

    move-result v11

    if-eqz v11, :cond_f

    const/16 v11, 0x4000

    goto :goto_e

    :cond_f
    move v11, v3

    :goto_e
    or-int/2addr v10, v11

    .line 625
    invoke-virtual {p3}, Lcom/android/server/pm/dex/DexoptOptions;->isThreadCountEnable()Z

    move-result v11

    if-eqz v11, :cond_10

    const v3, 0x8000

    :cond_10
    or-int/2addr v3, v10

    or-int/2addr v3, v7

    .line 628
    .local v3, "dexFlags":I
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result v10

    return v10
.end method

.method private getDexFlags(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 573
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method private getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isa"    # Ljava/lang/String;
    .param p3, "compilerFilter"    # Ljava/lang/String;
    .param p4, "classLoaderContext"    # Ljava/lang/String;
    .param p5, "newProfile"    # Z
    .param p6, "downgrade"    # Z

    .line 639
    :try_start_0
    invoke-static/range {p1 .. p6}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .local v0, "dexoptNeeded":I
    nop

    .line 645
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v1

    return v1

    .line 641
    .end local v0    # "dexoptNeeded":I
    :catch_0
    move-exception v0

    .line 642
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException reading apk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager.DexOptimizer"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    const/4 v1, -0x1

    return v1
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "codePath"    # Ljava/io/File;

    .line 715
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "targetCompilerFilter"    # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"    # Z

    .line 535
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 536
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 537
    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 551
    :cond_0
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_2

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 554
    .local v0, "vmSafeModeOrDebuggable":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 555
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 558
    :cond_3
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    .line 560
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 564
    :cond_4
    return-object p2

    .line 538
    .end local v0    # "vmSafeModeOrDebuggable":Z
    :cond_5
    :goto_2
    const-string/jumbo v0, "verify"

    return-object v0
.end method

.method private isAppImageEnabled()Z
    .locals 2

    .line 577
    const-string v0, "dalvik.vm.appimageformat"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isProfileUpdated(Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "uid"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "compilerFilter"    # Ljava/lang/String;

    .line 659
    invoke-static {p4}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 660
    return v1

    .line 664
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v2, p3}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageManager.DexOptimizer"

    const-string v3, "Failed to merge profiles"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    return v1
.end method

.method private performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 36
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "targetInstructionSets"    # [Ljava/lang/String;
    .param p3, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p4, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p5, "options"    # Lcom/android/server/pm/dex/DexoptOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 161
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v13, v14, Landroid/content/pm/PackageParser$Package;->usesLibraryInfos:Ljava/util/ArrayList;

    .line 162
    .local v13, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz p2, :cond_0

    .line 163
    move-object/from16 v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object/from16 v16, v0

    .line 164
    .local v16, "instructionSets":[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 165
    .local v12, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->getAllCodePaths()Ljava/util/List;

    move-result-object v11

    .line 167
    .local v11, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 168
    .local v0, "sharedGid":I
    const-string v10, "PackageManager.DexOptimizer"

    const/4 v9, -0x1

    if-ne v0, v9, :cond_1

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Well this is awkward; package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v10, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const/16 v0, 0x270f

    move v8, v0

    goto :goto_1

    .line 168
    :cond_1
    move v8, v0

    .line 177
    .end local v0    # "sharedGid":I
    .local v8, "sharedGid":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [Z

    .line 178
    .local v7, "pathsWithCode":[Z
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/16 v17, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move/from16 v0, v17

    :goto_2
    aput-boolean v0, v7, v17

    .line 179
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 180
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    move/from16 v1, v17

    :goto_4
    aput-boolean v1, v7, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 182
    .end local v0    # "i":I
    :cond_4
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v13, v7}, Lcom/android/server/pm/dex/DexoptUtils;->getClassLoaderContexts(Landroid/content/pm/ApplicationInfo;Ljava/util/List;[Z)[Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "classLoaderContexts":[Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v4

    if-eq v0, v1, :cond_6

    .line 187
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "splitCodePaths":[Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information between PackageParser.Package and its ApplicationInfo. pkg.getAllCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.applicationInfo.getBaseCodePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 191
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.applicationInfo.getSplitCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    if-nez v0, :cond_5

    const-string/jumbo v3, "null"

    goto :goto_5

    :cond_5
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    .end local v0    # "splitCodePaths":[Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    .line 197
    .local v0, "result":I
    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    .end local v0    # "result":I
    .local v1, "result":I
    .local v3, "i":I
    :goto_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    .line 199
    aget-boolean v0, v7, v3

    if-nez v0, :cond_7

    .line 200
    goto :goto_7

    .line 202
    :cond_7
    aget-object v0, v4, v3

    if-eqz v0, :cond_13

    .line 209
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 210
    .local v2, "path":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 213
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 214
    nop

    .line 197
    .end local v2    # "path":Ljava/lang/String;
    :goto_7
    move/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v7

    move/from16 v25, v8

    move v15, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move-object/from16 v26, v12

    move-object/from16 v35, v13

    goto/16 :goto_12

    .line 218
    .restart local v2    # "path":Ljava/lang/String;
    :cond_8
    if-nez v3, :cond_9

    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    add-int/lit8 v18, v3, -0x1

    aget-object v0, v0, v18

    :goto_8
    invoke-static {v0}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "profileName":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_b

    .line 224
    const/4 v5, 0x0

    .line 226
    .local v5, "doSomething":Z
    :try_start_0
    iget-object v0, v15, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v6, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v21, v5

    .end local v5    # "doSomething":Z
    .local v21, "doSomething":Z
    :try_start_1
    iget-object v5, v14, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v5, v9}, Lcom/android/server/pm/Installer;->checkProfileSize(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v0

    .line 230
    .end local v21    # "doSomething":Z
    .restart local v5    # "doSomething":Z
    move/from16 v21, v5

    goto :goto_a

    .line 228
    .end local v5    # "doSomething":Z
    .restart local v21    # "doSomething":Z
    :catch_0
    move-exception v0

    goto :goto_9

    .end local v21    # "doSomething":Z
    .restart local v5    # "doSomething":Z
    :catch_1
    move-exception v0

    move/from16 v21, v5

    .line 229
    .end local v5    # "doSomething":Z
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v21    # "doSomething":Z
    :goto_9
    const-string v5, "Failed call checkProfileSize "

    invoke-static {v10, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_a
    if-nez v21, :cond_a

    .line 232
    const-string/jumbo v0, "profile size is too small, do nothing."

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/16 v18, -0x1

    return v18

    .line 231
    :cond_a
    const/16 v18, -0x1

    goto :goto_b

    .line 223
    .end local v21    # "doSomething":Z
    :cond_b
    move/from16 v18, v5

    .line 238
    :goto_b
    const/4 v0, 0x0

    .line 239
    .local v0, "dexMetadataPath":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 240
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 241
    .local v5, "dexMetadataFile":Ljava/io/File;
    if-nez v5, :cond_c

    .line 242
    const/16 v20, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v6

    :goto_c
    move-object/from16 v0, v20

    .line 245
    .end local v5    # "dexMetadataFile":Ljava/io/File;
    :cond_d
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptAsSharedLibrary()Z

    move-result v5

    if-nez v5, :cond_f

    .line 246
    move-object/from16 v5, p4

    invoke-virtual {v5, v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_d

    :cond_e
    move/from16 v6, v17

    goto :goto_e

    .line 245
    :cond_f
    move-object/from16 v5, p4

    .line 246
    :goto_d
    const/4 v6, 0x1

    .line 247
    .local v6, "isUsedByOtherApps":Z
    :goto_e
    move-object/from16 v20, v2

    .end local v2    # "path":Ljava/lang/String;
    .local v20, "path":Ljava/lang/String;
    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 248
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-direct {v15, v2, v5, v6}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, "compilerFilter":Ljava/lang/String;
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isCheckForProfileUpdates()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 250
    invoke-direct {v15, v14, v8, v9, v5}, Lcom/android/server/pm/PackageDexOptimizer;->isProfileUpdated(Landroid/content/pm/PackageParser$Package;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_f

    :cond_10
    move/from16 v2, v17

    :goto_f
    move/from16 v21, v6

    .end local v6    # "isUsedByOtherApps":Z
    .local v21, "isUsedByOtherApps":Z
    move v6, v2

    .line 254
    .local v6, "profileUpdated":Z
    move-object/from16 v2, p5

    invoke-direct {v15, v14, v5, v2}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v22

    .line 256
    .local v22, "dexoptFlags":I
    array-length v15, v12

    move/from16 v23, v1

    move/from16 v1, v17

    .end local v1    # "result":I
    .local v23, "result":I
    :goto_10
    if-ge v1, v15, :cond_12

    aget-object v24, v12, v1

    .line 257
    .local v24, "dexCodeIsa":Ljava/lang/String;
    aget-object v25, v4, v3

    .line 259
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v26

    .line 260
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v27

    .line 257
    move/from16 v28, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v29, v15

    move v15, v3

    .end local v3    # "i":I
    .local v15, "i":I
    move-object/from16 v3, v20

    move-object/from16 v30, v4

    .end local v4    # "classLoaderContexts":[Ljava/lang/String;
    .local v30, "classLoaderContexts":[Ljava/lang/String;
    move-object/from16 v4, v24

    move-object/from16 v19, v5

    .end local v5    # "compilerFilter":Ljava/lang/String;
    .local v19, "compilerFilter":Ljava/lang/String;
    move-object/from16 v31, v7

    .end local v7    # "pathsWithCode":[Z
    .local v31, "pathsWithCode":[Z
    move-object/from16 v7, v25

    move/from16 v25, v8

    .end local v8    # "sharedGid":I
    .local v25, "sharedGid":I
    move/from16 v8, v22

    move/from16 v32, v15

    move/from16 v15, v18

    move-object/from16 v18, v9

    .end local v9    # "profileName":Ljava/lang/String;
    .end local v15    # "i":I
    .local v18, "profileName":Ljava/lang/String;
    .local v32, "i":I
    move/from16 v9, v25

    move-object/from16 v33, v10

    move-object/from16 v10, p3

    move-object/from16 v34, v11

    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v34, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v11, v26

    move-object/from16 v26, v12

    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .local v26, "dexCodeInstructionSets":[Ljava/lang/String;
    move-object/from16 v12, v18

    move-object/from16 v35, v13

    .end local v13    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v35, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    move-object v13, v0

    move/from16 v14, v27

    invoke-direct/range {v1 .. v14}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 265
    .local v1, "newResult":I
    move/from16 v2, v23

    .end local v23    # "result":I
    .local v2, "result":I
    if-eq v2, v15, :cond_11

    if-eqz v1, :cond_11

    .line 266
    move v2, v1

    move/from16 v23, v2

    goto :goto_11

    .line 256
    .end local v1    # "newResult":I
    .end local v24    # "dexCodeIsa":Ljava/lang/String;
    :cond_11
    move/from16 v23, v2

    .end local v2    # "result":I
    .restart local v23    # "result":I
    :goto_11
    add-int/lit8 v1, v28, 0x1

    move-object/from16 v14, p1

    move-object/from16 v2, p5

    move-object/from16 v9, v18

    move-object/from16 v5, v19

    move/from16 v8, v25

    move-object/from16 v12, v26

    move-object/from16 v4, v30

    move-object/from16 v7, v31

    move/from16 v3, v32

    move-object/from16 v10, v33

    move-object/from16 v11, v34

    move-object/from16 v13, v35

    move/from16 v18, v15

    move/from16 v15, v29

    goto :goto_10

    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "compilerFilter":Ljava/lang/String;
    .end local v25    # "sharedGid":I
    .end local v26    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v30    # "classLoaderContexts":[Ljava/lang/String;
    .end local v31    # "pathsWithCode":[Z
    .end local v32    # "i":I
    .end local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v3    # "i":I
    .restart local v4    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v5    # "compilerFilter":Ljava/lang/String;
    .restart local v7    # "pathsWithCode":[Z
    .restart local v8    # "sharedGid":I
    .restart local v9    # "profileName":Ljava/lang/String;
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v13    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_12
    move/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v19, v5

    move-object/from16 v31, v7

    move/from16 v25, v8

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move-object/from16 v26, v12

    move-object/from16 v35, v13

    move/from16 v15, v18

    move/from16 v2, v23

    move-object/from16 v18, v9

    .end local v3    # "i":I
    .end local v4    # "classLoaderContexts":[Ljava/lang/String;
    .end local v5    # "compilerFilter":Ljava/lang/String;
    .end local v7    # "pathsWithCode":[Z
    .end local v8    # "sharedGid":I
    .end local v9    # "profileName":Ljava/lang/String;
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v13    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v23    # "result":I
    .restart local v2    # "result":I
    .restart local v18    # "profileName":Ljava/lang/String;
    .restart local v19    # "compilerFilter":Ljava/lang/String;
    .restart local v25    # "sharedGid":I
    .restart local v26    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v30    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v31    # "pathsWithCode":[Z
    .restart local v32    # "i":I
    .restart local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v35    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    move v1, v2

    .line 197
    .end local v0    # "dexMetadataPath":Ljava/lang/String;
    .end local v2    # "result":I
    .end local v6    # "profileUpdated":Z
    .end local v18    # "profileName":Ljava/lang/String;
    .end local v19    # "compilerFilter":Ljava/lang/String;
    .end local v20    # "path":Ljava/lang/String;
    .end local v21    # "isUsedByOtherApps":Z
    .end local v22    # "dexoptFlags":I
    .local v1, "result":I
    :goto_12
    add-int/lit8 v3, v32, 0x1

    move-object/from16 v14, p1

    move v9, v15

    move/from16 v8, v25

    move-object/from16 v12, v26

    move-object/from16 v4, v30

    move-object/from16 v7, v31

    move-object/from16 v10, v33

    move-object/from16 v11, v34

    move-object/from16 v13, v35

    move-object/from16 v15, p0

    .end local v32    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_6

    .line 203
    .end local v25    # "sharedGid":I
    .end local v26    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v30    # "classLoaderContexts":[Ljava/lang/String;
    .end local v31    # "pathsWithCode":[Z
    .end local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v4    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v7    # "pathsWithCode":[Z
    .restart local v8    # "sharedGid":I
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v13    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_13
    move/from16 v32, v3

    move-object/from16 v30, v4

    move-object/from16 v34, v11

    .end local v3    # "i":I
    .end local v4    # "classLoaderContexts":[Ljava/lang/String;
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v30    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v32    # "i":I
    .restart local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v32

    .end local v32    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " path="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    move-object/from16 v4, v34

    .end local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    .end local v30    # "classLoaderContexts":[Ljava/lang/String;
    .local v4, "classLoaderContexts":[Ljava/lang/String;
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14
    move-object/from16 v30, v4

    move-object/from16 v31, v7

    move/from16 v25, v8

    move-object v4, v11

    move-object/from16 v26, v12

    move-object/from16 v35, v13

    .line 272
    .end local v3    # "i":I
    .end local v7    # "pathsWithCode":[Z
    .end local v8    # "sharedGid":I
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v13    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "sharedGid":I
    .restart local v26    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v30    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v31    # "pathsWithCode":[Z
    .restart local v35    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 273
    sput-boolean v2, Lcom/android/server/pm/OpReserveAppInjector;->runningDexoptState:Z

    .line 275
    :cond_15
    return v1
.end method

.method private printDexoptFlags(I)Ljava/lang/String;
    .locals 3
    .param p1, "flags"    # I

    .line 723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 725
    .local v0, "flagsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 726
    const-string v1, "boot_complete"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    :cond_0
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 729
    const-string v1, "debuggable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    :cond_1
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 732
    const-string/jumbo v1, "profile_guided"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    :cond_2
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 735
    const-string/jumbo v1, "public"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_3
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    .line 738
    const-string/jumbo v1, "secondary"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    :cond_4
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    .line 741
    const-string v1, "force"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_5
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6

    .line 744
    const-string/jumbo v1, "storage_ce"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_6
    and-int/lit16 v1, p1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_7

    .line 747
    const-string/jumbo v1, "storage_de"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    :cond_7
    and-int/lit16 v1, p1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_8

    .line 750
    const-string v1, "idle_background_job"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    :cond_8
    and-int/lit16 v1, p1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_9

    .line 753
    const-string v1, "enable_hidden_api_checks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_9
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private releaseWakeLockLI(J)V
    .locals 5
    .param p1, "acquireTime"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation

    .line 381
    const-string v0, "PackageManager.DexOptimizer"

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 382
    return-void

    .line 385
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 388
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 389
    .local v1, "duration":J
    const-wide/32 v3, 0xa1220

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WakeLock "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " time out. Operation took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms. Thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v1    # "duration":J
    :cond_2
    goto :goto_0

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while releasing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " lock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .locals 0
    .param p1, "dexoptFlags"    # I

    .line 473
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .locals 0
    .param p1, "dexoptNeeded"    # I

    .line 466
    return p1
.end method

.method public dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 353
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    .local v1, "acquireTime":J
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :try_start_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 359
    return v3

    .line 361
    :catchall_0
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local p4    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    throw v3

    .line 363
    .end local v1    # "acquireTime":J
    .restart local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "path":Ljava/lang/String;
    .restart local p3    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local p4    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .locals 16
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "useInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 481
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    iget-object v0, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v4

    .line 482
    .local v4, "instructionSets":[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 484
    .local v5, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v6

    .line 486
    .local v6, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 487
    .local v8, "path":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "path: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 490
    array-length v9, v5

    const/4 v0, 0x0

    move v10, v0

    :goto_1
    if-ge v10, v9, :cond_0

    aget-object v11, v5, v10

    .line 492
    .local v11, "isa":Ljava/lang/String;
    :try_start_0
    invoke-static {v8, v11}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v0

    .line 493
    .local v0, "info":Ldalvik/system/DexFile$OptimizationInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": [status="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "] [reason="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 493
    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v0    # "info":Ldalvik/system/DexFile$OptimizationInfo;
    goto :goto_2

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": [Exception]: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 490
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v11    # "isa":Ljava/lang/String;
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 500
    :cond_0
    invoke-virtual {v2, v8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v9, "used by other apps: "

    if-eqz v0, :cond_1

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getLoadingPackages(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 504
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 506
    .local v0, "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 507
    const-string/jumbo v10, "known secondary dex files:"

    invoke-virtual {v1, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 509
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 510
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 511
    .local v12, "dex":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 512
    .local v13, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-virtual {v1, v12}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 515
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "class loader context: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 517
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 519
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 520
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v12    # "dex":Ljava/lang/String;
    .end local v13    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    goto :goto_3

    .line 521
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 523
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 524
    .end local v0    # "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v8    # "path":Ljava/lang/String;
    goto/16 :goto_0

    .line 525
    :cond_5
    return-void
.end method

.method performDexOpt(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 4
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "instructionSets"    # [Ljava/lang/String;
    .param p3, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p4, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p5, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 135
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 139
    invoke-static {p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    .local v1, "acquireTime":J
    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :try_start_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 145
    return v3

    .line 148
    :catchall_0
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local p2    # "instructionSets":[Ljava/lang/String;
    .end local p3    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local p4    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local p5    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    throw v3

    .line 150
    .end local v1    # "acquireTime":J
    .restart local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p2    # "instructionSets":[Ljava/lang/String;
    .restart local p3    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local p4    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local p5    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method systemReady()V
    .locals 1

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 720
    return-void
.end method
