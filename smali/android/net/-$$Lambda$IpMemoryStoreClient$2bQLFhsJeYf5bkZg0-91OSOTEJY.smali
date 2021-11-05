.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$2bQLFhsJeYf5bkZg0-91OSOTEJY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/IIpMemoryStore;

.field public final synthetic f$1:Landroid/net/ipmemorystore/NetworkAttributes;

.field public final synthetic f$2:Landroid/net/ipmemorystore/OnL2KeyResponseListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$2bQLFhsJeYf5bkZg0-91OSOTEJY;->f$0:Landroid/net/IIpMemoryStore;

    iput-object p2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$2bQLFhsJeYf5bkZg0-91OSOTEJY;->f$1:Landroid/net/ipmemorystore/NetworkAttributes;

    iput-object p3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$2bQLFhsJeYf5bkZg0-91OSOTEJY;->f$2:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$2bQLFhsJeYf5bkZg0-91OSOTEJY;->f$0:Landroid/net/IIpMemoryStore;

    iget-object v1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$2bQLFhsJeYf5bkZg0-91OSOTEJY;->f$1:Landroid/net/ipmemorystore/NetworkAttributes;

    iget-object v2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$2bQLFhsJeYf5bkZg0-91OSOTEJY;->f$2:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    invoke-static {v0, v1, v2}, Landroid/net/IpMemoryStoreClient;->lambda$findL2Key$6(Landroid/net/IIpMemoryStore;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V

    return-void
.end method
