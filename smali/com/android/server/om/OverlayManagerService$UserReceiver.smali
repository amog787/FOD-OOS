.class final Lcom/android/server/om/OverlayManagerService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p2, "x1"    # Lcom/android/server/om/OverlayManagerService$1;

    .line 500
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 503
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 504
    .local v0, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7ad942ef    # -7.8400085E-36f

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x42dd01f1

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-wide/32 v3, 0x4000000

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    goto :goto_2

    .line 521
    :cond_3
    if-eq v0, v1, :cond_5

    .line 523
    :try_start_0
    const-string v1, "OMS ACTION_USER_REMOVED"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 525
    :try_start_1
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->onUserRemoved(I)V

    .line 526
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->forgetAllPackageInfos(I)V

    .line 527
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 530
    goto :goto_2

    .line 527
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "userId":I
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$UserReceiver;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 529
    .restart local v0    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$UserReceiver;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 530
    throw v1

    .line 506
    :cond_4
    if-eq v0, v1, :cond_5

    .line 508
    :try_start_4
    const-string v1, "OMS ACTION_USER_ADDED"

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 511
    :try_start_5
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 512
    .local v2, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 513
    :try_start_6
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v1, v0, v2}, Lcom/android/server/om/OverlayManagerService;->access$700(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 515
    nop

    .end local v2    # "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 516
    goto :goto_2

    .line 512
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v0    # "userId":I
    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$UserReceiver;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 515
    .restart local v0    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$UserReceiver;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catchall_3
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 516
    throw v1

    .line 537
    :cond_5
    :goto_2
    return-void
.end method
