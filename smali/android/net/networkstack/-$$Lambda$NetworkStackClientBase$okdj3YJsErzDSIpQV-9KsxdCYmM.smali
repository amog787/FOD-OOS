.class public final synthetic Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$okdj3YJsErzDSIpQV-9KsxdCYmM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IIpMemoryStoreCallbacks;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStoreCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$okdj3YJsErzDSIpQV-9KsxdCYmM;->f$0:Landroid/net/IIpMemoryStoreCallbacks;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$okdj3YJsErzDSIpQV-9KsxdCYmM;->f$0:Landroid/net/IIpMemoryStoreCallbacks;

    check-cast p1, Landroid/net/INetworkStackConnector;

    invoke-static {v0, p1}, Landroid/net/networkstack/NetworkStackClientBase;->lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method
