.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$JTvBo0T3ntOmEDS60qZyBJUlJio;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$JTvBo0T3ntOmEDS60qZyBJUlJio;->f$0:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$JTvBo0T3ntOmEDS60qZyBJUlJio;->f$0:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    invoke-static {v0}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveNetworkAttributes$14(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V

    return-void
.end method
