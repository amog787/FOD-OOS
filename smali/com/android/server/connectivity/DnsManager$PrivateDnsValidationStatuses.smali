.class Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivateDnsValidationStatuses"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
    }
.end annotation


# instance fields
.field private mValidationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/net/InetAddress;",
            ">;",
            "Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    .line 196
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/DnsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/DnsManager$1;

    .line 182
    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;

    .line 182
    invoke-direct {p0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->hasValidatedServer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->fillInValidatedPrivateDns(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    .param p1, "x1"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->updateStatus(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->updateTrackedDnses([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillInValidatedPrivateDns(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 2
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .line 245
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->setValidatedPrivateDnsServers(Ljava/util/Collection;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$DnsManager$PrivateDnsValidationStatuses$_X4_M08nKysv-L4hDpqAsa4SBxI;

    invoke-direct {v1, p1}, Lcom/android/server/connectivity/-$$Lambda$DnsManager$PrivateDnsValidationStatuses$_X4_M08nKysv-L4hDpqAsa4SBxI;-><init>(Landroid/net/LinkProperties;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 251
    return-object p1
.end method

.method private hasValidatedServer()Z
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    .line 200
    .local v1, "status":Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
    sget-object v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    if-ne v1, v2, :cond_0

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    .end local v1    # "status":Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;
    :cond_0
    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$fillInValidatedPrivateDns$0(Landroid/net/LinkProperties;Landroid/util/Pair;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;)V
    .locals 1
    .param p0, "lp"    # Landroid/net/LinkProperties;
    .param p1, "key"    # Landroid/util/Pair;
    .param p2, "value"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    .line 247
    sget-object v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    if-ne p2, v0, :cond_0

    .line 248
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {p0, v0}, Landroid/net/LinkProperties;->addValidatedPrivateDnsServer(Ljava/net/InetAddress;)Z

    .line 250
    :cond_0
    return-void
.end method

.method private updateStatus(Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V
    .locals 3
    .param p1, "update"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 232
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->hostname:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->ipAddress:Ljava/net/InetAddress;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .local v0, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->validated:Z

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    sget-object v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->SUCCEEDED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    sget-object v2, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->FAILED:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :goto_0
    return-void
.end method

.method private updateTrackedDnses([Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "ipAddresses"    # [Ljava/lang/String;
    .param p2, "hostname"    # Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 209
    .local v0, "latestDnses":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 211
    .local v3, "ipAddress":Ljava/lang/String;
    :try_start_0
    new-instance v4, Landroid/util/Pair;

    .line 212
    invoke-static {v3}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v4

    :goto_1
    nop

    .line 209
    .end local v3    # "ipAddress":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    .line 217
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;>;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 219
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 222
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;>;"
    :cond_1
    goto :goto_2

    .line 224
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;>;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 225
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;"
    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 226
    iget-object v3, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses;->mValidationMap:Ljava/util/Map;

    sget-object v4, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;->IN_PROGRESS:Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationStatuses$ValidationStatus;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/net/InetAddress;>;"
    :cond_3
    goto :goto_3

    .line 229
    :cond_4
    return-void
.end method
