.class public final synthetic Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$OwDc2jxNNxij2DwZJOxHrSIkT4w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/net/ip/IIpClientCallbacks;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$OwDc2jxNNxij2DwZJOxHrSIkT4w;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$OwDc2jxNNxij2DwZJOxHrSIkT4w;->f$1:Landroid/net/ip/IIpClientCallbacks;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$OwDc2jxNNxij2DwZJOxHrSIkT4w;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$OwDc2jxNNxij2DwZJOxHrSIkT4w;->f$1:Landroid/net/ip/IIpClientCallbacks;

    check-cast p1, Landroid/net/INetworkStackConnector;

    invoke-static {v0, v1, p1}, Landroid/net/networkstack/NetworkStackClientBase;->lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method
