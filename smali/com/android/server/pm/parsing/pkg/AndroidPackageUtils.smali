.class public Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;
.super Ljava/lang/Object;
.source "AndroidPackageUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static canHaveOatDir(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)Z
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "isUpdatedSystemApp"    # Z

    .line 147
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 148
    return v1

    .line 150
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    return v1

    .line 153
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static createNativeLibraryHandle(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;
    .locals 4
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    nop

    .line 136
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isMultiArch()Z

    move-result v1

    .line 138
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isExtractNativeLibs()Z

    move-result v2

    .line 139
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v3

    .line 135
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/util/List;ZZZ)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v0

    return-object v0
.end method

.method public static createSharedLibraryForDynamic(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Landroid/content/pm/SharedLibraryInfo;
    .locals 12
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "name"    # Ljava/lang/String;

    .line 101
    new-instance v11, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v3

    new-instance v8, Landroid/content/pm/VersionedPackage;

    .line 104
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-direct {v8, v0, v4, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v1, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;)V

    .line 101
    return-object v11
.end method

.method public static createSharedLibraryForStatic(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/SharedLibraryInfo;
    .locals 12
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 90
    new-instance v11, Landroid/content/pm/SharedLibraryInfo;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v3

    .line 92
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibVersion()J

    move-result-wide v5

    new-instance v8, Landroid/content/pm/VersionedPackage;

    .line 95
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getManifestPackageName()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLongVersionCode()J

    move-result-wide v9

    invoke-direct {v8, v0, v9, v10}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;)V

    .line 90
    return-object v11
.end method

.method public static getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .locals 4
    .param p0, "aPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 78
    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 79
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/PackageImpl;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "splitCodePaths":[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-object v1
.end method

.method public static getAllCodePathsExcludingResourceOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;
    .locals 5
    .param p0, "aPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    move-object v0, p0

    check-cast v0, Lcom/android/server/pm/parsing/pkg/PackageImpl;

    .line 59
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/PackageImpl;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->isHasCode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getBaseCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "splitCodePaths":[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 65
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 66
    invoke-virtual {v0}, Lcom/android/server/pm/parsing/pkg/PackageImpl;->getSplitFlags()[I

    move-result-object v4

    aget v4, v4, v3

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 67
    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method public static getHiddenApiEnforcementPolicy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 212
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x1

    .local v0, "isAllowedToUseHiddenApis":Z
    goto :goto_2

    .line 214
    .end local v0    # "isAllowedToUseHiddenApis":Z
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isAllowedToUseHiddenApis":Z
    goto :goto_2

    .line 215
    .end local v0    # "isAllowedToUseHiddenApis":Z
    :cond_2
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isUsesNonSdkApi()Z

    move-result v0

    if-nez v0, :cond_4

    .line 216
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getHiddenApiWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v0

    .line 217
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 222
    .restart local v0    # "isAllowedToUseHiddenApis":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 223
    return v1

    .line 232
    :cond_5
    const/4 v1, 0x2

    return v1
.end method

.method public static getIcon(Landroid/content/pm/parsing/ParsingPackageRead;)I
    .locals 1
    .param p0, "pkg"    # Landroid/content/pm/parsing/ParsingPackageRead;

    .line 236
    sget-boolean v0, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getRoundIconRes()I

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getRoundIconRes()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getIconRes()I

    move-result v0

    .line 236
    :goto_0
    return v0
.end method

.method public static getLongVersionCode(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)J
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 241
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionCodeMajor()I

    move-result v0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVersionCode()I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPackageDexMetadata(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    nop

    .line 117
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getAllCodePaths(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/dex/DexMetadataHelper;->buildPackageApkToDexMetadataMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 116
    return-object v0
.end method

.method public static getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 256
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    return-object v0

    .line 257
    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRawPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 280
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPrimaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRawSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 291
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 295
    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getOverrideSeInfo()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "overrideSeInfo":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    return-object v0

    .line 301
    .end local v0    # "overrideSeInfo":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSeInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 265
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    return-object v0

    .line 266
    :cond_1
    :goto_0
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSecondaryCpuAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasComponentClassName(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .locals 13
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "className"    # Ljava/lang/String;

    .line 157
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 158
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 159
    .local v1, "activitiesSize":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    .line 160
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    return v3

    .line 159
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v2    # "index":I
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v2

    .line 166
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedActivity;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 167
    .local v4, "receiversSize":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 168
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 169
    return v3

    .line 167
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 173
    .end local v5    # "index":I
    :cond_3
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v5

    .line 174
    .local v5, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedProvider;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 175
    .local v6, "providersSize":I
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_2
    if-ge v7, v6, :cond_5

    .line 176
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-virtual {v8}, Landroid/content/pm/parsing/component/ParsedProvider;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 177
    return v3

    .line 175
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 181
    .end local v7    # "index":I
    :cond_5
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v7

    .line 182
    .local v7, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedService;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 183
    .local v8, "servicesSize":I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_3
    if-ge v9, v8, :cond_7

    .line 184
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/parsing/component/ParsedService;

    invoke-virtual {v10}, Landroid/content/pm/parsing/component/ParsedService;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {p1, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 185
    return v3

    .line 183
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 189
    .end local v9    # "index":I
    :cond_7
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v9

    .line 190
    .local v9, "instrumentations":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedInstrumentation;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 191
    .local v10, "instrumentationsSize":I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_4
    if-ge v11, v10, :cond_9

    .line 192
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    invoke-virtual {v12}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {p1, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 193
    return v3

    .line 191
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 197
    .end local v11    # "index":I
    :cond_9
    const/4 v3, 0x0

    return v3
.end method

.method public static isEncryptionAware(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 201
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDirectBootAware()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPartiallyDirectBootAware()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 206
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z
    .locals 1
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "flags"    # I

    .line 249
    const/high16 v0, 0x100000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    return v0

    .line 252
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static validatePackageDexMetadata(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPackageDexMetadata(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 128
    .local v0, "apkToDexMetadataList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, "dexMetadata":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexMetadataFile(Ljava/lang/String;)V

    .line 130
    .end local v2    # "dexMetadata":Ljava/lang/String;
    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method
