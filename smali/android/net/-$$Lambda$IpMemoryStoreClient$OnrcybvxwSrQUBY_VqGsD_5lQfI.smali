.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$OnrcybvxwSrQUBY_VqGsD_5lQfI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OnrcybvxwSrQUBY_VqGsD_5lQfI;->f$0:Landroid/net/IpMemoryStoreClient;

    iput-object p2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OnrcybvxwSrQUBY_VqGsD_5lQfI;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OnrcybvxwSrQUBY_VqGsD_5lQfI;->f$2:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OnrcybvxwSrQUBY_VqGsD_5lQfI;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OnrcybvxwSrQUBY_VqGsD_5lQfI;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OnrcybvxwSrQUBY_VqGsD_5lQfI;->f$2:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    check-cast p1, Landroid/net/IIpMemoryStore;

    invoke-virtual {v0, v1, v2, p1}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveNetworkAttributes$13$IpMemoryStoreClient(Ljava/lang/String;Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method
