.class Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;
.super Ljava/lang/Object;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/DexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageCodeLocations"
.end annotation


# instance fields
.field private final mAppDataDirs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBaseCodePath:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mSplitCodePaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;I)V
    .locals 3
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"    # I

    .line 831
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 832
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mergeAppDataDirs(Ljava/lang/String;I)V

    .line 833
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "splitCodePaths"    # [Ljava/lang/String;

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mPackageName:Ljava/lang/String;

    .line 837
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mSplitCodePaths:Ljava/util/Set;

    .line 838
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mAppDataDirs:Ljava/util/Map;

    .line 839
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->updateCodeLocation(Ljava/lang/String;[Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 823
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mPackageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public mergeAppDataDirs(Ljava/lang/String;I)V
    .locals 3
    .param p1, "dataDir"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 853
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mAppDataDirs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/dex/DexManager;->access$300(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 854
    .local v0, "dataDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 855
    return-void
.end method

.method public searchDex(Ljava/lang/String;I)I
    .locals 4
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 860
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mAppDataDirs:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 861
    .local v0, "userDataDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 862
    invoke-static {}, Lcom/android/server/pm/dex/DexManager;->access$400()I

    move-result v1

    return v1

    .line 865
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mBaseCodePath:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    invoke-static {}, Lcom/android/server/pm/dex/DexManager;->access$500()I

    move-result v1

    return v1

    .line 868
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mSplitCodePaths:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 869
    invoke-static {}, Lcom/android/server/pm/dex/DexManager;->access$600()I

    move-result v1

    return v1

    .line 871
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 872
    .local v2, "dataDir":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 873
    invoke-static {}, Lcom/android/server/pm/dex/DexManager;->access$700()I

    move-result v1

    return v1

    .line 875
    .end local v2    # "dataDir":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 877
    :cond_4
    invoke-static {}, Lcom/android/server/pm/dex/DexManager;->access$400()I

    move-result v1

    return v1
.end method

.method public updateCodeLocation(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "baseCodePath"    # Ljava/lang/String;
    .param p2, "splitCodePaths"    # [Ljava/lang/String;

    .line 843
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mBaseCodePath:Ljava/lang/String;

    .line 844
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mSplitCodePaths:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 845
    if-eqz p2, :cond_0

    .line 846
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 847
    .local v2, "split":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mSplitCodePaths:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 846
    .end local v2    # "split":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    :cond_0
    return-void
.end method
