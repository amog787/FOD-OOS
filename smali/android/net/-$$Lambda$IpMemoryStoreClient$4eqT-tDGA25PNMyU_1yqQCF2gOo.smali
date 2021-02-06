.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/IpMemoryStoreClient$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/net/IIpMemoryStore;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/net/ipmemorystore/Blob;

.field public final synthetic f$5:Landroid/net/ipmemorystore/OnStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$0:Landroid/net/IIpMemoryStore;

    iput-object p2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$3:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$4:Landroid/net/ipmemorystore/Blob;

    iput-object p6, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$5:Landroid/net/ipmemorystore/OnStatusListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$0:Landroid/net/IIpMemoryStore;

    iget-object v1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$3:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$4:Landroid/net/ipmemorystore/Blob;

    iget-object v5, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$4eqT-tDGA25PNMyU_1yqQCF2gOo;->f$5:Landroid/net/ipmemorystore/OnStatusListener;

    invoke-static/range {v0 .. v5}, Landroid/net/IpMemoryStoreClient;->lambda$storeBlob$3(Landroid/net/IIpMemoryStore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V

    return-void
.end method
