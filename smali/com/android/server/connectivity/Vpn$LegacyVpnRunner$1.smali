.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 2551
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2554
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2556
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2557
    const/4 v0, -0x1

    const-string/jumbo v1, "networkType"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 2558
    invoke-static {v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1300(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2559
    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2561
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2563
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$1500(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1400(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2564
    :catch_0
    move-exception v1

    .line 2568
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void
.end method
