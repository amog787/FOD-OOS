.class public Lcom/android/server/pm/PackageKeySetData;
.super Ljava/lang/Object;
.source "PackageKeySetData.java"


# static fields
.field static final KEYSET_UNASSIGNED:J = -0x1L


# instance fields
.field private final mKeySetAliases:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mProperSigningKeySet:J

.field private mUpgradeKeySets:[J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageKeySetData;)V
    .locals 2
    .param p1, "original"    # Lcom/android/server/pm/PackageKeySetData;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 41
    iget-wide v0, p1, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    .line 42
    iget-object v0, p1, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 43
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected addDefinedKeySet(JLjava/lang/String;)V
    .locals 2
    .param p1, "ks"    # J
    .param p3, "alias"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method protected addUpgradeKeySet(Ljava/lang/String;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 56
    if-nez p1, :cond_0

    .line 57
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 62
    .local v0, "ks":Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 63
    iget-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 68
    return-void

    .line 65
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrade keyset alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "does not refer to a defined keyset alias!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected addUpgradeKeySetById(J)V
    .locals 1
    .param p1, "ks"    # J

    .line 76
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 77
    return-void
.end method

.method protected getAliases()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    return-object v0
.end method

.method protected getProperSigningKeySet()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    return-wide v0
.end method

.method protected getUpgradeKeySets()[J
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    return-object v0
.end method

.method protected isUsingDefinedKeySets()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isUsingUpgradeKeySets()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected removeAllDefinedKeySets()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->erase()V

    .line 110
    return-void
.end method

.method protected removeAllUpgradeKeySets()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 81
    return-void
.end method

.method protected setAliases(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "newAliases":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageKeySetData;->removeAllDefinedKeySets()V

    .line 101
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method protected setProperSigningKeySet(J)V
    .locals 0
    .param p1, "ks"    # J

    .line 47
    iput-wide p1, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    .line 48
    return-void
.end method
