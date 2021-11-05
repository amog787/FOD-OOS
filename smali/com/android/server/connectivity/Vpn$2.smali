.class Lcom/android/server/connectivity/Vpn$2;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Vpn;

    .line 1603
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 3
    .param p1, "interfaze"    # Ljava/lang/String;

    .line 1615
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 1616
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1617
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1618
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1619
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$500(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_0

    .line 1620
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v1, :cond_1

    .line 1622
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn$VpnRunner;->exit()V

    .line 1625
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1626
    return-void

    .line 1625
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "interfaze"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 1606
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 1607
    if-nez p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    instance-of v1, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    if-eqz v1, :cond_0

    .line 1608
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mVpnRunner:Lcom/android/server/connectivity/Vpn$VpnRunner;

    check-cast v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exitIfOuterInterfaceIs(Ljava/lang/String;)V

    .line 1610
    :cond_0
    monitor-exit v0

    .line 1611
    return-void

    .line 1610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
