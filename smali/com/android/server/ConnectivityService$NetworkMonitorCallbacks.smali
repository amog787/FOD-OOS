.class Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;
.super Landroid/net/INetworkMonitorCallbacks$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkMonitorCallbacks"
.end annotation


# instance fields
.field private final mNai:Lcom/android/server/connectivity/AutodestructReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/connectivity/AutodestructReference<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetId:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2963
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;-><init>()V

    .line 2964
    iget-object p1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p1, p1, Landroid/net/Network;->netId:I

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    .line 2965
    new-instance p1, Lcom/android/server/connectivity/AutodestructReference;

    invoke-direct {p1, p2}, Lcom/android/server/connectivity/AutodestructReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNai:Lcom/android/server/connectivity/AutodestructReference;

    .line 2966
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "x2"    # Lcom/android/server/ConnectivityService$1;

    .line 2959
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .locals 1

    .line 3013
    const/4 v0, 0x3

    return v0
.end method

.method public hideProvisioningNotification()V
    .locals 5

    .line 3007
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3009
    return-void
.end method

.method public notifyNetworkTested(ILjava/lang/String;)V
    .locals 4
    .param p1, "testResult"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;

    .line 2976
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    const/16 v3, 0x29

    invoke-virtual {v1, v3, p1, v2, p2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2978
    return-void
.end method

.method public notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V
    .locals 6
    .param p1, "config"    # Landroid/net/PrivateDnsConfigParcel;

    .line 2982
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    .line 2984
    invoke-static {p1}, Landroid/net/shared/PrivateDnsConfig;->fromParcel(Landroid/net/PrivateDnsConfigParcel;)Landroid/net/shared/PrivateDnsConfig;

    move-result-object v3

    .line 2982
    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2985
    return-void
.end method

.method public onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
    .locals 4
    .param p1, "networkMonitor"    # Landroid/net/INetworkMonitor;

    .line 2970
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNai:Lcom/android/server/connectivity/AutodestructReference;

    .line 2971
    invoke-virtual {v3}, Lcom/android/server/connectivity/AutodestructReference;->getAndDestroy()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2970
    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2972
    return-void
.end method

.method public showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2989
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2990
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2996
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2998
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2999
    nop

    .line 3000
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v5

    const/16 v6, 0x2b

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3003
    return-void

    .line 2998
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
