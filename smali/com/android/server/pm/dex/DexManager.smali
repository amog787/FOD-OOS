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

.field private static DEX_SEARCH_FOUND_PRIMARY:I = 0x0

.field private static DEX_SEARCH_FOUND_SECONDARY:I = 0x0

.field private static DEX_SEARCH_FOUND_SPLIT:I = 0x0

.field private static DEX_SEARCH_NOT_FOUND:I = 0x0

.field private static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB:Ljava/lang/String; = "pm.dexopt.priv-apps-oob"

.field private static final PROPERTY_NAME_PM_DEXOPT_PRIV_APPS_OOB_LIST:Ljava/lang/String; = "pm.dexopt.priv-apps-oob-list"

.field private static final SYSTEM_SERVER_COMPILER_FILTER:Ljava/lang/String; = "verify"

.field private static final TAG:Ljava/lang/String; = "DexManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

.field private final mInstallLock:Ljava/lang/Object;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackageCodeLocationsCache:Ljava/util/Map;
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

    .line 76
    const-string v0, "DexManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    .line 111
    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    .line 112
    const/4 v0, 0x1

    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    .line 113
    const/4 v0, 0x2

    sput v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    .line 114
    sput v1, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/Installer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pms"    # Landroid/content/pm/IPackageManager;
    .param p3, "pdo"    # Lcom/android/server/pm/PackageDexOptimizer;
    .param p4, "installer"    # Lcom/android/server/pm/Installer;
    .param p5, "installLock"    # Ljava/lang/Object;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 120
    new-instance v0, Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-direct {v0}, Lcom/android/server/pm/dex/PackageDexUsage;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 121
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 122
    iput-object p3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 123
    iput-object p4, p0, Lcom/android/server/pm/dex/DexManager;->mInstaller:Lcom/android/server/pm/Installer;

    .line 124
    iput-object p5, p0, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    .line 125
    new-instance v0, Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-direct {v0, p2, p4}, Lcom/android/server/pm/dex/DynamicCodeLogger;-><init>(Landroid/content/pm/IPackageManager;Lcom/android/server/pm/Installer;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 126
    return-void
.end method

.method static synthetic access$300(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 74
    invoke-static {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 74
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 74
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 74
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 74
    sget v0, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    return v0
.end method

.method public static auditUncompressedDexInApk(Ljava/lang/String;)Z
    .locals 12
    .param p0, "fileName"    # Ljava/lang/String;

    .line 893
    const-string v0, "DexManager"

    const/4 v1, 0x0

    .line 895
    .local v1, "jarFile":Landroid/util/jar/StrictJarFile;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/util/jar/StrictJarFile;

    invoke-direct {v3, p0, v2, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V

    move-object v1, v3

    .line 897
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 898
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    const/4 v4, 0x1

    .line 899
    .local v4, "allCorrect":Z
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 900
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 901
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".dex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 902
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "APK "

    if-eqz v6, :cond_0

    .line 903
    const/4 v4, 0x0

    .line 904
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has compressed dex code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 904
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 906
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    move-result-wide v8

    const-wide/16 v10, 0x3

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_1

    .line 907
    const/4 v4, 0x0

    .line 908
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " has unaligned dex code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 908
    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    :goto_1
    goto :goto_0

    .line 913
    :cond_2
    nop

    .line 919
    nop

    .line 920
    :try_start_2
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 922
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    .line 913
    :goto_3
    return v4

    .line 918
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v4    # "allCorrect":Z
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 914
    :catch_1
    move-exception v3

    .line 915
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

    .line 916
    nop

    .line 919
    if-eqz v1, :cond_3

    .line 920
    :try_start_4
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 922
    :catch_2
    move-exception v0

    :cond_3
    :goto_4
    nop

    .line 916
    return v2

    .line 919
    .end local v3    # "ignore":Ljava/io/IOException;
    :goto_5
    if-eqz v1, :cond_4

    .line 920
    :try_start_5
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 922
    :catch_3
    move-exception v2

    :cond_4
    :goto_6
    nop

    .line 923
    throw v0
.end method

.method private cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "splitCodePaths"    # [Ljava/lang/String;
    .param p4, "dataDirs"    # [Ljava/lang/String;
    .param p5, "userId"    # I

    .line 335
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    new-instance v2, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 341
    .local v1, "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->updateCodeLocation(Ljava/lang/String;[Ljava/lang/String;)V

    .line 342
    if-eqz p4, :cond_1

    .line 343
    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p4, v3

    .line 348
    .local v4, "dataDir":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 349
    invoke-virtual {v1, v4, p5}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mergeAppDataDirs(Ljava/lang/String;I)V

    .line 343
    .end local v4    # "dataDir":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 353
    .end local v1    # "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    :cond_1
    monitor-exit v0

    .line 354
    return-void

    .line 353
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

    .line 326
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 327
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

    .line 329
    .local v6, "dataDirs":[Ljava/lang/String;
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    move-object v2, p0

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 331
    return-void
.end method

.method private getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .locals 6
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 775
    new-instance v0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    invoke-direct {v0, p1, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 777
    .local v0, "loadingPackageCodeLocations":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v1

    .line 778
    .local v1, "outcome":I
    sget v2, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v1, v2, :cond_0

    .line 780
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 786
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    monitor-enter v2

    .line 787
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 788
    .local v4, "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    invoke-virtual {v4, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(Ljava/lang/String;I)I

    move-result v5

    move v1, v5

    .line 789
    sget v5, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v1, v5, :cond_1

    .line 790
    new-instance v3, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    invoke-static {v4}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5, v1}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    monitor-exit v2

    return-object v3

    .line 792
    .end local v4    # "pcl":Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
    :cond_1
    goto :goto_0

    .line 793
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 803
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 804
    invoke-direct {p0, p2}, Lcom/android/server/pm/dex/DexManager;->isSystemServerDexPathSupportedForOdex(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 810
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SECONDARY:I

    const-string v4, "android"

    invoke-direct {v2, p0, v4, v3}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 812
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System server loads dex files outside paths supported for odex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DexManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_4
    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 822
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->realpath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 823
    .local v2, "dexPathReal":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 824
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

    .line 829
    .end local v2    # "dexPathReal":Ljava/lang/String;
    :cond_5
    goto :goto_1

    .line 827
    :catch_0
    move-exception v2

    .line 833
    :cond_6
    :goto_1
    new-instance v2, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    const/4 v3, 0x0

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V

    return-object v2

    .line 793
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private getPackageDexOptimizer(Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/pm/PackageDexOptimizer;
    .locals 2
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 607
    invoke-virtual {p1}, Lcom/android/server/pm/dex/DexoptOptions;->isForce()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    new-instance v0, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;

    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer;)V

    goto :goto_0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    .line 607
    :goto_0
    return-object v0
.end method

.method public static isPackageSelectedToRunOob(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 855
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 864
    .local p0, "packageNamesInSameProcess":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    nop

    .line 865
    const-string/jumbo v0, "pm.dexopt.priv-apps-oob"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 866
    const-string/jumbo v1, "pm.dexopt.priv-apps-oob-list"

    const-string v2, "ALL"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 864
    invoke-static {v0, v1, p0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOobInternal(ZLjava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static isPackageSelectedToRunOobInternal(ZLjava/lang/String;Ljava/util/Collection;)Z
    .locals 7
    .param p0, "isEnabled"    # Z
    .param p1, "whitelist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 873
    .local p2, "packageNamesInSameProcess":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 874
    return v0

    .line 877
    :cond_0
    const-string v1, "ALL"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 878
    return v2

    .line 880
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 881
    .local v5, "oobPkgName":Ljava/lang/String;
    invoke-interface {p2, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 882
    return v2

    .line 880
    .end local v5    # "oobPkgName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 885
    :cond_3
    return v0
.end method

.method private isSystemServerDexPathSupportedForOdex(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dexPath"    # Ljava/lang/String;

    .line 238
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    .local v0, "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackagePartitions$SystemPartition;>;"
    const-string v1, "/apex/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 241
    return v2

    .line 243
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 244
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackagePartitions$SystemPartition;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    return v2

    .line 243
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

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

    .line 357
    .local p1, "existingPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    const-string v0, "DexManager"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v1, "packageToUsersMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 362
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

    .line 363
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 364
    .local v5, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 365
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

    .line 367
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    invoke-direct {p0, v8, v6}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 374
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1, v9, v10}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 376
    .local v9, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v10, v11}, Lcom/android/server/pm/dex/DexManager;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 380
    .local v10, "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 382
    iget-object v11, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 384
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    .end local v9    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "codePaths":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    goto :goto_1

    .line 385
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    .end local v5    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "userId":I
    :cond_1
    goto :goto_0

    .line 388
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v3}, Lcom/android/server/pm/dex/PackageDexUsage;->read()V

    .line 389
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v3, "packagesToKeepDataAbout":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->syncData(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    .end local v3    # "packagesToKeepDataAbout":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .line 392
    :catch_0
    move-exception v3

    .line 393
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v4}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 394
    const-string v4, "Exception while loading package dex usage. Starting with a fresh state."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->readAndSync(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    goto :goto_3

    .line 400
    :catch_1
    move-exception v3

    .line 401
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v4}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    .line 402
    const-string v4, "Exception while loading package dynamic code usage. Starting with a fresh state."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
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

    .line 837
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 838
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

    .line 450
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "DexManager"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 454
    const-string v0, "System server jars should be optimized with dexoptSystemServer"

    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return v4

    .line 458
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/dex/DexManager;->getPackageDexOptimizer(Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v5

    .line 459
    .local v5, "pdo":Lcom/android/server/pm/PackageDexOptimizer;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 460
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v7

    .line 461
    .local v7, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    .line 462
    sget-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No secondary dex use for package:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_1
    return v8

    .line 468
    :cond_2
    const/4 v9, 0x1

    .line 472
    .local v9, "success":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getDexPath()Ljava/lang/String;

    move-result-object v0

    const/4 v10, -0x1

    if-eqz v0, :cond_4

    .line 473
    invoke-virtual {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getDexPath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 474
    .local v11, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    if-eqz v11, :cond_4

    .line 477
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 478
    invoke-virtual {v11}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 477
    invoke-interface {v0, v6, v4, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 482
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getDexPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v3, v12, v11, v2}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v3

    if-eq v3, v10, :cond_3

    move v4, v8

    :cond_3
    return v4

    .line 479
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 487
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v11    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_4
    invoke-virtual {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 488
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 489
    .local v12, "dexPath":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 493
    .local v13, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :try_start_1
    iget-object v14, v1, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 494
    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v15

    .line 493
    invoke-interface {v14, v6, v4, v15}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v14
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 497
    .local v14, "pkg":Landroid/content/pm/PackageInfo;
    nop

    .line 502
    if-nez v14, :cond_5

    .line 503
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find package when compiling secondary dex "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 503
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v4, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v13}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v15

    invoke-virtual {v4, v6, v15}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    .line 506
    const/4 v4, 0x0

    goto :goto_0

    .line 509
    :cond_5
    iget-object v4, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4, v12, v13, v2}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v4

    .line 511
    .local v4, "result":I
    if-eqz v9, :cond_6

    if-eq v4, v10, :cond_6

    move v15, v8

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    :goto_1
    move v9, v15

    .line 512
    .end local v4    # "result":I
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v12    # "dexPath":Ljava/lang/String;
    .end local v13    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v14    # "pkg":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    goto :goto_0

    .line 495
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .restart local v12    # "dexPath":Ljava/lang/String;
    .restart local v13    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :catch_1
    move-exception v0

    .line 496
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 513
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v12    # "dexPath":Ljava/lang/String;
    .end local v13    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_7
    return v9
.end method

.method public dexoptSystemServer(Lcom/android/server/pm/dex/DexoptOptions;)I
    .locals 16
    .param p1, "options"    # Lcom/android/server/pm/dex/DexoptOptions;

    .line 528
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "DexManager"

    if-nez v1, :cond_0

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non system server package used when trying to dexopt system server:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-static {v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return v2

    .line 540
    :cond_0
    const-string/jumbo v1, "verify"

    move-object/from16 v4, p1

    invoke-virtual {v4, v1}, Lcom/android/server/pm/dex/DexoptOptions;->overrideCompilerFilter(Ljava/lang/String;)Lcom/android/server/pm/dex/DexoptOptions;

    move-result-object v1

    .line 543
    .local v1, "overriddenOptions":Lcom/android/server/pm/dex/DexoptOptions;
    invoke-direct {v0, v1}, Lcom/android/server/pm/dex/DexManager;->getPackageDexOptimizer(Lcom/android/server/pm/dex/DexoptOptions;)Lcom/android/server/pm/PackageDexOptimizer;

    move-result-object v5

    .line 544
    .local v5, "pdo":Lcom/android/server/pm/PackageDexOptimizer;
    invoke-virtual {v1}, Lcom/android/server/pm/dex/DexoptOptions;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 545
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v6}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v7

    .line 546
    .local v7, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 547
    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 548
    const-string v2, "No dex files recorded for system server"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1
    return v9

    .line 554
    :cond_2
    const/4 v8, 0x0

    .line 555
    .local v8, "usageUpdated":Z
    const/4 v10, 0x0

    .line 556
    .local v10, "result":I
    invoke-virtual {v7}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 557
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 558
    .local v13, "dexPath":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 559
    .local v14, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    new-array v15, v9, [Ljava/lang/String;

    invoke-static {v13, v15}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v15

    new-array v2, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v15, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 560
    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "A dex file previously loaded by System Server does not exist  anymore: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_3
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 565
    invoke-virtual {v14}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v15

    .line 564
    invoke-virtual {v2, v6, v13, v15}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    move v2, v9

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v2, 0x1

    :goto_2
    move v8, v2

    .line 566
    const/4 v2, -0x1

    goto :goto_0

    .line 569
    :cond_6
    invoke-virtual {v14}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedClassLoaderContext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 570
    invoke-virtual {v14}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isVariableClassLoaderContext()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v15, -0x1

    goto :goto_3

    .line 579
    :cond_7
    invoke-virtual {v5, v13, v14, v1}, Lcom/android/server/pm/PackageDexOptimizer;->dexoptSystemServerPath(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v2

    .line 585
    .local v2, "newResult":I
    const/4 v15, -0x1

    if-eq v10, v15, :cond_8

    if-eqz v2, :cond_8

    .line 587
    move v10, v2

    .line 589
    .end local v2    # "newResult":I
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v13    # "dexPath":Ljava/lang/String;
    .end local v14    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_8
    move v2, v15

    goto :goto_0

    .line 569
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .restart local v13    # "dexPath":Ljava/lang/String;
    .restart local v14    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_9
    const/4 v15, -0x1

    .line 571
    :goto_3
    invoke-virtual {v14}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedClassLoaderContext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 572
    const-string/jumbo v2, "unsupported"

    goto :goto_4

    .line 573
    :cond_a
    const-string/jumbo v2, "variable"

    :goto_4
    nop

    .line 574
    .local v2, "debugMsg":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping dexopt for system server path loaded with "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " class loader context: "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v2, -0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 591
    .end local v2    # "debugMsg":Ljava/lang/String;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v13    # "dexPath":Ljava/lang/String;
    .end local v14    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    :cond_b
    if-eqz v8, :cond_c

    .line 592
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 595
    :cond_c
    return v10
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

    .line 765
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->getAllPackagesWithSecondaryDexFiles()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    return-object v0
.end method

.method public getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 428
    .local v0, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    invoke-direct {v1, p1}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method hasInfoOnPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 441
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

    .line 259
    .local p1, "existingPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/content/pm/PackageInfo;>;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/DexManager;->loadInternal(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v1}, Lcom/android/server/pm/dex/PackageDexUsage;->clear()V

    .line 262
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->clear()V

    .line 263
    const-string v1, "DexManager"

    const-string v2, "Exception while loading. Starting with a fresh state."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public notifyDexLoad(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 3
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "loaderIsa"    # Ljava/lang/String;
    .param p4, "loaderUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 146
    .local p2, "classLoaderContextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/DexManager;->notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
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

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 20
    .param p1, "loadingAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "loaderIsa"    # Ljava/lang/String;
    .param p4, "loaderUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 158
    .local p2, "classLoaderContextMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p4

    if-nez p2, :cond_0

    .line 159
    return-void

    .line 161
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const-string v11, "DexManager"

    if-eqz v2, :cond_1

    .line 162
    const-string v2, "Bad call to notifyDexLoad: class loaders list is empty"

    invoke-static {v11, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 165
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->checkISA(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading dex files "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in unsupported ISA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void

    .line 171
    :cond_2
    move-object/from16 v12, p3

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/util/Map$Entry;

    .line 172
    .local v14, "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    .line 174
    .local v15, "dexPath":Ljava/lang/String;
    invoke-direct {v0, v1, v15, v10}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v9

    .line 176
    .local v9, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " loads from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_3
    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    if-eq v2, v3, :cond_b

    .line 185
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 186
    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    move/from16 v16, v2

    .line 187
    .local v16, "isUsedByOtherApps":Z
    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v2, v4, :cond_5

    .line 188
    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v4, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    nop

    :goto_2
    move/from16 v17, v3

    .line 190
    .local v17, "primaryOrSplit":Z
    if-eqz v17, :cond_6

    if-nez v16, :cond_6

    .line 191
    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 198
    goto :goto_0

    .line 201
    :cond_6
    if-nez v17, :cond_7

    .line 203
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 204
    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 203
    invoke-virtual {v2, v10, v15, v3, v4}, Lcom/android/server/pm/dex/DynamicCodeLogger;->recordDex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_7
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Ljava/lang/String;

    .line 208
    .local v18, "classLoaderContext":Ljava/lang/String;
    if-eqz v18, :cond_9

    .line 209
    invoke-static/range {v18 .. v18}, Ldalvik/system/VMRuntime;->isValidClassLoaderContext(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 214
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v9}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v4, v15

    move/from16 v5, p4

    move-object/from16 v6, p3

    move/from16 v7, v17

    move-object/from16 v19, v9

    .end local v9    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .local v19, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    move-object/from16 v9, v18

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 217
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    goto :goto_3

    .line 209
    .end local v19    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v9    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    :cond_8
    move-object/from16 v19, v9

    .end local v9    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v19    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    goto :goto_3

    .line 208
    .end local v19    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v9    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    :cond_9
    move-object/from16 v19, v9

    .line 220
    .end local v9    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .end local v16    # "isUsedByOtherApps":Z
    .end local v17    # "primaryOrSplit":Z
    .end local v18    # "classLoaderContext":Ljava/lang/String;
    .restart local v19    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    :cond_a
    :goto_3
    goto :goto_4

    .line 223
    .end local v19    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v9    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    :cond_b
    move-object/from16 v19, v9

    .end local v9    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    .restart local v19    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    sget-boolean v2, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v2, :cond_c

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find owning package for dex file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v14    # "mapping":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15    # "dexPath":Ljava/lang/String;
    .end local v19    # "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    :cond_c
    :goto_4
    goto/16 :goto_0

    .line 228
    :cond_d
    return-void
.end method

.method public notifyPackageDataDestroyed(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 309
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->removePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removePackage(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/dex/DynamicCodeLogger;->removeUserPackage(Ljava/lang/String;I)V

    .line 320
    :goto_0
    return-void
.end method

.method public notifyPackageInstalled(Landroid/content/pm/PackageInfo;I)V
    .locals 2
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "userId"    # I

    .line 274
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/dex/DexManager;->cachePackageInfo(Landroid/content/pm/PackageInfo;I)V

    .line 279
    return-void

    .line 275
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

    .line 287
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 292
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->clearUsedByOtherApps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 295
    :cond_0
    return-void
.end method

.method public reconcileSecondaryDexFiles(Ljava/lang/String;)V
    .locals 23
    .param p1, "packageName"    # Ljava/lang/String;

    .line 618
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v10

    .line 619
    .local v10, "useInfo":Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    invoke-virtual {v10}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    sget-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No secondary dex use for package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DexManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    return-void

    .line 627
    :cond_1
    const/4 v0, 0x0

    .line 628
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
    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/util/Map$Entry;

    .line 629
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 630
    .local v14, "dexPath":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 631
    .local v15, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    const/4 v2, 0x0

    .line 637
    .local v2, "pkg":Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 638
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 637
    invoke-interface {v0, v9, v8, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 641
    move-object v7, v2

    goto :goto_1

    .line 639
    :catch_0
    move-exception v0

    move-object v7, v2

    .line 642
    .end local v2    # "pkg":Landroid/content/pm/PackageInfo;
    .local v7, "pkg":Landroid/content/pm/PackageInfo;
    :goto_1
    const/16 v16, 0x1

    if-nez v7, :cond_5

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find package when compiling secondary dex "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 645
    const-string v2, "DexManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 649
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 648
    invoke-virtual {v0, v9, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v12, :cond_4

    :cond_3
    move/from16 v8, v16

    :cond_4
    move v12, v8

    .line 650
    goto :goto_0

    .line 656
    :cond_5
    const-string v0, "android"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 657
    new-array v0, v8, [Ljava/lang/String;

    invoke-static {v14, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v2, v8, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 658
    sget-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A dex file previously loaded by System Server does not exist  anymore: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DexManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_6
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 663
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 662
    invoke-virtual {v0, v9, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeUserPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v12, :cond_8

    :cond_7
    move/from16 v8, v16

    :cond_8
    move v12, v8

    goto/16 :goto_0

    .line 669
    :cond_9
    iget-object v5, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 670
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v0, 0x0

    .line 671
    .local v0, "flags":I
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 672
    invoke-static {v2, v14}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 673
    or-int/lit8 v0, v0, 0x1

    move/from16 v17, v0

    goto :goto_2

    .line 674
    :cond_a
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 675
    invoke-static {v2, v14}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 676
    or-int/lit8 v0, v0, 0x2

    move/from16 v17, v0

    .line 684
    .end local v0    # "flags":I
    .local v17, "flags":I
    :goto_2
    const/16 v18, 0x1

    .line 685
    .local v18, "dexStillExists":Z
    iget-object v4, v1, Lcom/android/server/pm/dex/DexManager;->mInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 687
    :try_start_1
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getLoaderIsas()Ljava/util/Set;

    move-result-object v0

    new-array v2, v8, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 688
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

    .line 693
    .end local v6    # "isas":[Ljava/lang/String;
    .end local v18    # "dexStillExists":Z
    .local v0, "dexStillExists":Z
    move/from16 v18, v0

    goto :goto_4

    .line 690
    .end local v0    # "dexStillExists":Z
    .restart local v18    # "dexStillExists":Z
    :catch_1
    move-exception v0

    goto :goto_3

    .line 694
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

    .line 690
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

    .line 691
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_3
    :try_start_3
    const-string v2, "DexManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got InstallerException when reconciling dex "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v0}, Lcom/android/server/pm/Installer$InstallerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 691
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v0    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_4
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 695
    if-nez v18, :cond_d

    .line 696
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 697
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v2

    .line 696
    invoke-virtual {v0, v9, v14, v2}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz v12, :cond_b

    goto :goto_5

    :cond_b
    move/from16 v8, v19

    goto :goto_6

    :cond_c
    :goto_5
    move/from16 v8, v16

    :goto_6
    move v0, v8

    move v12, v0

    .line 700
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v14    # "dexPath":Ljava/lang/String;
    .end local v15    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v17    # "flags":I
    .end local v18    # "dexStillExists":Z
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_d
    goto/16 :goto_0

    .line 694
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

    .line 675
    .end local v17    # "flags":I
    .end local v18    # "dexStillExists":Z
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "flags":I
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_e
    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v19, v8

    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_8

    .line 674
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v7    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_f
    move-object/from16 v21, v5

    move-object/from16 v22, v7

    move/from16 v19, v8

    .line 678
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

    .line 679
    iget-object v2, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 680
    invoke-virtual {v15}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->getOwnerUserId()I

    move-result v3

    .line 679
    invoke-virtual {v2, v9, v14, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->removeDexFile(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_11

    if-eqz v12, :cond_10

    goto :goto_9

    :cond_10
    move/from16 v8, v19

    goto :goto_a

    :cond_11
    :goto_9
    move/from16 v8, v16

    :goto_a
    move v12, v8

    .line 681
    goto/16 :goto_0

    .line 701
    .end local v0    # "flags":I
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;>;"
    .end local v14    # "dexPath":Ljava/lang/String;
    .end local v15    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v21    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_12
    if-eqz v12, :cond_13

    .line 702
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 704
    :cond_13
    return-void
.end method

.method public registerDexModule(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZI)Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;
    .locals 20
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "dexPath"    # Ljava/lang/String;
    .param p3, "isSharedModule"    # Z
    .param p4, "userId"    # I

    .line 711
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/pm/dex/DexManager;->getDexPackage(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    move-result-object v12

    .line 713
    .local v12, "searchResult":Lcom/android/server/pm/dex/DexManager$DexSearchResult;
    invoke-static {v12}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_NOT_FOUND:I

    const/4 v13, 0x0

    if-ne v2, v3, :cond_0

    .line 714
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Package not found"

    invoke-direct {v2, v13, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 716
    :cond_0
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 717
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Dex path does not belong to package"

    invoke-direct {v2, v13, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2

    .line 719
    :cond_1
    invoke-static {v12}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_PRIMARY:I

    if-eq v2, v3, :cond_7

    .line 720
    invoke-static {v12}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I

    move-result v2

    sget v3, Lcom/android/server/pm/dex/DexManager;->DEX_SEARCH_FOUND_SPLIT:I

    if-ne v2, v3, :cond_2

    goto/16 :goto_2

    .line 725
    :cond_2
    const/4 v2, 0x0

    .line 728
    .local v2, "update":Z
    if-eqz p3, :cond_3

    const-string v3, ".shared.module"

    goto :goto_0

    :cond_3
    invoke-static {v12}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v8, v3

    .line 729
    .local v8, "loadingPackage":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/pm/InstructionSets;->getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    move/from16 v16, v2

    move v9, v13

    .end local v2    # "update":Z
    .local v16, "update":Z
    :goto_1
    if-ge v9, v15, :cond_4

    aget-object v17, v14, v9

    .line 730
    .local v17, "isa":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v12}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const-string v18, "=VariableClassLoaderContext="

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v6, v17

    move/from16 v19, v9

    move-object/from16 v9, v18

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/dex/PackageDexUsage;->record(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 734
    .local v2, "newUpdate":Z
    or-int v16, v16, v2

    .line 729
    .end local v2    # "newUpdate":Z
    .end local v17    # "isa":Ljava/lang/String;
    add-int/lit8 v9, v19, 0x1

    goto :goto_1

    .line 736
    :cond_4
    if-eqz v16, :cond_5

    .line 737
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage;->maybeWriteAsync()V

    .line 740
    :cond_5
    iget-object v2, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-static {v12}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v2

    .line 741
    invoke-virtual {v2}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->getDexUseInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 744
    .local v2, "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    new-instance v3, Lcom/android/server/pm/dex/DexoptOptions;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v13}, Lcom/android/server/pm/dex/DexoptOptions;-><init>(Ljava/lang/String;II)V

    .line 747
    .local v3, "options":Lcom/android/server/pm/dex/DexoptOptions;
    iget-object v4, v0, Lcom/android/server/pm/dex/DexManager;->mPackageDexOptimizer:Lcom/android/server/pm/PackageDexOptimizer;

    invoke-virtual {v4, v1, v10, v2, v3}, Lcom/android/server/pm/PackageDexOptimizer;->dexOptSecondaryDexPath(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/DexoptOptions;)I

    move-result v4

    .line 755
    .local v4, "result":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 756
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to optimize dex module "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DexManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_6
    new-instance v5, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const/4 v6, 0x1

    const-string v7, "Dex module registered successfully"

    invoke-direct {v5, v6, v7}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v5

    .line 721
    .end local v2    # "dexUseInfo":Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
    .end local v3    # "options":Lcom/android/server/pm/dex/DexoptOptions;
    .end local v4    # "result":I
    .end local v8    # "loadingPackage":Ljava/lang/String;
    .end local v16    # "update":Z
    :cond_7
    :goto_2
    new-instance v2, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;

    const-string v3, "Main apks cannot be registered"

    invoke-direct {v2, v13, v3}, Lcom/android/server/pm/dex/DexManager$RegisterDexModuleResult;-><init>(ZLjava/lang/String;)V

    return-object v2
.end method

.method public writePackageDexUsageNow()V
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage;->writeNow()V

    .line 846
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    invoke-virtual {v0}, Lcom/android/server/pm/dex/DynamicCodeLogger;->writeNow()V

    .line 847
    return-void
.end method
