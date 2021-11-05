.class Lcom/android/server/accounts/TokenCache$TokenLruCache;
.super Landroid/util/LruCache;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/TokenCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenLruCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Lcom/android/server/accounts/TokenCache$Key;",
        "Lcom/android/server/accounts/TokenCache$Value;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountEvictors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;",
            ">;"
        }
    .end annotation
.end field

.field private mTokenEvictors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    const v0, 0xfa00

    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    .line 113
    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;Lcom/android/server/accounts/TokenCache$Value;)V
    .locals 4
    .param p1, "evicted"    # Z
    .param p2, "k"    # Lcom/android/server/accounts/TokenCache$Key;
    .param p3, "oldVal"    # Lcom/android/server/accounts/TokenCache$Value;
    .param p4, "newVal"    # Lcom/android/server/accounts/TokenCache$Value;

    .line 123
    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p2, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 129
    .local v0, "evictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    .line 133
    .end local v0    # "evictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p2, Lcom/android/server/accounts/TokenCache$Key;

    check-cast p3, Lcom/android/server/accounts/TokenCache$Value;

    check-cast p4, Lcom/android/server/accounts/TokenCache$Value;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->entryRemoved(ZLcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;Lcom/android/server/accounts/TokenCache$Value;)V

    return-void
.end method

.method public evict(Landroid/accounts/Account;)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;

    .line 166
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 167
    .local v0, "evictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    .line 170
    :cond_0
    return-void
.end method

.method public evict(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 159
    .local v0, "evictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->evict()V

    .line 163
    :cond_0
    return-void
.end method

.method public putToken(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)V
    .locals 5
    .param p1, "k"    # Lcom/android/server/accounts/TokenCache$Key;
    .param p2, "v"    # Lcom/android/server/accounts/TokenCache$Value;

    .line 137
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .local v0, "mapKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 139
    .local v1, "tokenEvictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    if-nez v1, :cond_0

    .line 140
    new-instance v2, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    invoke-direct {v2, p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;-><init>(Lcom/android/server/accounts/TokenCache$TokenLruCache;)V

    move-object v1, v2

    .line 142
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->add(Lcom/android/server/accounts/TokenCache$Key;)V

    .line 143
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mTokenEvictors:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v2, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    .line 147
    .local v2, "accountEvictor":Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;
    if-nez v2, :cond_1

    .line 148
    new-instance v3, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;

    invoke-direct {v3, p0}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;-><init>(Lcom/android/server/accounts/TokenCache$TokenLruCache;)V

    move-object v2, v3

    .line 150
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/server/accounts/TokenCache$TokenLruCache$Evictor;->add(Lcom/android/server/accounts/TokenCache$Key;)V

    .line 151
    iget-object v3, p0, Lcom/android/server/accounts/TokenCache$TokenLruCache;->mAccountEvictors:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/accounts/TokenCache$Key;->account:Landroid/accounts/Account;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method protected sizeOf(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)I
    .locals 1
    .param p1, "k"    # Lcom/android/server/accounts/TokenCache$Key;
    .param p2, "v"    # Lcom/android/server/accounts/TokenCache$Value;

    .line 117
    iget-object v0, p2, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 83
    check-cast p1, Lcom/android/server/accounts/TokenCache$Key;

    check-cast p2, Lcom/android/server/accounts/TokenCache$Value;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/TokenCache$TokenLruCache;->sizeOf(Lcom/android/server/accounts/TokenCache$Key;Lcom/android/server/accounts/TokenCache$Value;)I

    move-result p1

    return p1
.end method
