.class Lcom/android/server/net/NetworkPolicyManagerService$13;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPolicyManagerService.java"


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

    .line 1117
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 1121
    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1124
    const/16 v1, 0xb

    .line 1125
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1126
    .local v1, "newMetered":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1127
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 1126
    invoke-static {v4, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v4

    .line 1129
    .local v4, "meteredChanged":Z
    const/16 v5, 0x12

    .line 1130
    invoke-virtual {p2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1131
    .local v2, "newRoaming":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1132
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 1131
    invoke-static {v3, v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v3

    .line 1134
    .local v3, "roamingChanged":Z
    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    .line 1135
    :cond_3
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v5

    iget v6, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v5, v6, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meterednessChanged(IZ)V

    .line 1136
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1138
    .end local v1    # "newMetered":Z
    .end local v2    # "newRoaming":Z
    .end local v3    # "roamingChanged":Z
    .end local v4    # "meteredChanged":Z
    :cond_4
    monitor-exit v0

    .line 1139
    return-void

    .line 1138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1121
    :cond_5
    :goto_2
    return-void
.end method
