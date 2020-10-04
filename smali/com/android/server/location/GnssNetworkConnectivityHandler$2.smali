.class Lcom/android/server/location/GnssNetworkConnectivityHandler$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssNetworkConnectivityHandler;->createSuplConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssNetworkConnectivityHandler;

    .line 279
    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 282
    invoke-static {}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-static {v0, p1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$500(Lcom/android/server/location/GnssNetworkConnectivityHandler;Landroid/net/Network;)V

    .line 285
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 289
    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection lost."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$600(Lcom/android/server/location/GnssNetworkConnectivityHandler;I)V

    .line 291
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 295
    const-string v0, "GnssNetworkConnectivityHandler"

    const-string v1, "SUPL network connection request timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$2;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$600(Lcom/android/server/location/GnssNetworkConnectivityHandler;I)V

    .line 298
    return-void
.end method
