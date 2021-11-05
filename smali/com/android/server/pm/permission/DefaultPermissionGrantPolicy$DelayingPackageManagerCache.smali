.class Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;
.super Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayingPackageManagerCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    }
.end annotation


# instance fields
.field private mDelayedPermissionState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserContexts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V
    .locals 0

    .line 1753
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    .line 1755
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    .line 1758
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    .line 1760
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    .line 1762
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .param p2, "x1"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 1753
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 1753
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 4
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 1789
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1790
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1791
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    return-object v1

    .line 1794
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$000(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 1796
    .local v1, "uc":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1798
    return-object v1
.end method

.method private getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    .locals 11
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1803
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1804
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1803
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1805
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 1808
    .local v1, "uidIdx":I
    if-ltz v1, :cond_0

    .line 1809
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .local v2, "uidState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;>;"
    goto :goto_0

    .line 1811
    .end local v2    # "uidState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;>;"
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1812
    .restart local v2    # "uidState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1815
    :goto_0
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v3

    .line 1818
    .local v3, "permIdx":I
    if-ltz v3, :cond_1

    .line 1819
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    .local v4, "permState":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    goto :goto_1

    .line 1821
    .end local v4    # "permState":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    :cond_1
    new-instance v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    const/4 v10, 0x0

    move-object v5, v4

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;-><init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;)V

    .line 1822
    .restart local v4    # "permState":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    invoke-virtual {v2, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    :goto_1
    return-object v4
.end method


# virtual methods
.method addPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;

    .line 1785
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1786
    return-void
.end method

.method apply()V
    .locals 5

    .line 1768
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 1769
    const/4 v0, 0x0

    .local v0, "uidIdx":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1770
    const/4 v1, 0x0

    .local v1, "permIdx":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1773
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->apply()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    goto :goto_2

    .line 1774
    :catch_0
    move-exception v2

    .line 1775
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 1776
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mDelayedPermissionState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1775
    const-string v4, "DefaultPermGrantPolicy"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1771
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1769
    .end local v1    # "permIdx":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1781
    .end local v0    # "uidIdx":I
    :cond_1
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 1782
    return-void
.end method

.method public getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1883
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 1884
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1885
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    return-object v1

    .line 1888
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$300(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1889
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPackageInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    return-object v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1831
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    move-result-object v0

    .line 1832
    .local v0, "state":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initFlags()V

    .line 1833
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 1870
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 1871
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1872
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    return-object v1

    .line 1875
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->access$300(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$PackageManagerWrapper;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 1876
    .local v1, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mPermissionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    return-object v1
.end method

.method public grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1847
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    move-result-object v0

    .line 1848
    .local v0, "state":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initGranted()V

    .line 1849
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    .line 1850
    return-void
.end method

.method public isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1863
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    move-result-object v0

    .line 1864
    .local v0, "state":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initGranted()V

    .line 1865
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 1855
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    move-result-object v0

    .line 1856
    .local v0, "state":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initGranted()V

    .line 1857
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    .line 1858
    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pkg"    # Landroid/content/pm/PackageInfo;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 1839
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->getPermissionState(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;

    move-result-object v0

    .line 1840
    .local v0, "state":Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
    invoke-virtual {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->initFlags()V

    .line 1841
    iget-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int v2, p4, p3

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    .line 1842
    return-void
.end method
