.class Lcom/android/server/display/WifiDisplayController$23;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .line 1234
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "WifiDisplayController"

    if-eqz v1, :cond_2

    .line 1241
    const/4 v1, 0x1

    const-string/jumbo v3, "wifi_p2p_state"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1244
    .local v1, "enabled":Z
    :goto_0
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2, v1}, Lcom/android/server/display/WifiDisplayController;->access$4100(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 1250
    .end local v1    # "enabled":Z
    goto/16 :goto_2

    :cond_2
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1251
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1252
    const-string v1, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$4200(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_2

    .line 1256
    :cond_4
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1257
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1259
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$100()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_5
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2, v1}, Lcom/android/server/display/WifiDisplayController;->access$3800(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    goto :goto_1

    .line 1265
    :cond_6
    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1266
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v3, "wifiP2pDevice"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayController;->access$3102(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1268
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received WIFI_P2P_THIS_DEVICE_CHANGED_ACTION: mThisDevice= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$23;->this$0:Lcom/android/server/display/WifiDisplayController;

    .line 1270
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$3100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1269
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1265
    :cond_7
    :goto_1
    nop

    .line 1273
    :cond_8
    :goto_2
    return-void
.end method
