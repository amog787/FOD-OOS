.class Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UpstreamNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpstreamNetworkCallback"
.end annotation


# instance fields
.field private final mCallbackType:I

.field final synthetic this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V
    .locals 0
    .param p2, "callbackType"    # I

    .line 407
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 408
    iput p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    .line 409
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;

    .line 413
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V

    .line 414
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newNc"    # Landroid/net/NetworkCapabilities;

    .line 418
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$102(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)Landroid/net/Network;

    .line 420
    invoke-static {p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$200(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 421
    .local v0, "newIsCellular":Z
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$300(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 422
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v1, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$302(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Z)Z

    .line 423
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$400(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->notifyUpstream(Z)V

    .line 425
    :cond_0
    return-void

    .line 428
    .end local v0    # "newIsCellular":Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$500(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 429
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .line 433
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$600(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 439
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$700(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V

    .line 442
    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 460
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$102(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)Landroid/net/Network;

    .line 462
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$302(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Z)Z

    .line 463
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$400(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->notifyUpstream(Z)V

    .line 464
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$1000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V

    .line 471
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 472
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$700(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V

    .line 474
    :cond_1
    return-void
.end method

.method public onNetworkResumed(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 453
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$900(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V

    .line 456
    :cond_0
    return-void
.end method

.method public onNetworkSuspended(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 446
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$800(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V

    .line 449
    :cond_0
    return-void
.end method
