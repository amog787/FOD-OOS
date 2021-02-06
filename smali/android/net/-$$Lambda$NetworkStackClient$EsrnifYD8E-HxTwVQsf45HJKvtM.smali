.class public final synthetic Landroid/net/-$$Lambda$NetworkStackClient$EsrnifYD8E-HxTwVQsf45HJKvtM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/NetworkStackClient$NetworkStackCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/net/ip/IIpClientCallbacks;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$NetworkStackClient$EsrnifYD8E-HxTwVQsf45HJKvtM;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/-$$Lambda$NetworkStackClient$EsrnifYD8E-HxTwVQsf45HJKvtM;->f$1:Landroid/net/ip/IIpClientCallbacks;

    return-void
.end method


# virtual methods
.method public final onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .locals 2

    iget-object v0, p0, Landroid/net/-$$Lambda$NetworkStackClient$EsrnifYD8E-HxTwVQsf45HJKvtM;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/-$$Lambda$NetworkStackClient$EsrnifYD8E-HxTwVQsf45HJKvtM;->f$1:Landroid/net/ip/IIpClientCallbacks;

    invoke-static {v0, v1, p1}, Landroid/net/NetworkStackClient;->lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method
