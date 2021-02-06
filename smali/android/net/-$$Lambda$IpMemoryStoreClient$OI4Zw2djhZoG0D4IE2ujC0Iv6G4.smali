.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroid/net/ipmemorystore/Blob;

.field public final synthetic f$5:Landroid/net/ipmemorystore/OnStatusListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$0:Landroid/net/IpMemoryStoreClient;

    iput-object p2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$4:Landroid/net/ipmemorystore/Blob;

    iput-object p6, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$5:Landroid/net/ipmemorystore/OnStatusListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$3:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$4:Landroid/net/ipmemorystore/Blob;

    iget-object v5, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$OI4Zw2djhZoG0D4IE2ujC0Iv6G4;->f$5:Landroid/net/ipmemorystore/OnStatusListener;

    move-object v6, p1

    check-cast v6, Landroid/net/IIpMemoryStore;

    invoke-virtual/range {v0 .. v6}, Landroid/net/IpMemoryStoreClient;->lambda$storeBlob$4$IpMemoryStoreClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/OnStatusListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method
