.class Lcom/android/server/ConnectivityService$4;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 2096
    iput-object p1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onNat64PrefixEvent$0$ConnectivityService$4(IZLjava/lang/String;I)V
    .locals 1
    .param p1, "netId"    # I
    .param p2, "added"    # Z
    .param p3, "prefixString"    # Ljava/lang/String;
    .param p4, "prefixLength"    # I

    .line 2137
    iget-object v0, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;IZLjava/lang/String;I)V

    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "ipAddresses"    # [Ljava/lang/String;
    .param p6, "ipAddressesCount"    # I
    .param p7, "timestamp"    # J
    .param p9, "uid"    # I

    .line 2114
    iget-object v0, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2123
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2124
    iget-object v1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p9}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 2125
    .local v1, "pkg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returnCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",netId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",hostname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarrierDnsEvent"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)Landroid/net/NetworkRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2130
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/net/NetworkMonitorManager;->notifyDnsResponse(I)Z

    .line 2132
    :cond_1
    return-void
.end method

.method public onNat64PrefixEvent(IZLjava/lang/String;I)V
    .locals 8
    .param p1, "netId"    # I
    .param p2, "added"    # Z
    .param p3, "prefixString"    # Ljava/lang/String;
    .param p4, "prefixLength"    # I

    .line 2137
    iget-object v0, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    new-instance v7, Lcom/android/server/-$$Lambda$ConnectivityService$4$kjr9gauOtOpxwsI0DG7Gt6Wd1hI;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/-$$Lambda$ConnectivityService$4$kjr9gauOtOpxwsI0DG7Gt6Wd1hI;-><init>(Lcom/android/server/ConnectivityService$4;IZLjava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/android/server/ConnectivityService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    .line 2138
    return-void
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z

    .line 2101
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v1

    const/16 v2, 0x26

    new-instance v3, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 2104
    invoke-static {p2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, p1, v4, p3, p4}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;-><init>(ILjava/net/InetAddress;Ljava/lang/String;Z)V

    .line 2101
    invoke-virtual {v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2108
    goto :goto_0

    .line 2106
    :catch_0
    move-exception v0

    .line 2107
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Error parsing ip address in validation event"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 2109
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method
