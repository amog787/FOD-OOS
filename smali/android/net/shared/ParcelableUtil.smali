.class public final Landroid/net/shared/ParcelableUtil;
.super Ljava/lang/Object;
.source "ParcelableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParcelableType:",
            "Ljava/lang/Object;",
            "BaseType:",
            "Ljava/lang/Object;",
            ">([TParcelableType;",
            "Ljava/util/function/Function<",
            "TParcelableType;TBaseType;>;)",
            "Ljava/util/ArrayList<",
            "TBaseType;>;"
        }
    .end annotation

    .line 57
    .local p0, "parceled":[Ljava/lang/Object;, "[TParcelableType;"
    .local p1, "conv":Ljava/util/function/Function;, "Ljava/util/function/Function<TParcelableType;TBaseType;>;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TBaseType;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 59
    .local v3, "t":Ljava/lang/Object;, "TParcelableType;"
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v3    # "t":Ljava/lang/Object;, "TParcelableType;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-object v0
.end method

.method public static toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParcelableType:",
            "Ljava/lang/Object;",
            "BaseType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TBaseType;>;",
            "Ljava/util/function/Function<",
            "TBaseType;TParcelableType;>;",
            "Ljava/lang/Class<",
            "TParcelableType;>;)[TParcelableType;"
        }
    .end annotation

    .line 42
    .local p0, "base":Ljava/util/Collection;, "Ljava/util/Collection<TBaseType;>;"
    .local p1, "conv":Ljava/util/function/Function;, "Ljava/util/function/Function<TBaseType;TParcelableType;>;"
    .local p2, "parcelClass":Ljava/lang/Class;, "Ljava/lang/Class<TParcelableType;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 43
    .local v0, "out":[Ljava/lang/Object;, "[TParcelableType;"
    const/4 v1, 0x0

    .line 44
    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 45
    .local v3, "b":Ljava/lang/Object;, "TBaseType;"
    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 46
    nop

    .end local v3    # "b":Ljava/lang/Object;, "TBaseType;"
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-object v0
.end method
