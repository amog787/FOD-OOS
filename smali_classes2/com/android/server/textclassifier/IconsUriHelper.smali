.class public final Lcom/android/server/textclassifier/IconsUriHelper;
.super Ljava/lang/Object;
.source "IconsUriHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.textclassifier.icons"

.field private static final DEFAULT_ID_SUPPLIER:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IconsUriHelper"

.field private static final sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;


# instance fields
.field private final mIdSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    sget-object v0, Lcom/android/server/textclassifier/-$$Lambda$IconsUriHelper$xs4gzwHiyi5M-NRelcf1JWo71zo;->INSTANCE:Lcom/android/server/textclassifier/-$$Lambda$IconsUriHelper$xs4gzwHiyi5M-NRelcf1JWo71zo;

    sput-object v0, Lcom/android/server/textclassifier/IconsUriHelper;->DEFAULT_ID_SUPPLIER:Ljava/util/function/Supplier;

    .line 53
    new-instance v0, Lcom/android/server/textclassifier/IconsUriHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/textclassifier/IconsUriHelper;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/android/server/textclassifier/IconsUriHelper;->sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;

    return-void
.end method

.method private constructor <init>(Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "idSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    .line 56
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/textclassifier/IconsUriHelper;->DEFAULT_ID_SUPPLIER:Ljava/util/function/Supplier;

    :goto_0
    iput-object v0, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mIdSupplier:Ljava/util/function/Supplier;

    .line 62
    iget-object v0, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    const-string v1, "android"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method static getInstance()Lcom/android/server/textclassifier/IconsUriHelper;
    .locals 1

    .line 73
    sget-object v0, Lcom/android/server/textclassifier/IconsUriHelper;->sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;

    return-object v0
.end method

.method static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceForTesting(Ljava/util/function/Supplier;)Lcom/android/server/textclassifier/IconsUriHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/textclassifier/IconsUriHelper;"
        }
    .end annotation

    .line 69
    .local p0, "idSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/textclassifier/IconsUriHelper;

    invoke-direct {v0, p0}, Lcom/android/server/textclassifier/IconsUriHelper;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public getContentUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mIdSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 91
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "com.android.textclassifier.icons"

    .line 92
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    .line 93
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    monitor-exit v0

    .line 90
    return-object v1

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getResourceInfo(Landroid/net/Uri;)Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    return-object v1

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.textclassifier.icons"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    return-object v1

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "pathItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    .local v3, "packageId":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 119
    .local v4, "resId":I
    iget-object v5, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 120
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 121
    new-instance v5, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;

    invoke-direct {v5, v6, v4, v1}, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;-><init>(Ljava/lang/String;ILcom/android/server/textclassifier/IconsUriHelper$1;)V

    monitor-exit v2

    return-object v5

    .line 123
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 124
    .end local v3    # "packageId":Ljava/lang/String;
    .end local v4    # "resId":I
    :cond_3
    monitor-exit v2

    .line 127
    goto :goto_1

    .line 124
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "pathItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/textclassifier/IconsUriHelper;
    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    .restart local v0    # "pathItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/textclassifier/IconsUriHelper;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get resource info. Reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IconsUriHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method
