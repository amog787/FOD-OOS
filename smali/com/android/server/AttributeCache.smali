.class public final Lcom/android/server/AttributeCache;
.super Ljava/lang/Object;
.source "AttributeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AttributeCache$Entry;,
        Lcom/android/server/AttributeCache$Package;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x4

.field private static sInstance:Lcom/android/server/AttributeCache;


# instance fields
.field private final mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mPackages:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/AttributeCache$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    .line 46
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    .line 85
    iput-object p1, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/server/AttributeCache;

    invoke-direct {v0, p0}, Lcom/android/server/AttributeCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    .line 78
    :cond_0
    return-void
.end method

.method public static instance()Lcom/android/server/AttributeCache;
    .locals 1

    .line 81
    sget-object v0, Lcom/android/server/AttributeCache;->sInstance:Lcom/android/server/AttributeCache;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "styleable"    # [I
    .param p4, "userId"    # I

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AttributeCache$Package;

    .line 122
    .local v0, "pkg":Lcom/android/server/AttributeCache$Package;
    const/4 v1, 0x0

    .line 123
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v2, 0x0

    .line 124
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {v0}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move-object v1, v4

    .line 126
    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AttributeCache$Entry;

    move-object v2, v4

    .line 128
    if-eqz v2, :cond_2

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 135
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/AttributeCache;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .local v4, "context":Landroid/content/Context;
    if-nez v4, :cond_1

    .line 138
    :try_start_2
    monitor-exit p0

    return-object v3

    .line 142
    :cond_1
    nop

    .line 143
    new-instance v5, Lcom/android/server/AttributeCache$Package;

    invoke-direct {v5, v4}, Lcom/android/server/AttributeCache$Package;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    .line 144
    iget-object v5, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v5, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v4    # "context":Landroid/content/Context;
    :cond_2
    if-nez v1, :cond_3

    .line 148
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v4

    .line 149
    invoke-static {v0}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :cond_3
    :try_start_3
    new-instance v4, Lcom/android/server/AttributeCache$Entry;

    iget-object v5, v0, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    .line 154
    invoke-virtual {v6, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/server/AttributeCache$Entry;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    move-object v2, v4

    .line 155
    invoke-virtual {v1, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    nop

    .line 160
    :try_start_4
    monitor-exit p0

    return-object v2

    .line 156
    :catch_0
    move-exception v4

    .line 157
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    monitor-exit p0

    return-object v3

    .line 140
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v4

    .line 141
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    monitor-exit p0

    return-object v3

    .line 161
    .end local v0    # "pkg":Lcom/android/server/AttributeCache$Package;
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AttributeCache$Package;

    .line 91
    .local v0, "pkg":Lcom/android/server/AttributeCache$Package;
    if-eqz v0, :cond_2

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {v0}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 93
    invoke-static {v0}, Lcom/android/server/AttributeCache$Package;->access$000(Lcom/android/server/AttributeCache$Package;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 94
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 95
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AttributeCache$Entry;

    invoke-virtual {v4}, Lcom/android/server/AttributeCache$Entry;->recycle()V

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 92
    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<[ILcom/android/server/AttributeCache$Entry;>;"
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    :cond_1
    iget-object v1, v0, Lcom/android/server/AttributeCache$Package;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 100
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->flushLayoutCache()V

    .line 102
    .end local v0    # "pkg":Lcom/android/server/AttributeCache$Package;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_2
    monitor-exit p0

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AttributeCache;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 108
    .local v0, "changes":I
    const v1, -0x400000a1    # -1.9999808f

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/server/AttributeCache;->mPackages:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 116
    .end local v0    # "changes":I
    :cond_0
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
