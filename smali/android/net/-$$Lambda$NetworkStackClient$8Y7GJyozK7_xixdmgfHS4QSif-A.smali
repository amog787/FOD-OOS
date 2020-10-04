.class public final synthetic Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/net/NetworkStackClient$NetworkStackCallback;


# instance fields
.field private final synthetic f$0:Landroid/net/Network;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/net/INetworkMonitorCallbacks;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;->f$0:Landroid/net/Network;

    iput-object p2, p0, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;->f$2:Landroid/net/INetworkMonitorCallbacks;

    return-void
.end method


# virtual methods
.method public final onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .locals 3

    iget-object v0, p0, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;->f$0:Landroid/net/Network;

    iget-object v1, p0, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;->f$2:Landroid/net/INetworkMonitorCallbacks;

    invoke-static {v0, v1, v2, p1}, Landroid/net/NetworkStackClient;->lambda$makeNetworkMonitor$2(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method
