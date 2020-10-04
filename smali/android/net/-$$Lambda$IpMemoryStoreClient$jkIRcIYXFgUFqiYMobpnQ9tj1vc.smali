.class public final synthetic Landroid/net/-$$Lambda$IpMemoryStoreClient$jkIRcIYXFgUFqiYMobpnQ9tj1vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/net/IpMemoryStoreClient;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$jkIRcIYXFgUFqiYMobpnQ9tj1vc;->f$0:Landroid/net/IpMemoryStoreClient;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/net/-$$Lambda$IpMemoryStoreClient$jkIRcIYXFgUFqiYMobpnQ9tj1vc;->f$0:Landroid/net/IpMemoryStoreClient;

    check-cast p1, Landroid/net/IIpMemoryStore;

    invoke-virtual {v0, p1}, Landroid/net/IpMemoryStoreClient;->lambda$factoryReset$19$IpMemoryStoreClient(Landroid/net/IIpMemoryStore;)V

    return-void
.end method
