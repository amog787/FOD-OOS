.class Lcom/android/server/job/JobSchedulerService$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobSchedulerService;

    .line 811
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 814
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receieved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1, p2}, Lcom/android/server/job/JobSchedulerService;->access$100(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v2, -0x1

    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 821
    .local v3, "pkgUid":I
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_b

    .line 824
    if-eqz v1, :cond_a

    if-eq v3, v2, :cond_a

    .line 825
    const-string v2, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 827
    .local v2, "changedComponents":[Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 828
    array-length v4, v2

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v2, v5

    .line 829
    .local v6, "component":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 830
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package state change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_1
    :try_start_0
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 835
    .local v4, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 836
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v5, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v7

    .line 837
    .local v7, "state":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 839
    :cond_2
    sget-boolean v8, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 840
    const-string v8, "JobScheduler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing jobs for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " in user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_3
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v9, "app disabled"

    invoke-virtual {v8, v1, v3, v9}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    .end local v4    # "userId":I
    .end local v5    # "pm":Landroid/content/pm/IPackageManager;
    .end local v7    # "state":I
    :cond_4
    goto :goto_1

    .line 846
    :catch_0
    move-exception v4

    .line 858
    goto :goto_1

    .line 828
    .end local v6    # "component":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 861
    :cond_6
    :goto_1
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " changed. Reevaluating controller states."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_7
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 866
    :try_start_1
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "c":I
    :goto_2
    if-ltz v5, :cond_8

    .line 867
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v6, v3}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    .line 866
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 869
    .end local v5    # "c":I
    :cond_8
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 871
    .end local v2    # "changedComponents":[Ljava/lang/String;
    :cond_9
    :goto_3
    goto/16 :goto_8

    .line 872
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PACKAGE_CHANGED for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "JobScheduler"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 874
    :cond_b
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 877
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_17

    .line 878
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 879
    .local v2, "uidRemoved":I
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_c

    .line 880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing jobs for uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "JobScheduler"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_c
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v6, "app uninstalled"

    invoke-virtual {v4, v1, v2, v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V

    .line 883
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 884
    nop

    .restart local v5    # "c":I
    :goto_4
    :try_start_2
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 885
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v6, v1, v3}, Lcom/android/server/job/controllers/StateController;->onAppRemovedLocked(Ljava/lang/String;I)V

    .line 884
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 887
    .end local v5    # "c":I
    :cond_d
    monitor-exit v4

    .line 888
    .end local v2    # "uidRemoved":I
    goto/16 :goto_8

    .line 887
    .restart local v2    # "uidRemoved":I
    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 889
    .end local v2    # "uidRemoved":I
    :cond_e
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 890
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 891
    .restart local v4    # "userId":I
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_f

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing jobs for user: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "JobScheduler"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_f
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v4}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    .line 895
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 896
    move v2, v5

    .local v2, "c":I
    :goto_5
    :try_start_3
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_10

    .line 897
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v5, v4}, Lcom/android/server/job/controllers/StateController;->onUserRemovedLocked(I)V

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 899
    .end local v2    # "c":I
    :cond_10
    monitor-exit v6

    .line 900
    .end local v4    # "userId":I
    goto/16 :goto_8

    .line 899
    .restart local v4    # "userId":I
    :catchall_2
    move-exception v2

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 900
    .end local v4    # "userId":I
    :cond_11
    const-string v4, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 903
    if-eq v3, v2, :cond_17

    .line 905
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 906
    :try_start_4
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v5, v3}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v5

    .line 907
    .local v5, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 908
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_6
    if-ltz v4, :cond_14

    .line 909
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 910
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_12

    .line 911
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restart query: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has jobs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JobScheduler"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_12
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobSchedulerService$1;->setResultCode(I)V

    .line 915
    goto :goto_7

    .line 908
    :cond_13
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 918
    .end local v4    # "i":I
    .end local v5    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_14
    :goto_7
    goto :goto_8

    .line 907
    :catchall_3
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    .line 919
    :cond_15
    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 921
    if-eq v3, v2, :cond_17

    .line 922
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_16

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing jobs for pkg "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "JobScheduler"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_16
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v4, "app force stopped"

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V

    .line 928
    :cond_17
    :goto_8
    return-void
.end method
