.class Lcom/android/server/wm/AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "AppTaskImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppTaskImpl"


# instance fields
.field private mCallingUid:I

.field private mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mTaskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskId"    # I
    .param p3, "callingUid"    # I

    .line 43
    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 45
    iput p2, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 46
    iput p3, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    .line 47
    return-void
.end method

.method private checkCaller()V
    .locals 3

    .line 50
    iget v0, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 54
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not match caller of getAppTasks(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .locals 8

    .line 58
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    .local v1, "origId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "finish-and-remove-task"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 69
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    nop

    .line 71
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    return-void

    .line 66
    .restart local v1    # "origId":J
    :cond_0
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    nop

    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v3

    .line 71
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 7

    .line 76
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    .local v1, "origId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 83
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_0

    .line 86
    iget-object v4, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    .line 84
    :cond_0
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    nop

    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v3

    .line 91
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveToFront(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .locals 20
    .param p1, "appThread"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 96
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 99
    .local v13, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 100
    .local v14, "callingUid":I
    iget-object v0, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v15, p2

    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 103
    .local v16, "origId":J
    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 104
    iget-object v3, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-string v8, "Move to front"

    move v4, v13

    move v5, v14

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 109
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v2, :cond_1

    .line 110
    :try_start_2
    iget-object v3, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    move-object v0, v3

    .line 112
    :cond_1
    iget-object v3, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    const-string v4, "moveToFront"

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .local v3, "starter":Lcom/android/server/wm/ActivityStarter;
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v4, v14

    move v5, v13

    move-object/from16 v6, p2

    move-object v9, v0

    move/from16 v11, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v19

    :try_start_3
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    iget-object v4, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 117
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    return-void

    .line 120
    :cond_2
    :try_start_4
    iget-object v4, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v5, v1, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v13, v14, v5, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    .line 122
    nop

    .end local v0    # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v3    # "starter":Lcom/android/server/wm/ActivityStarter;
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 124
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    nop

    .line 126
    return-void

    .line 122
    :catchall_0
    move-exception v0

    move-object/from16 v18, v12

    :goto_0
    :try_start_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v13    # "callingPid":I
    .end local v14    # "callingUid":I
    .end local v16    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1    # "appThread":Landroid/app/IApplicationThread;
    .end local p2    # "callingPackage":Ljava/lang/String;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .restart local v13    # "callingPid":I
    .restart local v14    # "callingUid":I
    .restart local v16    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1    # "appThread":Landroid/app/IApplicationThread;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 124
    :catchall_2
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    throw v0
.end method

.method public setExcludeFromRecents(Z)V
    .locals 7
    .param p1, "exclude"    # Z

    .line 162
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    .local v1, "origId":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 169
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_1

    .line 172
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    .line 173
    .local v4, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 174
    const/high16 v5, 0x800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, -0x800001

    and-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    nop

    .line 182
    .end local v1    # "origId":J
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 183
    return-void

    .line 170
    .restart local v1    # "origId":J
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :cond_1
    :try_start_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "origId":J
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1    # "exclude":Z
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1    # "exclude":Z
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    nop

    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1    # "exclude":Z
    throw v3

    .line 182
    .end local v1    # "origId":J
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1    # "exclude":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 7
    .param p1, "whoThread"    # Landroid/os/IBinder;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "bOptions"    # Landroid/os/Bundle;

    .line 131
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 137
    .local v0, "callingUser":I
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 138
    iget-object v2, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v3, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 140
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_1

    .line 143
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 144
    .local v3, "appThread":Landroid/app/IApplicationThread;
    if-eqz v3, :cond_0

    .line 147
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    const-string v4, "AppTaskImpl"

    invoke-virtual {v1, p4, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 151
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 152
    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 153
    invoke-virtual {v1, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 154
    invoke-virtual {v1, p6}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v1

    .line 149
    return v1

    .line 145
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad app thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUser":I
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1    # "whoThread":Landroid/os/IBinder;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "intent":Landroid/content/Intent;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .end local p6    # "bOptions":Landroid/os/Bundle;
    throw v4

    .line 141
    .end local v3    # "appThread":Landroid/app/IApplicationThread;
    .restart local v0    # "callingUser":I
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1    # "whoThread":Landroid/os/IBinder;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "callingFeatureId":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    .restart local p6    # "bOptions":Landroid/os/Bundle;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUser":I
    .end local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1    # "whoThread":Landroid/os/IBinder;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "callingFeatureId":Ljava/lang/String;
    .end local p4    # "intent":Landroid/content/Intent;
    .end local p5    # "resolvedType":Ljava/lang/String;
    .end local p6    # "bOptions":Landroid/os/Bundle;
    throw v3

    .line 147
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .restart local v0    # "callingUser":I
    .restart local p0    # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1    # "whoThread":Landroid/os/IBinder;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "callingFeatureId":Ljava/lang/String;
    .restart local p4    # "intent":Landroid/content/Intent;
    .restart local p5    # "resolvedType":Ljava/lang/String;
    .restart local p6    # "bOptions":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
