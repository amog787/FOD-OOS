.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$0LhXdcPG7yJtV5UggjyJkRbARKU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/net/ipmemorystore/NetworkAttributes;

.field private final synthetic f$3:Landroid/net/ipmemorystore/OnStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$0LhXdcPG7yJtV5UggjyJkRbARKU;->f$0:Landroid/net/IpMemoryStoreClient;

    iput-object p2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$0LhXdcPG7yJtV5UggjyJkRbARKU;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$0LhXdcPG7yJtV5UggjyJkRbARKU;->f$2:Landroid/net/ipmemorystore/NetworkAttributes;

    iput-object p4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$0LhXdcPG7yJtV5UggjyJkRbARKU;->f$3:Landroid/net/ipmemorystore/OnStatusListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$0LhXdcPG7yJtV5UggjyJkRbARKU;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$0LhXdcPG7yJtV5UggjyJkRbARKU;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$0LhXdcPG7yJtV5UggjyJkRbARKU;->f$2:Landroid/net/ipmemorystore/NetworkAttributes;

    iget-object v3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$0LhXdcPG7yJtV5UggjyJkRbARKU;->f$3:Landroid/net/ipmemorystore/OnStatusListener;

    check-cast p1, Landroid/net/IIpMemoryStore;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/net/IpMemoryStoreClient;->lambda$storeNetworkAttributes$1$IpMemoryStoreClient(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method
