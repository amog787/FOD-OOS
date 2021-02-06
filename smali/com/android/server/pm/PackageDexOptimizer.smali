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

.field private static final TAG:Ljava/lang/String; = "PackageDexOptimizer"

.field private static final WAKELOCK_TIMEOUT_MS:J = 0xa1220L


# instance fields
.field private final mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private volatile mSystemReady:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "wakeLockTag"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 110
    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 112
    const-string/jumbo v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 113
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 114
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .locals 1
    .param p1, "from"    # Lcom/android/server/pm/PackageDexOptimizer;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    .line 118
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    .line 119
    iget-object v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 120
    iget-boolean v0, p1, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 121
    return-void
.end method

.method private acquireWakeLockLI(I)J
    .locals 3
    .param p1, "uid"    # I

    .line 436
    iget-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 437
    const-wide/16 v0, -0x1

    return-wide v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 440
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xa1220

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method static canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 127
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isHasCode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private dexOptPath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I
    .locals 30
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "isa"    # Ljava/lang/String;
    .param p5, "compilerFilter"    # Ljava/lang/String;
    .param p6, "profileUpdated"    # Z
    .param p7, "classLoaderContext"    # Ljava/lang/String;
    .param p8, "dexoptFlags"    # I
    .param p9, "uid"    # I
    .param p10, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p11, "downgrade"    # Z
    .param p12, "profileName"    # Ljava/lang/String;
    .param p13, "dexMetadataPath"    # Ljava/lang/String;
    .param p14, "compilationReason"    # I

    .line 308
    move-object/from16 v8, p0

    move-object/from16 v15, p3

    move-object/from16 v14, p10

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move/from16 v6, p6

    move/from16 v7, p11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v1

    .line 310
    .local v1, "dexoptNeeded":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 311
    return v2

    .line 314
    :cond_0
    nop

    .line 315
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0

    .line 314
    move-object/from16 v3, p1

    invoke-direct {v8, v3, v0}, Lcom/android/server/pm/PackageDexOptimizer;->getPackageOatDirIfSupported(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "oatDir":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running dexopt (dexoptNeeded="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") on: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pkg="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isa="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " dexoptFlags="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    move/from16 v6, p8

    invoke-direct {v8, v6}, Lcom/android/server/pm/PackageDexOptimizer;->printDexoptFlags(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " targetFilter="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " oatDir="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " classLoaderContext="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p7

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    const-string v12, "PackageDexOptimizer"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-wide/from16 v26, v9

    .line 329
    .local v26, "startTime":J
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v20

    .line 330
    .local v20, "seInfo":Ljava/lang/String;
    iget-object v9, v8, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x0

    .line 332
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v22

    const/16 v28, 0x1

    if-eqz p13, :cond_1

    move/from16 v2, v28

    .line 334
    :cond_1
    move/from16 v11, p14

    invoke-direct {v8, v11, v2}, Lcom/android/server/pm/PackageDexOptimizer;->getAugmentedReasonName(IZ)Ljava/lang/String;

    move-result-object v25
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 330
    move-object/from16 v10, p3

    move/from16 v11, p9

    move-object v2, v12

    move-object v12, v0

    move-object/from16 v13, p4

    move-object v3, v14

    move v14, v1

    move/from16 v29, v1

    move-object v1, v15

    .end local v1    # "dexoptNeeded":I
    .local v29, "dexoptNeeded":I
    move-object v15, v4

    move/from16 v16, p8

    move-object/from16 v17, p5

    move-object/from16 v19, p7

    move-object/from16 v23, p12

    move-object/from16 v24, p13

    :try_start_1
    invoke-virtual/range {v9 .. v25}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    if-eqz v3, :cond_2

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 338
    .local v9, "endTime":J
    sub-long v11, v9, v26

    long-to-int v0, v11

    int-to-long v11, v0

    invoke-virtual {v3, v1, v11, v12}, Lcom/android/server/pm/CompilerStats$PackageStats;->setCompileTime(Ljava/lang/String;J)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    .end local v9    # "endTime":J
    :cond_2
    return v28

    .line 341
    .end local v20    # "seInfo":Ljava/lang/String;
    .end local v26    # "startTime":J
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v29    # "dexoptNeeded":I
    .restart local v1    # "dexoptNeeded":I
    :catch_1
    move-exception v0

    move/from16 v29, v1

    move-object v2, v12

    move-object v3, v14

    move-object v1, v15

    .line 342
    .end local v1    # "dexoptNeeded":I
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v29    # "dexoptNeeded":I
    :goto_0
    const-string v9, "Failed to dexopt"

    invoke-static {v2, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    const/4 v2, -0x1

    return v2
.end method

.method private dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 29
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 467
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptOnlySharedDex()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x0

    return v0

    .line 473
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v3

    .line 473
    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "compilerFilter":Ljava/lang/String;
    move-object/from16 v14, p4

    invoke-direct {v1, v2, v0, v14}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3

    or-int/lit8 v3, v3, 0x20

    .line 479
    .local v3, "dexoptFlags":I
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/16 v20, -0x1

    const-string v13, "PackageDexOptimizer"

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 480
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 481
    or-int/lit16 v3, v3, 0x100

    move v12, v3

    goto :goto_0

    .line 482
    :cond_1
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 483
    invoke-static {v4, v15}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 484
    or-int/lit16 v3, v3, 0x80

    move v12, v3

    .line 489
    .end local v3    # "dexoptFlags":I
    .local v12, "dexoptFlags":I
    :goto_0
    const/4 v3, 0x0

    .line 490
    .local v3, "classLoaderContext":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedClassLoaderContext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 491
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isVariableClassLoaderContext()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 496
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v3

    move-object v11, v0

    move-object v10, v3

    goto :goto_2

    .line 494
    :cond_3
    :goto_1
    const-string v0, "extract"

    move-object v11, v0

    move-object v10, v3

    .line 499
    .end local v0    # "compilerFilter":Ljava/lang/String;
    .end local v3    # "classLoaderContext":Ljava/lang/String;
    .local v10, "classLoaderContext":Ljava/lang/String;
    .local v11, "compilerFilter":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v21

    .line 500
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

    .line 501
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dexoptFlags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
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

    .line 500
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
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

    .line 513
    .local v7, "isa":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 516
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v17

    move-object/from16 v18, v9

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v19, 0x0

    const/16 v22, 0x0

    .line 517
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v23
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 513
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

    .line 518
    .end local v7    # "isa":Ljava/lang/String;
    move-object/from16 v15, p2

    move-object/from16 v14, p4

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    move-object/from16 v13, v28

    goto :goto_3

    .line 521
    :catch_0
    move-exception v0

    goto :goto_4

    .line 520
    .end local v25    # "classLoaderContext":Ljava/lang/String;
    .end local v26    # "compilerFilter":Ljava/lang/String;
    .end local v27    # "dexoptFlags":I
    .restart local v10    # "classLoaderContext":Ljava/lang/String;
    .restart local v11    # "compilerFilter":Ljava/lang/String;
    .restart local v12    # "dexoptFlags":I
    :cond_4
    const/4 v0, 0x1

    return v0

    .line 521
    :catch_1
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move/from16 v27, v12

    move-object/from16 v28, v13

    .line 522
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

    .line 523
    return v20

    .line 483
    .end local v21    # "reason":I
    .end local v25    # "classLoaderContext":Ljava/lang/String;
    .end local v26    # "compilerFilter":Ljava/lang/String;
    .end local v27    # "dexoptFlags":I
    .local v0, "compilerFilter":Ljava/lang/String;
    .local v3, "dexoptFlags":I
    :cond_5
    move-object v4, v13

    goto :goto_5

    .line 482
    :cond_6
    move-object v4, v13

    .line 486
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

    .line 487
    return v20
.end method

.method private getAugmentedReasonName(IZ)Ljava/lang/String;
    .locals 3
    .param p1, "compilationReason"    # I
    .param p2, "useDexMetadata"    # Z

    .line 397
    if-eqz p2, :cond_0

    .line 398
    const-string v0, "-dm"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 399
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
    .locals 8
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compilerFilter"    # Ljava/lang/String;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 679
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 680
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v3

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 681
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v5

    .line 679
    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method private getDexFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "compilerFilter"    # Ljava/lang/String;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 685
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v1

    .line 686
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getHiddenApiEnforcementPolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I

    move-result v2

    .line 687
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isIsolatedSplitLoading()Z

    move-result v4

    .line 685
    move-object v0, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v0

    return v0
.end method

.method private getDexFlags(ZILandroid/util/SparseArray;ZLjava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 10
    .param p1, "debuggable"    # Z
    .param p2, "hiddenApiEnforcementPolicy"    # I
    .param p4, "requestsIsolatedSplitLoading"    # Z
    .param p5, "compilerFilter"    # Ljava/lang/String;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/util/SparseArray<",
            "[I>;Z",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/DexoptOptions;",
            ")I"
        }
    .end annotation

    .line 702
    .local p3, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-static {p5}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    .line 703
    .local v0, "isProfileGuidedFilter":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    .line 704
    .local v3, "isPublic":Z
    :goto_1
    if-eqz v0, :cond_2

    const/16 v4, 0x10

    goto :goto_2

    :cond_2
    move v4, v2

    .line 710
    .local v4, "profileFlag":I
    :goto_2
    if-nez p2, :cond_3

    .line 711
    move v5, v2

    goto :goto_3

    .line 712
    :cond_3
    const/16 v5, 0x400

    :goto_3
    nop

    .line 714
    .local v5, "hiddenApiFlag":I
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v6

    .line 715
    .local v6, "compilationReason":I
    const/4 v7, 0x1

    .line 716
    .local v7, "generateCompactDex":Z
    const/4 v8, 0x2

    if-eqz v6, :cond_4

    if-eq v6, v1, :cond_4

    if-eq v6, v8, :cond_4

    goto :goto_4

    .line 720
    :cond_4
    const/4 v7, 0x0

    .line 728
    :goto_4
    if-eqz v0, :cond_6

    if-eqz p3, :cond_5

    if-nez p4, :cond_6

    .line 729
    :cond_5
    invoke-direct {p0}, Lcom/android/server/pm/PackageDexOptimizer;->isAppImageEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_5

    :cond_6
    move v1, v2

    .line 731
    .local v1, "generateAppImage":Z
    :goto_5
    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    move v8, v2

    .line 732
    :goto_6
    if-eqz p1, :cond_8

    const/4 v9, 0x4

    goto :goto_7

    :cond_8
    move v9, v2

    :goto_7
    or-int/2addr v8, v9

    or-int/2addr v8, v4

    .line 734
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result v9

    if-eqz v9, :cond_9

    const/16 v9, 0x8

    goto :goto_8

    :cond_9
    move v9, v2

    :goto_8
    or-int/2addr v8, v9

    .line 735
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result v9

    if-eqz v9, :cond_a

    const/16 v9, 0x200

    goto :goto_9

    :cond_a
    move v9, v2

    :goto_9
    or-int/2addr v8, v9

    .line 736
    if-eqz v7, :cond_b

    const/16 v9, 0x800

    goto :goto_a

    :cond_b
    move v9, v2

    :goto_a
    or-int/2addr v8, v9

    .line 737
    if-eqz v1, :cond_c

    const/16 v9, 0x1000

    goto :goto_b

    :cond_c
    move v9, v2

    :goto_b
    or-int/2addr v8, v9

    .line 740
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isWatchDogTimeout()Z

    move-result v9

    if-eqz v9, :cond_d

    const/16 v9, 0x4000

    goto :goto_c

    :cond_d
    move v9, v2

    :goto_c
    or-int/2addr v8, v9

    .line 741
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isCpusetEnable()Z

    move-result v9

    if-eqz v9, :cond_e

    const v9, 0x8000

    goto :goto_d

    :cond_e
    move v9, v2

    :goto_d
    or-int/2addr v8, v9

    .line 742
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isThreadCountEnable()Z

    move-result v9

    if-eqz v9, :cond_f

    const/high16 v9, 0x10000

    goto :goto_e

    :cond_f
    move v9, v2

    :goto_e
    or-int/2addr v8, v9

    .line 744
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallForRestore()Z

    move-result v9

    if-eqz v9, :cond_10

    const/16 v2, 0x2000

    :cond_10
    or-int/2addr v2, v8

    or-int/2addr v2, v5

    .line 746
    .local v2, "dexFlags":I
    move-object v8, p0

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptFlags(I)I

    move-result v9

    return v9
.end method

.method private getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isa"    # Ljava/lang/String;
    .param p3, "compilerFilter"    # Ljava/lang/String;
    .param p4, "classLoaderContext"    # Ljava/lang/String;
    .param p5, "newProfile"    # Z
    .param p6, "downgrade"    # Z

    .line 757
    const-string v0, "PackageDexOptimizer"

    const/4 v1, -0x1

    :try_start_0
    invoke-static/range {p1 .. p6}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .local v0, "dexoptNeeded":I
    nop

    .line 766
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageDexOptimizer;->adjustDexoptNeeded(I)I

    move-result v1

    return v1

    .line 762
    .end local v0    # "dexoptNeeded":I
    :catch_0
    move-exception v2

    .line 763
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception when calling dexoptNeeded on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    return v1

    .line 759
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 760
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException reading apk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    return v1
.end method

.method static getOatDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "codePath"    # Ljava/io/File;

    .line 825
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oat"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPackageOatDirIfSupported(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Ljava/lang/String;
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "isUpdatedSystemApp"    # Z

    .line 808
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xf

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 809
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/OpReserveAppInjector;->isReserveApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    return-object v1

    .line 814
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->canHaveOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
    return-object v1

    .line 817
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 818
    .local v0, "codePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 819
    return-object v1

    .line 821
    :cond_2
    invoke-static {v0}, Lcom/android/server/pm/PackageDexOptimizer;->getOatDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRealCompilerFilter(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "targetCompilerFilter"    # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"    # Z

    .line 603
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 604
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 605
    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 619
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

    .line 622
    .local v0, "vmSafeModeOrDebuggable":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 623
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 626
    :cond_3
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    .line 628
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 632
    :cond_4
    return-object p2

    .line 606
    .end local v0    # "vmSafeModeOrDebuggable":Z
    :cond_5
    :goto_2
    const-string/jumbo v0, "verify"

    return-object v0
.end method

.method private getRealCompilerFilter(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "targetCompilerFilter"    # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"    # Z

    .line 643
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUseEmbeddedDex()Z

    move-result v0

    if-nez v0, :cond_5

    .line 644
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 659
    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVmSafeMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 661
    .local v0, "vmSafeModeOrDebuggable":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 662
    invoke-static {p2}, Ldalvik/system/DexFile;->getSafeModeCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 665
    :cond_3
    invoke-static {p2}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    .line 667
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 671
    :cond_4
    return-object p2

    .line 646
    .end local v0    # "vmSafeModeOrDebuggable":Z
    :cond_5
    :goto_2
    const-string/jumbo v0, "verify"

    return-object v0
.end method

.method private isAppImageEnabled()Z
    .locals 2

    .line 675
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

.method private isProfileUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "uid"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .param p4, "compilerFilter"    # Ljava/lang/String;

    .line 780
    invoke-static {p4}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 781
    return v1

    .line 785
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2, p3}, Lcom/android/server/pm/Installer;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageDexOptimizer"

    const-string v3, "Failed to merge profiles"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 789
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    return v1
.end method

.method private performDexOptLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 37
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "targetInstructionSets"    # [Ljava/lang/String;
    .param p4, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p5, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 174
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v13

    .line 176
    .local v13, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    if-eqz p3, :cond_0

    .line 177
    move-object/from16 v0, p3

    goto :goto_0

    .line 178
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object/from16 v16, v0

    .line 180
    .local v16, "instructionSets":[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 181
    .local v12, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v11

    .line 183
    .local v11, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v0

    .line 184
    .local v0, "sharedGid":I
    const/4 v10, -0x1

    const-string v9, "PackageDexOptimizer"

    if-ne v0, v10, :cond_1

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Well this is awkward; package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " had UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 185
    invoke-static {v9, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    const/16 v0, 0x270f

    move v8, v0

    goto :goto_1

    .line 184
    :cond_1
    move v8, v0

    .line 193
    .end local v0    # "sharedGid":I
    .local v8, "sharedGid":I
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [Z

    .line 194
    .local v6, "pathsWithCode":[Z
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isHasCode()Z

    move-result v0

    const/16 v17, 0x0

    aput-boolean v0, v6, v17

    .line 195
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 196
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitFlags()[I

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    goto :goto_3

    :cond_2
    move/from16 v5, v17

    :goto_3
    aput-boolean v5, v6, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 198
    .end local v0    # "i":I
    :cond_3
    invoke-static {v14, v13, v6}, Lcom/android/server/pm/dex/DexoptUtils;->getClassLoaderContexts(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;[Z)[Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "classLoaderContexts":[Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v4

    if-eq v0, v1, :cond_5

    .line 203
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "splitCodePaths":[Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent information between PackageParser.Package and its ApplicationInfo. pkg.getAllCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.getBaseCodePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pkg.getSplitCodePaths="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    if-nez v0, :cond_4

    const-string/jumbo v3, "null"

    goto :goto_4

    :cond_4
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    .end local v0    # "splitCodePaths":[Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    .line 213
    .local v0, "result":I
    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    .end local v0    # "result":I
    .local v1, "result":I
    .local v3, "i":I
    :goto_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_12

    .line 215
    aget-boolean v0, v6, v3

    if-nez v0, :cond_6

    .line 216
    move-object/from16 v18, v13

    goto :goto_8

    .line 218
    :cond_6
    aget-object v0, v4, v3

    if-eqz v0, :cond_11

    .line 225
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 226
    .local v2, "path":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 229
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getSplitName()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 230
    move-object/from16 v18, v13

    goto :goto_8

    .line 235
    :cond_7
    if-nez v3, :cond_8

    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v18, v3, -0x1

    aget-object v0, v0, v18

    .line 234
    :goto_6
    move-object/from16 v18, v13

    .end local v13    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v18, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-static {v0}, Landroid/content/pm/dex/ArtManager;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 240
    .local v13, "profileName":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isCheckForProfileSize()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 241
    const/16 v19, 0x0

    .line 243
    .local v19, "doSomething":Z
    :try_start_0
    iget-object v0, v15, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v5

    .line 244
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 243
    invoke-virtual {v0, v5, v7, v13}, Lcom/android/server/pm/Installer;->checkProfileSize(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v19, v0

    .line 247
    goto :goto_7

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v5, "Failed call checkProfileSize "

    invoke-static {v9, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_7
    if-nez v19, :cond_9

    .line 249
    const-string/jumbo v0, "profile size is too small, do nothing."

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    nop

    .line 213
    .end local v2    # "path":Ljava/lang/String;
    .end local v18    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v19    # "doSomething":Z
    .local v13, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :goto_8
    move/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v20, v6

    move/from16 v33, v8

    move-object/from16 v26, v9

    move v3, v10

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    .end local v13    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v18    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    goto/16 :goto_f

    .line 255
    .restart local v2    # "path":Ljava/lang/String;
    .local v13, "profileName":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    .line 256
    .local v0, "dexMetadataPath":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptInstallWithDexMetadata()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 257
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 258
    .local v5, "dexMetadataFile":Ljava/io/File;
    if-nez v5, :cond_a

    .line 259
    const/4 v7, 0x0

    goto :goto_9

    :cond_a
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    :goto_9
    move-object v0, v7

    .line 262
    .end local v5    # "dexMetadataFile":Ljava/io/File;
    :cond_b
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptAsSharedLibrary()Z

    move-result v5

    if-nez v5, :cond_d

    .line 263
    move-object/from16 v5, p5

    invoke-virtual {v5, v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_a

    :cond_c
    move/from16 v7, v17

    goto :goto_b

    .line 262
    :cond_d
    move-object/from16 v5, p5

    .line 263
    :goto_a
    const/4 v7, 0x1

    .line 264
    .local v7, "isUsedByOtherApps":Z
    :goto_b
    nop

    .line 265
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v10

    .line 264
    invoke-direct {v15, v14, v10, v7}, Lcom/android/server/pm/PackageDexOptimizer;->getRealCompilerFilter(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 266
    .local v10, "compilerFilter":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isCheckForProfileUpdates()Z

    move-result v21

    if-eqz v21, :cond_e

    .line 267
    invoke-direct {v15, v14, v8, v13, v10}, Lcom/android/server/pm/PackageDexOptimizer;->isProfileUpdated(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    const/16 v21, 0x1

    goto :goto_c

    :cond_e
    move/from16 v21, v17

    :goto_c
    move/from16 v22, v7

    .end local v7    # "isUsedByOtherApps":Z
    .local v22, "isUsedByOtherApps":Z
    move/from16 v7, v21

    .line 271
    .local v7, "profileUpdated":Z
    move-object/from16 v23, v13

    move-object/from16 v7, p2

    move-object/from16 v13, p6

    .end local v7    # "profileUpdated":Z
    .end local v13    # "profileName":Ljava/lang/String;
    .local v21, "profileUpdated":Z
    .local v23, "profileName":Ljava/lang/String;
    invoke-direct {v15, v14, v7, v10, v13}, Lcom/android/server/pm/PackageDexOptimizer;->getDexFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v24

    .line 273
    .local v24, "dexoptFlags":I
    array-length v7, v12

    move/from16 v15, v17

    :goto_d
    if-ge v15, v7, :cond_10

    aget-object v25, v12, v15

    .line 274
    .local v25, "dexCodeIsa":Ljava/lang/String;
    aget-object v26, v4, v3

    .line 276
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->isDowngrade()Z

    move-result v27

    .line 277
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v28

    .line 274
    move/from16 v29, v1

    .end local v1    # "result":I
    .local v29, "result":I
    move-object/from16 v1, p0

    move-object/from16 v30, v2

    .end local v2    # "path":Ljava/lang/String;
    .local v30, "path":Ljava/lang/String;
    move-object/from16 v2, p1

    move/from16 v31, v3

    .end local v3    # "i":I
    .local v31, "i":I
    move-object/from16 v3, p2

    move-object/from16 v32, v4

    .end local v4    # "classLoaderContexts":[Ljava/lang/String;
    .local v32, "classLoaderContexts":[Ljava/lang/String;
    move-object/from16 v4, v30

    move-object/from16 v5, v25

    move-object/from16 v20, v6

    .end local v6    # "pathsWithCode":[Z
    .local v20, "pathsWithCode":[Z
    move-object v6, v10

    move/from16 v33, v8

    .end local v8    # "sharedGid":I
    .local v33, "sharedGid":I
    move-object/from16 v8, v26

    move-object/from16 v26, v9

    move/from16 v9, v24

    move-object/from16 v19, v10

    .end local v10    # "compilerFilter":Ljava/lang/String;
    .local v19, "compilerFilter":Ljava/lang/String;
    move/from16 v10, v33

    move-object/from16 v34, v11

    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v34, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v11, p4

    move-object/from16 v35, v12

    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .local v35, "dexCodeInstructionSets":[Ljava/lang/String;
    move/from16 v12, v27

    move-object/from16 v13, v23

    move-object v14, v0

    move/from16 v27, v15

    move/from16 v15, v28

    move/from16 v36, v21

    move/from16 v21, v7

    move/from16 v7, v36

    .end local v21    # "profileUpdated":Z
    .restart local v7    # "profileUpdated":Z
    invoke-direct/range {v1 .. v15}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptPath(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILcom/android/server/pm/CompilerStats$PackageStats;ZLjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 282
    .local v1, "newResult":I
    move/from16 v2, v29

    const/4 v3, -0x1

    .end local v29    # "result":I
    .local v2, "result":I
    if-eq v2, v3, :cond_f

    if-eqz v1, :cond_f

    .line 283
    move v2, v1

    goto :goto_e

    .line 273
    .end local v1    # "newResult":I
    .end local v25    # "dexCodeIsa":Ljava/lang/String;
    :cond_f
    move v1, v2

    .end local v2    # "result":I
    .local v1, "result":I
    :goto_e
    add-int/lit8 v15, v27, 0x1

    move-object/from16 v14, p1

    move-object/from16 v5, p5

    move-object/from16 v13, p6

    move-object/from16 v10, v19

    move-object/from16 v6, v20

    move-object/from16 v9, v26

    move-object/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v32

    move/from16 v8, v33

    move-object/from16 v11, v34

    move-object/from16 v12, v35

    move/from16 v36, v21

    move/from16 v21, v7

    move/from16 v7, v36

    goto :goto_d

    .end local v7    # "profileUpdated":Z
    .end local v19    # "compilerFilter":Ljava/lang/String;
    .end local v20    # "pathsWithCode":[Z
    .end local v30    # "path":Ljava/lang/String;
    .end local v31    # "i":I
    .end local v32    # "classLoaderContexts":[Ljava/lang/String;
    .end local v33    # "sharedGid":I
    .end local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "dexCodeInstructionSets":[Ljava/lang/String;
    .local v2, "path":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v6    # "pathsWithCode":[Z
    .restart local v8    # "sharedGid":I
    .restart local v10    # "compilerFilter":Ljava/lang/String;
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v21    # "profileUpdated":Z
    :cond_10
    move-object/from16 v30, v2

    move/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v20, v6

    move/from16 v33, v8

    move-object/from16 v26, v9

    move-object/from16 v19, v10

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move/from16 v7, v21

    const/4 v3, -0x1

    move v2, v1

    .line 213
    .end local v0    # "dexMetadataPath":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "classLoaderContexts":[Ljava/lang/String;
    .end local v6    # "pathsWithCode":[Z
    .end local v8    # "sharedGid":I
    .end local v10    # "compilerFilter":Ljava/lang/String;
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v21    # "profileUpdated":Z
    .end local v22    # "isUsedByOtherApps":Z
    .end local v23    # "profileName":Ljava/lang/String;
    .end local v24    # "dexoptFlags":I
    .restart local v20    # "pathsWithCode":[Z
    .restart local v31    # "i":I
    .restart local v32    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v33    # "sharedGid":I
    .restart local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v35    # "dexCodeInstructionSets":[Ljava/lang/String;
    :goto_f
    move/from16 v2, v31

    .end local v31    # "i":I
    .local v2, "i":I
    add-int/lit8 v0, v2, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move v10, v3

    move-object/from16 v13, v18

    move-object/from16 v6, v20

    move-object/from16 v9, v26

    move-object/from16 v4, v32

    move/from16 v8, v33

    move-object/from16 v11, v34

    move-object/from16 v12, v35

    move v3, v0

    .end local v2    # "i":I
    .local v0, "i":I
    goto/16 :goto_5

    .line 219
    .end local v0    # "i":I
    .end local v18    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .end local v20    # "pathsWithCode":[Z
    .end local v32    # "classLoaderContexts":[Ljava/lang/String;
    .end local v33    # "sharedGid":I
    .end local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v35    # "dexCodeInstructionSets":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v6    # "pathsWithCode":[Z
    .restart local v8    # "sharedGid":I
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .local v13, "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_11
    move v2, v3

    move-object/from16 v32, v4

    move-object/from16 v34, v11

    .end local v3    # "i":I
    .end local v4    # "classLoaderContexts":[Ljava/lang/String;
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "i":I
    .restart local v32    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent information in the package structure. A split is marked to contain code but has no dependency listed. Index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    move-object/from16 v4, v34

    .end local v34    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    .end local v2    # "i":I
    .end local v32    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v3    # "i":I
    .local v4, "classLoaderContexts":[Ljava/lang/String;
    .restart local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12
    move v2, v3

    move-object/from16 v32, v4

    move-object/from16 v20, v6

    move/from16 v33, v8

    move-object v4, v11

    move-object/from16 v35, v12

    move-object/from16 v18, v13

    .line 289
    .end local v3    # "i":I
    .end local v6    # "pathsWithCode":[Z
    .end local v8    # "sharedGid":I
    .end local v11    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "dexCodeInstructionSets":[Ljava/lang/String;
    .end local v13    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .local v4, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "sharedLibraries":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    .restart local v20    # "pathsWithCode":[Z
    .restart local v32    # "classLoaderContexts":[Ljava/lang/String;
    .restart local v33    # "sharedGid":I
    .restart local v35    # "dexCodeInstructionSets":[Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 290
    sput-boolean v2, Lcom/android/server/pm/OpReserveAppInjector;->runningDexoptState:Z

    .line 292
    :cond_13
    return v1
.end method

.method private printDexoptFlags(I)Ljava/lang/String;
    .locals 3
    .param p1, "flags"    # I

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v0, "flagsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    and-int/lit8 v1, p1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 836
    const-string v1, "boot_complete"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_0
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 839
    const-string v1, "debuggable"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_1
    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 842
    const-string/jumbo v1, "profile_guided"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    :cond_2
    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 845
    const-string/jumbo v1, "public"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    :cond_3
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    .line 848
    const-string/jumbo v1, "secondary"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_4
    and-int/lit8 v1, p1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    .line 851
    const-string v1, "force"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_5
    and-int/lit16 v1, p1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_6

    .line 854
    const-string/jumbo v1, "storage_ce"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_6
    and-int/lit16 v1, p1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_7

    .line 857
    const-string/jumbo v1, "storage_de"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_7
    and-int/lit16 v1, p1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_8

    .line 860
    const-string v1, "idle_background_job"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    :cond_8
    and-int/lit16 v1, p1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_9

    .line 863
    const-string v1, "enable_hidden_api_checks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_9
    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private releaseWakeLockLI(J)V
    .locals 5
    .param p1, "acquireTime"    # J

    .line 446
    const-string v0, "PackageDexOptimizer"

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    .line 447
    return-void

    .line 450
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, p0, Lcom/android/server/pm/PackageDexOptimizer;->mDexoptWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 453
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 454
    .local v1, "duration":J
    const-wide/32 v3, 0xa1220

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    .line 455
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

    .line 457
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v1    # "duration":J
    :cond_2
    goto :goto_0

    .line 459
    :catch_0
    move-exception v1

    .line 460
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

    .line 462
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .locals 0
    .param p1, "dexoptFlags"    # I

    .line 539
    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .locals 0
    .param p1, "dexoptNeeded"    # I

    .line 532
    return p1
.end method

.method public dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p4, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 418
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 424
    .local v1, "acquireTime":J
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPathLI(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :try_start_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 424
    return v3

    .line 426
    :catchall_0
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .line 427
    nop

    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local p4    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    throw v3

    .line 428
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

    .line 419
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

.method public dexoptSystemServerPath(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 23
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "dexUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .param p3, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 352
    nop

    .line 353
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->isBootComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/lit8 v0, v0, 0x2

    .line 354
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->isDexoptIdleBackgroundJob()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x200

    :cond_1
    or-int/2addr v1, v0

    .line 356
    .local v1, "dexoptFlags":I
    const/4 v0, 0x0

    .line 357
    .local v0, "result":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move/from16 v20, v0

    .end local v0    # "result":I
    .local v20, "result":I
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 358
    .local v21, "isa":Ljava/lang/String;
    nop

    .line 361
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v5

    .line 362
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 358
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v21

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageDexOptimizer;->getDexoptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v22

    .line 366
    .local v22, "dexoptNeeded":I
    if-nez v22, :cond_2

    .line 367
    goto :goto_1

    .line 370
    :cond_2
    move-object/from16 v15, p0

    :try_start_0
    iget-object v2, v15, Lcom/android/server/pm/PackageDexOptimizer;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v4, 0x3e8

    const-string v5, "android"

    const/4 v8, 0x0

    .line 378
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilerFilter()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 380
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 386
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/dex/DexoptOptions;->getCompilationReason()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getReasonName(I)Ljava/lang/String;

    move-result-object v18

    .line 370
    move-object/from16 v3, p1

    move-object/from16 v6, v21

    move/from16 v7, v22

    move v9, v1

    move v15, v0

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/pm/Installer;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    nop

    .line 391
    const/16 v20, 0x1

    .line 392
    .end local v21    # "isa":Ljava/lang/String;
    .end local v22    # "dexoptNeeded":I
    goto :goto_1

    .line 387
    .restart local v21    # "isa":Ljava/lang/String;
    .restart local v22    # "dexoptNeeded":I
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v2, "PackageDexOptimizer"

    const-string v3, "Failed to dexopt"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    const/4 v2, -0x1

    return v2

    .line 393
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    .end local v21    # "isa":Ljava/lang/String;
    .end local v22    # "dexoptNeeded":I
    :cond_3
    return v20
.end method

.method dumpDexoptState(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;)V
    .locals 15
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "useInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 547
    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 548
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    .line 549
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v3

    .line 547
    invoke-static {v0, v3}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 550
    .local v3, "instructionSets":[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "dexCodeInstructionSets":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePathsExcludingResourceOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v5

    .line 554
    .local v5, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 555
    .local v7, "path":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "path: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 558
    array-length v8, v4

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_0

    aget-object v10, v4, v9

    .line 560
    .local v10, "isa":Ljava/lang/String;
    :try_start_0
    invoke-static {v7, v10}, Ldalvik/system/DexFile;->getDexFileOptimizationInfo(Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile$OptimizationInfo;

    move-result-object v0

    .line 561
    .local v0, "info":Ldalvik/system/DexFile$OptimizationInfo;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": [status="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getStatus()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] [reason="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v0}, Ldalvik/system/DexFile$OptimizationInfo;->getReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 561
    invoke-virtual {v1, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v0    # "info":Ldalvik/system/DexFile$OptimizationInfo;
    goto :goto_2

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": [Exception]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 558
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v10    # "isa":Ljava/lang/String;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 568
    :cond_0
    invoke-virtual {v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isUsedByOtherApps(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v8, "used by other apps: "

    if-eqz v0, :cond_1

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getLoadingPackages(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 572
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    .line 574
    .local v0, "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 575
    const-string/jumbo v9, "known secondary dex files:"

    invoke-virtual {v1, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 577
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 578
    .local v10, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 579
    .local v11, "dex":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 580
    .local v12, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    invoke-virtual {v1, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 581
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 583
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "class loader context: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getClassLoaderContext()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUsedByOtherApps()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 585
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoadingPackages()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 587
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 588
    .end local v10    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v11    # "dex":Ljava/lang/String;
    .end local v12    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    goto :goto_3

    .line 589
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 591
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 592
    .end local v0    # "dexUseInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v7    # "path":Ljava/lang/String;
    goto/16 :goto_0

    .line 593
    :cond_5
    return-void
.end method

.method performDexOpt(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 4
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "instructionSets"    # [Ljava/lang/String;
    .param p4, "packageStats"    # Lcom/android/server/pm/CompilerStats$PackageStats;
    .param p5, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p6, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 144
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 152
    invoke-static {p1}, Lcom/android/server/pm/PackageDexOptimizer;->canOptimizePackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    return v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizer;->acquireWakeLockLI(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    .local v1, "acquireTime":J
    :try_start_1
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/PackageDexOptimizer;->performDexOptLI(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[Ljava/lang/String;Lcom/android/server/pm/CompilerStats$PackageStats;Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    monitor-exit v0

    .line 158
    return v3

    .line 161
    :catchall_0
    move-exception v3

    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/PackageDexOptimizer;->releaseWakeLockLI(J)V

    .line 162
    nop

    .end local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .end local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p3    # "instructionSets":[Ljava/lang/String;
    .end local p4    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .end local p5    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .end local p6    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    throw v3

    .line 163
    .end local v1    # "acquireTime":J
    .restart local p0    # "this":Lcom/android/server/pm/PackageDexOptimizer;
    .restart local p1    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .restart local p2    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p3    # "instructionSets":[Ljava/lang/String;
    .restart local p4    # "packageStats":Lcom/android/server/pm/CompilerStats$PackageStats;
    .restart local p5    # "packageUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .restart local p6    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dexopt for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has invalid uid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "System server dexopting should be done via  DexManager and PackageDexOptimizer#dexoptSystemServerPath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method systemReady()V
    .locals 1

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageDexOptimizer;->mSystemReady:Z

    .line 830
    return-void
.end method
