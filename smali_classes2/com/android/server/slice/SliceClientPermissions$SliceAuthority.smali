.class public Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
.super Ljava/lang/Object;
.source "SliceClientPermissions.java"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker$Persistable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceClientPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliceAuthority"
.end annotation


# static fields
.field public static final DELIMITER:Ljava/lang/String; = "/"


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mPaths:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

.field private final mTracker:Lcom/android/server/slice/DirtyTracker;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "pkg"    # Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .param p3, "tracker"    # Lcom/android/server/slice/DirtyTracker;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 213
    iput-object p1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 214
    iput-object p2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 215
    iput-object p3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 205
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;)Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 205
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    return-object v0
.end method

.method private decodeSegments(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 322
    const-string v0, "/"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "sets":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 324
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private encodeSegments([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # [Ljava/lang/String;

    .line 314
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 315
    .local v0, "out":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 316
    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "i":I
    :cond_0
    const-string v1, "/"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "prefix"    # [Ljava/lang/String;
    .param p2, "path"    # [Ljava/lang/String;

    .line 271
    array-length v0, p1

    .line 272
    .local v0, "prefixSize":I
    array-length v1, p2

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    .line 274
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 275
    aget-object v3, p2, v1

    aget-object v4, p1, v1

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 276
    return v2

    .line 274
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$equals$0([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # [Ljava/lang/String;

    .line 339
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$equals$1([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # [Ljava/lang/String;

    .line 340
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pathToString$2([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # [Ljava/lang/String;

    .line 359
    const-string v0, "/"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pathToString(Landroid/util/ArraySet;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 359
    .local p1, "paths":Landroid/util/ArraySet;, "Landroid/util/ArraySet<[Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;->INSTANCE:Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$lvjy01xuWTQLCsbGw02qqI7DYDM;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 360
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 359
    const-string v1, ", "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addPath(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 228
    .local v0, "pathSegs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 229
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 230
    .local v2, "existing":[Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    iget-object v3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 228
    .end local v2    # "existing":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 238
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {v1, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 240
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 335
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 336
    .local v0, "other":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 337
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 338
    .local v2, "p1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    .local v3, "p2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$gfIfSC_15op1dWInvxEKC7DlOkg;->INSTANCE:Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$gfIfSC_15op1dWInvxEKC7DlOkg;

    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 340
    sget-object v4, Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$czFcrdPWpaFU7_jx7xCl0wMHBps;->INSTANCE:Lcom/android/server/slice/-$$Lambda$SliceClientPermissions$SliceAuthority$czFcrdPWpaFU7_jx7xCl0wMHBps;

    invoke-static {v4}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 341
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 342
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 343
    .local v5, "a1":[Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 344
    .local v6, "a2":[Ljava/lang/String;
    array-length v7, v5

    array-length v8, v6

    if-eq v7, v8, :cond_3

    return v1

    .line 345
    :cond_3
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    array-length v8, v5

    if-ge v7, v8, :cond_5

    .line 346
    aget-object v8, v5, v7

    aget-object v9, v6, v7

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    return v1

    .line 345
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 341
    .end local v5    # "a1":[Ljava/lang/String;
    .end local v6    # "a2":[Ljava/lang/String;
    .end local v7    # "j":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 349
    .end local v4    # "i":I
    :cond_6
    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    iget-object v5, v0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 350
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    nop

    .line 349
    :goto_3
    return v1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getPaths()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 258
    .end local p0    # "this":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPkg()Lcom/android/server/slice/SlicePermissionManager$PkgUser;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    return-object v0
.end method

.method public hasPermission(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 262
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 263
    .local v1, "p":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const/4 v0, 0x1

    return v0

    .line 266
    .end local v1    # "p":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 267
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized readFrom(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    monitor-enter p0

    .line 302
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 303
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 304
    .local v0, "depth":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 305
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "path"

    .line 306
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->decodeSegments(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 309
    .end local p0    # "this":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 311
    :cond_1
    monitor-exit p0

    return-void

    .line 301
    .end local v0    # "depth":I
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removePath(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 244
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 245
    .local v1, "pathSegs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 246
    iget-object v3, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 247
    .local v3, "existing":[Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 249
    iget-object v4, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 245
    .end local v3    # "existing":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 252
    .end local v2    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 253
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    invoke-interface {v2, p0}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 255
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 355
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-virtual {v1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-direct {p0, v1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->pathToString(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "(%s, %s: %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 290
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 292
    .local v2, "segments":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 293
    invoke-static {}, Lcom/android/server/slice/SliceClientPermissions;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "path"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    invoke-direct {p0, v2}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->encodeSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    invoke-static {}, Lcom/android/server/slice/SliceClientPermissions;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "path"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    .end local v2    # "segments":[Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    .end local v1    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 288
    .end local v0    # "N":I
    .end local p1    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
