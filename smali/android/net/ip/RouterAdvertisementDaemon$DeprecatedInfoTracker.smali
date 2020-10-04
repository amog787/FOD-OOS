.class Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeprecatedInfoTracker"
.end annotation


# instance fields
.field private final mDnses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/net/Inet6Address;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefixes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/IpPrefix;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon$1;

    .line 178
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    .line 178
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounters()Z

    move-result v0

    return v0
.end method

.method private decrementCounter(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/HashMap<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 219
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<TT;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 221
    .local v0, "removed":Z
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 224
    .local v2, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 226
    const/4 v0, 0x1

    goto :goto_1

    .line 228
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .end local v2    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;"
    :goto_1
    goto :goto_0

    .line 232
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TT;Ljava/lang/Integer;>;>;"
    :cond_1
    return v0
.end method

.method private decrementCounters()Z
    .locals 2

    .line 213
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounter(Ljava/util/HashMap;)Z

    move-result v0

    .line 214
    .local v0, "removed":Z
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->decrementCounter(Ljava/util/HashMap;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 215
    return v0
.end method


# virtual methods
.method getDnses()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getPrefixes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .line 210
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method putDnses(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "dnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 200
    .local v1, "dns":Ljava/net/Inet6Address;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .end local v1    # "dns":Ljava/net/Inet6Address;
    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method putPrefixes(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "prefixes":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpPrefix;

    .line 186
    .local v1, "ipp":Landroid/net/IpPrefix;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .end local v1    # "ipp":Landroid/net/IpPrefix;
    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method removeDnses(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p1, "dnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 206
    .local v1, "dns":Ljava/net/Inet6Address;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mDnses:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .end local v1    # "dns":Ljava/net/Inet6Address;
    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method removePrefixes(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p1, "prefixes":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpPrefix;

    .line 192
    .local v1, "ipp":Landroid/net/IpPrefix;
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->mPrefixes:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v1    # "ipp":Landroid/net/IpPrefix;
    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method
