.class Lcom/android/server/utils/quota/UptcMap;
.super Ljava/lang/Object;
.source "UptcMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;
    }
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
.field private final mData:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    return-void
.end method

.method private getPackageNameAtIndex(II)Ljava/lang/String;
    .locals 1
    .param p1, "userIndex"    # I
    .param p2, "packageIndex"    # I

    .line 123
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTagAtIndex(III)Ljava/lang/String;
    .locals 1
    .param p1, "userIndex"    # I
    .param p2, "packageIndex"    # I
    .param p3, "tagIndex"    # I

    .line 131
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getUserIdAtIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 117
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$forEach$0(Ljava/util/function/Consumer;Landroid/util/ArrayMap;)V
    .locals 2
    .param p0, "consumer"    # Ljava/util/function/Consumer;
    .param p1, "tagMap"    # Landroid/util/ArrayMap;

    .line 159
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 160
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 159
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    .local p4, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 39
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-nez v0, :cond_0

    .line 40
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 41
    iget-object v1, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/String;Ljava/lang/Object;)V

    .line 43
    :cond_0
    invoke-virtual {v0, p3, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public clear()V
    .locals 1

    .line 47
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 48
    return-void
.end method

.method public contains(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 51
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public contains(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 57
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 58
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public delete(ILjava/lang/String;)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    return-object v0
.end method

.method public delete(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 63
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 64
    return-void
.end method

.method public delete(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 68
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 69
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/String;)Ljava/lang/Object;

    .line 75
    :cond_0
    return-void
.end method

.method public forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 166
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    .local p1, "consumer":Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;, "Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/utils/quota/UptcMap;->userCount()I

    move-result v0

    .line 167
    .local v0, "uCount":I
    const/4 v1, 0x0

    .local v1, "u":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 168
    invoke-direct {p0, v1}, Lcom/android/server/utils/quota/UptcMap;->getUserIdAtIndex(I)I

    move-result v2

    .line 170
    .local v2, "userId":I
    invoke-virtual {p0, v2}, Lcom/android/server/utils/quota/UptcMap;->packageCountForUser(I)I

    move-result v3

    .line 171
    .local v3, "pkgCount":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 172
    invoke-direct {p0, v1, v4}, Lcom/android/server/utils/quota/UptcMap;->getPackageNameAtIndex(II)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, v2, v5}, Lcom/android/server/utils/quota/UptcMap;->tagCountForUserAndPackage(ILjava/lang/String;)I

    move-result v6

    .line 175
    .local v6, "tagCount":I
    const/4 v7, 0x0

    .local v7, "t":I
    :goto_2
    if-ge v7, v6, :cond_0

    .line 176
    invoke-direct {p0, v1, v4, v7}, Lcom/android/server/utils/quota/UptcMap;->getTagAtIndex(III)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "tag":Ljava/lang/String;
    invoke-virtual {p0, v2, v5, v8}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v2, v5, v8, v9}, Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;->accept(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    .end local v8    # "tag":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 171
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "tagCount":I
    .end local v7    # "t":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 167
    .end local v2    # "userId":I
    .end local v3    # "pkgCount":I
    .end local v4    # "p":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "u":I
    :cond_2
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 158
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/utils/quota/-$$Lambda$UptcMap$VIYMMrjbnqShO606s52uuyAgdlU;

    invoke-direct {v1, p1}, Lcom/android/server/utils/quota/-$$Lambda$UptcMap$VIYMMrjbnqShO606s52uuyAgdlU;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 163
    return-void
.end method

.method public get(ILjava/lang/String;)Landroid/util/ArrayMap;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    return-object v0
.end method

.method public get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 95
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getOrCreate(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Void;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    .local p4, "creator":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Void;TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 106
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 108
    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    .local v1, "val":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/utils/quota/UptcMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    return-object v1
.end method

.method public packageCountForUser(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 141
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v0

    return v0
.end method

.method public tagCountForUserAndPackage(ILjava/lang/String;)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 146
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 147
    .local v0, "data":Landroid/util/ArrayMap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public userCount()I
    .locals 1

    .line 136
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    return v0
.end method

.method public valueAt(III)Ljava/lang/Object;
    .locals 2
    .param p1, "userIndex"    # I
    .param p2, "packageIndex"    # I
    .param p3, "tagIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)TT;"
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/android/server/utils/quota/UptcMap;, "Lcom/android/server/utils/quota/UptcMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/utils/quota/UptcMap;->mData:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 154
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
