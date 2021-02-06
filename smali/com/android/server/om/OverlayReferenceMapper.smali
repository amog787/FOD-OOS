.class public Lcom/android/server/om/OverlayReferenceMapper;
.super Ljava/lang/Object;
.source "OverlayReferenceMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayReferenceMapper$Provider;
    }
.end annotation


# instance fields
.field private final mActorPkgToPkgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mActorToTargetToOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mDeferRebuild:Z

.field private final mLock:Ljava/lang/Object;

.field private final mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;


# direct methods
.method public constructor <init>(ZLcom/android/server/om/OverlayReferenceMapper$Provider;)V
    .locals 1
    .param p1, "deferRebuild"    # Z
    .param p2, "provider"    # Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Ljava/util/Map;

    .line 105
    iput-boolean p1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 106
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/om/OverlayReferenceMapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayReferenceMapper$1;-><init>(Lcom/android/server/om/OverlayReferenceMapper;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 134
    return-void
.end method

.method private addOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)V
    .locals 17
    .param p1, "overlayPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 259
    .local p2, "otherPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "overlay":Ljava/lang/String;
    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayReferenceMapper;->removeOverlay(Ljava/lang/String;)V

    .line 263
    iget-object v3, v1, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    move-object/from16 v4, p1

    :try_start_1
    invoke-interface {v3, v4}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getTargetToOverlayables(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;

    move-result-object v3

    .line 265
    .local v3, "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 266
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 267
    .local v7, "target":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    .local v8, "overlayables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v9, p2

    :try_start_2
    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 269
    .local v10, "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v10, :cond_0

    .line 270
    goto :goto_0

    .line 273
    :cond_0
    invoke-interface {v10}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 274
    .local v11, "targetPkgName":Ljava/lang/String;
    invoke-interface {v10}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    move-result-object v12

    .line 275
    .local v12, "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 276
    .local v14, "overlayable":Ljava/lang/String;
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 277
    .local v15, "actor":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 278
    goto :goto_1

    .line 280
    :cond_1
    invoke-direct {v1, v15, v11, v0}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .end local v14    # "overlayable":Ljava/lang/String;
    .end local v15    # "actor":Ljava/lang/String;
    goto :goto_1

    .line 282
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v7    # "target":Ljava/lang/String;
    .end local v8    # "overlayables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "targetPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v11    # "targetPkgName":Ljava/lang/String;
    .end local v12    # "overlayableToActor":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    goto :goto_0

    .line 265
    :cond_3
    move-object/from16 v9, p2

    .line 283
    .end local v0    # "overlay":Ljava/lang/String;
    .end local v3    # "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    monitor-exit v2

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v4, p1

    :goto_2
    move-object/from16 v9, p2

    :goto_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method private addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "actor"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "overlay"    # Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 342
    .local v1, "targetToOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v1, :cond_0

    .line 343
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 344
    iget-object v2, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 348
    .local v2, "overlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 349
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v2, v3

    .line 350
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    :cond_1
    invoke-interface {v2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    nop

    .end local v1    # "targetToOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v2    # "overlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addTarget(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)V
    .locals 11
    .param p1, "targetPkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 217
    .local p2, "otherPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "target":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/om/OverlayReferenceMapper;->removeTarget(Ljava/lang/String;)V

    .line 221
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    move-result-object v2

    .line 222
    .local v2, "overlayablesToActors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 223
    .local v4, "overlayable":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 224
    .local v5, "actor":Ljava/lang/String;
    invoke-direct {p0, v5, v1}, Lcom/android/server/om/OverlayReferenceMapper;->addTargetToMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 227
    .local v7, "overlayPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    iget-object v8, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    .line 228
    invoke-interface {v8, v7}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getTargetToOverlayables(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;

    move-result-object v8

    .line 229
    .local v8, "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 230
    .local v9, "overlayables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v9}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 231
    goto :goto_1

    .line 234
    :cond_0
    invoke-interface {v9, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 235
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v5, v1, v10}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlayToMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .end local v7    # "overlayPkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v8    # "targetToOverlayables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v9    # "overlayables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    goto :goto_1

    .line 238
    .end local v4    # "overlayable":Ljava/lang/String;
    .end local v5    # "actor":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 239
    .end local v1    # "target":Ljava/lang/String;
    .end local v2    # "overlayablesToActors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addTargetToMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "actor"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 327
    .local v0, "targetToOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 328
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 329
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 333
    .local v1, "overlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 334
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v1, v2

    .line 335
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_1
    return-void
.end method

.method private assertMapBuilt()V
    .locals 2

    .line 296
    iget-boolean v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-nez v0, :cond_0

    .line 300
    return-void

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The actor map must be built by calling rebuildIfDeferred before it is queried"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private rebuild()V
    .locals 9

    .line 303
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 305
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 306
    .local v2, "actor":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v3, v2}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getActorPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, "actorPkg":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    goto :goto_0

    .line 311
    :cond_0
    iget-object v4, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 312
    .local v4, "targetToOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 314
    .local v5, "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 315
    .local v7, "target":Ljava/lang/String;
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    .line 316
    .local v8, "overlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-interface {v5, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 318
    nop

    .end local v7    # "target":Ljava/lang/String;
    .end local v8    # "overlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 320
    :cond_1
    iget-object v6, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    nop

    .end local v2    # "actor":Ljava/lang/String;
    .end local v3    # "actorPkg":Ljava/lang/String;
    .end local v4    # "targetToOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v5    # "pkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_0

    .line 322
    :cond_2
    monitor-exit v0

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeOverlay(Ljava/lang/String;)V
    .locals 5
    .param p1, "overlay"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 245
    .local v2, "targetToOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 246
    .local v4, "overlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 247
    nop

    .end local v4    # "overlays":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 248
    .end local v2    # "targetToOverlays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    goto :goto_0

    .line 249
    :cond_1
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeTarget(Ljava/lang/String;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorToTargetToOverlays:Ljava/util/Map;

    .line 199
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 200
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 202
    .local v2, "next":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 206
    .end local v2    # "next":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    goto :goto_0

    .line 207
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_1
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addPkg(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)V
    .locals 2
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p2, "otherPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/pm/parsing/pkg/AndroidPackage;>;"
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getOverlayables()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayReferenceMapper;->addTarget(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mProvider:Lcom/android/server/om/OverlayReferenceMapper$Provider;

    invoke-interface {v1, p1}, Lcom/android/server/om/OverlayReferenceMapper$Provider;->getTargetToOverlayables(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayReferenceMapper;->addOverlay(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/Map;)V

    .line 172
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-nez v1, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    .line 175
    :cond_2
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getActorPkgToPkgs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Ljava/util/Map;

    return-object v0
.end method

.method public isValidActor(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "actorPackageName"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/om/OverlayReferenceMapper;->assertMapBuilt()V

    .line 148
    iget-object v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mActorPkgToPkgs:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 149
    .local v1, "validSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 150
    .end local v1    # "validSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public rebuildIfDeferred()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-eqz v1, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    .line 290
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    .line 292
    :cond_0
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePkg(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/android/server/om/OverlayReferenceMapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayReferenceMapper;->removeTarget(Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayReferenceMapper;->removeOverlay(Ljava/lang/String;)V

    .line 190
    iget-boolean v1, p0, Lcom/android/server/om/OverlayReferenceMapper;->mDeferRebuild:Z

    if-nez v1, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/server/om/OverlayReferenceMapper;->rebuild()V

    .line 193
    :cond_0
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
