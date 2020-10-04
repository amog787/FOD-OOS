.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$hPxh-gsDi3P-N7OFwwZBxGXYZTs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field private final synthetic f$0:Landroid/net/ipmemorystore/OnBlobRetrievedListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$hPxh-gsDi3P-N7OFwwZBxGXYZTs;->f$0:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$hPxh-gsDi3P-N7OFwwZBxGXYZTs;->f$0:Landroid/net/ipmemorystore/OnBlobRetrievedListener;

    invoke-static {v0}, Landroid/net/IpMemoryStoreClient;->lambda$retrieveBlob$17(Landroid/net/ipmemorystore/OnBlobRetrievedListener;)V

    return-void
.end method
