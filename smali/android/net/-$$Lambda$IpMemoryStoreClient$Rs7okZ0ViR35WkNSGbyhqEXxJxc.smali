.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$Rs7okZ0ViR35WkNSGbyhqEXxJxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ipmemorystore/OnStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$Rs7okZ0ViR35WkNSGbyhqEXxJxc;->f$0:Landroid/net/ipmemorystore/OnStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$Rs7okZ0ViR35WkNSGbyhqEXxJxc;->f$0:Landroid/net/ipmemorystore/OnStatusListener;

    invoke-static {v0}, Landroid/net/IpMemoryStoreClient;->lambda$storeBlob$5(Landroid/net/ipmemorystore/OnStatusListener;)V

    return-void
.end method
