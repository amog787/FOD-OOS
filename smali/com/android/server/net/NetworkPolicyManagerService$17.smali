.class Lcom/android/server/net/NetworkPolicyManagerService$17;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 4761
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 4764
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 4926
    :pswitch_0
    invoke-static {p1}, Lcom/android/server/net/OpNetworkPolicyInjector;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 4787
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2800(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsManagerInternal;->forceUpdate()V

    .line 4789
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4792
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 4793
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 4797
    monitor-exit v0

    .line 4798
    return v2

    .line 4797
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4909
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 4910
    .local v0, "plans":[Landroid/telephony/SubscriptionPlan;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 4911
    .local v1, "subId":I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 4912
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 4913
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 4914
    .local v5, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6, v5, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3900(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;I[Landroid/telephony/SubscriptionPlan;)V

    .line 4912
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4916
    .end local v4    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4917
    return v2

    .line 4903
    .end local v0    # "plans":[Landroid/telephony/SubscriptionPlan;
    .end local v1    # "subId":I
    .end local v3    # "length":I
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 4904
    .local v0, "template":Landroid/net/NetworkTemplate;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    move v1, v2

    .line 4905
    .local v1, "enabled":Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3800(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V

    .line 4906
    return v2

    .line 4897
    .end local v0    # "template":Landroid/net/NetworkTemplate;
    .end local v1    # "enabled":Z
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4898
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    .line 4899
    .local v1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3700(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    .line 4900
    return v2

    .line 4885
    .end local v0    # "userId":I
    .end local v1    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4886
    .local v0, "overrideMask":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4887
    .local v1, "overrideValue":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 4888
    .local v3, "subId":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 4889
    .local v4, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 4890
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 4891
    .local v6, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v3, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V

    .line 4889
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4893
    .end local v5    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4894
    return v2

    .line 4881
    .end local v0    # "overrideMask":I
    .end local v1    # "overrideValue":I
    .end local v3    # "subId":I
    .end local v4    # "length":I
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3500(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 4882
    return v2

    .line 4841
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4842
    .local v0, "uid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4843
    .local v1, "policy":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    .line 4845
    .local v3, "notifyApp":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 4846
    .restart local v4    # "length":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v4, :cond_3

    .line 4847
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 4848
    .restart local v6    # "listener":Landroid/net/INetworkPolicyListener;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 4846
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4850
    .end local v5    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4852
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4853
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3200(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V

    .line 4855
    :cond_4
    return v2

    .line 4875
    .end local v0    # "uid":I
    .end local v1    # "policy":I
    .end local v3    # "notifyApp":Ljava/lang/Boolean;
    .end local v4    # "length":I
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4876
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3300(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 4877
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2800(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v1

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/net/NetworkStatsManagerInternal;->setStatsProviderLimitAsync(Ljava/lang/String;J)V

    .line 4878
    return v2

    .line 4866
    .end local v0    # "iface":Ljava/lang/String;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4868
    .restart local v0    # "iface":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v3, v1

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    iget v1, p1, Landroid/os/Message;->arg2:I

    int-to-long v5, v1

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    .line 4869
    .local v3, "quota":J
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3300(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 4870
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, v0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3400(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    .line 4871
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2800(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/net/NetworkStatsManagerInternal;->setStatsProviderLimitAsync(Ljava/lang/String;J)V

    .line 4872
    return v2

    .line 4858
    .end local v0    # "iface":Ljava/lang/String;
    .end local v3    # "quota":J
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4861
    .local v0, "lowestRule":J
    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    .line 4862
    .local v3, "persistThreshold":J
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2800(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/server/net/NetworkStatsManagerInternal;->advisePersistThreshold(J)V

    .line 4863
    return v2

    .line 4827
    .end local v0    # "lowestRule":J
    .end local v3    # "persistThreshold":J
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    move v0, v1

    .line 4828
    .local v0, "restrictBackground":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 4829
    .local v1, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_6

    .line 4830
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 4831
    .local v4, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 4829
    .end local v4    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4833
    .end local v3    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4834
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4836
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4837
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4838
    return v2

    .line 4801
    .end local v0    # "restrictBackground":Z
    .end local v1    # "length":I
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4802
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4804
    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 4805
    monitor-exit v1

    return v2

    .line 4807
    :cond_7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4811
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2800(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsManagerInternal;->forceUpdate()V

    .line 4813
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4816
    :try_start_2
    const-string v1, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_LIMIT_REACHED iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4818
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 4819
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 4823
    monitor-exit v3

    .line 4824
    return v2

    .line 4823
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 4807
    :catchall_2
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 4777
    .end local v0    # "iface":Ljava/lang/String;
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 4778
    .local v0, "meteredIfaces":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 4779
    .restart local v1    # "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v1, :cond_8

    .line 4780
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 4781
    .restart local v4    # "listener":Landroid/net/INetworkPolicyListener;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 4779
    .end local v4    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4783
    .end local v3    # "i":I
    :cond_8
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4784
    return v2

    .line 4766
    .end local v0    # "meteredIfaces":[Ljava/lang/String;
    .end local v1    # "length":I
    :pswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4767
    .local v0, "uid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4768
    .local v1, "uidRules":I
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 4769
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v3, :cond_9

    .line 4770
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 4771
    .local v5, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6, v5, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 4769
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 4773
    .end local v4    # "i":I
    :cond_9
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4774
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
