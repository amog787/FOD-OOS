.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$uI7nYxd7GfJucRXO9KcNTbbWOlc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Landroid/net/ipmemorystore/NetworkAttributes;

.field public final synthetic f$2:Landroid/net/ipmemorystore/OnL2KeyResponseListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$uI7nYxd7GfJucRXO9KcNTbbWOlc;->f$0:Landroid/net/IpMemoryStoreClient;

    iput-object p2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$uI7nYxd7GfJucRXO9KcNTbbWOlc;->f$1:Landroid/net/ipmemorystore/NetworkAttributes;

    iput-object p3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$uI7nYxd7GfJucRXO9KcNTbbWOlc;->f$2:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$uI7nYxd7GfJucRXO9KcNTbbWOlc;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$uI7nYxd7GfJucRXO9KcNTbbWOlc;->f$1:Landroid/net/ipmemorystore/NetworkAttributes;

    iget-object v2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$uI7nYxd7GfJucRXO9KcNTbbWOlc;->f$2:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    check-cast p1, Landroid/net/IIpMemoryStore;

    invoke-virtual {v0, v1, v2, p1}, Landroid/net/IpMemoryStoreClient;->lambda$findL2Key$7$IpMemoryStoreClient(Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method
