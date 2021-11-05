.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$a8c2GwoXcCl_-sEog7RVlSk_ceg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$a8c2GwoXcCl_-sEog7RVlSk_ceg;->f$0:Landroid/net/IpMemoryStoreClient;

    iput-object p2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$a8c2GwoXcCl_-sEog7RVlSk_ceg;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$a8c2GwoXcCl_-sEog7RVlSk_ceg;->f$2:Z

    iput-object p4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$a8c2GwoXcCl_-sEog7RVlSk_ceg;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$a8c2GwoXcCl_-sEog7RVlSk_ceg;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$a8c2GwoXcCl_-sEog7RVlSk_ceg;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$a8c2GwoXcCl_-sEog7RVlSk_ceg;->f$2:Z

    iget-object v3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$a8c2GwoXcCl_-sEog7RVlSk_ceg;->f$3:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    check-cast p1, Landroid/net/IIpMemoryStore;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/net/IpMemoryStoreClient;->lambda$delete$19$IpMemoryStoreClient(Ljava/lang/String;ZLandroid/net/ipmemorystore/OnDeleteStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method
