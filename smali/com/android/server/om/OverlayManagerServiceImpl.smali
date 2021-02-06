.class final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;
    }
.end annotation


# static fields
.field private static final FLAG_OVERLAY_IS_BEING_REPLACED:I = 0x2

.field private static final FLAG_TARGET_IS_BEING_REPLACED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mDefaultOverlays:[Ljava/lang/String;

.field private final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field private final mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

.field private final mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

.field private final mPackageManager:Lcom/android/server/om/PackageManagerHelper;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/server/om/PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V
    .locals 0
    .param p1, "packageManager"    # Lcom/android/server/om/PackageManagerHelper;
    .param p2, "idmapManager"    # Lcom/android/server/om/IdmapManager;
    .param p3, "settings"    # Lcom/android/server/om/OverlayManagerSettings;
    .param p4, "overlayConfig"    # Lcom/android/internal/content/om/OverlayConfig;
    .param p5, "defaultOverlays"    # [Ljava/lang/String;
    .param p6, "listener"    # Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 120
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 121
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 122
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 123
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    .line 124
    iput-object p6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    .line 125
    return-void
.end method

.method private calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;II)I
    .locals 2
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"    # Landroid/content/pm/PackageInfo;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 738
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 739
    const/4 v0, 0x4

    return v0

    .line 742
    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    .line 743
    const/4 v0, 0x5

    return v0

    .line 747
    :cond_1
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    .line 748
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null overlay package not compatible with no flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_3
    :goto_0
    if-nez p1, :cond_4

    .line 752
    const/4 v0, 0x0

    return v0

    .line 755
    :cond_4
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/pm/PackageInfo;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 756
    const/4 v0, 0x1

    return v0

    .line 759
    :cond_5
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Ljava/lang/String;I)Z

    move-result v0

    .line 760
    .local v0, "enabled":Z
    if-eqz v0, :cond_6

    const/4 v1, 0x3

    goto :goto_1

    :cond_6
    const/4 v1, 0x2

    :goto_1
    return v1
.end method

.method private getPackageConfiguredPriority(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 592
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->getPriority(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isPackageConfiguredEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 596
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPackageConfiguredMutable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->isMutable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z
    .locals 4
    .param p1, "theTruth"    # Landroid/content/pm/PackageInfo;
    .param p2, "oldSettings"    # Landroid/content/om/OverlayInfo;

    .line 89
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 90
    return v0

    .line 92
    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    return v0

    .line 95
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    return v0

    .line 99
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v1

    .line 100
    .local v1, "isMutable":Z
    iget-boolean v2, p2, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-eq v1, v2, :cond_3

    .line 101
    return v0

    .line 105
    :cond_3
    if-nez v1, :cond_4

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 106
    invoke-virtual {p2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 107
    return v0

    .line 110
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .locals 6
    .param p1, "oi"    # Landroid/content/om/OverlayInfo;

    .line 782
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 783
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v0

    .line 786
    .local v0, "userIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 788
    .local v3, "userId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 789
    .local v4, "tmp":Landroid/content/om/OverlayInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 791
    return-void

    .line 795
    .end local v4    # "tmp":Landroid/content/om/OverlayInfo;
    :cond_1
    goto :goto_1

    .line 793
    :catch_0
    move-exception v4

    .line 786
    .end local v3    # "userId":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 797
    :cond_2
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    .line 798
    return-void
.end method

.method private updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V
    .locals 9
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flags"    # I

    .line 308
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 312
    .local v0, "targetOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    const/4 v1, 0x0

    .line 313
    .local v1, "modified":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 314
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    iget-object v5, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 316
    .local v4, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_0

    .line 317
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v7, v3, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v5

    or-int/2addr v1, v5

    .line 318
    invoke-direct {p0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    goto :goto_1

    .line 321
    :cond_0
    :try_start_0
    iget-object v5, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v5, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v1, v5

    .line 325
    goto :goto_1

    .line 322
    :catch_0
    move-exception v5

    .line 323
    .local v5, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v6, "OverlayManager"

    const-string v7, "failed to update settings"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v7, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v6

    or-int/2addr v1, v6

    .line 327
    .end local v3    # "oi":Landroid/content/om/OverlayInfo;
    .end local v4    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v5    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_1
    goto :goto_0

    .line 329
    :cond_1
    if-nez v1, :cond_a

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .local v2, "enabledOverlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const-string v4, "android"

    invoke-virtual {v3, v4, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 335
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 336
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    :cond_2
    goto :goto_2

    .line 340
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 341
    .restart local v4    # "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 342
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    :cond_4
    goto :goto_3

    .line 348
    :cond_5
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v3, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 349
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    if-nez v3, :cond_6

    move-object v5, v4

    goto :goto_4

    :cond_6
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 350
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_4
    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 353
    .local v4, "resourceDirs":[Ljava/lang/String;
    :goto_5
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_8

    .line 354
    const/4 v1, 0x1

    goto :goto_7

    .line 355
    :cond_8
    if-eqz v4, :cond_a

    .line 357
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_6
    array-length v7, v4

    if-ge v6, v7, :cond_a

    .line 358
    aget-object v7, v4, v6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 359
    const/4 v1, 0x1

    .line 360
    goto :goto_7

    .line 357
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 366
    .end local v2    # "enabledOverlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "resourceDirs":[Ljava/lang/String;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "index":I
    :cond_a
    :goto_7
    if-eqz v1, :cond_b

    .line 367
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 369
    :cond_b
    return-void
.end method

.method private updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "overlayPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 700
    .local v0, "targetPackage":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, p2, p3}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 705
    .local v1, "overlayPackage":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 706
    .local v2, "modified":Z
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 707
    const-string v3, "android"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 708
    invoke-direct {p0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 709
    :cond_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v3, v0, v1, p3}, Lcom/android/server/om/IdmapManager;->createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    move-result v3

    or-int/2addr v2, v3

    .line 712
    :cond_1
    if-eqz v1, :cond_2

    .line 713
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 714
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    .line 713
    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 715
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setCategory(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 719
    :cond_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->getState(Ljava/lang/String;I)I

    move-result v3

    .line 720
    .local v3, "currentState":I
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;II)I

    move-result v4

    .line 722
    .local v4, "newState":I
    if-eq v3, v4, :cond_4

    .line 723
    sget-boolean v5, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v5, :cond_3

    .line 724
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    .line 725
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 726
    invoke-static {v3}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 727
    invoke-static {v4}, Landroid/content/om/OverlayInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 724
    const-string v6, "%s:%d: %s -> %s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "OverlayManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_3
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, p2, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setState(Ljava/lang/String;II)Z

    move-result v5

    or-int/2addr v2, v5

    .line 731
    :cond_4
    return v2
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpState"    # Lcom/android/server/om/DumpState;

    .line 662
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 663
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default overlays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    const-string v2, ";"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    :cond_0
    return-void
.end method

.method getDefaultOverlayPackages()[Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    return-object v0
.end method

.method getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 681
    .local v0, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 682
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 683
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 684
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 685
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 686
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    .end local v4    # "oi":Landroid/content/om/OverlayInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 689
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getOverlaysForUser(I)Ljava/util/Map;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method onOverlayPackageAdded(Ljava/lang/String;I)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 372
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageAdded packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 377
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overlay package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was added, but couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 380
    return-void

    .line 383
    :cond_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 385
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 386
    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v9

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 387
    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Ljava/lang/String;)Z

    move-result v10

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 388
    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 383
    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V

    .line 391
    :try_start_0
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_2
    goto :goto_0

    .line 394
    :catch_0
    move-exception v2

    .line 395
    .local v2, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v3, "failed to update settings"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 398
    .end local v2    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_0
    return-void
.end method

.method onOverlayPackageChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 401
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageChanged packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 407
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    :cond_1
    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v2, "failed to update settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_0
    return-void
.end method

.method onOverlayPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 470
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 472
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v0    # "overlayInfo":Landroid/content/om/OverlayInfo;
    :cond_0
    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v1, "OverlayManager"

    const-string v2, "failed to remove overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_0
    return-void
.end method

.method onOverlayPackageReplaced(Ljava/lang/String;I)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 434
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    if-eqz v0, :cond_0

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageReplaced packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 440
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overlay package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was replaced, but couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 443
    return-void

    .line 447
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 448
    .local v2, "oldOi":Landroid/content/om/OverlayInfo;
    invoke-direct {p0, v0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 449
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 450
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 452
    :cond_2
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 453
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 454
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v9

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 455
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Ljava/lang/String;)Z

    move-result v10

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 456
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 452
    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V

    .line 459
    :cond_3
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, p2, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 460
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v2    # "oldOi":Landroid/content/om/OverlayInfo;
    :cond_4
    goto :goto_0

    .line 462
    :catch_0
    move-exception v2

    .line 463
    .local v2, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v3, "failed to update settings"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .end local v2    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_0
    return-void
.end method

.method onOverlayPackageReplacing(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 416
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v1, "OverlayManager"

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOverlayPackageReplacing packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 423
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 426
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    :cond_1
    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v2, "failed to update settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_0
    return-void
.end method

.method onTargetPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 263
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTargetPackageAdded packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 268
    return-void
.end method

.method onTargetPackageChanged(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 271
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTargetPackageChanged packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 276
    return-void
.end method

.method onTargetPackageRemoved(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 296
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTargetPackageRemoved packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 301
    return-void
.end method

.method onTargetPackageReplaced(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 288
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTargetPackageReplaced packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 293
    return-void
.end method

.method onTargetPackageReplacing(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 279
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTargetPackageReplacing packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 285
    return-void
.end method

.method onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 256
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserRemoved userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    .line 260
    return-void
.end method

.method removeIdmapForOverlay(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 673
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 674
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 675
    return-void
.end method

.method setEnabled(Ljava/lang/String;ZI)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 498
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 499
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 500
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 499
    const-string/jumbo v3, "setEnabled packageName=%s enable=%s userId=%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OverlayManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 504
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 505
    return v2

    .line 509
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v3

    .line 510
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    iget-boolean v4, v3, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-nez v4, :cond_2

    .line 512
    return v2

    .line 515
    :cond_2
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v4

    .line 516
    .local v4, "modified":Z
    iget-object v5, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, v6, p3, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    or-int/2addr v4, v5

    .line 518
    if-eqz v4, :cond_3

    .line 519
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v6, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v5, v6, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_3
    return v1

    .line 522
    .end local v3    # "oi":Landroid/content/om/OverlayInfo;
    .end local v4    # "modified":Z
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    return v2
.end method

.method setEnabledExclusive(Ljava/lang/String;ZI)Z
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "withinCategory"    # Z
    .param p3, "userId"    # I

    .line 529
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v5

    .line 531
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v0, v4

    const/4 v6, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 530
    const-string/jumbo v6, "setEnabledExclusive packageName=%s withinCategory=%s userId=%d"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "OverlayManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v2, v3}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 535
    .local v6, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_1

    .line 536
    return v5

    .line 540
    :cond_1
    :try_start_0
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 541
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v7, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 543
    .local v7, "targetPackageName":Ljava/lang/String;
    invoke-virtual {v1, v7, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v8

    .line 545
    .local v8, "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    const/4 v9, 0x0

    .line 548
    .local v9, "modified":Z
    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 549
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 550
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/om/OverlayInfo;

    .line 551
    .local v11, "disabledInfo":Landroid/content/om/OverlayInfo;
    iget-object v12, v11, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 552
    .local v12, "disabledOverlayPackageName":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v13, v12, v3}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 554
    .local v13, "disabledOverlayPackageInfo":Landroid/content/pm/PackageInfo;
    if-nez v13, :cond_2

    .line 555
    iget-object v14, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v14, v12, v3}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v14

    or-int/2addr v9, v14

    .line 556
    goto :goto_1

    .line 559
    :cond_2
    iget-boolean v14, v11, Landroid/content/om/OverlayInfo;->isMutable:Z

    if-nez v14, :cond_3

    .line 561
    goto :goto_1

    .line 563
    :cond_3
    if-eqz p2, :cond_4

    iget-object v14, v13, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    iget-object v15, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 566
    goto :goto_1

    .line 570
    :cond_4
    iget-object v14, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v14, v12, v3, v5}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v14

    or-int/2addr v9, v14

    .line 571
    invoke-direct {v1, v7, v12, v3, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v14

    or-int/2addr v9, v14

    .line 549
    .end local v11    # "disabledInfo":Landroid/content/om/OverlayInfo;
    .end local v12    # "disabledOverlayPackageName":Ljava/lang/String;
    .end local v13    # "disabledOverlayPackageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 575
    .end local v10    # "i":I
    :cond_5
    iget-object v10, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, v2, v3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v10

    or-int/2addr v9, v10

    .line 576
    invoke-direct {v1, v7, v2, v3, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v10

    or-int/2addr v9, v10

    .line 578
    if-eqz v9, :cond_6

    .line 579
    iget-object v10, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v10, v7, v3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :cond_6
    return v4

    .line 582
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    .end local v7    # "targetPackageName":Ljava/lang/String;
    .end local v8    # "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v9    # "modified":Z
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    return v5
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 622
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setHighestPriority packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 627
    return v1

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 631
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_2

    .line 632
    return v1

    .line 635
    :cond_2
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 636
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 638
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 642
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLowestPriority packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 647
    return v1

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 651
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_2

    .line 652
    return v1

    .line 655
    :cond_2
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 656
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 658
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newParentPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 601
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPriority packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " newParentPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverlayManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 607
    return v1

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 611
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_2

    .line 612
    return v1

    .line 615
    :cond_2
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 616
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 618
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method updateOverlaysForUser(I)Ljava/util/ArrayList;
    .locals 27
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    move-object/from16 v1, p0

    move/from16 v12, p1

    const-string v13, "\' for user "

    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    const-string v14, "OverlayManager"

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateOverlaysForUser newUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v15, v0

    .line 139
    .local v15, "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v12}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v11

    .line 140
    .local v11, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 141
    .local v10, "tmpSize":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v10}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v9, v0

    .line 142
    .local v9, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_2

    .line 143
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 144
    .local v2, "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 145
    .local v3, "chunkSize":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 146
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 147
    .local v5, "oi":Landroid/content/om/OverlayInfo;
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v5    # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 142
    .end local v2    # "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v3    # "chunkSize":I
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v0    # "i":I
    :cond_2
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v12}, Lcom/android/server/om/PackageManagerHelper;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v8

    .line 154
    .local v8, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 155
    .local v7, "overlayPackagesSize":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v7, :cond_6

    .line 156
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 157
    .local v6, "overlayPackage":Landroid/content/pm/PackageInfo;
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 159
    .restart local v5    # "oi":Landroid/content/om/OverlayInfo;
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getPackageConfiguredPriority(Ljava/lang/String;)I

    move-result v4

    .line 160
    .local v4, "priority":I
    invoke-direct {v1, v6, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    if-eqz v5, :cond_3

    .line 164
    iget-object v2, v5, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_3
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v5

    .end local v5    # "oi":Landroid/content/om/OverlayInfo;
    .local v16, "oi":Landroid/content/om/OverlayInfo;
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    move/from16 v17, v7

    .end local v7    # "overlayPackagesSize":I
    .local v17, "overlayPackagesSize":I
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    move/from16 v18, v4

    .end local v4    # "priority":I
    .local v18, "priority":I
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 170
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v19

    iget-object v4, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 171
    invoke-direct {v1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredMutable(Ljava/lang/String;)Z

    move-result v20

    iget-object v4, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 172
    invoke-direct {v1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageConfiguredEnabled(Ljava/lang/String;)Z

    move-result v21

    iget-object v4, v6, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 167
    move/from16 v22, v18

    move-object/from16 v18, v4

    .end local v18    # "priority":I
    .local v22, "priority":I
    move/from16 v4, p1

    move-object/from16 v23, v13

    move-object/from16 v13, v16

    .end local v16    # "oi":Landroid/content/om/OverlayInfo;
    .local v13, "oi":Landroid/content/om/OverlayInfo;
    move-object/from16 v16, v14

    move-object v14, v6

    .end local v6    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v14, "overlayPackage":Landroid/content/pm/PackageInfo;
    move-object v6, v7

    move/from16 v24, v17

    .end local v17    # "overlayPackagesSize":I
    .local v24, "overlayPackagesSize":I
    move-object/from16 v7, v19

    move-object/from16 v25, v8

    .end local v8    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v25, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move/from16 v8, v20

    move-object/from16 v26, v9

    .end local v9    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v26, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    move/from16 v9, v21

    move/from16 v17, v10

    .end local v10    # "tmpSize":I
    .local v17, "tmpSize":I
    move/from16 v10, v22

    move-object/from16 v19, v11

    .end local v11    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .local v19, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    move-object/from16 v11, v18

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V

    move/from16 v3, v22

    goto :goto_3

    .line 174
    .end local v13    # "oi":Landroid/content/om/OverlayInfo;
    .end local v14    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v17    # "tmpSize":I
    .end local v19    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v22    # "priority":I
    .end local v24    # "overlayPackagesSize":I
    .end local v25    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v26    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v4    # "priority":I
    .restart local v5    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v6    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .restart local v7    # "overlayPackagesSize":I
    .restart local v8    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v10    # "tmpSize":I
    .restart local v11    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    :cond_4
    move/from16 v22, v4

    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move/from16 v17, v10

    move-object/from16 v19, v11

    move-object/from16 v23, v13

    move-object/from16 v16, v14

    move-object v13, v5

    move-object v14, v6

    .end local v4    # "priority":I
    .end local v5    # "oi":Landroid/content/om/OverlayInfo;
    .end local v6    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v7    # "overlayPackagesSize":I
    .end local v8    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .end local v10    # "tmpSize":I
    .end local v11    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v13    # "oi":Landroid/content/om/OverlayInfo;
    .restart local v14    # "overlayPackage":Landroid/content/pm/PackageInfo;
    .restart local v17    # "tmpSize":I
    .restart local v19    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v22    # "priority":I
    .restart local v24    # "overlayPackagesSize":I
    .restart local v25    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v26    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    iget v2, v13, Landroid/content/om/OverlayInfo;->priority:I

    move/from16 v3, v22

    .end local v22    # "priority":I
    .local v3, "priority":I
    if-eq v3, v2, :cond_5

    .line 175
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v12, v3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Ljava/lang/String;II)V

    .line 176
    iget-object v2, v13, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v15, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_5
    :goto_3
    iget-object v2, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v4, v26

    .end local v26    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v4, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v3    # "priority":I
    .end local v13    # "oi":Landroid/content/om/OverlayInfo;
    .end local v14    # "overlayPackage":Landroid/content/pm/PackageInfo;
    add-int/lit8 v0, v0, 0x1

    move-object v9, v4

    move-object/from16 v14, v16

    move/from16 v10, v17

    move-object/from16 v11, v19

    move-object/from16 v13, v23

    move/from16 v7, v24

    move-object/from16 v8, v25

    goto/16 :goto_2

    .end local v4    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .end local v17    # "tmpSize":I
    .end local v19    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v24    # "overlayPackagesSize":I
    .end local v25    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "overlayPackagesSize":I
    .restart local v8    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v10    # "tmpSize":I
    .restart local v11    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    :cond_6
    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object v4, v9

    move/from16 v17, v10

    move-object/from16 v19, v11

    move-object/from16 v23, v13

    move-object/from16 v16, v14

    .line 184
    .end local v0    # "i":I
    .end local v7    # "overlayPackagesSize":I
    .end local v8    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .end local v10    # "tmpSize":I
    .end local v11    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v4    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v17    # "tmpSize":I
    .restart local v19    # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v24    # "overlayPackagesSize":I
    .restart local v25    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 185
    .local v2, "storedOverlayInfosSize":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v2, :cond_7

    .line 186
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 187
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    iget-object v5, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v7, v3, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 188
    invoke-direct {v1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 189
    iget-object v5, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v15, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    .end local v3    # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 196
    .end local v0    # "i":I
    :cond_7
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_5
    const/4 v5, 0x0

    move/from16 v6, v24

    .end local v24    # "overlayPackagesSize":I
    .local v6, "overlayPackagesSize":I
    if-ge v3, v6, :cond_8

    .line 197
    move-object/from16 v7, v25

    .end local v25    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v7, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 199
    .local v8, "overlayPackage":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0, v9, v12, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    move-object/from16 v9, v16

    goto :goto_6

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v5, "failed to update settings"

    move-object/from16 v9, v16

    invoke-static {v9, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    iget-object v5, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10, v12}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 205
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_6
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v8    # "overlayPackage":Landroid/content/pm/PackageInfo;
    add-int/lit8 v3, v3, 0x1

    move/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v16, v9

    goto :goto_5

    .end local v7    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v25    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_8
    move-object/from16 v9, v16

    move-object/from16 v7, v25

    .line 209
    .end local v3    # "i":I
    .end local v25    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 210
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 211
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    .local v0, "targetPackageName":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v8, v0, v12}, Lcom/android/server/om/PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-nez v8, :cond_9

    .line 213
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 215
    .end local v0    # "targetPackageName":Ljava/lang/String;
    :cond_9
    goto :goto_7

    .line 218
    :cond_a
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v0

    .line 219
    .local v8, "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 220
    invoke-virtual {v0, v12}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v10

    .line 221
    .local v10, "userOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 222
    .local v11, "userOverlayTargetCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v11, :cond_e

    .line 223
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 224
    .local v13, "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    if-eqz v13, :cond_b

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_9

    :cond_b
    move v14, v5

    .line 225
    .local v14, "overlayCount":I
    :goto_9
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "j":I
    :goto_a
    if-ge v5, v14, :cond_d

    .line 226
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v20, v2

    .end local v2    # "storedOverlayInfosSize":I
    .local v20, "storedOverlayInfosSize":I
    move-object/from16 v2, v16

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 227
    .local v2, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 228
    move-object/from16 v16, v3

    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v16, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 227
    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_c
    move-object/from16 v16, v3

    .line 225
    .end local v2    # "oi":Landroid/content/om/OverlayInfo;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v16

    move/from16 v2, v20

    goto :goto_a

    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "storedOverlayInfosSize":I
    .local v2, "storedOverlayInfosSize":I
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    move/from16 v20, v2

    move-object/from16 v16, v3

    .line 222
    .end local v2    # "storedOverlayInfosSize":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "j":I
    .end local v13    # "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v14    # "overlayCount":I
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v20    # "storedOverlayInfosSize":I
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    goto :goto_8

    .end local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "storedOverlayInfosSize":I
    .restart local v2    # "storedOverlayInfosSize":I
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    move/from16 v20, v2

    move-object/from16 v16, v3

    .line 234
    .end local v0    # "i":I
    .end local v2    # "storedOverlayInfosSize":I
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v16    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v20    # "storedOverlayInfosSize":I
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v3, :cond_11

    aget-object v13, v2, v5

    .line 236
    .local v13, "defaultOverlay":Ljava/lang/String;
    :try_start_1
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v13, v12}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 237
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v14, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v8, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 238
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v21, v2

    :try_start_2
    const-string v2, "Enabling default overlay \'"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for target \'"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in category \'"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v2, v23

    :try_start_3
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v14, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;
    :try_end_3
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v22, v3

    :try_start_4
    iget-object v3, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v26, v4

    .end local v4    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v26    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    const/4 v4, 0x1

    :try_start_5
    invoke-virtual {v14, v3, v12, v4}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    .line 242
    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;
    :try_end_5
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v14, 0x0

    :try_start_6
    invoke-direct {v1, v3, v4, v12, v14}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 243
    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v15, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_e

    .line 246
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    :catch_1
    move-exception v0

    goto :goto_11

    :catch_2
    move-exception v0

    const/4 v14, 0x0

    goto :goto_11

    .end local v26    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v4    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :catch_3
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    move/from16 v22, v3

    :goto_d
    move-object/from16 v26, v4

    goto :goto_10

    :catch_5
    move-exception v0

    goto :goto_f

    .line 237
    .restart local v0    # "oi":Landroid/content/om/OverlayInfo;
    :cond_f
    move-object/from16 v21, v2

    move/from16 v22, v3

    move-object/from16 v26, v4

    move-object/from16 v2, v23

    const/4 v14, 0x0

    .line 249
    .end local v0    # "oi":Landroid/content/om/OverlayInfo;
    .end local v4    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v26    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :cond_10
    :goto_e
    goto :goto_12

    .line 246
    .end local v26    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v4    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :catch_6
    move-exception v0

    move-object/from16 v21, v2

    :goto_f
    move/from16 v22, v3

    move-object/from16 v26, v4

    move-object/from16 v2, v23

    :goto_10
    const/4 v14, 0x0

    .line 247
    .end local v4    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .restart local v26    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :goto_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set default overlay \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .end local v0    # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .end local v13    # "defaultOverlay":Ljava/lang/String;
    :goto_12
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v23, v2

    move-object/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v26

    goto/16 :goto_c

    .line 252
    .end local v26    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v4    # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
