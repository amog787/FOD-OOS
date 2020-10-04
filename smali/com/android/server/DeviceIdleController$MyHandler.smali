.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1457
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1458
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1459
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 1462
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DeviceIdleController"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    :cond_0
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const-string/jumbo v4, "unknown"

    const-string v5, "LightIdle_Status"

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    .line 1642
    :pswitch_0
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->updatePreIdleFactor()V

    .line 1643
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->maybeDoImmediateMaintenance()V

    goto/16 :goto_b

    .line 1639
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->updatePreIdleFactor()V

    .line 1640
    goto/16 :goto_b

    .line 1630
    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 1631
    .local v0, "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v3, v6, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    move v3, v6

    .line 1632
    .local v3, "monitoring":Z
    if-eqz v3, :cond_2

    .line 1633
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->startMonitoring()V

    goto :goto_1

    .line 1635
    :cond_2
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->stopMonitoring()V

    .line 1637
    .end local v0    # "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .end local v3    # "monitoring":Z
    :goto_1
    goto/16 :goto_b

    .line 1625
    :pswitch_3
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1626
    .local v0, "appId":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v7

    :goto_2
    move v3, v6

    .line 1627
    .local v3, "added":Z
    iget-object v4, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$2200(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    .line 1628
    .end local v0    # "appId":I
    .end local v3    # "added":Z
    goto/16 :goto_b

    .line 1622
    :pswitch_4
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1623
    goto/16 :goto_b

    .line 1606
    :pswitch_5
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_4

    goto :goto_3

    :cond_4
    move v6, v7

    :goto_3
    move v3, v6

    .line 1607
    .local v3, "active":Z
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2100(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 1609
    .local v4, "size":I
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_4
    if-ge v5, v4, :cond_5

    .line 1611
    :try_start_0
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2100(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IMaintenanceActivityListener;

    .line 1612
    invoke-interface {v0, v3}, Landroid/os/IMaintenanceActivityListener;->onMaintenanceActivityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1614
    goto :goto_5

    .line 1617
    .end local v5    # "i":I
    :catchall_0
    move-exception v0

    iget-object v5, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$2100(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v0

    .line 1613
    .restart local v5    # "i":I
    :catch_0
    move-exception v0

    .line 1609
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1617
    .end local v5    # "i":I
    :cond_5
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2100(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1618
    nop

    .line 1619
    .end local v3    # "active":Z
    .end local v4    # "size":I
    goto/16 :goto_b

    .line 1601
    :pswitch_6
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1602
    .restart local v0    # "appId":I
    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3, v0}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    .line 1603
    .end local v0    # "appId":I
    goto/16 :goto_b

    .line 1566
    :pswitch_7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 1567
    .local v3, "activeReason":Ljava/lang/String;
    iget v6, v2, Landroid/os/Message;->arg1:I

    .line 1569
    .local v6, "activeUid":I
    if-eqz v3, :cond_6

    move-object v4, v3

    .line 1568
    :cond_6
    invoke-static {v4}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1572
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/DeviceIdleControllerInjector;->setDeviceIdleState(I)V

    .line 1574
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v4

    .line 1575
    .local v4, "deepChanged":Z
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v8

    .line 1577
    .local v8, "lightChanged":Z
    :try_start_1
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1578
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0, v7, v3, v6}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1581
    goto :goto_6

    .line 1580
    :catch_1
    move-exception v0

    .line 1582
    :goto_6
    if-eqz v4, :cond_7

    .line 1583
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v9, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v9}, Lcom/android/server/DeviceIdleController;->access$1500(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1587
    invoke-static {v7, v3}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyDozeEvent(ZLjava/lang/String;)V

    .line 1590
    :cond_7
    if-eqz v8, :cond_8

    .line 1593
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1595
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v5

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1597
    :cond_8
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1598
    .end local v3    # "activeReason":Ljava/lang/String;
    .end local v4    # "deepChanged":Z
    .end local v6    # "activeUid":I
    .end local v8    # "lightChanged":Z
    goto/16 :goto_b

    .line 1532
    :pswitch_8
    invoke-static {v4}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1535
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/DeviceIdleControllerInjector;->setDeviceIdleState(I)V

    .line 1537
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v4

    .line 1538
    .restart local v4    # "deepChanged":Z
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v6

    .line 1540
    .local v6, "lightChanged":Z
    :try_start_2
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1541
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    .line 1542
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    .line 1541
    invoke-interface {v0, v7, v3, v8}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1544
    goto :goto_7

    .line 1543
    :catch_2
    move-exception v0

    .line 1545
    :goto_7
    if-eqz v4, :cond_9

    .line 1546
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1547
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1500(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1548
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2000(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1547
    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1550
    :cond_9
    if-eqz v6, :cond_a

    .line 1551
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1554
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1556
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1557
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$2000(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1556
    invoke-virtual/range {v7 .. v15}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1561
    :cond_a
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1562
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1563
    .end local v4    # "deepChanged":Z
    .end local v6    # "lightChanged":Z
    goto/16 :goto_b

    .line 1471
    :pswitch_9
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 1476
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/DeviceIdleControllerInjector;->setDeviceIdleState(I)V

    .line 1478
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_b

    .line 1479
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1480
    .local v0, "deepChanged":Z
    iget-object v8, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v8}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v7

    .line 1485
    .local v7, "lightChanged":Z
    invoke-static {}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->notifyEnterDeepIdle()V

    move v8, v7

    move v7, v0

    goto :goto_8

    .line 1488
    .end local v0    # "deepChanged":Z
    .end local v7    # "lightChanged":Z
    :cond_b
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1489
    .restart local v0    # "deepChanged":Z
    iget-object v7, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v7}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v7

    move v8, v7

    move v7, v0

    .line 1492
    .end local v0    # "deepChanged":Z
    .local v7, "deepChanged":Z
    .restart local v8    # "lightChanged":Z
    :goto_8
    :try_start_3
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1493
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iget v9, v2, Landroid/os/Message;->what:I

    if-ne v9, v4, :cond_c

    .line 1494
    goto :goto_9

    .line 1495
    :cond_c
    move v4, v6

    :goto_9
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    .line 1493
    invoke-interface {v0, v4, v3, v9}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1497
    goto :goto_a

    .line 1496
    :catch_3
    move-exception v0

    .line 1498
    :goto_a
    if-eqz v7, :cond_d

    .line 1499
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1500(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1503
    const-string v0, "becomeDeepIdle"

    invoke-static {v6, v0}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyDozeEvent(ZLjava/lang/String;)V

    .line 1506
    :cond_d
    if-eqz v8, :cond_e

    .line 1509
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1512
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1516
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1700(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1517
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, v6}, Lcom/android/server/DeviceIdleController;->access$1702(Lcom/android/server/DeviceIdleController;Z)Z

    .line 1518
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1700(Lcom/android/server/DeviceIdleController;)Z

    move-result v0

    invoke-static {v0}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->update1stLightIdleStatus(Z)V

    .line 1519
    invoke-static {}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->enteringDeepIdleLocked()V

    .line 1521
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Lcom/oneplus/android/power/IOpPowerControllerManager;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1522
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;)Lcom/oneplus/android/power/IOpPowerControllerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oneplus/android/power/IOpPowerControllerManager;->inform1stLightIdle()V

    .line 1527
    :cond_e
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    .line 1528
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1900(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1529
    .end local v7    # "deepChanged":Z
    .end local v8    # "lightChanged":Z
    goto :goto_b

    .line 1466
    :pswitch_a
    iget-object v0, v1, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    .line 1467
    nop

    .line 1646
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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
