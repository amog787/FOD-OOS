.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3946
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3947
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3948
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 3952
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    const/16 v1, 0x9

    if-eq v0, v1, :cond_e

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_c

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_5

    .line 4034
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4035
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4036
    .local v1, "slot":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 4037
    .local v2, "reason":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 4038
    goto/16 :goto_5

    .line 4029
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "slot":I
    .end local v2    # "reason":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    .line 4030
    goto/16 :goto_5

    .line 4060
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3000(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->handleRestrictBackgroundChanged(Z)V

    .line 4061
    goto/16 :goto_5

    .line 4057
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleUidRulesChanged(II)V

    .line 4058
    goto/16 :goto_5

    .line 4053
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 4055
    goto/16 :goto_5

    .line 4050
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)V

    .line 4051
    goto/16 :goto_5

    .line 4046
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$3000(I)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V

    .line 4047
    goto/16 :goto_5

    .line 4016
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 4017
    goto/16 :goto_5

    .line 4024
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;)V

    .line 4025
    goto/16 :goto_5

    .line 4020
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 4021
    goto/16 :goto_5

    .line 4005
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 4006
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$3000(I)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$3000(I)Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    .line 4007
    goto/16 :goto_5

    .line 3996
    .end local v0    # "network":Landroid/net/Network;
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    .line 3997
    goto/16 :goto_5

    .line 3987
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 3988
    goto/16 :goto_5

    .line 4041
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->start()V

    .line 4042
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/NetPluginDelegate;->registerHandler(Landroid/os/Handler;)V

    .line 4043
    goto/16 :goto_5

    .line 3971
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    .line 3972
    goto/16 :goto_5

    .line 4000
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkRequest;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v3, v2}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;IZ)V

    .line 4002
    goto/16 :goto_5

    .line 3991
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3992
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3993
    goto/16 :goto_5

    .line 3982
    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3983
    goto/16 :goto_5

    .line 3975
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 3977
    .local v0, "arg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;>;"
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/net/INetworkMonitor;

    invoke-static {v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V

    .line 3978
    goto/16 :goto_5

    .line 3967
    .end local v0    # "arg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;>;"
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    .line 3968
    goto/16 :goto_5

    .line 3963
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    .line 3964
    goto/16 :goto_5

    .line 4113
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;I)V

    goto/16 :goto_5

    .line 4066
    :cond_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;)V

    .line 4067
    goto/16 :goto_5

    .line 4103
    :cond_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4104
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$5900()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x2

    .line 4103
    :cond_3
    const-string/jumbo v2, "op_tcp_timestamps_value"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5802(Lcom/android/server/ConnectivityService;I)I

    .line 4106
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mNetd:Landroid/net/INetd;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/net/INetd;->setTcpTimestamps(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4109
    goto/16 :goto_5

    .line 4107
    :catch_0
    move-exception v0

    .line 4108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error set tcp timestamps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    .line 4110
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_5

    .line 4071
    :cond_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "wifi_auto_change_to_mobile_data"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$2002(Lcom/android/server/ConnectivityService;Z)Z

    .line 4073
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWifiAutoChangeMobile:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    const/4 v0, 0x0

    .line 4075
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v1, -0x1

    .line 4076
    .local v1, "type":I
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    move-object v1, v0

    move v0, v2

    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .local v6, "type":I
    :goto_1
    if-ge v0, v5, :cond_8

    aget-object v7, v4, v0

    .line 4077
    .local v7, "network":Landroid/net/Network;
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8, v7}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 4078
    if-nez v1, :cond_6

    goto :goto_2

    .line 4079
    :cond_6
    iget-object v8, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 4080
    if-ne v6, v3, :cond_7

    .line 4081
    goto :goto_3

    .line 4076
    .end local v7    # "network":Landroid/net/Network;
    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4084
    :cond_8
    :goto_3
    if-eq v6, v3, :cond_9

    .line 4085
    const-string/jumbo v0, "there\'s no wifi network"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 4086
    goto/16 :goto_5

    .line 4089
    :cond_9
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/NetworkMonitorManager;->forceReevaluation(I)Z

    .line 4091
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    .line 4092
    .local v0, "oldScore":I
    iget-object v2, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Z

    move-result v4

    xor-int/2addr v3, v4

    iput-boolean v3, v2, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 4093
    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 4094
    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_4

    .line 4095
    :cond_a
    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 4096
    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v3, Landroid/net/Network;->netId:I

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 4098
    :cond_b
    :goto_4
    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1, v0}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 4099
    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4100
    goto :goto_5

    .line 4010
    .end local v0    # "oldScore":I
    .end local v1    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v6    # "type":I
    :cond_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 4011
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$3000(I)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4012
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$3000(I)Z

    move-result v3

    .line 4011
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    .line 4013
    goto :goto_5

    .line 4063
    .end local v0    # "network":Landroid/net/Network;
    :cond_d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 4064
    goto :goto_5

    .line 3959
    :cond_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->loadDeprecatedGlobalHttpProxy()V

    .line 3960
    goto :goto_5

    .line 3955
    :cond_f
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;I)V

    .line 3956
    nop

    .line 4116
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_15
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8100b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
