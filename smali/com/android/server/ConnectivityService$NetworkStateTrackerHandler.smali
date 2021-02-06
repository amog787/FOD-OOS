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

    .line 2885
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2886
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2887
    return-void
.end method

.method private getCaptivePortalMode()I
    .locals 3

    .line 3195
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleNetworkTested(Lcom/android/server/connectivity/NetworkAgentInfo;ILjava/lang/String;)V
    .locals 12
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "testResult"    # I
    .param p3, "redirectUrl"    # Ljava/lang/String;

    .line 3109
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    .line 3110
    .local v0, "wasPartial":Z
    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    .line 3111
    iget-boolean v1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eq v0, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 3114
    .local v1, "partialConnectivityChanged":Z
    :goto_1
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    .line 3115
    .local v4, "valid":Z
    :goto_2
    iget-boolean v5, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 3116
    .local v5, "wasValidated":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v6, p1}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v6

    .line 3119
    .local v6, "wasDefault":Z
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3120
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " with redirect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 3121
    :cond_3
    const-string v7, ""

    :goto_3
    nop

    .line 3122
    .local v7, "logMsg":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " validation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    const-string/jumbo v9, "passed"

    goto :goto_4

    :cond_4
    const-string v9, "failed"

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 3126
    .end local v7    # "logMsg":Ljava/lang/String;
    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v7, :cond_6

    iget-object v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 3127
    invoke-virtual {v7, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 3129
    .local v7, "now":J
    iget-object v9, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    if-eqz v4, :cond_5

    move v10, v3

    goto :goto_5

    :cond_5
    move v10, v2

    :goto_5
    const-string/jumbo v11, "last_wifi_validation_status"

    invoke-static {v9, v11, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3130
    iget-object v9, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "last_wifi_validation_time"

    invoke-static {v9, v10, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 3131
    if-nez v4, :cond_6

    iget-boolean v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v9, :cond_6

    .line 3132
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.qualcomm.qti.net.wifi.WIFI_DATA_STALL"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3133
    .local v9, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v9, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3137
    .end local v7    # "now":J
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_6
    iget-boolean v7, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eq v4, v7, :cond_9

    .line 3138
    if-eqz v6, :cond_7

    .line 3139
    iget-object v7, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$Dependencies;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService$Dependencies;->getMetricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v7

    .line 3140
    invoke-interface {v7}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v7

    .line 3141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 3140
    invoke-virtual {v7, v8, v9, v4}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkValidity(JZ)V

    .line 3143
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v7

    .line 3144
    .local v7, "oldScore":I
    iput-boolean v4, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 3145
    iget-boolean v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int/2addr v8, v4

    iput-boolean v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    .line 3146
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v8, v7, p1, v9}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3148
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v8

    if-eq v7, v8, :cond_8

    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8, p1}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3149
    :cond_8
    if-eqz v4, :cond_a

    .line 3150
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8, p1}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3153
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v9, v9, Landroid/net/Network;->netId:I

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3155
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v9, v9, Landroid/net/Network;->netId:I

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3157
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v9, v9, Landroid/net/Network;->netId:I

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3159
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v8}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v9, v9, Landroid/net/Network;->netId:I

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PRIVATE_DNS_BROKEN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3164
    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean v2, v8, Landroid/net/NetworkAgentConfig;->hasShownBroken:Z

    goto :goto_6

    .line 3166
    .end local v7    # "oldScore":I
    :cond_9
    if-eqz v1, :cond_a

    .line 3167
    iget-object v7, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v8

    iget-object v9, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v7, v8, p1, v9}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_7

    .line 3166
    :cond_a
    :goto_6
    nop

    .line 3169
    :goto_7
    iget-object v7, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v7, p1}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3171
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3172
    .local v7, "redirectUrlBundle":Landroid/os/Bundle;
    sget-object v8, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    invoke-virtual {v7, v8, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v9, 0x81007

    .line 3176
    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    const/4 v3, 0x2

    .line 3174
    :goto_8
    invoke-virtual {v8, v9, v3, v2, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3183
    if-nez v0, :cond_c

    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eqz v2, :cond_c

    .line 3185
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v2

    const/16 v3, 0x1d

    iget-object v8, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v2, v3, v8}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3186
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v3, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-static {v2, v3}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 3189
    :cond_c
    if-eqz v5, :cond_d

    iget-boolean v2, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-nez v2, :cond_d

    .line 3190
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, p1}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3192
    :cond_d
    return-void
.end method

.method private maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2890
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2892
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 2903
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_0

    .line 2898
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2899
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    .line 2894
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 2895
    nop

    .line 2907
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

    .line 3201
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    .line 3203
    const/4 v0, 0x0

    return v0

    .line 3205
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3206
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v0, v2}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3207
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3212
    .end local v0    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private maybeHandleNetworkAgentMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2911
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2912
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2913
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1300()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2914
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1400(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%s from unknown NetworkAgent"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 2916
    :cond_0
    return-void

    .line 2919
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x81008

    if-eq v3, v4, :cond_5

    const v4, 0x8100d

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 2948
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v0, v4}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2951
    new-array v2, v2, [I

    const/16 v3, 0xba

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2952
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/server/wifi/OpSlaManagerInjector;->sendWifiScoreToKernel(I)V

    goto/16 :goto_2

    .line 2937
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    .line 2938
    .local v1, "newLp":Landroid/net/LinkProperties;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v0, v1}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 2939
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 2940
    goto/16 :goto_2

    .line 2921
    .end local v1    # "newLp":Landroid/net/LinkProperties;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 2922
    .local v1, "networkCapabilities":Landroid/net/NetworkCapabilities;
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->hasConnectivityManagedCapability()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2923
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1500()Ljava/lang/String;

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

    .line 2925
    :cond_2
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2930
    new-instance v2, Landroid/net/NetworkCapabilities;

    invoke-direct {v2, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move-object v1, v2

    .line 2931
    iget v2, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->creatorUid:I

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->restrictCapabilitesForTestNetwork(I)V

    .line 2933
    :cond_3
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2934
    goto/16 :goto_2

    .line 2943
    .end local v1    # "networkCapabilities":Landroid/net/NetworkCapabilities;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 2944
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v0, v1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 2945
    goto/16 :goto_2

    .line 2998
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_4
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventSocketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    goto/16 :goto_2

    .line 2958
    :cond_5
    iget-boolean v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v3, :cond_6

    .line 2959
    const-string v3, "ERROR: cannot call explicitlySelected on already-connected network"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 2961
    :cond_6
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2000(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    .line 2968
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 2969
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_e

    .line 2971
    const/4 v3, 0x0

    .line 2972
    .local v3, "isCalledByWifiNetworkSpecifier":Z
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v4, :cond_8

    .line 2973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nai.networkCapabilities.getRequestorUid():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v5}, Landroid/net/NetworkCapabilities;->getRequestorUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 2974
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getRequestorUid()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    move v4, v2

    goto :goto_0

    :cond_7
    move v4, v1

    :goto_0
    move v3, v4

    .line 2976
    :cond_8
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2977
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2000(I)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2000(I)Z

    move-result v5

    if-eqz v5, :cond_9

    move v1, v2

    :cond_9
    iput-boolean v1, v4, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    goto :goto_1

    .line 2979
    :cond_a
    if-eqz v3, :cond_d

    .line 2980
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCalledByWifiNetworkSpecifier msg.arg1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " msg.arg2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 2981
    :cond_b
    iget-object v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2000(I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2000(I)Z

    move-result v5

    if-eqz v5, :cond_c

    move v1, v2

    :cond_c
    iput-boolean v1, v4, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    goto :goto_1

    .line 2983
    :cond_d
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean v2, v1, Landroid/net/NetworkAgentConfig;->acceptUnvalidated:Z

    .line 2994
    .end local v3    # "isCalledByWifiNetworkSpecifier":Z
    :cond_e
    :goto_1
    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2000(I)Z

    move-result v2

    iput-boolean v2, v1, Landroid/net/NetworkAgentConfig;->acceptPartialConnectivity:Z

    .line 2995
    nop

    .line 3002
    :cond_f
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x81001
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 3005
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 3007
    :pswitch_0
    return v4

    .line 3098
    :pswitch_1
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v4}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 3099
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 3100
    :cond_0
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/CaptivePortalData;

    invoke-static {v4, v2, v5}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/CaptivePortalData;)V

    .line 3101
    goto/16 :goto_3

    .line 3009
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 3010
    .local v2, "netId":Ljava/lang/Integer;
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 3011
    .local v5, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v5, :cond_1

    .line 3012
    goto/16 :goto_3

    .line 3014
    :cond_1
    iget v6, v1, Landroid/os/Message;->arg1:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v4

    .line 3016
    .local v6, "probePrivateDnsCompleted":Z
    :goto_0
    iget v7, v1, Landroid/os/Message;->arg2:I

    and-int/lit8 v7, v7, 0x40

    if-nez v7, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v4

    .line 3018
    .local v7, "privateDnsBroken":Z
    :goto_1
    if-eqz v6, :cond_6

    .line 3019
    iget-object v4, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result v4

    if-eq v4, v7, :cond_4

    .line 3020
    iget-object v4, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v4, v7}, Landroid/net/NetworkCapabilities;->setPrivateDnsBroken(Z)V

    .line 3021
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v4

    .line 3022
    .local v4, "oldScore":I
    iget-object v8, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v8, v4, v5, v9}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3026
    .end local v4    # "oldScore":I
    :cond_4
    if-eqz v7, :cond_5

    iget-object v4, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v4, v4, Landroid/net/NetworkAgentConfig;->hasShownBroken:Z

    if-nez v4, :cond_5

    .line 3027
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    sget-object v8, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PRIVATE_DNS_BROKEN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-static {v4, v5, v8}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3029
    :cond_5
    iget-object v4, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean v7, v4, Landroid/net/NetworkAgentConfig;->hasShownBroken:Z

    goto/16 :goto_3

    .line 3030
    :cond_6
    iget-object v8, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 3036
    iget-object v8, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8, v4}, Landroid/net/NetworkCapabilities;->setPrivateDnsBroken(Z)V

    .line 3037
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v8

    .line 3038
    .local v8, "oldScore":I
    iget-object v9, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v9, v8, v5, v10}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3039
    iget-object v9, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iput-boolean v4, v9, Landroid/net/NetworkAgentConfig;->hasShownBroken:Z

    .line 3040
    .end local v8    # "oldScore":I
    goto/16 :goto_3

    .line 3054
    .end local v2    # "netId":Ljava/lang/Integer;
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v6    # "probePrivateDnsCompleted":Z
    .end local v7    # "privateDnsBroken":Z
    :pswitch_3
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 3055
    .local v2, "netId":I
    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$2000(I)Z

    move-result v4

    .line 3056
    .local v4, "visible":Z
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5, v2}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 3058
    .restart local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-eqz v5, :cond_8

    iget-boolean v6, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eq v4, v6, :cond_8

    .line 3059
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v6

    .line 3060
    .local v6, "oldScore":I
    iput-boolean v4, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    .line 3061
    iget-boolean v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int/2addr v7, v4

    iput-boolean v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    .line 3062
    iget-boolean v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eqz v7, :cond_7

    const/4 v7, 0x2

    .line 3063
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->getCaptivePortalMode()I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 3064
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Avoiding captive portal network: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 3065
    iget-object v7, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v8, 0x8100f

    invoke-virtual {v7, v8}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 3067
    iget-object v7, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v7, v5}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 3068
    goto/16 :goto_3

    .line 3070
    :cond_7
    iget-object v7, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v8, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v7, v6, v5, v8}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 3072
    .end local v6    # "oldScore":I
    :cond_8
    if-nez v4, :cond_9

    .line 3075
    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v6

    sget-object v7, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 3076
    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v6

    sget-object v7, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v6, v2, v7}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    goto :goto_3

    .line 3078
    :cond_9
    if-nez v5, :cond_a

    .line 3079
    const-string v6, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 3080
    goto :goto_3

    .line 3082
    :cond_a
    iget-object v6, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v6, v6, Landroid/net/NetworkAgentConfig;->provisioningNotificationDisabled:Z

    if-nez v6, :cond_e

    .line 3083
    iget-object v6, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v10

    sget-object v12, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v14, 0x0

    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v15, v6

    check-cast v15, Landroid/app/PendingIntent;

    iget-object v6, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkAgentConfig:Landroid/net/NetworkAgentConfig;

    iget-boolean v6, v6, Landroid/net/NetworkAgentConfig;->explicitlySelected:Z

    move v11, v2

    move-object v13, v5

    move/from16 v16, v6

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    goto :goto_3

    .line 3091
    .end local v2    # "netId":I
    .end local v4    # "visible":Z
    .end local v5    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_4
    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v4, v1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v4}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v2

    .line 3092
    .local v2, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v2, :cond_b

    goto :goto_3

    .line 3094
    :cond_b
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/shared/PrivateDnsConfig;

    invoke-static {v4, v2, v5}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 3095
    goto :goto_3

    .line 3044
    .end local v2    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :pswitch_5
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/ConnectivityService$NetworkTestedResults;

    .line 3046
    .local v2, "results":Lcom/android/server/ConnectivityService$NetworkTestedResults;
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService$NetworkTestedResults;->access$2400(Lcom/android/server/ConnectivityService$NetworkTestedResults;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    .line 3047
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v4, :cond_c

    goto :goto_3

    .line 3049
    :cond_c
    invoke-static {v2}, Lcom/android/server/ConnectivityService$NetworkTestedResults;->access$2500(Lcom/android/server/ConnectivityService$NetworkTestedResults;)I

    move-result v5

    .line 3050
    invoke-static {v2}, Lcom/android/server/ConnectivityService$NetworkTestedResults;->access$2600(Lcom/android/server/ConnectivityService$NetworkTestedResults;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    const-string v6, ""

    goto :goto_2

    :cond_d
    invoke-static {v2}, Lcom/android/server/ConnectivityService$NetworkTestedResults;->access$2600(Lcom/android/server/ConnectivityService$NetworkTestedResults;)Ljava/lang/String;

    move-result-object v6

    .line 3049
    :goto_2
    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->handleNetworkTested(Lcom/android/server/connectivity/NetworkAgentInfo;ILjava/lang/String;)V

    .line 3051
    nop

    .line 3104
    .end local v2    # "results":Lcom/android/server/ConnectivityService$NetworkTestedResults;
    .end local v4    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_e
    :goto_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 3217
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3218
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3219
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3220
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentMessage(Landroid/os/Message;)V

    .line 3222
    :cond_0
    return-void
.end method
