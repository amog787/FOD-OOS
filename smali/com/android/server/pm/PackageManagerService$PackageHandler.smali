.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1476
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1477
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1478
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 28
    .param p1, "msg"    # Landroid/os/Message;

    .line 1489
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1c

    const/4 v7, 0x5

    const-wide/32 v8, 0x40000

    if-eq v0, v7, :cond_1a

    const/16 v7, 0x9

    if-eq v0, v7, :cond_e

    const/16 v7, 0x63

    if-eq v0, v7, :cond_d

    const/16 v7, -0x16

    const/16 v10, 0xe

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_10

    .line 1621
    :pswitch_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1622
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1623
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 1625
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    goto/16 :goto_10

    .line 1613
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1614
    :try_start_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 1615
    .local v0, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    if-eqz v0, :cond_1

    .line 1616
    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 1618
    .end local v0    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_1
    monitor-exit v3

    .line 1619
    goto/16 :goto_10

    .line 1618
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1807
    :pswitch_2
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1808
    .local v0, "enableRollbackToken":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 1809
    .local v3, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    if-eqz v3, :cond_22

    .line 1810
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    .line 1811
    .local v4, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 1813
    .local v5, "originUri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable rollback timed out for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1816
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Continuing with installation of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const-string v6, "enable_rollback"

    invoke-static {v8, v9, v6, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1819
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleRollbackEnabled()V

    .line 1820
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1822
    .local v6, "rollbackTimeoutIntent":Landroid/content/Intent;
    const-string v7, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1825
    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1827
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v9, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1829
    .end local v4    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v5    # "originUri":Landroid/net/Uri;
    .end local v6    # "rollbackTimeoutIntent":Landroid/content/Intent;
    goto/16 :goto_10

    .line 1782
    .end local v0    # "enableRollbackToken":I
    .end local v3    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    :pswitch_3
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1783
    .restart local v0    # "enableRollbackToken":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 1784
    .local v3, "enableRollbackCode":I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 1785
    .local v4, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    if-nez v4, :cond_2

    .line 1786
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid rollback enabled token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    goto/16 :goto_10

    .line 1791
    :cond_2
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1793
    if-eq v3, v6, :cond_3

    .line 1794
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v5

    .line 1795
    .local v5, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 1796
    .local v6, "originUri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to enable rollback for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Continuing with installation of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    .end local v5    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v6    # "originUri":Landroid/net/Uri;
    :cond_3
    const-string v5, "enable_rollback"

    invoke-static {v8, v9, v5, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1803
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleRollbackEnabled()V

    .line 1804
    goto/16 :goto_10

    .line 1774
    .end local v0    # "enableRollbackToken":I
    .end local v3    # "enableRollbackCode":I
    .end local v4    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    :pswitch_4
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/InstantAppRequest;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    .line 1779
    goto/16 :goto_10

    .line 1648
    :pswitch_5
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1649
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1650
    const/16 v0, 0x13

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1651
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 1652
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1653
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1654
    goto/16 :goto_10

    .line 1652
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1731
    :pswitch_6
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1733
    .local v0, "verificationId":I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1735
    .local v4, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v4, :cond_4

    .line 1736
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid IntentFilter verification token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " received"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PackageManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    goto/16 :goto_10

    .line 1741
    :cond_4
    invoke-virtual {v4}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v5

    .line 1743
    .local v5, "userId":I
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing IntentFilter verification with token:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_5
    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/IntentFilterVerificationResponse;

    .line 1750
    .local v6, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    iget v7, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    iget v8, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    .line 1752
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IntentFilter verification with token:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " and userId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is settings verifier response with response code:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_6
    iget v7, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    if-ne v7, v3, :cond_7

    .line 1759
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Domains failing verification: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    invoke-virtual {v6}, Lcom/android/server/pm/IntentFilterVerificationResponse;->getFailedDomainsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1759
    const-string v7, "PackageManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1764
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_10

    .line 1766
    :cond_8
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IntentFilter verification with token:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " was not said to be complete"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "PackageManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1725
    .end local v0    # "verificationId":I
    .end local v4    # "state":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v5    # "userId":I
    .end local v6    # "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    :pswitch_7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    .line 1726
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    iget-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    .line 1728
    goto/16 :goto_10

    .line 1656
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_8
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1657
    .local v0, "verificationId":I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageVerificationState;

    .line 1659
    .local v4, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v4, :cond_22

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v5

    if-nez v5, :cond_22

    .line 1660
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v5

    .line 1661
    .local v5, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v10

    .line 1662
    .local v10, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v11, v10, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 1664
    .local v11, "originUri":Landroid/net/Uri;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Verification timed out for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PackageManager"

    invoke-static {v13, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1667
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    .line 1668
    .local v12, "user":Landroid/os/UserHandle;
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)I

    move-result v13

    if-ne v13, v6, :cond_9

    .line 1670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Continuing with installation of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "PackageManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v7, 0x2

    invoke-virtual {v4, v3, v7}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1673
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v0, v11, v6, v12}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_0

    .line 1676
    :cond_9
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v0, v11, v3, v12}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1678
    invoke-virtual {v5, v7}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    .line 1682
    :goto_0
    const-string/jumbo v3, "verification"

    invoke-static {v8, v9, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1684
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleVerificationFinished()V

    .line 1685
    .end local v5    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v10    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v11    # "originUri":Landroid/net/Uri;
    .end local v12    # "user":Landroid/os/UserHandle;
    goto/16 :goto_10

    .line 1689
    .end local v0    # "verificationId":I
    .end local v4    # "state":Lcom/android/server/pm/PackageVerificationState;
    :pswitch_9
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1691
    .restart local v0    # "verificationId":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 1692
    .local v3, "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v3, :cond_a

    .line 1693
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid verification token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    goto/16 :goto_10

    .line 1697
    :cond_a
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1699
    .local v4, "response":Lcom/android/server/pm/PackageVerificationResponse;
    iget v5, v4, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v6, v4, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1701
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1702
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1704
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v5

    .line 1705
    .restart local v5    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v6

    .line 1706
    .local v6, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v10, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 1708
    .local v10, "originUri":Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1709
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v11, v4, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    .line 1710
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    .line 1709
    invoke-static {v7, v0, v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_1

    .line 1712
    :cond_b
    invoke-virtual {v5, v7}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    .line 1716
    :goto_1
    const-string/jumbo v7, "verification"

    invoke-static {v8, v9, v7, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1719
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleVerificationFinished()V

    .line 1720
    .end local v5    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v6    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v10    # "originUri":Landroid/net/Uri;
    goto/16 :goto_10

    .line 1637
    .end local v0    # "verificationId":I
    .end local v3    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v4    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :pswitch_a
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1638
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1639
    :try_start_3
    invoke-virtual {v1, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1640
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1641
    .local v5, "userId":I
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1642
    .end local v5    # "userId":I
    goto :goto_2

    .line 1643
    :cond_c
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1644
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1645
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1646
    goto/16 :goto_10

    .line 1644
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 1627
    :pswitch_b
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1628
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1629
    const/16 v0, 0xd

    :try_start_5
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1630
    invoke-virtual {v1, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1631
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1632
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1633
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1634
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1635
    goto/16 :goto_10

    .line 1633
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 1836
    :cond_d
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->showFMUninstallAlertDialog(Landroid/content/Context;)V

    goto/16 :goto_10

    .line 1546
    :cond_e
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling post-install for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    :cond_f
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 1549
    .local v0, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget v3, v2, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_10

    move/from16 v17, v6

    goto :goto_3

    :cond_10
    move/from16 v17, v5

    .line 1550
    .local v17, "didRestore":Z
    :goto_3
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 1552
    if-eqz v0, :cond_11

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_11

    .line 1553
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_b

    .line 1554
    :cond_11
    if-eqz v0, :cond_18

    .line 1555
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 1556
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1558
    .local v4, "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_12

    move v12, v6

    goto :goto_4

    :cond_12
    move v12, v5

    .line 1560
    .local v12, "grantPermissions":Z
    :goto_4
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v7, v7, 0x1000

    if-nez v7, :cond_13

    move v13, v6

    goto :goto_5

    :cond_13
    move v13, v5

    .line 1562
    .local v13, "killApp":Z
    :goto_5
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v10, 0x10000

    and-int/2addr v7, v10

    if-eqz v7, :cond_14

    move v14, v6

    goto :goto_6

    :cond_14
    move v14, v5

    .line 1564
    .local v14, "virtualPreload":Z
    :goto_6
    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 1565
    .local v6, "grantedPermissions":[Ljava/lang/String;
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v10, 0x400000

    and-int/2addr v7, v10

    if-eqz v7, :cond_15

    iget-object v7, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v7, :cond_15

    .line 1568
    iget-object v7, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v16, v7

    goto :goto_7

    .line 1569
    :cond_15
    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->whitelistedRestrictedPermissions:Ljava/util/List;

    move-object/from16 v16, v7

    :goto_7
    nop

    .line 1572
    .local v16, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iget-object v15, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object v11, v4

    move-object/from16 v19, v15

    move-object v15, v6

    move-object/from16 v18, v7

    invoke-static/range {v10 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 1578
    iget-object v7, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v7, :cond_16

    .line 1579
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    goto :goto_8

    :cond_16
    nop

    .line 1580
    .local v5, "childCount":I
    :goto_8
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    if-ge v7, v5, :cond_17

    .line 1581
    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1582
    .local v10, "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v25, 0x0

    iget-object v15, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v22, v14

    move-object/from16 v23, v6

    move-object/from16 v24, v16

    move-object/from16 v26, v15

    move-object/from16 v27, v8

    invoke-static/range {v18 .. v27}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 1580
    .end local v10    # "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    add-int/lit8 v7, v7, 0x1

    const-wide/32 v8, 0x40000

    goto :goto_9

    .line 1590
    .end local v7    # "i":I
    :cond_17
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v3}, Lcom/android/server/pm/RecordInstallAndUninstallInfoInjector;->recordInstallInfo(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$InstallArgs;)V

    .line 1596
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/android/server/pm/RecordInstallAndUninstallInfoInjector;->recordInstallFailInfo(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 1601
    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    if-eqz v7, :cond_19

    .line 1602
    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    const-wide/32 v9, 0x40000

    invoke-static {v9, v10, v7, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_a

    .line 1605
    .end local v3    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v4    # "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v5    # "childCount":I
    .end local v6    # "grantedPermissions":[Ljava/lang/String;
    .end local v12    # "grantPermissions":Z
    .end local v13    # "killApp":Z
    .end local v14    # "virtualPreload":Z
    .end local v16    # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_18
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v3, :cond_19

    .line 1607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing to do for post-install token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1605
    :cond_19
    :goto_a
    nop

    .line 1610
    :goto_b
    iget v3, v2, Landroid/os/Message;->arg1:I

    const-string/jumbo v4, "postInstall"

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1611
    .end local v0    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v17    # "didRestore":Z
    goto/16 :goto_10

    .line 1491
    :cond_1a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1492
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v0, :cond_22

    .line 1493
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init_copy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_1b
    nop

    .line 1495
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1494
    const-string/jumbo v4, "queueInstall"

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1496
    const-string/jumbo v3, "startCopy"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1497
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()V

    .line 1498
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_10

    .line 1505
    .end local v0    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_1c
    const/4 v7, 0x0

    .line 1507
    .local v7, "size":I
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1508
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 1509
    :try_start_7
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v0

    move v7, v0

    .line 1510
    if-gtz v7, :cond_1d

    .line 1512
    monitor-exit v8

    return-void

    .line 1514
    :cond_1d
    new-array v0, v7, [Ljava/lang/String;

    .line 1515
    .local v0, "packages":[Ljava/lang/String;
    new-array v9, v7, [Ljava/util/ArrayList;

    .line 1516
    .local v9, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v10, v7, [I

    .line 1517
    .local v10, "uids":[I
    const/4 v11, 0x0

    .line 1519
    .local v11, "i":I
    nop

    .local v5, "n":I
    :goto_c
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v12

    if-ge v5, v12, :cond_20

    .line 1520
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v12, v5}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v12

    .line 1521
    .local v12, "packageUserId":I
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    .line 1522
    invoke-virtual {v13, v12}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v13

    .line 1523
    invoke-virtual {v13}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1524
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1f

    if-ge v11, v7, :cond_1f

    .line 1525
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1526
    .local v14, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v0, v11

    .line 1527
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    aput-object v15, v9, v11

    .line 1528
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v15, v15, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1529
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_1e

    .line 1530
    iget v15, v3, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v12, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    goto :goto_e

    .line 1531
    :cond_1e
    const/4 v15, -0x1

    :goto_e
    aput v15, v10, v11

    .line 1532
    nop

    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    add-int/lit8 v11, v11, 0x1

    .line 1533
    const/4 v3, -0x1

    goto :goto_d

    .line 1519
    .end local v12    # "packageUserId":I
    .end local v13    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_1f
    add-int/lit8 v5, v5, 0x1

    const/4 v3, -0x1

    goto :goto_c

    .line 1535
    .end local v5    # "n":I
    :cond_20
    move v7, v11

    .line 1536
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    .line 1537
    .end local v11    # "i":I
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1539
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v7, :cond_21

    .line 1540
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v8, v0, v3

    aget-object v11, v9, v3

    aget v12, v10, v3

    invoke-static {v5, v8, v6, v11, v12}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 1539
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1542
    .end local v3    # "i":I
    :cond_21
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1543
    nop

    .line 1841
    .end local v0    # "packages":[Ljava/lang/String;
    .end local v7    # "size":I
    .end local v9    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "uids":[I
    :cond_22
    :goto_10
    return-void

    .line 1537
    .restart local v7    # "size":I
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 1482
    const/16 v0, 0xa

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1485
    nop

    .line 1486
    return-void

    .line 1484
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw v1
.end method
