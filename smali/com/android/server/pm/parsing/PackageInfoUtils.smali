.class public Lcom/android/server/pm/parsing/PackageInfoUtils;
.super Ljava/lang/Object;
.source "PackageInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/PackageInfoUtils$CachedApplicationInfoGenerator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParser2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appInfoFlags(ILcom/android/server/pm/PackageSetting;)I
    .locals 3
    .param p0, "pkgWithoutStateFlags"    # I
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 470
    move v0, p0

    .line 471
    .local v0, "flags":I
    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 474
    :cond_0
    return v0
.end method

.method public static appInfoFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 459
    invoke-static {p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->appInfoFlags(Landroid/content/pm/parsing/ParsingPackageRead;)I

    move-result v0

    .line 460
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 461
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isFactoryTest()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 463
    .local v0, "pkgWithoutStateFlags":I
    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/PackageSetting;)I

    move-result v1

    return v1
.end method

.method public static appInfoPrivateFlags(ILcom/android/server/pm/PackageSetting;)I
    .locals 0
    .param p0, "pkgWithoutStateFlags"    # I
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 497
    return p0
.end method

.method public static appInfoPrivateFlags(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)I
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 481
    invoke-static {p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlags(Landroid/content/pm/parsing/ParsingPackageRead;)I

    move-result v0

    .line 482
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystemExt()Z

    move-result v1

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 483
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isPrivileged()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 484
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOem()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 485
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isVendor()Z

    move-result v1

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 486
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isProduct()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 487
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isOdm()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 488
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSignedWithPlatformKey()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    .line 489
    .local v0, "pkgWithoutStateFlags":I
    invoke-static {v0, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/PackageSetting;)I

    move-result v1

    return v1
.end method

.method private static assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;Lcom/android/server/pm/PackageSetting;I)V
    .locals 1
    .param p0, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p1, "mainComponent"    # Landroid/content/pm/parsing/component/ParsedMainComponent;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "userId"    # I

    .line 433
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/parsing/component/ParsedComponent;Lcom/android/server/pm/PackageSetting;I)V

    .line 434
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 435
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 436
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 437
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 438
    return-void
.end method

.method private static assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/parsing/component/ParsedComponent;Lcom/android/server/pm/PackageSetting;I)V
    .locals 2
    .param p0, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "component"    # Landroid/content/pm/parsing/component/ParsedComponent;
    .param p2, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p3, "userId"    # I

    .line 443
    nop

    .line 444
    invoke-static {p1, p2, p3}, Lcom/android/server/pm/parsing/ParsedComponentStateUtils;->getNonLocalizedLabelAndIcon(Landroid/content/pm/parsing/component/ParsedComponent;Lcom/android/server/pm/PackageSetting;I)Landroid/util/Pair;

    move-result-object v0

    .line 446
    .local v0, "labelAndIcon":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/CharSequence;Ljava/lang/Integer;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 447
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 448
    return-void
.end method

.method private static checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageUserState;I)Z
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "flags"    # I

    .line 415
    const/high16 v0, 0x20000000

    and-int v1, p3, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    return v2

    .line 424
    :cond_0
    invoke-virtual {p2, p3}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 425
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x402000

    and-int/2addr v1, p3

    if-nez v1, :cond_1

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 424
    :cond_2
    return v2
.end method

.method private static flag(ZI)I
    .locals 1
    .param p0, "hasFlag"    # Z
    .param p1, "flag"    # I

    .line 452
    if-eqz p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/apex/ApexInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;
    .locals 12
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p2, "flags"    # I
    .param p3, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 96
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    new-instance v8, Landroid/content/pm/PackageUserState;

    invoke-direct {v8}, Landroid/content/pm/PackageUserState;-><init>()V

    .line 97
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 96
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v10, p1

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Lcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;
    .locals 12
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .param p9, "userId"    # I
    .param p10, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I",
            "Lcom/android/server/pm/PackageSetting;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 86
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Lcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;
    .locals 7
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "a"    # Landroid/content/pm/parsing/component/ParsedActivity;
    .param p2, "flags"    # I
    .param p3, "state"    # Landroid/content/pm/PackageUserState;
    .param p4, "userId"    # I
    .param p5, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 251
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method private static generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "a"    # Landroid/content/pm/parsing/component/ParsedActivity;
    .param p2, "flags"    # I
    .param p3, "state"    # Landroid/content/pm/PackageUserState;
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "userId"    # I
    .param p6, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 262
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 263
    :cond_0
    invoke-static {p0, p6, p3, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    return-object v0

    .line 266
    :cond_1
    if-nez p4, :cond_2

    .line 267
    invoke-static {p0, p2, p3, p5, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 270
    :cond_2
    if-nez p4, :cond_3

    .line 271
    return-object v0

    .line 274
    :cond_3
    nop

    .line 275
    invoke-static {p1, p4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateActivityInfoUnchecked(Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 276
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    invoke-static {v0, p1, p6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;Lcom/android/server/pm/PackageSetting;I)V

    .line 277
    return-object v0
.end method

.method public static generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I
    .param p4, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 211
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 212
    return-object v0

    .line 215
    :cond_0
    invoke-static {p0, p4, p2, p1}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 216
    invoke-static {p0, p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isMatchForSystemOnly(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 220
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfoUnchecked(Landroid/content/pm/parsing/ParsingPackageRead;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 223
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz p4, :cond_4

    .line 225
    invoke-virtual {p4}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    .line 226
    .local v2, "pkgState":Lcom/android/server/pm/pkg/PackageStateUnserialized;
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v3

    iput-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->hiddenUntilInstalled:Z

    .line 227
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v3

    .line 228
    .local v3, "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryInfos()Ljava/util/List;

    move-result-object v4

    .line 229
    .local v4, "usesLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    move-object v5, v0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    :goto_0
    iput-object v5, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 231
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v4

    :goto_1
    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    .line 234
    .end local v2    # "pkgState":Lcom/android/server/pm/pkg/PackageStateUnserialized;
    .end local v3    # "usesLibraryFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "usesLibraryInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/SharedLibraryInfo;>;"
    :cond_4
    invoke-static {p0, p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSeInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    .line 235
    invoke-static {p0, p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 236
    invoke-static {p0, p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 238
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v2, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(ILcom/android/server/pm/PackageSetting;)I

    move-result v2

    or-int/2addr v0, v2

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 239
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-static {v2, p4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(ILcom/android/server/pm/PackageSetting;)I

    move-result v2

    or-int/2addr v0, v2

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 241
    return-object v1

    .line 217
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static generateInstrumentationInfo(Landroid/content/pm/parsing/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILcom/android/server/pm/PackageSetting;)Landroid/content/pm/InstrumentationInfo;
    .locals 2
    .param p0, "i"    # Landroid/content/pm/parsing/component/ParsedInstrumentation;
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .param p4, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 349
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 351
    :cond_0
    nop

    .line 352
    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateInstrumentationInfo(Landroid/content/pm/parsing/component/ParsedInstrumentation;Landroid/content/pm/parsing/ParsingPackageRead;II)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    .line 353
    .local v1, "info":Landroid/content/pm/InstrumentationInfo;
    if-nez v1, :cond_1

    .line 354
    return-object v0

    .line 358
    :cond_1
    invoke-static {p1, p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getPrimaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->primaryCpuAbi:Ljava/lang/String;

    .line 359
    invoke-static {p1, p4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getSecondaryCpuAbi(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->secondaryCpuAbi:Ljava/lang/String;

    .line 360
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getNativeLibraryDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 361
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSecondaryNativeLibraryDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 363
    invoke-static {v1, p0, p4, p3}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignStateFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/parsing/component/ParsedComponent;Lcom/android/server/pm/PackageSetting;I)V

    .line 365
    return-object v1
.end method

.method public static generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 1
    .param p0, "pg"    # Landroid/content/pm/parsing/component/ParsedPermissionGroup;
    .param p1, "flags"    # I

    .line 383
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 386
    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/parsing/component/ParsedPermission;
    .param p1, "flags"    # I

    .line 374
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 377
    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateProcessInfo(Ljava/util/Map;I)Landroid/util/ArrayMap;
    .locals 10
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
            ">;I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 392
    .local p0, "procs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedProcess;>;"
    if-nez p0, :cond_0

    .line 393
    const/4 v0, 0x0

    return-object v0

    .line 396
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 397
    .local v0, "numProcs":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 398
    .local v1, "retProcs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ProcessInfo;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 399
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/parsing/component/ParsedProcess;

    .line 400
    .local v4, "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/pm/ProcessInfo;

    .line 401
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 402
    invoke-virtual {v4}, Landroid/content/pm/parsing/component/ParsedProcess;->getGwpAsanMode()I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Landroid/content/pm/ProcessInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;I)V

    .line 400
    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "proc":Landroid/content/pm/parsing/component/ParsedProcess;
    goto :goto_0

    .line 404
    :cond_1
    return-object v1
.end method

.method public static generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ProviderInfo;
    .locals 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "p"    # Landroid/content/pm/parsing/component/ParsedProvider;
    .param p2, "flags"    # I
    .param p3, "state"    # Landroid/content/pm/PackageUserState;
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "userId"    # I
    .param p6, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 323
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 324
    :cond_0
    invoke-static {p0, p6, p3, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    return-object v0

    .line 327
    :cond_1
    if-eqz p4, :cond_2

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 328
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppInfo\'s package name is different. Expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    if-nez p4, :cond_3

    const-string v2, "(null AppInfo)"

    goto :goto_0

    .line 330
    :cond_3
    iget-object v2, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    const-string v2, "PackageParser2"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {p0, p2, p3, p5, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 333
    :cond_4
    if-nez p4, :cond_5

    .line 334
    return-object v0

    .line 336
    :cond_5
    invoke-static {p1, p2, p4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateProviderInfoUnchecked(Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 338
    .local v0, "info":Landroid/content/pm/ProviderInfo;
    invoke-static {v0, p1, p6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;Lcom/android/server/pm/PackageSetting;I)V

    .line 339
    return-object v0
.end method

.method public static generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ServiceInfo;
    .locals 7
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "s"    # Landroid/content/pm/parsing/component/ParsedService;
    .param p2, "flags"    # I
    .param p3, "state"    # Landroid/content/pm/PackageUserState;
    .param p4, "userId"    # I
    .param p5, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 287
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method private static generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ServiceInfo;
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "s"    # Landroid/content/pm/parsing/component/ParsedService;
    .param p2, "flags"    # I
    .param p3, "state"    # Landroid/content/pm/PackageUserState;
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "userId"    # I
    .param p6, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 298
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 299
    :cond_0
    invoke-static {p0, p6, p3, p2}, Lcom/android/server/pm/parsing/PackageInfoUtils;->checkUseInstalledOrHidden(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    return-object v0

    .line 302
    :cond_1
    if-nez p4, :cond_2

    .line 303
    invoke-static {p0, p2, p3, p5, p6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    .line 305
    :cond_2
    if-nez p4, :cond_3

    .line 306
    return-object v0

    .line 309
    :cond_3
    nop

    .line 310
    invoke-static {p1, p4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateServiceInfoUnchecked(Landroid/content/pm/parsing/component/ParsedService;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 311
    .local v0, "info":Landroid/content/pm/ServiceInfo;
    invoke-static {v0, p1, p6, p5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;Lcom/android/server/pm/PackageSetting;I)V

    .line 312
    return-object v0
.end method

.method private static generateWithComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Lcom/android/server/pm/PackageSetting;)Landroid/content/pm/PackageInfo;
    .locals 19
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .param p9, "userId"    # I
    .param p10, "apexInfo"    # Landroid/apex/ApexInfo;
    .param p11, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I",
            "Landroid/apex/ApexInfo;",
            "Lcom/android/server/pm/PackageSetting;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 107
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v12, p0

    move/from16 v13, p2

    move-object/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v11, p11

    invoke-static {v12, v13, v14, v15, v11}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILandroid/content/pm/PackageUserState;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 109
    .local v16, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v16, :cond_0

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object v12, v11

    move-object/from16 v11, v16

    invoke-static/range {v0 .. v11}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateWithoutComponentsUnchecked(Landroid/content/pm/parsing/ParsingPackageRead;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 117
    .local v7, "info":Landroid/content/pm/PackageInfo;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStub()Z

    move-result v0

    iput-boolean v0, v7, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 118
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isCoreApp()Z

    move-result v0

    iput-boolean v0, v7, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 120
    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_4

    .line 121
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 122
    .local v8, "N":I
    if-lez v8, :cond_4

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "num":I
    new-array v9, v8, [Landroid/content/pm/ActivityInfo;

    .line 125
    .local v9, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    .end local v0    # "num":I
    .local v10, "num":I
    .local v11, "i":I
    :goto_0
    if-ge v11, v8, :cond_3

    .line 126
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 127
    .local v6, "a":Landroid/content/pm/parsing/component/ParsedActivity;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v1

    invoke-static {v14, v0, v1, v6, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    sget-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    .line 130
    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    goto :goto_1

    .line 133
    :cond_1
    add-int/lit8 v17, v10, 0x1

    .end local v10    # "num":I
    .local v17, "num":I
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move/from16 v5, p9

    move-object/from16 v18, v6

    .end local v6    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    .local v18, "a":Landroid/content/pm/parsing/component/ParsedActivity;
    move-object/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_1

    .line 127
    .end local v17    # "num":I
    .end local v18    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    .restart local v6    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    .restart local v10    # "num":I
    :cond_2
    move-object/from16 v18, v6

    .line 125
    .end local v6    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 137
    .end local v11    # "i":I
    :cond_3
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 140
    .end local v8    # "N":I
    .end local v9    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v10    # "num":I
    :cond_4
    and-int/lit8 v0, v13, 0x2

    if-eqz v0, :cond_7

    .line 141
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 142
    .local v8, "size":I
    if-lez v8, :cond_7

    .line 143
    const/4 v0, 0x0

    .line 144
    .restart local v0    # "num":I
    new-array v9, v8, [Landroid/content/pm/ActivityInfo;

    .line 145
    .restart local v9    # "res":[Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    .end local v0    # "num":I
    .restart local v10    # "num":I
    .restart local v11    # "i":I
    :goto_2
    if-ge v11, v8, :cond_6

    .line 146
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/parsing/component/ParsedActivity;

    .line 147
    .restart local v6    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v1

    invoke-static {v14, v0, v1, v6, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    add-int/lit8 v17, v10, 0x1

    .end local v10    # "num":I
    .restart local v17    # "num":I
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move/from16 v5, p9

    move-object/from16 v18, v6

    .end local v6    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    .restart local v18    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    move-object/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateActivityInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_3

    .line 147
    .end local v17    # "num":I
    .end local v18    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    .restart local v6    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    .restart local v10    # "num":I
    :cond_5
    move-object/from16 v18, v6

    .line 145
    .end local v6    # "a":Landroid/content/pm/parsing/component/ParsedActivity;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 153
    .end local v11    # "i":I
    :cond_6
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 156
    .end local v8    # "size":I
    .end local v9    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v10    # "num":I
    :cond_7
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_a

    .line 157
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 158
    .restart local v8    # "size":I
    if-lez v8, :cond_a

    .line 159
    const/4 v0, 0x0

    .line 160
    .restart local v0    # "num":I
    new-array v9, v8, [Landroid/content/pm/ServiceInfo;

    .line 161
    .local v9, "res":[Landroid/content/pm/ServiceInfo;
    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    .end local v0    # "num":I
    .restart local v10    # "num":I
    .restart local v11    # "i":I
    :goto_4
    if-ge v11, v8, :cond_9

    .line 162
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/parsing/component/ParsedService;

    .line 163
    .local v6, "s":Landroid/content/pm/parsing/component/ParsedService;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v1

    invoke-static {v14, v0, v1, v6, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    add-int/lit8 v17, v10, 0x1

    .end local v10    # "num":I
    .restart local v17    # "num":I
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move/from16 v5, p9

    move-object/from16 v18, v6

    .end local v6    # "s":Landroid/content/pm/parsing/component/ParsedService;
    .local v18, "s":Landroid/content/pm/parsing/component/ParsedService;
    move-object/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateServiceInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_5

    .line 163
    .end local v17    # "num":I
    .end local v18    # "s":Landroid/content/pm/parsing/component/ParsedService;
    .restart local v6    # "s":Landroid/content/pm/parsing/component/ParsedService;
    .restart local v10    # "num":I
    :cond_8
    move-object/from16 v18, v6

    .line 161
    .end local v6    # "s":Landroid/content/pm/parsing/component/ParsedService;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 169
    .end local v11    # "i":I
    :cond_9
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ServiceInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 172
    .end local v8    # "size":I
    .end local v9    # "res":[Landroid/content/pm/ServiceInfo;
    .end local v10    # "num":I
    :cond_a
    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_d

    .line 173
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 174
    .restart local v8    # "size":I
    if-lez v8, :cond_d

    .line 175
    const/4 v0, 0x0

    .line 176
    .restart local v0    # "num":I
    new-array v9, v8, [Landroid/content/pm/ProviderInfo;

    .line 177
    .local v9, "res":[Landroid/content/pm/ProviderInfo;
    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    .end local v0    # "num":I
    .restart local v10    # "num":I
    .restart local v11    # "i":I
    :goto_6
    if-ge v11, v8, :cond_c

    .line 178
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 180
    .local v6, "pr":Landroid/content/pm/parsing/component/ParsedProvider;
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v0

    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isEnabled()Z

    move-result v1

    invoke-static {v14, v0, v1, v6, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 182
    add-int/lit8 v17, v10, 0x1

    .end local v10    # "num":I
    .restart local v17    # "num":I
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move/from16 v5, p9

    move-object/from16 v18, v6

    .end local v6    # "pr":Landroid/content/pm/parsing/component/ParsedProvider;
    .local v18, "pr":Landroid/content/pm/parsing/component/ParsedProvider;
    move-object/from16 v6, p11

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateProviderInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;ILcom/android/server/pm/PackageSetting;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_7

    .line 180
    .end local v17    # "num":I
    .end local v18    # "pr":Landroid/content/pm/parsing/component/ParsedProvider;
    .restart local v6    # "pr":Landroid/content/pm/parsing/component/ParsedProvider;
    .restart local v10    # "num":I
    :cond_b
    move-object/from16 v18, v6

    .line 177
    .end local v6    # "pr":Landroid/content/pm/parsing/component/ParsedProvider;
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 186
    .end local v11    # "i":I
    :cond_c
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ProviderInfo;

    iput-object v0, v7, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 189
    .end local v8    # "size":I
    .end local v9    # "res":[Landroid/content/pm/ProviderInfo;
    .end local v10    # "num":I
    :cond_d
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_10

    .line 190
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 191
    .local v0, "N":I
    if-lez v0, :cond_f

    .line 192
    new-array v1, v0, [Landroid/content/pm/InstrumentationInfo;

    iput-object v1, v7, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_e

    .line 194
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 195
    invoke-interface/range {p0 .. p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    .line 194
    move-object/from16 v4, p0

    move-object v5, v12

    invoke-static {v3, v4, v13, v15, v5}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateInstrumentationInfo(Landroid/content/pm/parsing/component/ParsedInstrumentation;Lcom/android/server/pm/parsing/pkg/AndroidPackage;IILcom/android/server/pm/PackageSetting;)Landroid/content/pm/InstrumentationInfo;

    move-result-object v3

    aput-object v3, v2, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_e
    move-object/from16 v4, p0

    move-object v5, v12

    goto :goto_9

    .line 191
    .end local v1    # "i":I
    :cond_f
    move-object/from16 v4, p0

    move-object v5, v12

    goto :goto_9

    .line 189
    .end local v0    # "N":I
    :cond_10
    move-object/from16 v4, p0

    move-object v5, v12

    .line 200
    :goto_9
    return-object v7
.end method
