.class Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;
.super Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetPolicyAppIdleStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 4677
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p2, "x1"    # Lcom/android/server/net/NetworkPolicyManagerService$1;

    .line 4677
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 4682
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    .line 4684
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4685
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v2

    invoke-virtual {v2, v0, p3}, Lcom/android/server/net/NetworkPolicyLogger;->appIdleStateChanged(IZ)V

    .line 4686
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4687
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2300(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 4688
    monitor-exit v1

    .line 4690
    .end local v0    # "uid":I
    goto :goto_0

    .line 4688
    .restart local v0    # "uid":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "idle":Z
    .end local p4    # "bucket":I
    .end local p5    # "reason":I
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4689
    .end local v0    # "uid":I
    .restart local p0    # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "idle":Z
    .restart local p4    # "bucket":I
    .restart local p5    # "reason":I
    :catch_0
    move-exception v0

    .line 4691
    :goto_0
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .locals 2
    .param p1, "isParoleOn"    # Z

    .line 4695
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4696
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyLogger;->paroleStateChanged(Z)V

    .line 4697
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4698
    monitor-exit v0

    .line 4699
    return-void

    .line 4698
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
