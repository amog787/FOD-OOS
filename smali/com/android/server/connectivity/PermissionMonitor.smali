.class public Lcom/android/server/connectivity/PermissionMonitor;
.super Ljava/lang/Object;
.source "PermissionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field protected static final NETWORK:Ljava/lang/Boolean;

.field protected static final SYSTEM:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "PermissionMonitor"

.field private static final VERSION_Q:I = 0x1d


# instance fields
.field private final mAllApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetd:Landroid/net/INetd;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVpnUidRanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    .line 79
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/INetd;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netd"    # Landroid/net/INetd;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 145
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    .line 146
    iput-object p2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PermissionMonitor;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;

    .line 75
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PermissionMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([Ljava/lang/String;[I)I
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # [I

    .line 75
    invoke-static {p0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->getNetdPermissionMask([Ljava/lang/String;[I)I

    move-result v0

    return v0
.end method

.method private static getNetdPermissionMask([Ljava/lang/String;[I)I
    .locals 4
    .param p0, "requestedPermissions"    # [Ljava/lang/String;
    .param p1, "requestedPermissionsFlags"    # [I

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "permissions":I
    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 456
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 457
    aget-object v2, p0, v1

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget v2, p1, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 459
    or-int/lit8 v0, v0, 0x4

    .line 461
    :cond_1
    aget-object v2, p0, v1

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget v2, p1, v1

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 463
    or-int/lit8 v0, v0, 0x8

    .line 456
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    .end local v1    # "i":I
    :cond_3
    return v0

    .line 455
    :cond_4
    :goto_1
    return v0
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const v1, 0x401000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .local v0, "app":Landroid/content/pm/PackageInfo;
    return-object v0

    .line 474
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 534
    .local p1, "ranges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .local p2, "appIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 535
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    .line 536
    .local v2, "range":Landroid/net/UidRange;
    invoke-virtual {v2}, Landroid/net/UidRange;->getStartUser()I

    move-result v3

    .local v3, "userId":I
    :goto_1
    invoke-virtual {v2}, Landroid/net/UidRange;->getEndUser()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 537
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 538
    .local v5, "appId":I
    invoke-static {v3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 539
    .local v6, "uid":I
    invoke-virtual {v2, v6}, Landroid/net/UidRange;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 540
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 542
    .end local v5    # "appId":I
    .end local v6    # "uid":I
    :cond_0
    goto :goto_2

    .line 536
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 544
    .end local v2    # "range":Landroid/net/UidRange;
    .end local v3    # "userId":I
    :cond_2
    goto :goto_0

    .line 545
    :cond_3
    return-object v0
.end method

.method static isVendorApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 223
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isOem()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

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

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 700
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 705
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-void
.end method

.method private static loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 709
    const-string v0, "PermissionMonitor"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    return-void
.end method

.method private removeBypassingUids(Ljava/util/Set;I)V
    .locals 1
    .param p2, "vpnAppUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 558
    .local p1, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 559
    new-instance v0, Lcom/android/server/connectivity/-$$Lambda$PermissionMonitor$h-GPsXXwaQ-Mfu5-dqCp_VIYNOM;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/-$$Lambda$PermissionMonitor$h-GPsXXwaQ-Mfu5-dqCp_VIYNOM;-><init>(Lcom/android/server/connectivity/PermissionMonitor;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 560
    return-void
.end method

.method private toIntArray(Ljava/util/Collection;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 279
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 280
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 281
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 282
    .local v3, "item":Ljava/lang/Integer;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    .line 283
    .end local v3    # "item":Ljava/lang/Integer;
    move v1, v4

    goto :goto_0

    .line 284
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private update(Ljava/util/Set;Ljava/util/Map;Z)V
    .locals 8
    .param p3, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 288
    .local p1, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "network":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v1, "system":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 291
    .local v3, "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    goto :goto_1

    :cond_0
    move-object v4, v0

    .line 292
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 293
    .local v6, "user":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v6    # "user":I
    goto :goto_2

    .line 295
    .end local v3    # "app":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 297
    :cond_2
    if-eqz p3, :cond_3

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const/4 v3, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    .line 299
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const/4 v3, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/net/INetd;->networkSetPermissionForUser(I[I)V

    goto :goto_3

    .line 301
    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/INetd;->networkClearPermissionForUser([I)V

    .line 302
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/net/INetd;->networkClearPermissionForUser([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_3
    goto :goto_4

    .line 304
    :catch_0
    move-exception v2

    .line 305
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when updating permissions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 307
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void
.end method

.method private updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p3, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 574
    .local p2, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 575
    return-void

    .line 578
    :cond_0
    const-string v0, "Exception when updating permissions: "

    if-eqz p3, :cond_1

    .line 579
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/net/INetd;->firewallAddUidInterfaceRules(Ljava/lang/String;[I)V

    goto :goto_0

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/PermissionMonitor;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/INetd;->firewallRemoveUidInterfaceRules([I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 583
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 586
    .local v1, "e":Landroid/os/ServiceSpecificException;
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->EOPNOTSUPP:I

    if-eq v2, v3, :cond_2

    .line 587
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    .end local v1    # "e":Landroid/os/ServiceSpecificException;
    :cond_2
    :goto_0
    nop

    .line 592
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 688
    const-string v0, "Interface filtering rules:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 690
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 691
    .local v1, "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UIDs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 694
    .end local v1    # "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    goto :goto_0

    .line 695
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 696
    return-void
.end method

.method protected getDeviceFirstSdkInt()I
    .locals 1

    .line 228
    sget v0, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    return v0
.end method

.method public getVpnUidRanges(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .line 243
    const-string v0, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z
    .locals 3
    .param p1, "app"    # Landroid/content/pm/PackageInfo;
    .param p2, "permission"    # Ljava/lang/String;

    .line 233
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v0, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 237
    .local v0, "index":I
    if-ltz v0, :cond_3

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 237
    :cond_3
    :goto_0
    return v1

    .line 234
    .end local v0    # "index":I
    :cond_4
    :goto_1
    return v1
.end method

.method hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z
    .locals 4
    .param p1, "app"    # Landroid/content/pm/PackageInfo;

    .line 250
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    const/16 v3, 0x1d

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/connectivity/PermissionMonitor;->getDeviceFirstSdkInt()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 254
    return v1

    .line 257
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v3, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 258
    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->isVendorApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    return v1

    .line 263
    :cond_1
    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    const-string v0, "android.permission.NETWORK_STACK"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 265
    const-string v0, "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasPermission(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 263
    :goto_1
    return v1
.end method

.method public declared-synchronized hasUseBackgroundNetworksPermission(I)Z
    .locals 2
    .param p1, "uid"    # I

    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 275
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "currentPermission"    # Ljava/lang/Boolean;
    .param p2, "name"    # Ljava/lang/String;

    .line 349
    sget-object v0, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    .line 350
    return-object p1

    .line 353
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 354
    .local v0, "app":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    .line 355
    .local v1, "isNetwork":Z
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    .line 356
    .local v2, "hasRestrictedPermission":Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 357
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    .line 362
    .end local v0    # "app":Landroid/content/pm/PackageInfo;
    .end local v1    # "isNetwork":Z
    .end local v2    # "hasRestrictedPermission":Z
    :cond_2
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameNotFoundException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 363
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object p1
.end method

.method public synthetic lambda$removeBypassingUids$0$PermissionMonitor(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "uid"    # Ljava/lang/Integer;

    .line 559
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    sget-object v1, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized onPackageAdded(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    monitor-enter p0

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 378
    .local v0, "permission":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v1, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    .line 389
    .end local v1    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 390
    .local v3, "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4, p2}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 391
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 392
    .local v4, "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 394
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v4, v2}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 396
    .end local v3    # "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    .end local v4    # "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 397
    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 376
    .end local v0    # "permission":Ljava/lang/Boolean;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPackageRemoved(I)V
    .locals 8
    .param p1, "uid"    # I

    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 412
    .local v1, "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, p1}, Landroid/net/UidRange;->containsUid(Ljava/util/Collection;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 414
    .local v3, "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 415
    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 416
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 418
    .end local v1    # "vpn":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Landroid/net/UidRange;>;>;"
    .end local v3    # "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_0
    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 424
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v0, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 426
    .local v1, "permission":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    .line 428
    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 429
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p0, v1, v6}, Lcom/android/server/connectivity/PermissionMonitor;->highestPermissionForUid(Ljava/lang/Boolean;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    move-object v1, v7

    .line 430
    sget-object v7, Lcom/android/server/connectivity/PermissionMonitor;->SYSTEM:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v7, :cond_3

    .line 434
    monitor-exit p0

    return-void

    .line 428
    .end local v6    # "name":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 438
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v4, :cond_5

    .line 440
    monitor-exit p0

    return-void

    .line 441
    .restart local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_5
    if-eqz v1, :cond_6

    .line 442
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    goto :goto_2

    .line 446
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_6
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v4, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-direct {p0, v4, v0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    :goto_2
    monitor-exit p0

    return-void

    .line 410
    .end local v0    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v1    # "permission":Ljava/lang/Boolean;
    .end local v3    # "packages":[Ljava/lang/String;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUserAdded(I)V
    .locals 3
    .param p1, "user"    # I

    monitor-enter p0

    .line 317
    if-gez p1, :cond_0

    .line 318
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    .line 321
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 324
    .local v0, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    monitor-exit p0

    return-void

    .line 316
    .end local v0    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p1    # "user":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUserRemoved(I)V
    .locals 3
    .param p1, "user"    # I

    monitor-enter p0

    .line 336
    if-gez p1, :cond_0

    .line 337
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid user in onUserRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 340
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 342
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 343
    .local v0, "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    monitor-exit p0

    return-void

    .line 335
    .end local v0    # "users":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p1    # "user":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onVpnUidRangesAdded(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;
    .param p3, "vpnAppUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I)V"
        }
    .end annotation

    .local p2, "rangesToAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-enter p0

    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 493
    .local v0, "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0, p3}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 494
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 495
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 498
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :goto_0
    monitor-exit p0

    return-void

    .line 491
    .end local v0    # "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "rangesToAdd":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local p3    # "vpnAppUid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onVpnUidRangesRemoved(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p3, "vpnAppUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;I)V"
        }
    .end annotation

    .local p2, "rangesToRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    monitor-enter p0

    .line 513
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-direct {p0, p2, v0}, Lcom/android/server/connectivity/PermissionMonitor;->intersectUids(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 514
    .local v0, "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0, v0, p3}, Lcom/android/server/connectivity/PermissionMonitor;->removeBypassingUids(Ljava/util/Set;I)V

    .line 515
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/PermissionMonitor;->updateVpnUids(Ljava/lang/String;Ljava/util/Set;Z)V

    .line 516
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 517
    .local v1, "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    if-nez v1, :cond_0

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to remove unknown vpn uid Range iface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return-void

    .line 521
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_0
    :try_start_1
    invoke-interface {v1, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 522
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 523
    iget-object v2, p0, Lcom/android/server/connectivity/PermissionMonitor;->mVpnUidRanges:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    :cond_1
    monitor-exit p0

    return-void

    .line 512
    .end local v0    # "changedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v1    # "existingRanges":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "rangesToRemove":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/UidRange;>;"
    .end local p3    # "vpnAppUid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendPackagePermissionsForUid(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "permissions"    # I

    .line 605
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 606
    .local v0, "netdPermissionsAppIds":Landroid/util/SparseIntArray;
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 607
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V

    .line 608
    return-void
.end method

.method sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V
    .locals 12
    .param p1, "netdPermissionsAppIds"    # Landroid/util/SparseIntArray;

    .line 621
    iget-object v0, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const-string v1, "PermissionMonitor"

    if-nez v0, :cond_0

    .line 622
    const-string v0, "Failed to get the netd service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .line 625
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v0, "allPermissionAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v2, "internetPermissionAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .local v3, "updateStatsPermissionAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v4, "noPermissionAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v5, "uninstalledAppIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    const/16 v8, 0xc

    const/16 v9, 0x8

    const/4 v10, 0x4

    const/4 v11, -0x1

    if-ge v6, v7, :cond_6

    .line 631
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    .line 632
    .local v7, "permissions":I
    if-eq v7, v11, :cond_5

    if-eqz v7, :cond_4

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_1

    goto :goto_1

    .line 634
    :cond_1
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    goto :goto_2

    .line 640
    :cond_2
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    goto :goto_2

    .line 637
    :cond_3
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    goto :goto_2

    .line 643
    :cond_4
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    goto :goto_2

    .line 646
    :cond_5
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown permission type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "for uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {p1, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 648
    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v7    # "permissions":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 654
    .end local v6    # "i":I
    :cond_6
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_7

    .line 655
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 657
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    .line 655
    invoke-interface {v6, v8, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 659
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_8

    .line 660
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 661
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    .line 660
    invoke-interface {v6, v10, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 663
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_9

    .line 664
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 665
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    .line 664
    invoke-interface {v6, v9, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 667
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_a

    .line 668
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    const/4 v7, 0x0

    .line 669
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v8

    .line 668
    invoke-interface {v6, v7, v8}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V

    .line 671
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_b

    .line 672
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mNetd:Landroid/net/INetd;

    .line 673
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v7

    .line 672
    invoke-interface {v6, v11, v7}, Landroid/net/INetd;->trafficSetNetPermForUids(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :cond_b
    goto :goto_3

    .line 675
    :catch_0
    move-exception v6

    .line 676
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pass appId list of special permission failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_3
    return-void
.end method

.method public declared-synchronized startMonitoring()V
    .locals 12

    monitor-enter p0

    .line 152
    :try_start_0
    const-string v0, "Monitoring"

    invoke-static {v0}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 154
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 155
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    if-eqz v0, :cond_0

    .line 156
    new-instance v1, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/PermissionMonitor$PackageListObserver;-><init>(Lcom/android/server/connectivity/PermissionMonitor;Lcom/android/server/connectivity/PermissionMonitor$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    goto :goto_0

    .line 158
    .end local p0    # "this":Lcom/android/server/connectivity/PermissionMonitor;
    :cond_0
    const-string v1, "failed to get the PackageManagerInternal service"

    invoke-static {v1}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/PermissionMonitor;->mPackageManager:Landroid/content/pm/PackageManager;

    const v2, 0x401000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 162
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-nez v1, :cond_1

    .line 163
    const-string v2, "No apps"

    invoke-static {v2}, Lcom/android/server/connectivity/PermissionMonitor;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 167
    :cond_1
    :try_start_1
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 169
    .local v2, "netdPermsUids":Landroid/util/SparseIntArray;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 170
    .local v4, "app":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2

    :cond_2
    const/4 v5, -0x1

    .line 171
    .local v5, "uid":I
    :goto_2
    if-gez v5, :cond_3

    .line 172
    goto :goto_1

    .line 174
    :cond_3
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mAllApps:Ljava/util/Set;

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->hasNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    .line 177
    .local v6, "isNetwork":Z
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/PermissionMonitor;->hasRestrictedNetworkPermission(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    .line 179
    .local v7, "hasRestrictedPermission":Z
    if-nez v6, :cond_4

    if-eqz v7, :cond_6

    .line 180
    :cond_4
    iget-object v8, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 183
    .local v8, "permission":Ljava/lang/Boolean;
    if-eqz v8, :cond_5

    sget-object v9, Lcom/android/server/connectivity/PermissionMonitor;->NETWORK:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_6

    .line 184
    :cond_5
    iget-object v9, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v8    # "permission":Ljava/lang/Boolean;
    :cond_6
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    invoke-static {v8, v9}, Lcom/android/server/connectivity/PermissionMonitor;->getNetdPermissionMask([Ljava/lang/String;[I)I

    move-result v8

    .line 191
    .local v8, "otherNetdPerms":I
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    or-int/2addr v9, v8

    invoke-virtual {v2, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 192
    .end local v4    # "app":Landroid/content/pm/PackageInfo;
    .end local v5    # "uid":I
    .end local v6    # "isNetwork":Z
    .end local v7    # "hasRestrictedPermission":Z
    .end local v8    # "otherNetdPerms":I
    goto :goto_1

    .line 194
    :cond_7
    iget-object v3, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 195
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_8

    .line 196
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 197
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    nop

    .end local v6    # "user":Landroid/content/pm/UserInfo;
    goto :goto_3

    .line 202
    :cond_8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v5

    .line 203
    .local v5, "systemPermission":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 204
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 205
    .local v7, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 206
    .local v8, "uid":I
    const/4 v9, 0x0

    .line 208
    .local v9, "netdPermission":I
    if-eqz v7, :cond_b

    .line 209
    const-string v10, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_9

    .line 210
    const/16 v10, 0x8

    goto :goto_5

    :cond_9
    move v10, v11

    :goto_5
    or-int/2addr v9, v10

    .line 211
    const-string v10, "android.permission.INTERNET"

    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 212
    const/4 v11, 0x4

    goto :goto_6

    :cond_a
    nop

    :goto_6
    or-int/2addr v9, v11

    .line 214
    :cond_b
    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    or-int/2addr v10, v9

    invoke-virtual {v2, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    .end local v7    # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "uid":I
    .end local v9    # "netdPermission":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 216
    .end local v6    # "i":I
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Users: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", Apps: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/connectivity/PermissionMonitor;->log(Ljava/lang/String;)V

    .line 217
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor;->mUsers:Ljava/util/Set;

    iget-object v7, p0, Lcom/android/server/connectivity/PermissionMonitor;->mApps:Ljava/util/Map;

    invoke-direct {p0, v6, v7, v4}, Lcom/android/server/connectivity/PermissionMonitor;->update(Ljava/util/Set;Ljava/util/Map;Z)V

    .line 218
    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/PermissionMonitor;->sendPackagePermissionsToNetd(Landroid/util/SparseIntArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 151
    .end local v0    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "netdPermsUids":Landroid/util/SparseIntArray;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "systemPermission":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
