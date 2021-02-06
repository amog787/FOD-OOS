.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$QtZ59p2ym62gf590YlnfhqMCuvs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/ipmemorystore/OnDeleteStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$QtZ59p2ym62gf590YlnfhqMCuvs;->f$0:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$QtZ59p2ym62gf590YlnfhqMCuvs;->f$0:Landroid/net/ipmemorystore/OnDeleteStatusListener;

    invoke-static {v0}, Landroid/net/IpMemoryStoreClient;->lambda$delete$20(Landroid/net/ipmemorystore/OnDeleteStatusListener;)V

    return-void
.end method
