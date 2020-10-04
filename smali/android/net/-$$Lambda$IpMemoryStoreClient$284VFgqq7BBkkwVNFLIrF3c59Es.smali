.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Landroid/net/IIpMemoryStore;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;->f$0:Landroid/net/IIpMemoryStore;

    iput-object p2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;->f$3:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;->f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;->f$0:Landroid/net/IIpMemoryStore;

    iget-object v1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;->f$3:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$284VFgqq7BBkkwVNFLIrF3c59Es;->f$4:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveBlob$15(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    return-void
.end method
