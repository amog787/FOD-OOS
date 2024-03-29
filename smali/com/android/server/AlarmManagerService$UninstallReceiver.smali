.class Lcom/android/server/AlarmManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .line 4707
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4708
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4709
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4710
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4711
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4712
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4713
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4715
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 4716
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4717
    const-string v2, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4718
    const-string v2, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4719
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4720
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4724
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4725
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4726
    const/4 v3, 0x0

    .line 4727
    .local v3, "pkgList":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    goto :goto_1

    :sswitch_1
    const-string v5, "android.intent.action.USER_STOPPED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v9

    goto :goto_1

    :sswitch_2
    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_1

    :sswitch_3
    const-string v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v10

    goto :goto_1

    :sswitch_4
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v11

    goto :goto_1

    :sswitch_5
    const-string v5, "android.intent.action.UID_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v8

    goto :goto_1

    :goto_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_d

    if-eq v4, v11, :cond_7

    if-eq v4, v9, :cond_5

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_1

    if-eq v4, v6, :cond_2

    goto :goto_2

    .line 4754
    :cond_1
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4756
    monitor-exit v2

    return-void

    .line 4760
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 4761
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_8

    .line 4762
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 4763
    .local v4, "pkg":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 4764
    new-array v5, v11, [Ljava/lang/String;

    aput-object v4, v5, v10

    move-object v3, v5

    goto :goto_2

    .line 4748
    .end local v1    # "data":Landroid/net/Uri;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_3
    if-ltz v0, :cond_4

    .line 4749
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 4750
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4752
    :cond_4
    monitor-exit v2

    return-void

    .line 4741
    :cond_5
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4742
    .local v1, "userHandle":I
    if-ltz v1, :cond_6

    .line 4743
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/AlarmManagerService;->removeUserLocked(I)V

    .line 4744
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v4, v1}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->removeForUser(I)V

    .line 4746
    :cond_6
    monitor-exit v2

    return-void

    .line 4738
    .end local v1    # "userHandle":I
    :cond_7
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 4739
    nop

    .line 4769
    :cond_8
    :goto_2
    if-eqz v3, :cond_c

    array-length v1, v3

    if-lez v1, :cond_c

    .line 4770
    array-length v1, v3

    :goto_3
    if-ge v10, v1, :cond_c

    aget-object v4, v3, v10

    .line 4771
    .restart local v4    # "pkg":Ljava/lang/String;
    if-ltz v0, :cond_9

    .line 4773
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->removeForPackage(Ljava/lang/String;I)V

    .line 4774
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/AlarmManagerService;->removeLocked(I)V

    goto :goto_4

    .line 4777
    :cond_9
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/AlarmManagerService;->removeLocked(Ljava/lang/String;)V

    .line 4779
    :goto_4
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4780
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v11

    .local v5, "i":I
    :goto_5
    if-ltz v5, :cond_b

    .line 4781
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 4782
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 4783
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-gtz v7, :cond_a

    .line 4784
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4780
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_a
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 4770
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 4790
    .end local v3    # "pkgList":[Ljava/lang/String;
    :cond_c
    monitor-exit v2

    .line 4791
    return-void

    .line 4729
    .restart local v3    # "pkgList":[Ljava/lang/String;
    :cond_d
    const-string v4, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 4730
    array-length v4, v3

    :goto_6
    if-ge v10, v4, :cond_f

    aget-object v5, v3, v10

    .line 4731
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$UninstallReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/AlarmManagerService;->lookForPackageLocked(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 4732
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService$UninstallReceiver;->setResultCode(I)V

    .line 4733
    monitor-exit v2

    return-void

    .line 4730
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 4736
    :cond_f
    monitor-exit v2

    return-void

    .line 4790
    .end local v3    # "pkgList":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6849e2b4 -> :sswitch_5
        -0x53ae571d -> :sswitch_4
        -0x3ff1ba66 -> :sswitch_3
        -0x2d2ad030 -> :sswitch_2
        -0x2c3dc982 -> :sswitch_1
        0x1f50b9c2 -> :sswitch_0
    .end sparse-switch
.end method
