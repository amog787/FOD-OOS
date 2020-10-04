.class final Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1869
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 1870
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1871
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 1875
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1876
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v1, :cond_0

    .line 1877
    monitor-exit v0

    return-void

    .line 1879
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 1941
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1942
    .local v1, "uid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 1943
    .local v3, "disabled":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 1944
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v5, "app uid idle"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1946
    :cond_2
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1947
    :try_start_1
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v5}, Lcom/android/server/job/JobSchedulerService;->access$800(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1948
    monitor-exit v4

    .line 1949
    goto/16 :goto_3

    .line 1948
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_2
    throw v2

    .line 1934
    .end local v1    # "uid":I
    .end local v3    # "disabled":Z
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1935
    .restart local v1    # "uid":I
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1936
    :try_start_3
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v4}, Lcom/android/server/job/JobSchedulerService;->access$800(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1937
    monitor-exit v2

    .line 1938
    goto/16 :goto_3

    .line 1937
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_4
    throw v3

    .line 1922
    .end local v1    # "uid":I
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1923
    .restart local v1    # "uid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    .line 1924
    .restart local v3    # "disabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v5, 0x14

    invoke-virtual {v4, v1, v5}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1925
    if-eqz v3, :cond_4

    .line 1926
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v5, "uid gone"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1928
    :cond_4
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1929
    :try_start_5
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v5}, Lcom/android/server/job/JobSchedulerService;->access$800(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1930
    monitor-exit v4

    .line 1931
    goto/16 :goto_3

    .line 1930
    :catchall_2
    move-exception v2

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_6
    throw v2

    .line 1916
    .end local v1    # "uid":I
    .end local v3    # "disabled":Z
    .restart local p0    # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1    # "message":Landroid/os/Message;
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1917
    .restart local v1    # "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1918
    .local v2, "procState":I
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1919
    goto :goto_3

    .line 1905
    .end local v1    # "uid":I
    .end local v2    # "procState":I
    :pswitch_4
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 1906
    const-string v1, "JobScheduler"

    const-string v2, "MSG_CHECK_JOB_GREEDY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$500(Lcom/android/server/job/JobSchedulerService;)V

    .line 1909
    goto :goto_3

    .line 1911
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    const/4 v3, 0x0

    const-string v4, "app no longer allowed to run"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/job/JobSchedulerService;->access$700(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1913
    goto :goto_3

    .line 1892
    :pswitch_6
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 1893
    const-string v1, "JobScheduler"

    const-string v2, "MSG_CHECK_JOB"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 1896
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eqz v1, :cond_7

    .line 1898
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$500(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_3

    .line 1901
    :cond_7
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)V

    .line 1903
    goto :goto_3

    .line 1881
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1884
    .local v1, "runNow":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2, v1}, Lcom/android/server/job/JobSchedulerService;->access$400(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1885
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1886
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    invoke-static {v2, v1, v3}, Lcom/android/server/job/JobSchedulerService;->addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1888
    :cond_8
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->access$500(Lcom/android/server/job/JobSchedulerService;)V

    .line 1890
    .end local v1    # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :goto_2
    nop

    .line 1953
    :goto_3
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 1955
    monitor-exit v0

    .line 1956
    return-void

    .line 1955
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
