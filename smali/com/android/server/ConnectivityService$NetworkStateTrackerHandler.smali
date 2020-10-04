.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2667
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2668
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2669
    return-void
.end method

.method private getCaptivePortalMode()I
    .locals 3

    .line 2915
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2672
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2674
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2685
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_0

    .line 2680
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2681
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    .line 2676
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 2677
    nop

    .line 2689
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x11000
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2921
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 2923
    const/4 v0, 0x0

    return v0

    .line 2925
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2926
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2927
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2932
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private maybeHandleNetworkAgentMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 2693
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2694
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2695
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1400()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2696
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1500(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%s from unknown NetworkAgent"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 2698
    :cond_0
    return-void

    .line 2701
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x81008

    if-eq v3, v4, :cond_4

    const v1, 0x8100d

    if-eq v3, v1, :cond_3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    .line 2720
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2721
    goto/16 :goto_6

    .line 2711
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/LinkProperties;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 2712
    goto/16 :goto_6

    .line 2703
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 2704
    .local v1, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->hasConnectivityManagedCapability()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2705
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has CS-managed capability."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    :cond_2
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2708
    goto/16 :goto_6

    .line 2715
    .end local v1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2716
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v0, v1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 2717
    goto/16 :goto_6

    .line 2767
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_3
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventSocketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    goto/16 :goto_6

    .line 2724
    :cond_4
    iget-boolean v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v3, :cond_5

    .line 2725
    const-string v3, "ERROR: cannot call explicitlySelected on already-connected network"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    .line 2727
    :cond_5
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_6

    move v4, v2

    goto :goto_0

    :cond_6
    move v4, v1

    :goto_0
    iput-boolean v4, v3, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2734
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2735
    .local v3, "forceAutoChangeToMobile":Z
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_f

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 2736
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_f

    .line 2738
    const/4 v4, 0x0

    .line 2739
    .local v4, "wnas":Landroid/net/wifi/WifiNetworkAgentSpecifier;
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v5, :cond_7

    .line 2740
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v5}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Landroid/net/wifi/WifiNetworkAgentSpecifier;

    .line 2742
    :cond_7
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2743
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_8

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_8

    move v6, v2

    goto :goto_1

    :cond_8
    move v6, v1

    :goto_1
    iput-boolean v6, v5, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    goto :goto_5

    .line 2745
    :cond_9
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/net/wifi/WifiNetworkAgentSpecifier;->isCalledByWifiNetworkSpecifier()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2746
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1400()Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCalledByWifiNetworkSpecifier msg.arg1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " msg.arg2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 2747
    :cond_a
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_b

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_b

    move v6, v2

    goto :goto_2

    :cond_b
    move v6, v1

    :goto_2
    iput-boolean v6, v5, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    goto :goto_5

    .line 2750
    :cond_c
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v3, :cond_e

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v2, :cond_d

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_d

    goto :goto_3

    :cond_d
    move v6, v1

    goto :goto_4

    :cond_e
    :goto_3
    move v6, v2

    :goto_4
    iput-boolean v6, v5, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 2752
    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iput-boolean v2, v5, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2763
    .end local v4    # "wnas":Landroid/net/wifi/WifiNetworkAgentSpecifier;
    :cond_f
    :goto_5
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v2, :cond_10

    move v1, v2

    :cond_10
    iput-boolean v1, v4, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    .line 2764
    nop

    .line 2771
    .end local v3    # "forceAutoChangeToMobile":Z
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x81001
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeHandleNetworkFactoryMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2936
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x83004

    if-eq v0, v1, :cond_0

    .line 2938
    const/4 v0, 0x0

    return v0

    .line 2940
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkRequest;

    iget v2, p1, Landroid/os/Message;->sendingUid:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;IZ)V

    .line 2945
    return v3
.end method

.method private maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 2774
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2776
    return v5

    .line 2868
    :pswitch_0
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 2869
    .local v2, "netId":I
    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$3000(I)Z

    move-result v5

    .line 2870
    .local v5, "visible":Z
    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, v2}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v13

    .line 2872
    .local v13, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v13, :cond_1

    iget-boolean v6, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eq v5, v6, :cond_1

    .line 2873
    invoke-virtual {v13}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v6

    .line 2874
    .local v6, "oldScore":I
    iput-boolean v5, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    .line 2875
    iget-boolean v7, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int/2addr v7, v5

    iput-boolean v7, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    .line 2876
    iget-boolean v7, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eqz v7, :cond_0

    .line 2877
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->getCaptivePortalMode()I

    move-result v7

    if-ne v3, v7, :cond_0

    .line 2878
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Avoiding captive portal network: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 2879
    iget-object v3, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v7, 0x8100f

    invoke-virtual {v3, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2881
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3, v13}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2882
    goto/16 :goto_a

    .line 2884
    :cond_0
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v3, v6, v13, v7}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2886
    .end local v6    # "oldScore":I
    :cond_1
    if-nez v5, :cond_2

    .line 2889
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v3

    sget-object v6, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v3, v2, v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 2890
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v3

    sget-object v6, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v3, v2, v6}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    goto/16 :goto_a

    .line 2892
    :cond_2
    if-nez v13, :cond_3

    .line 2893
    const-string v3, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$700(Ljava/lang/String;)V

    .line 2894
    goto/16 :goto_a

    .line 2896
    :cond_3
    iget-object v3, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v3, v3, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    if-nez v3, :cond_15

    .line 2897
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v6

    sget-object v8, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v10, 0x0

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Landroid/app/PendingIntent;

    iget-object v3, v13, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v12, v3, Landroid/net/NetworkMisc;->explicitlySelected:Z

    move v7, v2

    move-object v9, v13

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_a

    .line 2904
    .end local v2    # "netId":I
    .end local v5    # "visible":Z
    .end local v13    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_1
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v3, v1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 2905
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_4

    goto/16 :goto_a

    .line 2907
    :cond_4
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/shared/PrivateDnsConfig;

    invoke-static {v3, v2, v5}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 2908
    goto/16 :goto_a

    .line 2778
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_2
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v6, v1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v6}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 2779
    .restart local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_5

    goto/16 :goto_a

    .line 2781
    :cond_5
    iget-boolean v6, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    .line 2782
    .local v6, "wasPartial":Z
    iget v7, v1, Landroid/os/Message;->arg1:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_6

    move v7, v4

    goto :goto_0

    :cond_6
    move v7, v5

    :goto_0
    iput-boolean v7, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    .line 2783
    iget-boolean v7, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eq v6, v7, :cond_7

    move v7, v4

    goto :goto_1

    :cond_7
    move v7, v5

    .line 2786
    .local v7, "partialConnectivityChanged":Z
    :goto_1
    iget v8, v1, Landroid/os/Message;->arg1:I

    and-int/2addr v8, v4

    if-eqz v8, :cond_8

    move v8, v4

    goto :goto_2

    :cond_8
    move v8, v5

    .line 2787
    .local v8, "valid":Z
    :goto_2
    iget-boolean v9, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2788
    .local v9, "wasValidated":Z
    iget-object v10, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v10, v2}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v10

    .line 2791
    .local v10, "wasDefault":Z
    iget-boolean v11, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->captivePortalValidationPending:Z

    if-eqz v11, :cond_9

    if-eqz v8, :cond_9

    .line 2793
    iput-boolean v5, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->captivePortalValidationPending:Z

    .line 2794
    iget-object v11, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    sget-object v12, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-static {v11, v2, v12}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 2797
    :cond_9
    iget-object v11, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v11, v11, Ljava/lang/String;

    const-string v12, ""

    if-eqz v11, :cond_a

    iget-object v11, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    goto :goto_3

    :cond_a
    move-object v11, v12

    .line 2800
    .local v11, "redirectUrl":Ljava/lang/String;
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 2801
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " with redirect to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 2802
    :cond_b
    nop

    :goto_4
    nop

    .line 2803
    .local v12, "logMsg":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " validation "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_c

    const-string/jumbo v14, "passed"

    goto :goto_5

    :cond_c
    const-string v14, "failed"

    :goto_5
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 2807
    .end local v12    # "logMsg":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v12

    const-string v13, "WIFI"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2808
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 2809
    .local v12, "now":J
    iget-object v14, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    if-eqz v8, :cond_d

    move v15, v4

    goto :goto_6

    :cond_d
    move v15, v5

    :goto_6
    const-string/jumbo v3, "last_wifi_validation_status"

    invoke-static {v14, v3, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2810
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v14, "last_wifi_validation_time"

    invoke-static {v3, v14, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2811
    if-nez v8, :cond_e

    iget-boolean v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v3, :cond_e

    .line 2812
    new-instance v3, Landroid/content/Intent;

    const-string v14, "com.qualcomm.qti.net.wifi.WIFI_DATA_STALL"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2813
    .local v3, "intent":Landroid/content/Intent;
    iget-object v14, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v14}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v14

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v3, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2817
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v12    # "now":J
    :cond_e
    iget-boolean v3, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eq v8, v3, :cond_11

    .line 2818
    if-eqz v10, :cond_f

    .line 2819
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->metricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v3

    .line 2820
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 2819
    invoke-virtual {v3, v12, v13, v8}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkValidity(JZ)V

    .line 2822
    :cond_f
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    .line 2823
    .local v3, "oldScore":I
    iput-boolean v8, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2824
    iget-boolean v12, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int/2addr v12, v8

    iput-boolean v12, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    .line 2825
    iget-object v12, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v13, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v12, v3, v2, v13}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2827
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v12

    if-eq v3, v12, :cond_10

    iget-object v12, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12, v2}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2828
    :cond_10
    if-eqz v8, :cond_12

    .line 2829
    iget-object v12, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12, v2}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2832
    iget-object v12, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v13, v13, Landroid/net/Network;->netId:I

    sget-object v14, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v12, v13, v14}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 2834
    iget-object v12, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v13, v13, Landroid/net/Network;->netId:I

    sget-object v14, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v12, v13, v14}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 2836
    iget-object v12, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v13, v13, Landroid/net/Network;->netId:I

    sget-object v14, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v12, v13, v14}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    goto :goto_7

    .line 2839
    .end local v3    # "oldScore":I
    :cond_11
    if-eqz v7, :cond_12

    .line 2840
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v12

    iget-object v13, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v3, v12, v2, v13}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_8

    .line 2839
    :cond_12
    :goto_7
    nop

    .line 2842
    :goto_8
    iget-object v3, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3, v2}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2844
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2845
    .local v3, "redirectUrlBundle":Landroid/os/Bundle;
    sget-object v12, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    invoke-virtual {v3, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2847
    iget-object v12, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v13, 0x81007

    .line 2849
    if-eqz v8, :cond_13

    move v14, v4

    goto :goto_9

    :cond_13
    const/4 v14, 0x2

    .line 2847
    :goto_9
    invoke-virtual {v12, v13, v14, v5, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2856
    if-nez v6, :cond_14

    iget-boolean v5, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eqz v5, :cond_14

    .line 2858
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v5

    const/16 v12, 0x1d

    iget-object v13, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v5, v12, v13}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2859
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v12, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-static {v5, v12}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 2862
    :cond_14
    if-eqz v9, :cond_15

    iget-boolean v5, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-nez v5, :cond_15

    .line 2863
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5, v2}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2911
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v3    # "redirectUrlBundle":Landroid/os/Bundle;
    .end local v6    # "wasPartial":Z
    .end local v7    # "partialConnectivityChanged":Z
    .end local v8    # "valid":Z
    .end local v9    # "wasValidated":Z
    .end local v10    # "wasDefault":Z
    .end local v11    # "redirectUrl":Ljava/lang/String;
    :cond_15
    :goto_a
    return v4

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 2950
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2951
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2952
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2953
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkFactoryMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2954
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentMessage(Landroid/os/Message;)V

    .line 2956
    :cond_0
    return-void
.end method
