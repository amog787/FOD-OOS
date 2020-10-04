.class public Lcom/android/server/pm/dex/DexManager;
.super Ljava/lang/Object;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/DexManager$DexSearchResult;,
        Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;,
        Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_USE_INFO:Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

.field private static DEX_SEARCH_FOUND_PRIMARY:I = 0x0

.field private static DEX_SEARCH_FOUND_SECONDARY:I = 0x0

.field private static DEX_SEARCH_FOUND_SPLIT:I = 0x0

.field private static DEX_SEARCH_NOT_FOUND:I = 0x0

.field private static final PRIV_APPS_OOB_ENABLED:Ljava/lang/String; = "priv_apps_oob_enabled"

.field private static final PRIV_APPS_OOB_WHITELIST:Ljava/lang/String; = "priv_apps_oob_whitelist"

.field private static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB:Ljava/lang/String; = "pm.dexopt.priv-apps-oob"

.field private static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB_LIST:Ljava/lang/String; = "pm.dexopt.priv-apps-oob-list"

.field private static final TAG:Ljava/lang/String; = "DexManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInstallLock"
        }
    .end annotation
.end field

.field private final mPackageCodeLocationsCache:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackageCodeLocationsCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

.field private final mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 79
    const/4 v0, 0x3

    const-string v1, "DexManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    .line 106
    const/4 v1, 0x0

    sput v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    .line 107
    const/4 v1, 0x1

    sput v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    .line 108
    const/4 v1, 0x2

    sput v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    .line 109
    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    .line 122
    new-instance v0, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>()V

    sput-object v0, Lcom/android/server/pm/dex/DexManager;->DEFAULT_USE_INFO:Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;
    .param p3, "pdo"    # Lcom/android/server/pm/PackageDexOptimizer;
    .param p4, "installer"    # Lcom/android/server/pm/Installer;
    .param p5, "installLock"    # Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 128
    new-instance v0, Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDexUsage;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 129
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 130
    iput-object p3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 131
    iput-object p4, p0, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 132
    iput-object p5, p0, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    .line 133
    new-instance v0, Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-direct {v0, p2, p4}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 134
    return-void
.end method

.method static synthetic access$300(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 68
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 68
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 68
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 68
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    return v0
.end method

.method public static auditUncompressedDexInApk(Ljava/lang/String;)Z
    .locals 12
    .param p0, "fileName"    # Ljava/lang/String;

    .line 772
    const-string v0, "DexManager"

    const/4 v1, 0x0

    .line 774
    .local v1, "jarFile":Landroid/util/jar/StrictJarFile;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/util/jar/StrictJarFile;

    invoke-direct {v3, p0, v2, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v1, v3

    .line 776
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 777
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    const/4 v4, 0x1

    .line 778
    .local v4, "allCorrect":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 779
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 780
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 781
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "APK "

    if-eqz v6, :cond_0

    .line 782
    const/4 v4, 0x0

    .line 783
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has compressed dex code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 783
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 785
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v8

    const-wide/16 v10, 0x3

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1

    .line 786
    const/4 v4, 0x0

    .line 787
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has unaligned dex code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 787
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    :goto_1
    goto :goto_0

    .line 792
    :cond_2
    nop

    .line 798
    nop

    .line 799
    :try_start_2
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 801
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    .line 792
    :goto_3
    return v4

    .line 797
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "allCorrect":Z
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 793
    :catch_1
    move-exception v3

    .line 794
    .local v3, "ignore":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when parsing APK "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 795
    nop

    .line 798
    if-eqz v1, :cond_3

    .line 799
    :try_start_4
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 801
    :catch_2
    move-exception v0

    :cond_3
    :goto_4
    nop

    .line 795
    return v2

    .line 798
    .end local v3    # "ignore":Ljava/io/IOException;
    :goto_5
    if-eqz v1, :cond_4

    .line 799
    :try_start_5
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 801
    :catch_3
    move-exception v2

    :cond_4
    :goto_6
    throw v0
.end method

.method private cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "splitCodePaths"    # [Ljava/lang/String;
    .param p4, "dataDirs"    # [Ljava/lang/String;
    .param p5, "userId"    # I

    .line 349
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v0

    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    new-instance v2, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 355
    .local v1, "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->updateCodeLocation(Ljava/lang/String;[Ljava/lang/String;)V

    .line 356
    if-eqz p4, :cond_1

    .line 357
    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p4, v3

    .line 362
    .local v4, "dataDir":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 363
    invoke-virtual {v1, v4, p5}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mergeAppDataDirs(Ljava/lang/String;I)V

    .line 357
    .end local v4    # "dataDir":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    .end local v1    # "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    :cond_1
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cachePackageInfo(Landroid/content/pm/PackageInfo;I)V
    .locals 8
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .line 340
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 341
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x3

    new-array v6, v1, [Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v6, v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v6, v2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v6, v2

    .line 343
    .local v6, "dataDirs":[Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 345
    return-void
.end method

.method private getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .locals 6
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 662
    const-string v0, "/system/framework/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    sget v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    const-string v2, "framework"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v0

    .line 668
    :cond_0
    new-instance v0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 670
    .local v0, "loadingPackageCodeLocations":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v1

    .line 671
    .local v1, "outcome":I
    sget v2, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v1, v2, :cond_1

    .line 673
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 679
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v2

    .line 680
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 681
    .local v4, "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v4, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 682
    sget v5, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v1, v5, :cond_2

    .line 683
    new-instance v3, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v4}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    monitor-exit v2

    return-object v3

    .line 685
    .end local v4    # "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    :cond_2
    goto :goto_0

    .line 686
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 693
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->realpath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "dexPathReal":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 695
    const-string v3, "DexManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dex loaded with symlink. dexPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dexPathReal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 700
    .end local v2    # "dexPathReal":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 698
    :catch_0
    move-exception v2

    .line 704
    :cond_5
    :goto_1
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    const/4 v3, 0x0

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 686
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public static isPackageSelectedToRunOob(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 726
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static isPackageSelectedToRunOob(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 735
    .local p0, "packageNamesInSameProcess":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    nop

    .line 736
    const-string/jumbo v0, "pm.dexopt.priv-apps-oob"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 737
    const-string/jumbo v1, "pm.dexopt.priv-apps-oob-list"

    const-string v2, "ALL"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 738
    const-string v2, "dex_boot"

    const-string/jumbo v3, "priv_apps_oob_enabled"

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 739
    const-string/jumbo v4, "priv_apps_oob_whitelist"

    invoke-static {v2, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 735
    invoke-static {v0, v1, v3, v2, p0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOobInternal(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static isPackageSelectedToRunOobInternal(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 9
    .param p0, "isDefaultEnabled"    # Z
    .param p1, "defaultWhitelist"    # Ljava/lang/String;
    .param p2, "overrideEnabled"    # Ljava/lang/String;
    .param p3, "overrideWhitelist"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 748
    .local p4, "packageNamesInSameProcess":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 749
    :cond_0
    move v0, p0

    :goto_0
    nop

    .line 750
    .local v0, "enabled":Z
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 751
    return v1

    .line 755
    :cond_1
    if-eqz p3, :cond_2

    move-object v2, p3

    goto :goto_1

    :cond_2
    move-object v2, p1

    .line 756
    .local v2, "whitelist":Ljava/lang/String;
    :goto_1
    const-string v3, "ALL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 757
    return v4

    .line 759
    :cond_3
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_5

    aget-object v7, v3, v6

    .line 760
    .local v7, "oobPkgName":Ljava/lang/String;
    invoke-interface {p4, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 761
    return v4

    .line 759
    .end local v7    # "oobPkgName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 764
    :cond_5
    return v1
.end method

.method private loadInternal(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 371
    .local p1, "existingPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    const-string v0, "DexManager"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v2, "packageToCodePaths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 377
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 378
    .local v5, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 379
    .local v6, "userId":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 381
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v8, v6}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 388
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v9, v10}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 390
    .local v9, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v10, v11}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 394
    .local v10, "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 396
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 398
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    .end local v9    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    goto :goto_1

    .line 399
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    .end local v5    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "userId":I
    :cond_1
    goto :goto_0

    .line 402
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage;->read()V

    .line 403
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->syncData(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    goto :goto_2

    .line 404
    :catch_0
    move-exception v3

    .line 405
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v4}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 406
    const-string v4, "Exception while loading package dex usage. Starting with a fresh state."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->readAndSync(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    goto :goto_3

    .line 412
    :catch_1
    move-exception v3

    .line 413
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v4}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    .line 414
    const-string v4, "Exception while loading package dynamic code usage. Starting with a fresh state."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private static putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .line 708
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 709
    .local v0, "existingValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public dexoptSecondaryDex(Lcom/android/server/pm/dex/DexoptOptions;)Z
    .locals 16
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 459
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->isForce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;

    iget-object v3, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-direct {v0, v3}, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer;)V

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    :goto_0
    move-object v3, v0

    .line 462
    .local v3, "pdo":Lcom/android/server/pm/PackageDexOptimizer;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 463
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v5

    .line 464
    .local v5, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v5}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v6, "DexManager"

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    .line 465
    sget-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No secondary dex use for package:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_1
    return v7

    .line 471
    :cond_2
    const/4 v8, 0x1

    .line 475
    .local v8, "success":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getDexPath()Ljava/lang/String;

    move-result-object v0

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_4

    .line 476
    invoke-virtual {v5}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getDexPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 477
    .local v11, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    if-eqz v11, :cond_4

    .line 480
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 481
    invoke-virtual {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v6

    .line 480
    invoke-interface {v0, v4, v10, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 485
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getDexPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v6, v12, v11, v2}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v6

    if-eq v6, v9, :cond_3

    goto :goto_1

    :cond_3
    move v7, v10

    :goto_1
    return v7

    .line 482
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 490
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v11    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_4
    invoke-virtual {v5}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 491
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 492
    .local v12, "dexPath":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 496
    .local v13, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :try_start_1
    iget-object v14, v1, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 497
    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v15

    .line 496
    invoke-interface {v14, v4, v10, v15}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v14
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 500
    .local v14, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 505
    if-nez v14, :cond_5

    .line 506
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find package when compiling secondary dex "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for user "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 506
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v7, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v15

    invoke-virtual {v7, v4, v15}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    .line 509
    const/4 v7, 0x1

    goto :goto_2

    .line 512
    :cond_5
    iget-object v7, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v7, v12, v13, v2}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v7

    .line 514
    .local v7, "result":I
    if-eqz v8, :cond_6

    if-eq v7, v9, :cond_6

    const/4 v15, 0x1

    goto :goto_3

    :cond_6
    move v15, v10

    :goto_3
    move v8, v15

    .line 515
    .end local v7    # "result":I
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v12    # "dexPath":Ljava/lang/String;
    .end local v13    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v14    # "pkg":Landroid/content/pm/PackageInfo;
    const/4 v7, 0x1

    goto :goto_2

    .line 498
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .restart local v12    # "dexPath":Ljava/lang/String;
    .restart local v13    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :catch_1
    move-exception v0

    .line 499
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 516
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v12    # "dexPath":Ljava/lang/String;
    .end local v13    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_7
    return v8
.end method

.method public getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    return-object v0
.end method

.method public getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 431
    .local v0, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v0, :cond_0

    sget-object v1, Lcom/android/server/pm/dex/DexManager;->DEFAULT_USE_INFO:Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method hasInfoOnPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 273
    .local p1, "existingPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/DexManager;->loadInternal(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 276
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    .line 277
    const-string v1, "DexManager"

    const-string v2, "Exception while loading. Starting with a fresh state."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public notifyDexLoad(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .locals 3
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "loaderIsa"    # Ljava/lang/String;
    .param p5, "loaderUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 161
    .local p2, "classLoadersNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/dex/DexManager;->notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while notifying dex load for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DexManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .locals 24
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "loaderIsa"    # Ljava/lang/String;
    .param p5, "loaderUserId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 173
    .local p2, "classLoaderNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v12, p5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const-string v13, "DexManager"

    if-eq v3, v4, :cond_0

    .line 174
    const-string v3, "Bad call to noitfyDexLoad: args have different size"

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 177
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    const-string v3, "Bad call to notifyDexLoad: class loaders list is empty"

    invoke-static {v13, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 181
    :cond_1
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading dex files "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in unsupported ISA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p4

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 189
    :cond_2
    move-object/from16 v14, p4

    const/4 v15, 0x0

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    .line 190
    .local v11, "firstClassPath":Ljava/lang/String;
    if-nez v11, :cond_3

    .line 191
    return-void

    .line 194
    :cond_3
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, "dexPathsToRegister":[Ljava/lang/String;
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/dex/DexoptUtils;->processContextForDexLoad(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v16

    .line 202
    .local v16, "classLoaderContexts":[Ljava/lang/String;
    if-nez v16, :cond_5

    .line 203
    sget-boolean v3, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uses unsupported class loader in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p2

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_4
    move-object/from16 v9, p2

    goto :goto_0

    .line 202
    :cond_5
    move-object/from16 v9, p2

    .line 209
    :goto_0
    const/4 v3, 0x0

    .line 210
    .local v3, "dexPathIndex":I
    array-length v8, v10

    move/from16 v17, v3

    move v7, v15

    .end local v3    # "dexPathIndex":I
    .local v17, "dexPathIndex":I
    :goto_1
    if-ge v7, v8, :cond_f

    aget-object v6, v10, v7

    .line 212
    .local v6, "dexPath":Ljava/lang/String;
    invoke-direct {v0, v1, v6, v12}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v5

    .line 214
    .local v5, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    sget-boolean v3, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " loads from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_6
    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v3

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v3, v4, :cond_d

    .line 223
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 224
    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    move/from16 v18, v3

    .line 225
    .local v18, "isUsedByOtherApps":Z
    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v3

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v3, v4, :cond_8

    .line 226
    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v3

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v3, v4, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v19, v15

    goto :goto_3

    :cond_8
    :goto_2
    const/16 v19, 0x1

    .line 228
    .local v19, "primaryOrSplit":Z
    :goto_3
    if-eqz v19, :cond_9

    if-nez v18, :cond_9

    .line 232
    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v10

    move-object v2, v11

    goto/16 :goto_6

    .line 235
    :cond_9
    if-nez v19, :cond_a

    .line 237
    iget-object v3, v0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 238
    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 237
    invoke-virtual {v3, v12, v6, v4, v15}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordDex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_a
    if-eqz v16, :cond_b

    .line 247
    aget-object v15, v16, v17

    .line 248
    .local v15, "classLoaderContext":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v5}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v5

    .end local v5    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .local v20, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    move-object v5, v6

    move-object v1, v6

    .end local v6    # "dexPath":Ljava/lang/String;
    .local v1, "dexPath":Ljava/lang/String;
    move/from16 v6, p5

    move/from16 v21, v7

    move-object/from16 v7, p4

    move/from16 v22, v8

    move/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v23, v10

    .end local v10    # "dexPathsToRegister":[Ljava/lang/String;
    .local v23, "dexPathsToRegister":[Ljava/lang/String;
    move-object v10, v2

    move-object v2, v11

    .end local v11    # "firstClassPath":Ljava/lang/String;
    .local v2, "firstClassPath":Ljava/lang/String;
    move-object v11, v15

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 251
    iget-object v3, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    goto :goto_4

    .line 241
    .end local v1    # "dexPath":Ljava/lang/String;
    .end local v2    # "firstClassPath":Ljava/lang/String;
    .end local v15    # "classLoaderContext":Ljava/lang/String;
    .end local v20    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v23    # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v5    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v6    # "dexPath":Ljava/lang/String;
    .restart local v10    # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v11    # "firstClassPath":Ljava/lang/String;
    :cond_b
    move-object/from16 v20, v5

    move-object v1, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v10

    move-object v2, v11

    .line 254
    .end local v5    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v6    # "dexPath":Ljava/lang/String;
    .end local v10    # "dexPathsToRegister":[Ljava/lang/String;
    .end local v11    # "firstClassPath":Ljava/lang/String;
    .end local v18    # "isUsedByOtherApps":Z
    .end local v19    # "primaryOrSplit":Z
    .restart local v1    # "dexPath":Ljava/lang/String;
    .restart local v2    # "firstClassPath":Ljava/lang/String;
    .restart local v20    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v23    # "dexPathsToRegister":[Ljava/lang/String;
    :cond_c
    :goto_4
    goto :goto_5

    .line 257
    .end local v1    # "dexPath":Ljava/lang/String;
    .end local v2    # "firstClassPath":Ljava/lang/String;
    .end local v20    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v23    # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v5    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v6    # "dexPath":Ljava/lang/String;
    .restart local v10    # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v11    # "firstClassPath":Ljava/lang/String;
    :cond_d
    move-object/from16 v20, v5

    move-object v1, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v10

    move-object v2, v11

    .end local v5    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v6    # "dexPath":Ljava/lang/String;
    .end local v10    # "dexPathsToRegister":[Ljava/lang/String;
    .end local v11    # "firstClassPath":Ljava/lang/String;
    .restart local v1    # "dexPath":Ljava/lang/String;
    .restart local v2    # "firstClassPath":Ljava/lang/String;
    .restart local v20    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v23    # "dexPathsToRegister":[Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v3, :cond_e

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find owning package for dex file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_e
    :goto_5
    add-int/lit8 v17, v17, 0x1

    .line 210
    .end local v1    # "dexPath":Ljava/lang/String;
    .end local v20    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    :goto_6
    add-int/lit8 v7, v21, 0x1

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move-object v11, v2

    move/from16 v8, v22

    move-object/from16 v10, v23

    const/4 v15, 0x0

    move-object/from16 v2, p3

    goto/16 :goto_1

    .line 263
    .end local v2    # "firstClassPath":Ljava/lang/String;
    .end local v23    # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v10    # "dexPathsToRegister":[Ljava/lang/String;
    .restart local v11    # "firstClassPath":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method public notifyPackageDataDestroyed(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 323
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->removePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removePackage(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 332
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removeUserPackage(Ljava/lang/String;I)V

    .line 334
    :goto_0
    return-void
.end method

.method public notifyPackageInstalled(Landroid/content/pm/PackageInfo;I)V
    .locals 2
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .line 288
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 292
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 293
    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "notifyPackageInstalled called with USER_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyPackageUpdated(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "splitCodePaths"    # [Ljava/lang/String;

    .line 301
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->clearUsedByOtherApps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 309
    :cond_0
    return-void
.end method

.method public reconcileSecondaryDexFiles(Ljava/lang/String;)V
    .locals 23
    .param p1, "packageName"    # Ljava/lang/String;

    .line 525
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v10

    .line 526
    .local v10, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v10}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    sget-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No secondary dex use for package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DexManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    return-void

    .line 534
    :cond_1
    const/4 v0, 0x0

    .line 535
    .local v0, "updated":Z
    invoke-virtual {v10}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v0

    .end local v0    # "updated":Z
    .local v12, "updated":Z
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/Map$Entry;

    .line 536
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 537
    .local v14, "dexPath":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 538
    .local v15, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    const/4 v2, 0x0

    .line 544
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 545
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 544
    invoke-interface {v0, v9, v8, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 548
    move-object v7, v2

    goto :goto_1

    .line 546
    :catch_0
    move-exception v0

    move-object v7, v2

    .line 549
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    :goto_1
    const/16 v16, 0x1

    if-nez v7, :cond_4

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find package when compiling secondary dex "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    const-string v2, "DexManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 556
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 555
    invoke-virtual {v0, v9, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v16, v8

    :cond_3
    :goto_2
    move/from16 v12, v16

    .line 557
    goto :goto_0

    .line 559
    :cond_4
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 560
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    .line 561
    .local v0, "flags":I
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 562
    invoke-static {v2, v14}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 563
    or-int/lit8 v0, v0, 0x1

    move/from16 v17, v0

    goto :goto_3

    .line 564
    :cond_5
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 565
    invoke-static {v2, v14}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 566
    or-int/lit8 v0, v0, 0x2

    move/from16 v17, v0

    .line 574
    .end local v0    # "flags":I
    .local v17, "flags":I
    :goto_3
    const/16 v18, 0x1

    .line 575
    .local v18, "dexStillExists":Z
    iget-object v4, v1, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 577
    :try_start_1
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 578
    .local v6, "isas":[Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v3

    move-object v3, v14

    move-object/from16 v20, v4

    move-object/from16 v4, p1

    move-object/from16 v21, v5

    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .local v21, "info":Landroid/content/pm/ApplicationInfo;
    move v5, v0

    move-object/from16 v22, v7

    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .local v22, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v7, v19

    move/from16 v19, v8

    move/from16 v8, v17

    :try_start_2
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/Installer;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 583
    .end local v6    # "isas":[Ljava/lang/String;
    .end local v18    # "dexStillExists":Z
    .local v0, "dexStillExists":Z
    move/from16 v18, v0

    goto :goto_5

    .line 580
    .end local v0    # "dexStillExists":Z
    .restart local v18    # "dexStillExists":Z
    :catch_1
    move-exception v0

    goto :goto_4

    .line 584
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_7

    .line 580
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v19, v8

    .line 581
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_4
    :try_start_3
    const-string v2, "DexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got InstallerException when reconciling dex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_5
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 585
    if-nez v18, :cond_8

    .line 586
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 587
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 586
    invoke-virtual {v0, v9, v14, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v12, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v16, v19

    :cond_7
    :goto_6
    move/from16 v0, v16

    move v12, v0

    .line 590
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v14    # "dexPath":Ljava/lang/String;
    .end local v15    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v17    # "flags":I
    .end local v18    # "dexStillExists":Z
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_8
    goto/16 :goto_0

    .line 584
    .restart local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .restart local v14    # "dexPath":Ljava/lang/String;
    .restart local v15    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .restart local v17    # "flags":I
    .restart local v18    # "dexStillExists":Z
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_1
    move-exception v0

    :goto_7
    :try_start_4
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 565
    .end local v17    # "flags":I
    .end local v18    # "dexStillExists":Z
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "flags":I
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_9
    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v19, v8

    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_8

    .line 564
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_a
    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v19, v8

    .line 568
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not infer CE/DE storage for path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v2, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 570
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 569
    invoke-virtual {v2, v9, v14, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz v12, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v16, v19

    :cond_c
    :goto_9
    move/from16 v12, v16

    .line 571
    goto/16 :goto_0

    .line 591
    .end local v0    # "flags":I
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v14    # "dexPath":Ljava/lang/String;
    .end local v15    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_d
    if-eqz v12, :cond_e

    .line 592
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 594
    :cond_e
    return-void
.end method

.method public registerDexModule(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    .locals 21
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "isUsedByOtherApps"    # Z
    .param p4, "userId"    # I

    .line 601
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move/from16 v12, p4

    invoke-direct {v0, v1, v11, v12}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v13

    .line 603
    .local v13, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    const/4 v14, 0x0

    if-ne v2, v3, :cond_0

    .line 604
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Package not found"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 606
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 607
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Dex path does not belong to package"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 609
    :cond_1
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v2, v3, :cond_6

    .line 610
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v2, v3, :cond_2

    goto/16 :goto_1

    .line 615
    :cond_2
    const/4 v2, 0x0

    .line 616
    .local v2, "update":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v15

    array-length v10, v15

    move/from16 v16, v2

    move v9, v14

    .end local v2    # "update":Z
    .local v16, "update":Z
    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v17, v15, v9

    .line 617
    .local v17, "isa":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    .line 619
    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v18

    .line 617
    const-string v19, "=UnknownClassLoaderContext="

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v6, v17

    move/from16 v7, p3

    move/from16 v20, v9

    move-object/from16 v9, v18

    move/from16 v18, v10

    move-object/from16 v10, v19

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 621
    .local v2, "newUpdate":Z
    or-int v16, v16, v2

    .line 616
    .end local v2    # "newUpdate":Z
    .end local v17    # "isa":Ljava/lang/String;
    add-int/lit8 v9, v20, 0x1

    move/from16 v10, v18

    goto :goto_0

    .line 623
    :cond_3
    if-eqz v16, :cond_4

    .line 624
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 627
    :cond_4
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v13}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v2

    .line 628
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 631
    .local v2, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    new-instance v3, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v14}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 634
    .local v3, "options":Lcom/android/server/pm/dex/DexoptOptions;
    iget-object v4, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v4, v1, v11, v2, v3}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v4

    .line 642
    .local v4, "result":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 643
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to optimize dex module "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DexManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_5
    new-instance v5, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const/4 v6, 0x1

    const-string v7, "Dex module registered successfully"

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v5

    .line 611
    .end local v2    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v3    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    .end local v4    # "result":I
    .end local v16    # "update":Z
    :cond_6
    :goto_1
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Main apks cannot be registered"

    invoke-direct {v2, v14, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2
.end method

.method public writePackageDexUsageNow()V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeNow()V

    .line 717
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeNow()V

    .line 718
    return-void
.end method
