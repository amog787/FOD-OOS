.class Lcom/android/server/content/SyncAdapterStateFetcher;
.super Ljava/lang/Object;
.source "SyncAdapterStateFetcher.java"


# instance fields
.field private final mBucketCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncAdapterStateFetcher;->mBucketCache:Ljava/util/HashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public getStandbyBucket(ILjava/lang/String;)I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 40
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncAdapterStateFetcher;->mBucketCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 41
    .local v1, "cached":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 44
    :cond_0
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 45
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 46
    .local v2, "usmi":Landroid/app/usage/UsageStatsManagerInternal;
    if-nez v2, :cond_1

    .line 47
    const/4 v3, -0x1

    return v3

    .line 50
    :cond_1
    nop

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 50
    invoke-virtual {v2, p2, p1, v3, v4}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v3

    .line 52
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/server/content/SyncAdapterStateFetcher;->mBucketCache:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return v3
.end method

.method public isAppActive(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 60
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 61
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 62
    .local v0, "ast":Lcom/android/server/AppStateTracker;
    if-nez v0, :cond_0

    .line 63
    const/4 v1, 0x0

    return v1

    .line 66
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v1

    return v1
.end method
