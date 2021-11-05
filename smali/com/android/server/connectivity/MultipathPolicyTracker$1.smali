.class Lcom/android/server/connectivity/MultipathPolicyTracker$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MultipathPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/MultipathPolicyTracker;->registerTrackMobileCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/MultipathPolicyTracker;

    .line 452
    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$1;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "nc"    # Landroid/net/NetworkCapabilities;

    .line 455
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$1;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1100(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 456
    .local v0, "existing":Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;
    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 458
    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    .line 459
    return-void

    .line 463
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$1;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1100(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    new-instance v2, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    iget-object v3, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$1;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {v2, v3, p1, p2}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    goto :goto_0

    .line 464
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t track mobile network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 472
    iget-object v0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$1;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1100(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    .line 473
    .local v0, "existing":Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;
    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->shutdown()V

    .line 475
    iget-object v1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$1;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-static {v1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->access$1100(Lcom/android/server/connectivity/MultipathPolicyTracker;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :cond_0
    return-void
.end method
