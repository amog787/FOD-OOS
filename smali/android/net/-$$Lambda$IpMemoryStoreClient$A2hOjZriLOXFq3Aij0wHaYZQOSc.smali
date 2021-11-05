.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$A2hOjZriLOXFq3Aij0wHaYZQOSc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/IIpMemoryStore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$A2hOjZriLOXFq3Aij0wHaYZQOSc;->f$0:Landroid/net/IIpMemoryStore;

    iput-object p2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$A2hOjZriLOXFq3Aij0wHaYZQOSc;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$A2hOjZriLOXFq3Aij0wHaYZQOSc;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$A2hOjZriLOXFq3Aij0wHaYZQOSc;->f$3:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$A2hOjZriLOXFq3Aij0wHaYZQOSc;->f$0:Landroid/net/IIpMemoryStore;

    iget-object v1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$A2hOjZriLOXFq3Aij0wHaYZQOSc;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$A2hOjZriLOXFq3Aij0wHaYZQOSc;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$A2hOjZriLOXFq3Aij0wHaYZQOSc;->f$3:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    invoke-static {v0, v1, v2, v3}, Landroid/net/IpMemoryStoreClient;->lambda$isSameNetwork$9(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V

    return-void
.end method
