.class Lcom/android/server/job/controllers/ConnectivityController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/ConnectivityController;

    .line 543
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 546
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/ConnectivityController;->access$100(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 549
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "capabilities"    # Landroid/net/NetworkCapabilities;

    .line 554
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCapabilitiesChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 558
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 562
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Connectivity"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v1}, Lcom/android/server/job/controllers/ConnectivityController;->access$100(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 567
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$1;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v1, -0x1

    invoke-static {v0, v1, p1}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 569
    return-void

    .line 567
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
