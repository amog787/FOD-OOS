.class final Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;
.super Landroid/os/Handler;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkStatsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 366
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;->this$0:Lcom/android/server/net/NetworkStatsService;

    .line 367
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 368
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 372
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, "updatedIntent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->access$700(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 393
    goto :goto_0

    .line 379
    .end local v0    # "updatedIntent":Landroid/content/Intent;
    :cond_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$200(Lcom/android/server/net/NetworkStatsService;)[Landroid/net/NetworkState;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)[Landroid/net/Network;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$200(Lcom/android/server/net/NetworkStatsService;)[Landroid/net/NetworkState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$400(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkStatsService;->access$500(Lcom/android/server/net/NetworkStatsService;[Landroid/net/Network;[Landroid/net/NetworkState;Ljava/lang/String;)V

    .line 381
    goto :goto_0

    .line 384
    :cond_3
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;I)V

    .line 385
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$600(Lcom/android/server/net/NetworkStatsService;)V

    .line 386
    goto :goto_0

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$100(Lcom/android/server/net/NetworkStatsService;I)V

    .line 375
    nop

    .line 396
    :goto_0
    return-void
.end method
