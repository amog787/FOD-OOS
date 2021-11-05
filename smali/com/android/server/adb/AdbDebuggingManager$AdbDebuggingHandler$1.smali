.class Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 598
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 601
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 605
    const-string/jumbo v1, "wifi_state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 607
    .local v1, "state":I
    if-ne v1, v2, :cond_7

    .line 608
    const-string v2, "AdbDebuggingManager"

    const-string v4, "Wifi disabled. Disabling adbwifi."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "adb_wifi_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 612
    .end local v1    # "state":I
    :cond_0
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 614
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 616
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_8

    .line 618
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 619
    const-string v2, "AdbDebuggingManager"

    const-string v4, "Network disconnected. Disabling adbwifi."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "adb_wifi_enabled"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    return-void

    .line 625
    :cond_1
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    iget-object v2, v2, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 626
    invoke-static {v2}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "wifi"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 627
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 628
    .local v4, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 629
    :cond_2
    const-string v5, "AdbDebuggingManager"

    const-string v6, "Not connected to any wireless network. Not enabling adbwifi."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v5, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    iget-object v5, v5, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v5}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_wifi_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 636
    :cond_3
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, "bssid":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 638
    :cond_4
    const-string v6, "AdbDebuggingManager"

    const-string v7, "Unable to get the wifi ap\'s BSSID. Disabling adbwifi."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    iget-object v6, v6, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v6}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "adb_wifi_enabled"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 642
    :cond_5
    iget-object v6, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    iget-object v6, v6, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v6}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object v6

    monitor-enter v6

    .line 643
    :try_start_0
    iget-object v7, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    iget-object v7, v7, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v7}, Lcom/android/server/adb/AdbDebuggingManager;->access$300(Lcom/android/server/adb/AdbDebuggingManager;)Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 644
    const-string v7, "AdbDebuggingManager"

    const-string v8, "Detected wifi network change. Disabling adbwifi."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v7, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler$1;->this$1:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    iget-object v7, v7, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v7}, Lcom/android/server/adb/AdbDebuggingManager;->access$200(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_wifi_enabled"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 648
    :cond_6
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 612
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v4    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v5    # "bssid":Ljava/lang/String;
    :cond_7
    :goto_0
    nop

    .line 651
    :cond_8
    :goto_1
    return-void
.end method
