.class final Lcom/android/server/job/controllers/QuotaController$StandbyTracker;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StandbyTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 1797
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAppIdleStateChanged$0$QuotaController$StandbyTracker(IILjava/lang/String;)V
    .locals 5
    .param p1, "bucket"    # I
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1804
    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result v0

    .line 1805
    .local v0, "bucketIndex":I
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/server/job/controllers/QuotaController;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to bucketIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler.Quota"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1810
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$1900(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1811
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1814
    :cond_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 1815
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 1816
    .local v4, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v4, v0}, Lcom/android/server/job/controllers/JobStatus;->setStandbyBucket(I)V

    .line 1814
    .end local v4    # "js":Lcom/android/server/job/controllers/JobStatus;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1818
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$2000(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1819
    .local v3, "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1820
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->rescheduleCutoff()V

    .line 1822
    :cond_3
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$2100(Lcom/android/server/job/controllers/QuotaController;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->access$2200(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1824
    :cond_4
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v4, v4, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v4}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 1826
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v3    # "timer":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_5
    monitor-exit v1

    .line 1827
    return-void

    .line 1812
    .restart local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_6
    :goto_1
    monitor-exit v1

    return-void

    .line 1826
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public synthetic lambda$onParoleStateChanged$1$QuotaController$StandbyTracker()V
    .locals 2

    .line 1838
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1839
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v1}, Lcom/android/server/job/controllers/QuotaController;->access$1800(Lcom/android/server/job/controllers/QuotaController;)V

    .line 1840
    monitor-exit v0

    .line 1841
    return-void

    .line 1840
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAppIdleStateChanged(Ljava/lang/String;IZII)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "bucket"    # I
    .param p5, "reason"    # I

    .line 1803
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;

    invoke-direct {v1, p0, p4, p2, p1}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$UNCXPiY4xGPFhTnC-LuVzvqiAl4;-><init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1828
    return-void
.end method

.method public onParoleStateChanged(Z)V
    .locals 2
    .param p1, "isParoleOn"    # Z

    .line 1832
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/QuotaController;->access$1702(Lcom/android/server/job/controllers/QuotaController;Z)Z

    .line 1833
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Global parole state now "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "ON"

    goto :goto_0

    :cond_0
    const-string v1, "OFF"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    :cond_1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$HBosnPX15xU_maD6xbBsC7aJqOU;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/-$$Lambda$QuotaController$StandbyTracker$HBosnPX15xU_maD6xbBsC7aJqOU;-><init>(Lcom/android/server/job/controllers/QuotaController$StandbyTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1842
    return-void
.end method
