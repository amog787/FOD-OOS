.class Lcom/android/server/location/GnssNetworkConnectivityHandler$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssNetworkConnectivityHandler;->createNetworkConnectivityCallback()Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAvailableNetworkCapabilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/location/GnssNetworkConnectivityHandler;

    .line 227
    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 232
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 242
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    .line 243
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkCapabilities;

    .line 242
    invoke-static {v0, p2}, Lcom/android/server/location/GnssNetworkConnectivityHandler$NetworkAttributes;->access$000(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    const-string v1, "GnssNetworkConnectivityHandler"

    if-nez v0, :cond_1

    .line 244
    invoke-static {}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relevant network capabilities unchanged. Capabilities: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network connected/capabilities updated. Available networks count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    .line 254
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-static {v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$300(Lcom/android/server/location/GnssNetworkConnectivityHandler;)Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler$GnssNetworkListener;->onNetworkAvailable()V

    .line 260
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$400(Lcom/android/server/location/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    .line 261
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 265
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "GnssNetworkConnectivityHandler"

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrectly received network callback onLost() before onCapabilitiesChanged() for network: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    return-void

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network connection lost. Available networks count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;->mAvailableNetworkCapabilities:Ljava/util/HashMap;

    .line 272
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$1;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$400(Lcom/android/server/location/GnssNetworkConnectivityHandler;Landroid/net/Network;ZLandroid/net/NetworkCapabilities;)V

    .line 274
    return-void
.end method
