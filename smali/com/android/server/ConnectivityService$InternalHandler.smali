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

    .line 4398
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 4399
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4400
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 4404
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_d

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_b

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_5

    .line 4486
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4487
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4488
    .local v1, "slot":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 4489
    .local v2, "reason":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 4490
    goto/16 :goto_5

    .line 4481
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1    # "slot":I
    .end local v2    # "reason":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    .line 4482
    goto/16 :goto_5

    .line 4560
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "start_dns_time_out_monitor"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$7202(Lcom/android/server/ConnectivityService;Z)Z

    .line 4562
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7200(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4563
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7300(Lcom/android/server/ConnectivityService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4564
    const-string/jumbo v0, "registerDnsNetdEventCallback success"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4566
    :cond_1
    const-string/jumbo v0, "registerDnsNetdEventCallback fail"

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4548
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4549
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$7000()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    .line 4548
    :cond_2
    const-string/jumbo v3, "op_tcp_timestamps_value"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$6902(Lcom/android/server/ConnectivityService;I)I

    .line 4551
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$7100(Lcom/android/server/ConnectivityService;)Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/net/IOemNetd;->setTcpTimestamps(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4554
    goto/16 :goto_5

    .line 4552
    :catch_0
    move-exception v0

    .line 4553
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error set tcp timestamps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 4555
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_5

    .line 4516
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_auto_change_to_mobile_data"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    invoke-static {v0, v3}, Lcom/android/server/ConnectivityService;->access$2302(Lcom/android/server/ConnectivityService;Z)Z

    .line 4518
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1700()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWifiAutoChangeMobile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    const/4 v0, 0x0

    .line 4520
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v3, -0x1

    .line 4521
    .local v3, "type":I
    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    .line 4522
    .local v7, "network":Landroid/net/Network;
    iget-object v8, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8, v7}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 4523
    if-nez v0, :cond_4

    goto :goto_2

    .line 4524
    :cond_4
    iget-object v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 4525
    if-ne v3, v2, :cond_5

    .line 4526
    goto :goto_3

    .line 4521
    .end local v7    # "network":Landroid/net/Network;
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4529
    :cond_6
    :goto_3
    if-eq v3, v2, :cond_7

    .line 4530
    const-string/jumbo v1, "there\'s no wifi network"

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 4531
    goto/16 :goto_5

    .line 4534
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/NetworkMonitorManager;->forceReevaluation(I)Z

    .line 4537
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Z

    move-result v4

    xor-int/2addr v2, v4

    iput-boolean v2, v1, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    .line 4538
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4539
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$6700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto :goto_4

    .line 4540
    :cond_8
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 4541
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(I)V

    .line 4543
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$6800(Lcom/android/server/ConnectivityService;)V

    .line 4544
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 4545
    goto/16 :goto_5

    .line 4511
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "type":I
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2200(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->handleRestrictBackgroundChanged(Z)V

    .line 4512
    goto/16 :goto_5

    .line 4508
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleUidRulesChanged(II)V

    .line 4509
    goto/16 :goto_5

    .line 4504
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$6600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 4506
    goto/16 :goto_5

    .line 4501
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6500(Lcom/android/server/ConnectivityService;)V

    .line 4502
    goto/16 :goto_5

    .line 4497
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2200(I)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V

    .line 4498
    goto/16 :goto_5

    .line 4468
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 4469
    goto/16 :goto_5

    .line 4476
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;)V

    .line 4477
    goto/16 :goto_5

    .line 4472
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 4473
    goto/16 :goto_5

    .line 4457
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 4458
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2200(I)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2200(I)Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->access$6000(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    .line 4459
    goto/16 :goto_5

    .line 4448
    .end local v0    # "network":Landroid/net/Network;
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$5800(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    .line 4449
    goto/16 :goto_5

    .line 4439
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 4440
    goto/16 :goto_5

    .line 4493
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->start()V

    .line 4494
    goto/16 :goto_5

    .line 4423
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    .line 4424
    goto/16 :goto_5

    .line 4452
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/NetworkRequest;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;IZ)V

    .line 4454
    goto :goto_5

    .line 4443
    :pswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 4444
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$5700(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 4445
    goto :goto_5

    .line 4434
    .end local v0    # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 4435
    goto :goto_5

    .line 4427
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 4429
    .local v0, "arg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;>;"
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/net/INetworkMonitor;

    invoke-static {v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V

    .line 4430
    goto :goto_5

    .line 4419
    .end local v0    # "arg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;>;"
    :pswitch_16
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkProviderInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkProviderInfo;)V

    .line 4420
    goto :goto_5

    .line 4415
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    .line 4416
    goto :goto_5

    .line 4572
    :cond_a
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$7400(Lcom/android/server/ConnectivityService;I)V

    goto :goto_5

    .line 4462
    :cond_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 4463
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2200(I)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4464
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2200(I)Z

    move-result v3

    .line 4463
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->access$6100(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    .line 4465
    goto :goto_5

    .line 4411
    .end local v0    # "network":Landroid/net/Network;
    :cond_c
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->loadDeprecatedGlobalHttpProxy()V

    .line 4412
    goto :goto_5

    .line 4407
    :cond_d
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;I)V

    .line 4408
    nop

    .line 4575
    :cond_e
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_14
        :pswitch_12
        :pswitch_11
        :pswitch_18
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8100b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
