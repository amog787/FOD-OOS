.class Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserPackageMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 123
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/job/controllers/QuotaController$1;

    .line 123
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 127
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    .local p3, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 128
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-nez v0, :cond_0

    .line 129
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 130
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public clear()V
    .locals 2

    .line 136
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public delete(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 143
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 144
    return-void
.end method

.method public delete(ILjava/lang/String;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 148
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 149
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_0
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 198
    .local v1, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_0

    .line 199
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 198
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 196
    .end local v1    # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public get(ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 157
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 160
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public indexOfKey(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 165
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public keyAt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 170
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public keyAt(II)Ljava/lang/String;
    .locals 1
    .param p1, "userIndex"    # I
    .param p2, "packageIndex"    # I

    .line 176
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public numPackagesForUser(I)I
    .locals 2
    .param p1, "userId"    # I

    .line 185
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 186
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public numUsers()I
    .locals 1

    .line 181
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public valueAt(II)Ljava/lang/Object;
    .locals 1
    .param p1, "userIndex"    # I
    .param p2, "packageIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
