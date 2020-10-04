.class Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingPackageBroadcasts"
.end annotation


# instance fields
.field final mUidMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1308
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    .line 1309
    return-void
.end method

.method private getOrAllocate(I)Landroid/util/ArrayMap;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1358
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1359
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 1360
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 1361
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1363
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1354
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1355
    return-void
.end method

.method public get(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1312
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->getOrAllocate(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 1313
    .local v0, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public packagesForUserId(I)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1341
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    return-object v0
.end method

.method public put(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1317
    .local p3, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->getOrAllocate(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 1318
    .local v0, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    return-void
.end method

.method public remove(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 1329
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1330
    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1322
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1323
    .local v0, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v0, :cond_0

    .line 1324
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    :cond_0
    return-void
.end method

.method public size()I
    .locals 3

    .line 1346
    const/4 v0, 0x0

    .line 1347
    .local v0, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1348
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 1347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1350
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public userIdAt(I)I
    .locals 1
    .param p1, "n"    # I

    .line 1337
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public userIdCount()I
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
