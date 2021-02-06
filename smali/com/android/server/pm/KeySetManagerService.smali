.class public Lcom/android/server/pm/KeySetManagerService;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x1

.field public static final FIRST_VERSION:I = 0x1

.field public static final KEYSET_NOT_FOUND:J = -0x1L

.field protected static final PUBLIC_KEY_NOT_FOUND:J = -0x1L

.field static final TAG:Ljava/lang/String; = "KeySetManagerService"


# instance fields
.field private lastIssuedKeyId:J

.field private lastIssuedKeySetId:J

.field protected final mKeySetMapping:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKeySets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/pm/KeySetHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublicKeys:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 71
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 117
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 118
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 119
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 120
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    .line 121
    return-void
.end method

.method private addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Lcom/android/server/pm/KeySetHandle;"
        }
    .end annotation

    .line 431
    .local p1, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 437
    .local v0, "addedKeyIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 438
    .local v1, "kSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 439
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    invoke-direct {p0, v3}, Lcom/android/server/pm/KeySetManagerService;->addPublicKeyLPw(Ljava/security/PublicKey;)J

    move-result-wide v3

    .line 440
    .local v3, "id":J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v3    # "id":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 444
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManagerService;->getIdFromKeyIdsLPr(Ljava/util/Set;)J

    move-result-wide v2

    .line 445
    .local v2, "existingKeySetId":J
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 448
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 449
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    .line 448
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 451
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetHandle;

    .line 452
    .local v4, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v4}, Lcom/android/server/pm/KeySetHandle;->incrRefCountLPw()V

    .line 453
    return-object v4

    .line 457
    .end local v4    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreeKeySetIDLPw()J

    move-result-wide v4

    .line 460
    .local v4, "id":J
    new-instance v6, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v6, v4, v5}, Lcom/android/server/pm/KeySetHandle;-><init>(J)V

    .line 461
    .local v6, "ks":Lcom/android/server/pm/KeySetHandle;
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v4, v5, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 462
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 463
    return-object v6

    .line 432
    .end local v0    # "addedKeyIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v1    # "kSize":I
    .end local v2    # "existingKeySetId":J
    .end local v4    # "id":J
    .end local v6    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add an empty set of keys!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addPublicKeyLPw(Ljava/security/PublicKey;)J
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;

    .line 507
    const-string v0, "Cannot add null public key!"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 508
    invoke-direct {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->getIdForPublicKeyLPr(Ljava/security/PublicKey;)J

    move-result-wide v0

    .line 509
    .local v0, "id":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v2}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    .line 513
    return-wide v0

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreePublicKeyIdLPw()J

    move-result-wide v0

    .line 518
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    new-instance v3, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 519
    return-wide v0
.end method

.method private addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 818
    .local p1, "keySetRefCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 819
    .local v0, "numRefCounts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const-string v2, "KeySetManagerService"

    if-ge v1, v0, :cond_1

    .line 820
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/KeySetHandle;

    .line 821
    .local v3, "ks":Lcom/android/server/pm/KeySetHandle;
    if-nez v3, :cond_0

    .line 823
    const-string v4, "Encountered non-existent key-set reference when reading settings"

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    goto :goto_1

    .line 826
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/pm/KeySetHandle;->setRefCountLPw(I)V

    .line 819
    .end local v3    # "ks":Lcom/android/server/pm/KeySetHandle;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 835
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 836
    .local v1, "orphanedKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 837
    .local v3, "numKeySets":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_4

    .line 838
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v5}, Lcom/android/server/pm/KeySetHandle;->getRefCountLPr()I

    move-result v5

    if-nez v5, :cond_2

    .line 839
    const-string v5, "Encountered key-set w/out package references when reading settings"

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_2
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 843
    .local v5, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 844
    .local v6, "pkSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    if-ge v7, v6, :cond_3

    .line 845
    iget-object v8, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v8}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    .line 844
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 837
    .end local v5    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v6    # "pkSize":I
    .end local v7    # "j":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 848
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 849
    .local v2, "numOrphans":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v2, :cond_5

    .line 850
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 849
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 852
    .end local v4    # "i":I
    :cond_5
    return-void
.end method

.method private clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;

    .line 592
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .line 593
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllDefinedKeySets()V

    .line 594
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    .line 595
    return-void
.end method

.method private decrementKeySetLPw(J)V
    .locals 6
    .param p1, "id"    # J

    .line 472
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KeySetHandle;

    .line 473
    .local v0, "ks":Lcom/android/server/pm/KeySetHandle;
    if-nez v0, :cond_0

    .line 475
    return-void

    .line 477
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/KeySetHandle;->decrRefCountLPw()I

    move-result v1

    if-gtz v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 479
    .local v1, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 480
    .local v2, "pkSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 481
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    .line 480
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 483
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 484
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 486
    .end local v1    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v2    # "pkSize":I
    :cond_2
    return-void
.end method

.method private decrementPublicKeyLPw(J)V
    .locals 5
    .param p1, "id"    # J

    .line 493
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 494
    .local v0, "pk":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    if-nez v0, :cond_0

    .line 496
    return-void

    .line 498
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->decrRefCountLPw()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 499
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 501
    :cond_1
    return-void
.end method

.method private getFreeKeySetIDLPw()J
    .locals 4

    .line 556
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 557
    return-wide v0
.end method

.method private getFreePublicKeyIdLPw()J
    .locals 4

    .line 564
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 565
    return-wide v0
.end method

.method private getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J
    .locals 4
    .param p1, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .line 270
    const/4 v0, 0x0

    .local v0, "keySetIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    .line 272
    .local v1, "value":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    return-wide v2

    .line 270
    .end local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "keySetIndex":I
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getIdForPublicKeyLPr(Ljava/security/PublicKey;)J
    .locals 6
    .param p1, "k"    # Ljava/security/PublicKey;

    .line 541
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 542
    .local v0, "encodedPublicKey":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "publicKeyIndex":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v2}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 544
    .local v2, "value":Ljava/security/PublicKey;
    new-instance v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 545
    .local v3, "encodedExistingKey":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 546
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    return-wide v4

    .line 542
    .end local v2    # "value":Ljava/security/PublicKey;
    .end local v3    # "encodedExistingKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v1    # "publicKeyIndex":I
    :cond_1
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private getIdFromKeyIdsLPr(Ljava/util/Set;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 528
    .local p1, "publicKeyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "keyMapIndex":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 530
    .local v1, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    return-wide v2

    .line 528
    .end local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "keyMapIndex":I
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    .locals 9
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .line 285
    .local p2, "definedMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    .line 288
    .local v0, "prevDefinedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 289
    .local v1, "newKeySetAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 290
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 291
    .local v4, "alias":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 292
    .local v5, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 293
    invoke-direct {p0, v5}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v6

    .line 294
    .local v6, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v6}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    .end local v4    # "alias":Ljava/lang/String;
    .end local v5    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    .end local v6    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_0
    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 300
    .local v2, "prevDefSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 301
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 300
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 303
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    .line 306
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/PackageKeySetData;->setAliases(Ljava/util/Map;)V

    .line 307
    return-void
.end method

.method public addScannedPackageLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 222
    const-string v0, "Attempted to add null pkg to ksms."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 225
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "does not have a corresponding entry in mPackages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V

    .line 228
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V

    .line 230
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUpgradeKeySets()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUpgradeKeySets()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Set;)V

    .line 234
    :cond_0
    return-void
.end method

.method addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V
    .locals 6
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p2, "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v0

    .line 245
    .local v0, "signingKeySetId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    move-result-object v2

    .line 247
    .local v2, "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    return-void

    .line 254
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 259
    .end local v2    # "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v2

    .line 260
    .local v2, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v2}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v3

    .line 261
    .local v3, "id":J
    iget-object v5, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .line 262
    return-void
.end method

.method addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Set;)V
    .locals 3
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 317
    .local p2, "upgradeAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    .local v1, "upgradeAlias":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySet(Ljava/lang/String;)V

    .line 319
    .end local v1    # "upgradeAlias":Ljava/lang/String;
    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method public assertScannedPackageValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 7
    .param p1, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 190
    const/4 v0, -0x2

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 194
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    .line 195
    .local v1, "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 199
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getKeySetMapping()Ljava/util/Map;

    move-result-object v3

    .line 200
    .local v3, "definedMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    if-eqz v3, :cond_2

    .line 201
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 205
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 206
    .local v5, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    .end local v5    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    goto :goto_0

    .line 207
    .restart local v5    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_0
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Package has null/no public keys for defined key-sets."

    invoke-direct {v2, v0, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 202
    .end local v5    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v4, "Package has null defined key set."

    invoke-direct {v2, v0, v4}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 212
    :cond_2
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUpgradeKeySets()Ljava/util/Set;

    move-result-object v2

    .line 213
    .local v2, "upgradeAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    .line 214
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 215
    :cond_3
    new-instance v4, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "Package has upgrade-key-sets without corresponding definitions."

    invoke-direct {v4, v0, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 219
    :cond_4
    :goto_1
    return-void

    .line 196
    .end local v2    # "upgradeAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "definedMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    :cond_5
    new-instance v2, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Package has invalid signing-key-set."

    invoke-direct {v2, v0, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 191
    .end local v1    # "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_6
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v2, "Passed invalid package to keyset validation."

    invoke-direct {v1, v0, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public checkUpgradeKeySetLocked(Lcom/android/server/pm/PackageSettingBase;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .locals 4
    .param p1, "oldPS"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 368
    iget-object v0, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    .line 369
    .local v0, "upgradeKeySets":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 370
    aget-wide v2, v0, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    move-result-object v2

    .line 371
    .local v2, "upgradeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    if-eqz v2, :cond_0

    .line 372
    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->publicKeys:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    const/4 v3, 0x1

    return v3

    .line 369
    .end local v2    # "upgradeSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/PublicKey;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/DumpState;

    .line 604
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 605
    .local v2, "printedHeader":Z
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 606
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 607
    .local v6, "keySetPackage":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 608
    goto :goto_0

    .line 610
    :cond_0
    if-nez v2, :cond_2

    .line 611
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 612
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 613
    :cond_1
    const-string v7, "Key Set Manager:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    const/4 v2, 0x1

    .line 616
    :cond_2
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    .line 617
    .local v7, "pkg":Lcom/android/server/pm/PackageSetting;
    const-string v8, "  ["

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v8, :cond_b

    .line 619
    const/4 v8, 0x0

    .line 620
    .local v8, "printedLabel":Z
    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, ", "

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 621
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v8, :cond_3

    .line 622
    const-string v11, "      KeySets Aliases: "

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    const/4 v8, 0x1

    goto :goto_2

    .line 625
    :cond_3
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    :goto_2
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    const/16 v11, 0x3d

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(C)V

    .line 629
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_1

    .line 631
    :cond_4
    const-string v9, ""

    if-eqz v8, :cond_5

    .line 632
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    :cond_5
    const/4 v8, 0x0

    .line 635
    iget-object v10, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageKeySetData;->isUsingDefinedKeySets()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 636
    iget-object v10, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v10

    .line 637
    .local v10, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 638
    .local v12, "dksSize":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    if-ge v13, v12, :cond_7

    .line 639
    if-nez v8, :cond_6

    .line 640
    const-string v14, "      Defined KeySets: "

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    const/4 v8, 0x1

    goto :goto_4

    .line 643
    :cond_6
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 645
    :goto_4
    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 648
    .end local v10    # "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v12    # "dksSize":I
    .end local v13    # "i":I
    :cond_7
    if-eqz v8, :cond_8

    .line 649
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    :cond_8
    const/4 v8, 0x0

    .line 652
    iget-object v10, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v12

    .line 653
    .local v12, "signingKeySet":J
    const-string v10, "      Signing KeySets: "

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 654
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    iget-object v10, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 657
    iget-object v10, v7, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v10

    array-length v14, v10

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_a

    aget-wide v16, v10, v15

    .line 658
    .local v16, "keySetId":J
    if-nez v8, :cond_9

    .line 659
    const-string v1, "      Upgrade KeySets: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    const/4 v8, 0x1

    goto :goto_6

    .line 662
    :cond_9
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    :goto_6
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    .end local v16    # "keySetId":J
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p2

    goto :goto_5

    .line 667
    :cond_a
    if-eqz v8, :cond_b

    .line 668
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v6    # "keySetPackage":Ljava/lang/String;
    .end local v7    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "printedLabel":Z
    .end local v12    # "signingKeySet":J
    :cond_b
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 672
    :cond_c
    return-void
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 3
    .param p1, "k"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 599
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 329
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v1, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 333
    .local v1, "keySetId":Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 336
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetHandle;

    return-object v2

    .line 334
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown KeySet alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    .end local v1    # "keySetId":Ljava/lang/Long;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;
    .locals 7
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 388
    .local v0, "pkIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 389
    const/4 v1, 0x0

    return-object v1

    .line 391
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 392
    .local v1, "mPubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 393
    .local v2, "pkSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 394
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 393
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 408
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 410
    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    return-object v1

    .line 412
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isIdValidKeySetId(J)Z
    .locals 1
    .param p1, "id"    # J

    .line 341
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .line 161
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 162
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_2

    .line 165
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 166
    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 170
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v1

    .line 171
    .local v1, "id":J
    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 172
    const/4 v3, 0x0

    return v3

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 175
    .local v3, "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 176
    .local v4, "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5

    .line 168
    .end local v1    # "id":J
    .end local v3    # "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v4    # "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Package has no KeySet data"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Invalid package name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .line 135
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 136
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_2

    .line 139
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v1, :cond_1

    .line 142
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v1

    .line 143
    .local v1, "id":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 144
    const/4 v3, 0x0

    return v3

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    iget-object v4, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 147
    .local v3, "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 148
    .local v4, "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    return v5

    .line 140
    .end local v1    # "id":J
    .end local v3    # "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    .end local v4    # "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Package has no KeySet data"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Invalid package name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 780
    .local v0, "outerDepth":I
    const-wide/16 v1, 0x0

    .line 781
    .local v1, "currentKeySetId":J
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v3, 0x3

    if-ne v4, v3, :cond_1

    .line 782
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_5

    .line 783
    :cond_1
    if-eq v4, v3, :cond_0

    const/4 v3, 0x4

    if-ne v4, v3, :cond_2

    .line 784
    goto :goto_0

    .line 786
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "keyset"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "identifier"

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    .line 788
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 789
    .local v5, "encodedID":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 790
    const/4 v6, 0x0

    .line 791
    .local v6, "refCount":I
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v8, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v8, v1, v2, v6}, Lcom/android/server/pm/KeySetHandle;-><init>(JI)V

    invoke-virtual {v7, v1, v2, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 792
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v7, v1, v2, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 793
    .end local v5    # "encodedID":Ljava/lang/String;
    .end local v6    # "refCount":I
    :cond_3
    goto :goto_1

    :cond_4
    const-string/jumbo v5, "key-id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 794
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 795
    .restart local v5    # "encodedID":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 796
    .local v6, "id":J
    iget-object v8, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 798
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "encodedID":Ljava/lang/String;
    .end local v6    # "id":J
    :goto_1
    goto :goto_0

    .line 799
    :cond_5
    return-void
.end method

.method readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    .local p2, "keySetRefCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    .line 723
    .local v0, "currentKeySetId":J
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 724
    .local v2, "outerDepth":I
    const/4 v3, 0x0

    const-string/jumbo v4, "version"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 725
    .local v4, "recordedVersionStr":Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-nez v4, :cond_3

    .line 728
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v7, v3

    .local v7, "type":I
    if-eq v3, v5, :cond_1

    if-ne v7, v6, :cond_0

    .line 729
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 730
    goto :goto_0

    .line 734
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 735
    .local v5, "p":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, v5}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    .line 736
    .end local v5    # "p":Lcom/android/server/pm/PackageSetting;
    goto :goto_1

    .line 737
    :cond_2
    return-void

    .line 739
    .end local v7    # "type":I
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 740
    .local v7, "recordedVersion":I
    :cond_4
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "type":I
    if-eq v8, v5, :cond_b

    if-ne v9, v6, :cond_5

    .line 741
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_b

    .line 742
    :cond_5
    if-eq v9, v6, :cond_4

    const/4 v8, 0x4

    if-ne v9, v8, :cond_6

    .line 743
    goto :goto_2

    .line 745
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 746
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "keys"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 747
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 748
    :cond_7
    const-string/jumbo v10, "keysets"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 749
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 750
    :cond_8
    const-string/jumbo v10, "lastIssuedKeyId"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v11, "value"

    if-eqz v10, :cond_9

    .line 751
    invoke-interface {p1, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    goto :goto_3

    .line 752
    :cond_9
    const-string/jumbo v10, "lastIssuedKeySetId"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 753
    invoke-interface {p1, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 755
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_a
    :goto_3
    goto :goto_2

    .line 757
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V

    .line 758
    return-void
.end method

.method readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 764
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 765
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 766
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 767
    goto :goto_0

    .line 769
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "public-key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 771
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 773
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 774
    :cond_4
    return-void
.end method

.method readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 803
    const/4 v0, 0x0

    const-string v1, "identifier"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "encodedID":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 805
    .local v9, "identifier":J
    const/4 v11, 0x0

    .line 806
    .local v11, "refCount":I
    const-string/jumbo v2, "value"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "encodedPublicKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v12

    .line 808
    .local v12, "pub":Ljava/security/PublicKey;
    if-eqz v12, :cond_0

    .line 809
    new-instance v13, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, p0

    move-wide v4, v9

    move v6, v11

    move-object v7, v12

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService$1;)V

    .line 810
    .local v2, "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9, v10, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 812
    .end local v2    # "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    :cond_0
    return-void
.end method

.method public removeAppKeySetDataLPw(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 576
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 577
    .local v0, "pkg":Lcom/android/server/pm/PackageSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "does not have a corresponding entry in mPackages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 579
    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v1

    .line 580
    .local v1, "signingKeySetId":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 581
    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v3

    .line 582
    .local v3, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 583
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 582
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 587
    .end local v4    # "i":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    .line 588
    return-void
.end method

.method public shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/PackageSettingBase;I)Z
    .locals 6
    .param p1, "oldPs"    # Lcom/android/server/pm/PackageSettingBase;
    .param p2, "scanFlags"    # I

    .line 346
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    and-int/lit16 v1, p2, 0x200

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSettingBase;->isSharedUser()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    .line 347
    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 351
    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSettingBase;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v1

    .line 352
    .local v1, "upgradeKeySets":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 353
    aget-wide v3, v1, v2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/KeySetManagerService;->isIdValidKeySetId(J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v4, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/server/pm/PackageSettingBase;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v4, "<null>"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " contains upgrade-key-set reference to unknown key-set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, v1, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " reverting to signatures check."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 354
    const-string v4, "KeySetManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v0

    .line 352
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 348
    .end local v1    # "upgradeKeySets":[J
    :cond_4
    :goto_2
    return v0
.end method

.method writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 675
    const/4 v0, 0x0

    const-string/jumbo v1, "keyset-settings"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 676
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "version"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 677
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 678
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 679
    const-string/jumbo v2, "lastIssuedKeyId"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 680
    iget-wide v3, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 681
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 682
    const-string/jumbo v2, "lastIssuedKeySetId"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 683
    iget-wide v5, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 684
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 685
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 686
    return-void
.end method

.method writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 13
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    const/4 v0, 0x0

    const-string/jumbo v1, "keysets"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 704
    const/4 v2, 0x0

    .local v2, "keySetIndex":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 705
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 706
    .local v3, "id":J
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 707
    .local v5, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string/jumbo v6, "keyset"

    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 708
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "identifier"

    invoke-interface {p1, v0, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 709
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 710
    .local v9, "keyId":J
    const-string/jumbo v11, "key-id"

    invoke-interface {p1, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 711
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v0, v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    invoke-interface {p1, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    .end local v9    # "keyId":J
    goto :goto_1

    .line 714
    :cond_0
    invoke-interface {p1, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 704
    .end local v3    # "id":J
    .end local v5    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 716
    .end local v2    # "keySetIndex":I
    :cond_1
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 717
    return-void
.end method

.method writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 689
    const/4 v0, 0x0

    const-string/jumbo v1, "keys"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 690
    const/4 v2, 0x0

    .local v2, "pKeyIndex":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 691
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 692
    .local v3, "id":J
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 693
    .local v5, "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    invoke-virtual {v5}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/pm/KeySetManagerService;->encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v6

    .line 694
    .local v6, "encodedKey":Ljava/lang/String;
    const-string/jumbo v7, "public-key"

    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 695
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "identifier"

    invoke-interface {p1, v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 696
    const-string/jumbo v8, "value"

    invoke-interface {p1, v0, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 697
    invoke-interface {p1, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 690
    .end local v3    # "id":J
    .end local v5    # "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    .end local v6    # "encodedKey":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 699
    .end local v2    # "pKeyIndex":I
    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 700
    return-void
.end method
