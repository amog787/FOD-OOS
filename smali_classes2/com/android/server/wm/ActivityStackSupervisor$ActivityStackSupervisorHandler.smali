.class final Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2539
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2540
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2541
    return-void
.end method

.method private activityIdleFromMessage(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2
    .param p1, "idleActivity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "fromTimeout"    # Z

    .line 2572
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p2, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 2574
    return-void
.end method

.method private handleMessageInner(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 2582
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    const-string v1, "ActivityTaskManager"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 2663
    return v3

    .line 2654
    :pswitch_0
    sget-boolean v0, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz v0, :cond_7

    .line 2655
    invoke-static {}, Lcom/android/server/wm/ActivityStackSupervisor;->access$610()I

    .line 2656
    invoke-static {}, Lcom/android/server/wm/ActivityStackSupervisor;->access$600()I

    move-result v0

    if-nez v0, :cond_7

    .line 2657
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->resetBoostTopUX()V

    goto/16 :goto_2

    .line 2643
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 2644
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity top resumed state loss timeout for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2646
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-wide v4, v0, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "top state loss for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V

    .line 2649
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->handleTopResumedStateReleased(Z)V

    .line 2650
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_2

    .line 2637
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->access$500(Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    move-result-object v0

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2640
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v1, "homeChanged"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->startHomeOnEmptyDisplays(Ljava/lang/String;)V

    .line 2641
    goto/16 :goto_2

    .line 2590
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->access$100(Lcom/android/server/wm/ActivityStackSupervisor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2591
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->access$100(Lcom/android/server/wm/ActivityStackSupervisor;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2592
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->access$200(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 2590
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2595
    .end local v0    # "i":I
    :cond_1
    goto/16 :goto_2

    .line 2584
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->access$000(Lcom/android/server/wm/ActivityStackSupervisor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 2585
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->access$000(Lcom/android/server/wm/ActivityStackSupervisor;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2586
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->updateMultiWindowMode()V

    .line 2584
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2588
    .end local v0    # "i":I
    :cond_2
    goto/16 :goto_2

    .line 2627
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x0

    const-string v4, "transit"

    invoke-static {v0, v1, v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->access$300(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    .line 2629
    goto/16 :goto_2

    .line 2617
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2618
    const-string v0, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_2

    .line 2611
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2612
    const-string v0, "Sleep timeout!  Sleeping now."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    goto :goto_2

    .line 2608
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedStacksTopActivities()Z

    .line 2609
    goto :goto_2

    .line 2604
    :pswitch_9
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: IDLE_NOW_MSG: r="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleFromMessage(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2606
    goto :goto_2

    .line 2597
    :pswitch_a
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: IDLE_TIMEOUT_MSG: r="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleFromMessage(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2602
    goto :goto_2

    .line 2631
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2632
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_6

    .line 2633
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->access$400(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V

    .line 2635
    .end local v0    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_6
    nop

    .line 2665
    :cond_7
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2545
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2546
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->handleMessageInner(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2547
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2549
    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2551
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd5

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2553
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2554
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v0, 0x0

    .line 2555
    .local v0, "processName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2556
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2557
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 2558
    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2559
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v4, v4, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    move-object v0, v4

    .line 2560
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v4, v4, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move v2, v4

    .line 2562
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2563
    if-eqz v0, :cond_3

    .line 2564
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v4, "restartActivityProcessTimeout"

    invoke-virtual {v3, v0, v2, v4}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 2569
    .end local v0    # "processName":Ljava/lang/String;
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "uid":I
    :cond_3
    :goto_0
    return-void

    .line 2562
    .restart local v0    # "processName":Ljava/lang/String;
    .restart local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "uid":I
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2549
    .end local v0    # "processName":Ljava/lang/String;
    .end local v1    # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "uid":I
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
