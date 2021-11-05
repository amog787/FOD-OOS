.class public Lcom/android/server/pm/AppsFilter;
.super Ljava/lang/Object;
.source "AppsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AppsFilter$ToString;,
        Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;,
        Lcom/android/server/pm/AppsFilter$FeatureConfig;,
        Lcom/android/server/pm/AppsFilter$StateProvider;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ALL:Z = false

.field private static final DEBUG_LOGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "AppsFilter"


# instance fields
.field private final mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

.field private final mForceQueryable:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mForceQueryableByDevicePackageNames:[Ljava/lang/String;

.field private final mImplicitlyQueryable:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

.field private mProtectedBroadcasts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueriesViaComponent:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueriesViaComponentRequireRecompute:Z

.field private final mQueriesViaPackage:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mShouldFilterCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

.field private final mSystemAppsQueryable:Z

.field private mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AppsFilter$StateProvider;Lcom/android/server/pm/AppsFilter$FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V
    .locals 2
    .param p1, "stateProvider"    # Lcom/android/server/pm/AppsFilter$StateProvider;
    .param p2, "featureConfig"    # Lcom/android/server/pm/AppsFilter$FeatureConfig;
    .param p3, "forceQueryableWhitelist"    # [Ljava/lang/String;
    .param p4, "systemAppsQueryable"    # Z
    .param p5, "overlayProvider"    # Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    .line 90
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    .line 96
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 110
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    .line 126
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 143
    iput-object p2, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    .line 144
    iput-object p3, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 145
    iput-boolean p4, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    .line 146
    new-instance v0, Lcom/android/server/om/OverlayReferenceMapper;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p5}, Lcom/android/server/om/OverlayReferenceMapper;-><init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    .line 148
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AppsFilter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/pm/AppsFilter;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/AppsFilter;
    .param p1, "x1"    # Landroid/util/SparseArray;

    .line 70
    iput-object p1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    return-object p1
.end method

.method private addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V
    .locals 9
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 525
    .local p2, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const-string v1, "android"

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 530
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 531
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v2, v1}, Lcom/android/server/pm/AppsFilter;->isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 534
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_0
    goto :goto_0

    .line 537
    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 538
    .local v0, "newPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v0, :cond_2

    .line 540
    return-void

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 544
    iput-boolean v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 547
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 548
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/android/server/pm/PackageSetting;->forceQueryableOverride:Z

    if-nez v1, :cond_5

    .line 551
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    if-nez v1, :cond_5

    .line 552
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isForceQueryable()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryableByDevicePackageNames:[Ljava/lang/String;

    .line 554
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 553
    invoke-static {v1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    .line 555
    .local v1, "newIsForceQueryable":Z
    :goto_2
    if-nez v1, :cond_6

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mSystemSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    if-eqz v4, :cond_7

    .line 557
    invoke-static {v4, p1}, Lcom/android/server/pm/AppsFilter;->isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 558
    :cond_6
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_7
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_11

    .line 562
    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 563
    .local v2, "existingSetting":Lcom/android/server/pm/PackageSetting;
    iget v5, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v6, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v5, v6, :cond_10

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-nez v5, :cond_8

    .line 564
    goto/16 :goto_4

    .line 566
    :cond_8
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 568
    .local v5, "existingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v1, :cond_b

    .line 569
    iget-boolean v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v5, v0, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 571
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 573
    :cond_9
    invoke-static {v5, v0}, Lcom/android/server/pm/AppsFilter;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 574
    invoke-static {v2, v0}, Lcom/android/server/pm/AppsFilter;->canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 575
    :cond_a
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 579
    :cond_b
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 580
    iget-boolean v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v0, v5, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 582
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 584
    :cond_c
    invoke-static {v0, v5}, Lcom/android/server/pm/AppsFilter;->canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 585
    invoke-static {p1, v5}, Lcom/android/server/pm/AppsFilter;->canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 586
    :cond_d
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 590
    :cond_e
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_10

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v6, :cond_10

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v7, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 591
    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilter;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 592
    invoke-static {v6, v7}, Lcom/android/server/pm/AppsFilter;->pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 593
    :cond_f
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 594
    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v7, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v8, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 561
    .end local v2    # "existingSetting":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "existingPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_10
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_3

    .line 598
    .end local v4    # "i":I
    :cond_11
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 599
    .local v2, "existingSize":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 600
    .local v4, "existingPkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_5
    if-ge v5, v2, :cond_13

    .line 601
    invoke-virtual {p2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 602
    .local v6, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v7, :cond_12

    .line 603
    iget-object v7, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v4, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .end local v6    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 606
    .end local v5    # "index":I
    :cond_13
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/om/OverlayReferenceMapper;->addPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)V

    .line 607
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v5, p1, v3}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V

    .line 608
    return-void
.end method

.method private static canQueryAsInstaller(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 4
    .param p0, "querying"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 375
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->installSource:Lcom/android/server/pm/InstallSource;

    .line 376
    .local v0, "installSource":Lcom/android/server/pm/InstallSource;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 377
    return v2

    .line 379
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-nez v1, :cond_1

    .line 380
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    return v2

    .line 383
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z
    .locals 4
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 353
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 354
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 355
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v2, p1, p2}, Lcom/android/server/pm/AppsFilter;->matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 356
    return v1

    .line 358
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 360
    :cond_1
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 361
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/pm/AppsFilter;->matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    return v1

    .line 364
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 369
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0
.end method

.method private collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/util/ArraySet;
    .locals 5
    .param p2, "excludePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 697
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 698
    .local v0, "ret":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 699
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 700
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 701
    goto :goto_1

    .line 703
    :cond_0
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v3

    .line 704
    .local v3, "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 705
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 698
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    .end local v3    # "protectedBroadcasts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 708
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public static create(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;)Lcom/android/server/pm/AppsFilter;
    .locals 11
    .param p0, "pms"    # Landroid/content/pm/PackageManagerInternal;
    .param p1, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;

    .line 318
    nop

    .line 319
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 320
    const v1, 0x111008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 321
    .local v0, "forceSystemAppsQueryable":Z
    new-instance v1, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;-><init>(Landroid/content/pm/PackageManagerInternal;Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$1;)V

    .line 323
    .local v1, "featureConfig":Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;
    if-eqz v0, :cond_0

    .line 325
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object v8, v2

    .local v2, "forcedQueryablePackageNames":[Ljava/lang/String;
    goto :goto_1

    .line 327
    .end local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    :cond_0
    nop

    .line 328
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107004a

    .line 329
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 331
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 330
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v8, v2

    .line 334
    .end local v2    # "forcedQueryablePackageNames":[Ljava/lang/String;
    .end local v3    # "i":I
    .local v8, "forcedQueryablePackageNames":[Ljava/lang/String;
    :goto_1
    new-instance v9, Lcom/android/server/pm/-$$Lambda$AppsFilter$j5cCE_B_k1kV7DMXjxSek18KSPQ;

    .local v9, "stateProvider":Lcom/android/server/pm/AppsFilter$StateProvider;
    invoke-direct {v9, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$j5cCE_B_k1kV7DMXjxSek18KSPQ;-><init>(Lcom/android/server/pm/PackageManagerService$Injector;)V

    .line 340
    new-instance v10, Lcom/android/server/pm/AppsFilter;

    const/4 v7, 0x0

    move-object v2, v10

    move-object v3, v9

    move-object v4, v1

    move-object v5, v8

    move v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/AppsFilter;-><init>(Lcom/android/server/pm/AppsFilter$StateProvider;Lcom/android/server/pm/AppsFilter$FeatureConfig;[Ljava/lang/String;ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V

    .line 342
    .local v2, "appsFilter":Lcom/android/server/pm/AppsFilter;
    invoke-virtual {v1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfigImpl;->setAppsFilter(Lcom/android/server/pm/AppsFilter;)V

    .line 343
    return-object v2
.end method

.method private static dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p3, "subTitle"    # Ljava/lang/String;
    .param p4, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "TT;",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilter$ToString<",
            "TT;>;)V"
        }
    .end annotation

    .line 1215
    .local p1, "filteringId":Ljava/lang/Object;, "TT;"
    .local p2, "targetPkgSet":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    .local p5, "toString":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<TT;>;"
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz p1, :cond_0

    .line 1216
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1217
    :cond_0
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1218
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1219
    .local v1, "item":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1220
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    .line 1221
    if-nez p5, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    invoke-interface {p5, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1223
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    :cond_3
    goto :goto_0

    .line 1225
    :cond_4
    return-void
.end method

.method private static dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V
    .locals 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "filteringId"    # Ljava/lang/Integer;
    .param p3, "spacing"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/AppsFilter$ToString<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1187
    .local p2, "queriesMap":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<Ljava/lang/Integer;>;"
    .local p4, "toString":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1188
    invoke-virtual {p2, v0}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1189
    .local v1, "callingId":Ljava/lang/Integer;
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1191
    const/4 v4, 0x0

    .line 1192
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 1193
    if-nez p4, :cond_0

    .line 1194
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    .line 1195
    :cond_0
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1191
    :goto_1
    move-object v3, p0

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    goto :goto_3

    .line 1198
    :cond_1
    nop

    .line 1199
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 1200
    if-nez p4, :cond_2

    .line 1201
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_2

    .line 1202
    :cond_2
    invoke-interface {p4, v1}, Lcom/android/server/pm/AppsFilter$ToString;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 1198
    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1187
    .end local v1    # "callingId":Ljava/lang/Integer;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1206
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private static isSystemSigned(Landroid/content/pm/PackageParser$SigningDetails;Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "sysSigningDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 691
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 692
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageParser$SigningDetails;->signaturesMatchExactly(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 691
    :goto_0
    return v0
.end method

.method static synthetic lambda$create$0(Lcom/android/server/pm/PackageManagerService$Injector;Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V
    .locals 3
    .param p0, "injector"    # Lcom/android/server/pm/PackageManagerService$Injector;
    .param p1, "command"    # Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;

    .line 335
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 336
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getSettings()Lcom/android/server/pm/Settings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    .line 337
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$Injector;->getUserManagerInternal()Landroid/os/UserManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManagerInternal;->getUserInfos()[Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 336
    invoke-interface {p1, v1, v2}, Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;->currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V

    .line 338
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$dumpQueries$6(Landroid/util/SparseArray;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p0, "cache"    # Landroid/util/SparseArray;
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "input"    # Ljava/lang/Integer;

    .line 1147
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1148
    .local v0, "cachedValue":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 1149
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageManagerService;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1150
    .local v1, "packagesForUid":[Ljava/lang/String;
    const-string v2, "]"

    if-nez v1, :cond_0

    .line 1151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[unknown app id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1153
    :cond_0
    array-length v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    goto :goto_0

    .line 1154
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 1156
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1158
    .end local v1    # "packagesForUid":[Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private static log(Lcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    .locals 2
    .param p0, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p1, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "description"    # Ljava/lang/String;

    .line 1136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    if-nez p0, :cond_0

    const-string/jumbo v1, "system"

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1136
    const-string v1, "AppsFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return-void
.end method

.method private static matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/parsing/component/ParsedMainComponent;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 430
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<+Landroid/content/pm/parsing/component/ParsedMainComponent;>;"
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 431
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedMainComponent;

    .line 432
    .local v2, "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isExported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 433
    goto :goto_1

    .line 435
    :cond_0
    invoke-static {p0, v2, p2}, Lcom/android/server/pm/AppsFilter;->matchesAnyFilter(Landroid/content/Intent;Landroid/content/pm/parsing/component/ParsedComponent;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 436
    return v1

    .line 430
    .end local v2    # "component":Landroid/content/pm/parsing/component/ParsedMainComponent;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 439
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesAnyFilter(Landroid/content/Intent;Landroid/content/pm/parsing/component/ParsedComponent;Ljava/util/Set;)Z
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "component"    # Landroid/content/pm/parsing/component/ParsedComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 444
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    .line 445
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedIntentInfo;>;"
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 446
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 447
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0, v3, p2}, Lcom/android/server/pm/AppsFilter;->matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 448
    return v2

    .line 445
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 451
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Ljava/util/Set;)Z
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/IntentFilter;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 456
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 456
    const-string v6, "AppsFilter"

    const/4 v7, 0x1

    move-object v0, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 409
    .local p2, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 410
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    .line 409
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 411
    return v2

    .line 413
    :cond_0
    nop

    .line 414
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 413
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    return v2

    .line 417
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    return v2

    .line 420
    :cond_2
    nop

    .line 421
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 420
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilter;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    return v2

    .line 424
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 7
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")Z"
        }
    .end annotation

    .line 388
    .local p0, "queriesAuthorities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "p":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_4

    .line 389
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedProvider;

    .line 390
    .local v3, "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->isExported()Z

    move-result v4

    if-nez v4, :cond_0

    .line 391
    goto :goto_1

    .line 393
    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 394
    goto :goto_1

    .line 396
    :cond_1
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-virtual {v3}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-direct {v4, v5, v6, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v4

    .line 398
    .local v2, "authorities":Ljava/util/StringTokenizer;
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 399
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 400
    return v1

    .line 388
    .end local v2    # "authorities":Ljava/util/StringTokenizer;
    .end local v3    # "provider":Landroid/content/pm/parsing/component/ParsedProvider;
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 404
    .end local v0    # "p":I
    :cond_4
    return v2
.end method

.method private static pkgInstruments(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 7
    .param p0, "source"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "target"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1120
    const-wide/32 v0, 0x40000

    :try_start_0
    const-string/jumbo v2, "pkgInstruments"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1121
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1122
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getInstrumentations()Ljava/util/List;

    move-result-object v3

    .line 1123
    .local v3, "inst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedInstrumentation;>;"
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 1124
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    invoke-virtual {v6}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 1125
    nop

    .line 1130
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1125
    return v5

    .line 1123
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1128
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .line 1130
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1128
    return v4

    .line 1130
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "inst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/parsing/component/ParsedInstrumentation;>;"
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1131
    throw v2
.end method

.method private recomputeComponentVisibility(Landroid/util/ArrayMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 716
    .local p1, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 717
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 718
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 719
    .local v1, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v2}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 720
    goto :goto_3

    .line 722
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_4

    .line 723
    if-ne v0, v2, :cond_1

    .line 724
    goto :goto_2

    .line 726
    :cond_1
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 727
    .local v3, "otherSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v5, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 728
    goto :goto_2

    .line 730
    :cond_2
    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    iget-object v6, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    invoke-static {v4, v5, v6}, Lcom/android/server/pm/AppsFilter;->canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 731
    iget-object v4, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v5, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v6, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 722
    .end local v3    # "otherSetting":Lcom/android/server/pm/PackageSetting;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 717
    .end local v1    # "setting":Lcom/android/server/pm/PackageSetting;
    .end local v2    # "j":I
    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 735
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 736
    return-void
.end method

.method private removeAppIdFromVisibilityCache(I)V
    .locals 4
    .param p1, "appId"    # I

    .line 611
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 612
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 615
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 617
    goto :goto_2

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 620
    .local v1, "targetSparseArray":Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_3

    .line 621
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 622
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 620
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 614
    .end local v1    # "targetSparseArray":Landroid/util/SparseBooleanArray;
    .end local v2    # "j":I
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 626
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private static requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 2
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1112
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z
    .locals 20
    .param p1, "callingUid"    # I
    .param p2, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p3, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "targetUserId"    # I

    .line 924
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-wide/32 v5, 0x40000

    const-string/jumbo v0, "shouldFilterApplicationInternal"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 926
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isGloballyEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move v7, v0

    .line 927
    .local v7, "featureEnabled":Z
    const/4 v0, 0x0

    if-nez v7, :cond_0

    .line 931
    nop

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 931
    return v0

    .line 933
    :cond_0
    const/4 v8, 0x1

    if-nez v3, :cond_1

    .line 934
    :try_start_1
    const-string v0, "AppsFilter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No setting found for non system uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 935
    nop

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 935
    return v8

    .line 939
    :cond_1
    :try_start_2
    const-string v9, "callingSetting instanceof"

    invoke-static {v5, v6, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 940
    instance-of v9, v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v9, :cond_3

    .line 941
    move-object v9, v3

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    iget-object v9, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v9, :cond_2

    .line 942
    move-object v9, v3

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 943
    .local v9, "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    const/4 v10, 0x0

    .local v10, "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_0

    .line 945
    .end local v9    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :cond_2
    const/4 v9, 0x0

    .line 946
    .restart local v9    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object v10, v3

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    iget-object v10, v10, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v10, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .restart local v10    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    goto :goto_0

    .line 950
    .end local v9    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :cond_3
    const/4 v9, 0x0

    .line 951
    .restart local v9    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    move-object v10, v3

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    iget-object v10, v10, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 953
    .restart local v10    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 955
    if-eqz v9, :cond_4

    .line 956
    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v11, :cond_6

    iget-object v11, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    iget-object v12, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 957
    invoke-interface {v11, v12}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-nez v11, :cond_6

    .line 961
    nop

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 961
    return v0

    .line 964
    :cond_4
    :try_start_3
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v11

    sub-int/2addr v11, v8

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_6

    .line 965
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    iget-object v12, v12, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 966
    .local v12, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v12, :cond_5

    iget-object v13, v1, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v13, v12}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->packageIsEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    if-nez v13, :cond_5

    .line 970
    nop

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 970
    return v0

    .line 964
    .end local v12    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 977
    .end local v11    # "i":I
    :cond_6
    :try_start_4
    iget-object v11, v4, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 978
    .local v11, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v11, :cond_7

    .line 982
    nop

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 982
    return v8

    .line 984
    :cond_7
    :try_start_5
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isStaticSharedLibrary()Z

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v12, :cond_8

    .line 986
    nop

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 986
    return v0

    .line 988
    :cond_8
    :try_start_6
    invoke-interface {v11}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 989
    .local v12, "targetName":Ljava/lang/String;
    const-string v13, "getAppId"

    invoke-static {v5, v6, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 991
    if-eqz v9, :cond_9

    .line 992
    iget v13, v9, Lcom/android/server/pm/PackageSetting;->appId:I

    .local v13, "callingAppId":I
    goto :goto_2

    .line 994
    .end local v13    # "callingAppId":I
    :cond_9
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    iget v13, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 996
    .restart local v13    # "callingAppId":I
    :goto_2
    iget v14, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 997
    .local v14, "targetAppId":I
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 998
    if-ne v13, v14, :cond_a

    .line 1002
    nop

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1002
    return v0

    .line 1006
    :cond_a
    :try_start_7
    const-string/jumbo v15, "requestsQueryAllPackages"

    invoke-static {v5, v6, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1007
    if-eqz v9, :cond_b

    .line 1008
    iget-object v15, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v15, :cond_d

    iget-object v15, v9, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1009
    invoke-static {v15}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v15, :cond_d

    .line 1010
    nop

    .line 1021
    :try_start_8
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1010
    return v0

    .line 1013
    :cond_b
    :try_start_9
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v15

    sub-int/2addr v15, v8

    .local v15, "i":I
    :goto_3
    if-ltz v15, :cond_d

    .line 1014
    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v8, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 1015
    .local v8, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v8, :cond_c

    invoke-static {v8}, Lcom/android/server/pm/AppsFilter;->requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v16, :cond_c

    .line 1016
    nop

    .line 1021
    :try_start_a
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1016
    return v0

    .line 1013
    .end local v8    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_c
    add-int/lit8 v15, v15, -0x1

    const/4 v8, 0x1

    goto :goto_3

    .line 1021
    .end local v15    # "i":I
    :cond_d
    :try_start_b
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 1022
    nop

    .line 1024
    :try_start_c
    const-string/jumbo v8, "mForceQueryable"

    invoke-static {v5, v6, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1025
    iget-object v8, v1, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v8, :cond_e

    .line 1029
    nop

    .line 1032
    :try_start_d
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1029
    return v0

    .line 1032
    :cond_e
    :try_start_e
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1033
    nop

    .line 1035
    :try_start_f
    const-string/jumbo v8, "mQueriesViaPackage"

    invoke-static {v5, v6, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1036
    iget-object v8, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v13, v15}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    if-eqz v8, :cond_f

    .line 1040
    nop

    .line 1043
    :try_start_10
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1040
    return v0

    .line 1043
    :cond_f
    :try_start_11
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 1044
    nop

    .line 1046
    :try_start_12
    const-string/jumbo v8, "mQueriesViaComponent"

    invoke-static {v5, v6, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1047
    iget-boolean v8, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-eqz v8, :cond_10

    .line 1048
    iget-object v8, v1, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v15, Lcom/android/server/pm/-$$Lambda$AppsFilter$UqqRA4_L0adbEHKVbiMnZfoUsl4;

    invoke-direct {v15, v1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$UqqRA4_L0adbEHKVbiMnZfoUsl4;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v8, v15}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 1052
    :cond_10
    iget-object v8, v1, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v13, v15}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v8, :cond_11

    .line 1056
    nop

    .line 1059
    :try_start_13
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1056
    return v0

    .line 1059
    :cond_11
    :try_start_14
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 1060
    nop

    .line 1063
    :try_start_15
    const-string/jumbo v8, "mImplicitlyQueryable"

    invoke-static {v5, v6, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1064
    move/from16 v8, p4

    :try_start_16
    invoke-static {v8, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 1065
    .local v15, "targetUid":I
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v0, :cond_12

    .line 1069
    nop

    .line 1072
    const-wide/32 v5, 0x40000

    :try_start_17
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1069
    const/4 v0, 0x0

    return v0

    .line 1065
    :cond_12
    const-wide/32 v5, 0x40000

    .line 1072
    .end local v15    # "targetUid":I
    :try_start_18
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 1073
    nop

    .line 1076
    :try_start_19
    const-string/jumbo v0, "mOverlayReferenceMapper"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1077
    if-eqz v10, :cond_15

    .line 1078
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 1079
    .local v0, "size":I
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_4
    if-ge v5, v0, :cond_14

    .line 1080
    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1081
    .local v6, "pkgSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v15, v1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    move/from16 v19, v0

    .end local v0    # "size":I
    .local v19, "size":I
    iget-object v0, v6, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v15, v12, v0}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v0, :cond_13

    .line 1087
    nop

    .line 1099
    const-wide/32 v17, 0x40000

    :try_start_1a
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 1104
    invoke-static/range {v17 .. v18}, Landroid/os/Trace;->traceEnd(J)V

    .line 1087
    const/4 v0, 0x0

    return v0

    .line 1079
    .end local v6    # "pkgSetting":Lcom/android/server/pm/PackageSetting;
    :cond_13
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v19

    goto :goto_4

    .end local v19    # "size":I
    .restart local v0    # "size":I
    :cond_14
    move/from16 v19, v0

    .line 1090
    .end local v0    # "size":I
    .end local v5    # "index":I
    const-wide/32 v5, 0x40000

    goto :goto_5

    .line 1091
    :cond_15
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v5, v9, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v12, v5}, Lcom/android/server/om/OverlayReferenceMapper;->isValidActor(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    if-eqz v0, :cond_16

    .line 1095
    nop

    .line 1099
    const-wide/32 v5, 0x40000

    :try_start_1c
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1095
    const/4 v0, 0x0

    return v0

    .line 1091
    :cond_16
    const-wide/32 v5, 0x40000

    .line 1099
    :goto_5
    :try_start_1d
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    .line 1100
    nop

    .line 1102
    nop

    .line 1104
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1102
    const/4 v0, 0x1

    return v0

    .line 1099
    :catchall_0
    move-exception v0

    const-wide/32 v5, 0x40000

    :try_start_1e
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1100
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1072
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move/from16 v8, p4

    :goto_6
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1073
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1059
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_3
    move-exception v0

    move/from16 v8, p4

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1060
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1043
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_4
    move-exception v0

    move/from16 v8, p4

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1044
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1032
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_5
    move-exception v0

    move/from16 v8, p4

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1033
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0

    .line 1021
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_6
    move-exception v0

    move/from16 v8, p4

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1022
    nop

    .end local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .end local p1    # "callingUid":I
    .end local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .end local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local p4    # "targetUserId":I
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    .line 1104
    .end local v7    # "featureEnabled":Z
    .end local v9    # "callingPkgSetting":Lcom/android/server/pm/PackageSetting;
    .end local v10    # "callingSharedPkgSettings":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/pm/PackageSetting;>;"
    .end local v11    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v12    # "targetName":Ljava/lang/String;
    .end local v13    # "callingAppId":I
    .end local v14    # "targetAppId":I
    .restart local p0    # "this":Lcom/android/server/pm/AppsFilter;
    .restart local p1    # "callingUid":I
    .restart local p2    # "callingSetting":Lcom/android/server/pm/SettingBase;
    .restart local p3    # "targetPkgSetting":Lcom/android/server/pm/PackageSetting;
    .restart local p4    # "targetUserId":I
    :catchall_7
    move-exception v0

    goto :goto_7

    :catchall_8
    move-exception v0

    move/from16 v8, p4

    :goto_7
    const-wide/32 v5, 0x40000

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1105
    throw v0
.end method

.method private updateEntireShouldFilterCache()V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$AppsFilter$TlAUz3n4SFG3Fzpx_ztukhvAHaI;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$AppsFilter$TlAUz3n4SFG3Fzpx_ztukhvAHaI;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 636
    return-void
.end method

.method private updateShouldFilterCacheForPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 645
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$AppsFilter$kGs1Zo2JADiRmEYJQVEv8mh577Y;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$kGs1Zo2JADiRmEYJQVEv8mh577Y;-><init>(Lcom/android/server/pm/AppsFilter;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 650
    return-void
.end method

.method private updateShouldFilterCacheForPackage(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V
    .locals 16
    .param p1, "skipPackageName"    # Ljava/lang/String;
    .param p2, "subjectSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "allUsers"    # [Landroid/content/pm/UserInfo;
    .param p5, "maxIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;[",
            "Landroid/content/pm/UserInfo;",
            "I)V"
        }
    .end annotation

    .line 655
    .local p3, "allSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v5, p5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_6

    .line 656
    move-object/from16 v6, p3

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 657
    .local v7, "otherSetting":Lcom/android/server/pm/PackageSetting;
    iget v8, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v9, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v8, v9, :cond_0

    .line 658
    goto/16 :goto_3

    .line 661
    :cond_0
    iget-object v8, v2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-eq v8, v1, :cond_5

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-ne v8, v1, :cond_1

    .line 662
    goto :goto_3

    .line 664
    :cond_1
    array-length v8, v3

    .line 665
    .local v8, "userCount":I
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v9

    mul-int/2addr v9, v8

    .line 666
    .local v9, "appxUidCount":I
    const/4 v10, 0x0

    .local v10, "su":I
    :goto_1
    if-ge v10, v8, :cond_5

    .line 667
    aget-object v11, v3, v10

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    .line 668
    .local v11, "subjectUser":I
    const/4 v12, 0x0

    .local v12, "ou":I
    :goto_2
    if-ge v12, v8, :cond_4

    .line 669
    aget-object v13, v3, v12

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    .line 670
    .local v13, "otherUser":I
    iget v14, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v11, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v14

    .line 671
    .local v14, "subjectUid":I
    iget-object v15, v0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->contains(I)Z

    move-result v15

    if-nez v15, :cond_2

    .line 672
    iget-object v15, v0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1, v9}, Landroid/util/SparseBooleanArray;-><init>(I)V

    invoke-virtual {v15, v14, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 674
    :cond_2
    iget v1, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v13, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 675
    .local v1, "otherUid":I
    iget-object v15, v0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v15

    if-nez v15, :cond_3

    .line 676
    iget-object v15, v0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3, v9}, Landroid/util/SparseBooleanArray;-><init>(I)V

    invoke-virtual {v15, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    :cond_3
    iget-object v3, v0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 679
    invoke-direct {v0, v14, v2, v7, v13}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v15

    .line 678
    invoke-virtual {v3, v1, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 681
    iget-object v3, v0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 682
    invoke-direct {v0, v1, v7, v2, v11}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v15

    .line 681
    invoke-virtual {v3, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 668
    .end local v1    # "otherUid":I
    .end local v13    # "otherUser":I
    .end local v14    # "subjectUid":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    goto :goto_2

    .line 666
    .end local v11    # "subjectUser":I
    .end local v12    # "ou":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    goto :goto_1

    .line 655
    .end local v7    # "otherSetting":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "userCount":I
    .end local v9    # "appxUidCount":I
    .end local v10    # "su":I
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    goto/16 :goto_0

    :cond_6
    move-object/from16 v6, p3

    .line 687
    .end local v4    # "i":I
    return-void
.end method


# virtual methods
.method public addPackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 1
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 798
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppsFilter;->addPackage(Lcom/android/server/pm/PackageSetting;Z)V

    .line 799
    return-void
.end method

.method public addPackage(Lcom/android/server/pm/PackageSetting;Z)V
    .locals 4
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "isReplace"    # Z

    .line 505
    const-wide/32 v0, 0x40000

    const-string v2, "filter.addPackage"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 507
    if-eqz p2, :cond_0

    .line 509
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppsFilter;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v3, Lcom/android/server/pm/-$$Lambda$AppsFilter$Dxw_XmZrEzzBQvW2GyGYmM8TilU;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$Dxw_XmZrEzzBQvW2GyGYmM8TilU;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v2, v3}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 520
    nop

    .line 521
    return-void

    .line 519
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 520
    throw v2
.end method

.method public dumpQueries(Ljava/io/PrintWriter;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Integer;Lcom/android/server/pm/DumpState;[I)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p3, "filteringAppId"    # Ljava/lang/Integer;
    .param p4, "dumpState"    # Lcom/android/server/pm/DumpState;
    .param p5, "users"    # [I

    .line 1145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1146
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v7, Lcom/android/server/pm/-$$Lambda$AppsFilter$WcH3rWCgyZD7CjxrPIUDtDxCPP4;

    .local v7, "expandPackages":Lcom/android/server/pm/AppsFilter$ToString;, "Lcom/android/server/pm/AppsFilter$ToString<Ljava/lang/Integer;>;"
    invoke-direct {v7, v0, p2}, Lcom/android/server/pm/-$$Lambda$AppsFilter$WcH3rWCgyZD7CjxrPIUDtDxCPP4;-><init>(Landroid/util/SparseArray;Lcom/android/server/pm/PackageManagerService;)V

    .line 1160
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1161
    const-string v1, "Queries:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    .line 1163
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v1}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isGloballyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1164
    const-string v1, "  DISABLED"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    return-void

    .line 1169
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  system apps queryable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/pm/AppsFilter;->mSystemAppsQueryable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1170
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    const-string v4, "forceQueryable"

    const-string v5, "  "

    move-object v1, p1

    move-object v2, p3

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/AppsFilter;->dumpPackageSet(Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1171
    const-string v1, "  queries via package name:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1172
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    const-string v2, "    "

    invoke-static {p1, p3, v1, v2, v7}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1173
    const-string v1, "  queries via intent:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1174
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-static {p1, p3, v1, v2, v7}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1175
    const-string v1, "  queryable via interaction:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    array-length v1, p5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p5, v2

    .line 1177
    .local v3, "user":I
    const-string v4, "    User "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    nop

    .line 1179
    if-nez p3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    .line 1178
    const-string v6, "      "

    invoke-static {p1, v4, v5, v6, v7}, Lcom/android/server/pm/AppsFilter;->dumpQueriesMap(Ljava/io/PrintWriter;Ljava/lang/Integer;Landroid/util/SparseSetArray;Ljava/lang/String;Lcom/android/server/pm/AppsFilter$ToString;)V

    .line 1176
    .end local v3    # "user":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1182
    :cond_2
    return-void
.end method

.method public getFeatureConfig()Lcom/android/server/pm/AppsFilter$FeatureConfig;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    return-object v0
.end method

.method public getVisibilityWhitelist(Lcom/android/server/pm/PackageSetting;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;
    .locals 17
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "users"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "[I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .line 755
    .local p3, "existingSettings":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 756
    const/4 v3, 0x0

    return-object v3

    .line 759
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 760
    .local v3, "result":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v4, 0x0

    .local v4, "u":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_6

    .line 761
    aget v5, v2, v4

    .line 762
    .local v5, "userId":I
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 763
    .local v6, "appIds":[I
    const/4 v7, 0x0

    .line 764
    .local v7, "buffer":[I
    const/4 v8, 0x0

    .line 765
    .local v8, "whitelistSize":I
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_5

    .line 766
    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 767
    .local v11, "existingSetting":Lcom/android/server/pm/PackageSetting;
    iget v12, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    .line 768
    .local v12, "existingAppId":I
    const/16 v13, 0x2710

    if-ge v12, v13, :cond_1

    .line 769
    goto :goto_2

    .line 771
    :cond_1
    const/4 v13, 0x0

    invoke-static {v6, v13, v8, v12}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v14

    .line 772
    .local v14, "loc":I
    if-ltz v14, :cond_2

    .line 773
    goto :goto_2

    .line 775
    :cond_2
    invoke-static {v5, v12}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    .line 776
    .local v15, "existingUid":I
    invoke-virtual {v0, v15, v11, v1, v5}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v16

    if-nez v16, :cond_4

    .line 777
    if-nez v7, :cond_3

    .line 778
    array-length v13, v6

    new-array v7, v13, [I

    .line 780
    :cond_3
    not-int v13, v14

    .line 781
    .local v13, "insert":I
    sub-int v0, v8, v13

    const/4 v1, 0x0

    invoke-static {v6, v13, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    aput v12, v6, v13

    .line 783
    add-int/lit8 v0, v13, 0x1

    sub-int v2, v8, v13

    invoke-static {v7, v1, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    add-int/lit8 v8, v8, 0x1

    .line 765
    .end local v11    # "existingSetting":Lcom/android/server/pm/PackageSetting;
    .end local v12    # "existingAppId":I
    .end local v13    # "insert":I
    .end local v14    # "loc":I
    .end local v15    # "existingUid":I
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_1

    :cond_5
    move-object/from16 v10, p3

    .line 787
    .end local v9    # "i":I
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 760
    .end local v5    # "userId":I
    .end local v6    # "appIds":[I
    .end local v7    # "buffer":[I
    .end local v8    # "whitelistSize":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_0

    :cond_6
    move-object/from16 v10, p3

    .line 789
    .end local v4    # "u":I
    return-object v3
.end method

.method public grantImplicitAccess(II)V
    .locals 2
    .param p1, "recipientUid"    # I
    .param p2, "visibleUid"    # I

    .line 469
    if-eq p1, p2, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 473
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 476
    .local v0, "visibleUids":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_0

    .line 477
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v1

    .line 478
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 483
    .end local v0    # "visibleUids":Landroid/util/SparseBooleanArray;
    :cond_1
    return-void
.end method

.method public synthetic lambda$addPackage$1$AppsFilter(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 7
    .param p1, "newPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/AppsFilter;->addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V

    .line 513
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 514
    const/4 v2, 0x0

    .line 515
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 514
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 517
    :cond_0
    return-void
.end method

.method public synthetic lambda$removePackage$4$AppsFilter(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 9
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 808
    array-length v0, p3

    .line 809
    .local v0, "userCount":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_1

    .line 810
    aget-object v3, p3, v1

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 811
    .local v3, "userId":I
    iget v4, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 812
    .local v4, "removingUid":I
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseSetArray;->remove(I)V

    .line 813
    iget-object v5, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v5}, Landroid/util/SparseSetArray;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_0

    .line 814
    iget-object v2, p0, Lcom/android/server/pm/AppsFilter;->mImplicitlyQueryable:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 813
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 809
    .end local v3    # "userId":I
    .end local v4    # "removingUid":I
    .end local v5    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 818
    .end local v1    # "u":I
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    if-nez v1, :cond_2

    .line 819
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseSetArray;->remove(I)V

    .line 820
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 821
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponent:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v4

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 820
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 824
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseSetArray;->remove(I)V

    .line 825
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-virtual {v1}, Landroid/util/SparseSetArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_3

    .line 826
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaPackage:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v4

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 825
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 829
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mForceQueryable:Landroid/util/ArraySet;

    iget v3, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 831
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProtectedBroadcasts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 832
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-interface {v1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, "removingPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 834
    .local v3, "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p2, v1}, Lcom/android/server/pm/AppsFilter;->collectProtectedBroadcasts(Landroid/util/ArrayMap;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/pm/AppsFilter;->mProtectedBroadcasts:Ljava/util/Set;

    .line 835
    invoke-interface {v4, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 836
    iput-boolean v2, p0, Lcom/android/server/pm/AppsFilter;->mQueriesViaComponentRequireRecompute:Z

    .line 840
    .end local v1    # "removingPackageName":Ljava/lang/String;
    .end local v3    # "protectedBroadcasts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/om/OverlayReferenceMapper;->removePkg(Ljava/lang/String;)V

    .line 841
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v1, p1, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->updatePackageState(Lcom/android/server/pm/PackageSetting;Z)V

    .line 847
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_6

    .line 848
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_6

    .line 849
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_5

    .line 850
    goto :goto_5

    .line 852
    :cond_5
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v3, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    .line 853
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 852
    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/AppsFilter;->addPackageInternal(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V

    .line 848
    :goto_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 857
    .end local v1    # "i":I
    :cond_6
    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/AppsFilter;->removeAppIdFromVisibilityCache(I)V

    .line 858
    iget-object v1, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_8

    .line 859
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_6
    if-ltz v1, :cond_8

    .line 860
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 861
    .local v2, "siblingSetting":Lcom/android/server/pm/PackageSetting;
    if-ne v2, p1, :cond_7

    .line 862
    goto :goto_7

    .line 864
    :cond_7
    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 865
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 864
    move-object v3, p0

    move-object v5, v2

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 859
    .end local v2    # "siblingSetting":Lcom/android/server/pm/PackageSetting;
    :goto_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 868
    .end local v1    # "i":I
    :cond_8
    return-void
.end method

.method public synthetic lambda$shouldFilterApplicationInternal$5$AppsFilter(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "settings"    # Landroid/util/ArrayMap;
    .param p2, "users"    # [Landroid/content/pm/UserInfo;

    .line 1049
    invoke-direct {p0, p1}, Lcom/android/server/pm/AppsFilter;->recomputeComponentVisibility(Landroid/util/ArrayMap;)V

    .line 1050
    return-void
.end method

.method public synthetic lambda$updateEntireShouldFilterCache$2$AppsFilter(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 7
    .param p1, "settings"    # Landroid/util/ArrayMap;
    .param p2, "users"    # [Landroid/content/pm/UserInfo;

    .line 630
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 631
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 632
    const/4 v2, 0x0

    .line 633
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 632
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 631
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 635
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public synthetic lambda$updateShouldFilterCacheForPackage$3$AppsFilter(Ljava/lang/String;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "settings"    # Landroid/util/ArrayMap;
    .param p3, "users"    # [Landroid/content/pm/UserInfo;

    .line 646
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 647
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 646
    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/AppsFilter;->updateShouldFilterCacheForPackage(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;I)V

    .line 648
    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/AppsFilter$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/AppsFilter$1;-><init>(Lcom/android/server/pm/AppsFilter;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 493
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v0}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->onSystemReady()V

    .line 494
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mOverlayReferenceMapper:Lcom/android/server/om/OverlayReferenceMapper;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuildIfDeferred()V

    .line 495
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCache()V

    .line 496
    return-void
.end method

.method public onUsersChanged()V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/android/server/pm/AppsFilter;->updateEntireShouldFilterCache()V

    .line 642
    :cond_0
    return-void
.end method

.method public removePackage(Lcom/android/server/pm/PackageSetting;)V
    .locals 2
    .param p1, "setting"    # Lcom/android/server/pm/PackageSetting;

    .line 807
    iget-object v0, p0, Lcom/android/server/pm/AppsFilter;->mStateProvider:Lcom/android/server/pm/AppsFilter$StateProvider;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$AppsFilter$iCEshkmztPQoSJ94jnU6R-OhYUg;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$AppsFilter$iCEshkmztPQoSJ94jnU6R-OhYUg;-><init>(Lcom/android/server/pm/AppsFilter;Lcom/android/server/pm/PackageSetting;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/AppsFilter$StateProvider;->runWithState(Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;)V

    .line 869
    return-void
.end method

.method public shouldFilterApplication(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z
    .locals 10
    .param p1, "callingUid"    # I
    .param p2, "callingSetting"    # Lcom/android/server/pm/SettingBase;
    .param p3, "targetPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p4, "userId"    # I

    .line 883
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "shouldFilterApplication"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 885
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 886
    .local v2, "callingAppId":I
    const/16 v3, 0x2710

    const/4 v4, 0x0

    if-lt v2, v3, :cond_7

    iget v5, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-lt v5, v3, :cond_7

    iget v3, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v2, v3, :cond_0

    goto/16 :goto_1

    .line 891
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 892
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mShouldFilterCache:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 893
    .local v3, "shouldFilterTargets":Landroid/util/SparseBooleanArray;
    iget v6, p3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {p4, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 894
    .local v6, "targetUid":I
    const-string v7, "AppsFilter"

    if-nez v3, :cond_1

    .line 895
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered calling uid with no cached rules: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    nop

    .line 918
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 896
    return v5

    .line 898
    :cond_1
    :try_start_2
    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v8

    .line 899
    .local v8, "indexOfTargetUid":I
    if-gez v8, :cond_2

    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Encountered calling -> target with no cached rules: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 902
    nop

    .line 918
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 902
    return v5

    .line 904
    :cond_2
    :try_start_3
    invoke-virtual {v3, v8}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_3

    .line 905
    nop

    .line 918
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 905
    return v4

    .line 907
    .end local v3    # "shouldFilterTargets":Landroid/util/SparseBooleanArray;
    .end local v6    # "targetUid":I
    .end local v8    # "indexOfTargetUid":I
    :cond_3
    goto :goto_0

    .line 908
    :cond_4
    :try_start_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/AppsFilter;->shouldFilterApplicationInternal(ILcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;I)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v3, :cond_5

    .line 910
    nop

    .line 918
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 910
    return v4

    .line 913
    :cond_5
    :goto_0
    :try_start_5
    iget-object v3, p0, Lcom/android/server/pm/AppsFilter;->mFeatureConfig:Lcom/android/server/pm/AppsFilter$FeatureConfig;

    invoke-interface {v3, v2}, Lcom/android/server/pm/AppsFilter$FeatureConfig;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 914
    const-string v3, "BLOCKED"

    invoke-static {p2, p3, v3}, Lcom/android/server/pm/AppsFilter;->log(Lcom/android/server/pm/SettingBase;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 916
    :cond_6
    nop

    .line 918
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 916
    return v5

    .line 889
    :cond_7
    :goto_1
    nop

    .line 918
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 889
    return v4

    .line 918
    .end local v2    # "callingAppId":I
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 919
    throw v2
.end method
