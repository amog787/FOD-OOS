.class Lcom/android/server/locksettings/LockSettingsStorage$Cache;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

.field private mVersion:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 834
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;-><init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 835
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/locksettings/LockSettingsStorage$1;

    .line 832
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/locksettings/LockSettingsStorage$Cache;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsStorage$Cache;

    .line 832
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->getVersion()I

    move-result v0

    return v0
.end method

.method private declared-synchronized contains(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    monitor-enter p0

    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 900
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsStorage$Cache;
    .end local p1    # "type":I
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "userId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private copyOf([B)[B
    .locals 1
    .param p1, "data"    # [B

    .line 923
    if-eqz p1, :cond_0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private declared-synchronized getVersion()I
    .locals 1

    monitor-enter p0

    .line 908
    :try_start_0
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 908
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsStorage$Cache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized peek(ILjava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    monitor-enter p0

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 904
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsStorage$Cache;
    .end local p1    # "type":I
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "userId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized put(ILjava/lang/String;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I

    monitor-enter p0

    .line 888
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;-><init>(Lcom/android/server/locksettings/LockSettingsStorage$1;)V

    invoke-virtual {v1, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    monitor-exit p0

    return-void

    .line 887
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsStorage$Cache;
    .end local p1    # "type":I
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/Object;
    .end local p4    # "userId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I
    .param p5, "version"    # I

    monitor-enter p0

    .line 894
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    if-ne v0, p5, :cond_0

    .line 895
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsStorage$Cache;
    :cond_0
    monitor-exit p0

    return-void

    .line 893
    .end local p1    # "type":I
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "value":Ljava/lang/Object;
    .end local p4    # "userId":I
    .end local p5    # "version":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized remove(ILjava/lang/String;I)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    monitor-enter p0

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    monitor-exit p0

    return-void

    .line 882
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsStorage$Cache;
    .end local p1    # "type":I
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "userId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 937
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 938
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    monitor-exit p0

    return-void

    .line 936
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsStorage$Cache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method hasFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 863
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method hasKeyValue(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 843
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isFetched(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 879
    const/4 v0, 0x2

    const-string v1, ""

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method peekFile(Ljava/lang/String;)[B
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .line 859
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peek(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->copyOf([B)[B

    move-result-object v0

    return-object v0
.end method

.method peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 838
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->peek(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 839
    .local v0, "cached":Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsStorage;->access$400()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method declared-synchronized purgePath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 928
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    .line 929
    .local v2, "entry":Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;
    iget v3, v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->type:I

    if-ne v3, v1, :cond_0

    iget-object v3, v2, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 930
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 927
    .end local v2    # "entry":Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsStorage$Cache;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 933
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    monitor-exit p0

    return-void

    .line 926
    .end local p1    # "path":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method putFile(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 867
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->copyOf([B)[B

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 868
    return-void
.end method

.method putFileIfUnchanged(Ljava/lang/String;[BI)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "version"    # I

    .line 871
    invoke-direct {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->copyOf([B)[B

    move-result-object v3

    const/4 v1, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    .line 872
    return-void
.end method

.method putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 847
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 848
    return-void
.end method

.method putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "userId"    # I
    .param p4, "version"    # I

    .line 851
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    .line 852
    return-void
.end method

.method removeKey(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 855
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->remove(ILjava/lang/String;I)V

    .line 856
    return-void
.end method

.method declared-synchronized removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    monitor-enter p0

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 913
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;

    iget v1, v1, Lcom/android/server/locksettings/LockSettingsStorage$Cache$CacheKey;->userId:I

    if-ne v1, p1, :cond_0

    .line 914
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 912
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsStorage$Cache;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 919
    .end local v0    # "i":I
    :cond_1
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 920
    monitor-exit p0

    return-void

    .line 911
    .end local p1    # "userId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setFetched(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 875
    const/4 v0, 0x2

    const-string/jumbo v1, "isFetched"

    const-string/jumbo v2, "true"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 876
    return-void
.end method
