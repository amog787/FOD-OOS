.class Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 387
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 390
    invoke-static {}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$800(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Landroid/net/Network;)V

    .line 393
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 397
    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection lost."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$900(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    .line 399
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 403
    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection request timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$3;->this$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->access$900(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;I)V

    .line 406
    return-void
.end method
