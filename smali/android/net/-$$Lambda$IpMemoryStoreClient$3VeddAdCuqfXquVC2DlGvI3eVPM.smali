.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;->f$0:Landroid/net/IpMemoryStoreClient;

    iput-object p2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;->f$3:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;->f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;->f$3:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$3VeddAdCuqfXquVC2DlGvI3eVPM;->f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    move-object v5, p1

    check-cast v5, Landroid/net/IIpMemoryStore;

    invoke-virtual/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveBlob$16$IpMemoryStoreClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method
